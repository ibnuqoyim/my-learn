-- Skema database Catatan Belajar (Supabase / Postgres).
-- Jalankan file ini sekali lewat SQL Editor di dashboard Supabase project
-- kamu (atau lewat Supabase CLI), sebelum menjalankan `npm run seed`.

-- ============================================================
-- Tabel
-- ============================================================

create table if not exists categories (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  slug text not null unique,
  -- Narasi roadmap: masalah besar apa yang diselesaikan teknologi ini,
  -- dan bisa bikin apa setelah menyelesaikan urutan catatan di kategori
  -- ini. Ditampilkan di atas daftar catatan pada halaman kategori.
  -- Nullable — kategori tanpa deskripsi tetap tampil normal, cuma tanpa
  -- bagian narasi di atasnya.
  description text,
  created_at timestamptz not null default now()
);

create table if not exists profiles (
  id uuid primary key references auth.users (id) on delete cascade,
  display_name text,
  created_at timestamptz not null default now()
);

create table if not exists notes (
  id uuid primary key default gen_random_uuid(),
  category_id uuid not null references categories (id) on delete restrict,
  title text not null,
  slug text not null,
  content text not null,
  sources jsonb not null default '[]'::jsonb,
  -- Latihan hands-on yang disarankan setelah membaca catatan ini (markdown,
  -- boleh berisi contoh kode). Ditampilkan sebagai kotak "Coba Sendiri"
  -- terpisah dari isi utama. Nullable — bukan semua catatan (mis. topik
  -- konfigurasi) cocok punya latihan.
  practice text,
  status text not null default 'draft' check (status in ('draft', 'published')),
  -- Urutan belajar di dalam kategori (0, 1, 2, ...) — bukan urutan
  -- ditulis/di-update, tapi urutan disarankan dipelajari (prasyarat dulu,
  -- baru lanjutan). Dipakai untuk daftar kategori & navigasi
  -- sebelumnya/selanjutnya di halaman catatan.
  order_index integer not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (category_id, slug)
);

create table if not exists comments (
  id uuid primary key default gen_random_uuid(),
  note_id uuid not null references notes (id) on delete cascade,
  user_id uuid not null references auth.users (id) on delete cascade,
  body text not null,
  created_at timestamptz not null default now()
);

create table if not exists note_progress (
  user_id uuid not null references auth.users (id) on delete cascade,
  note_id uuid not null references notes (id) on delete cascade,
  status text not null default 'belum' check (status in ('belum', 'dipelajari', 'selesai')),
  updated_at timestamptz not null default now(),
  primary key (user_id, note_id)
);

-- ============================================================
-- Full-text search
-- ============================================================

alter table notes
  add column if not exists search_vector tsvector
  generated always as (
    setweight(to_tsvector('indonesian', coalesce(title, '')), 'A') ||
    setweight(to_tsvector('indonesian', coalesce(content, '')), 'B')
  ) stored;

-- `create table if not exists` di atas tidak mengubah tabel yang sudah ada
-- (project ini sudah punya tabel `notes` dari migrasi awal), jadi tambahkan
-- kolomnya lewat ALTER TABLE idempotent supaya file ini aman dijalankan
-- ulang kapan saja.
alter table notes add column if not exists order_index integer not null default 0;
alter table notes add column if not exists practice text;
alter table categories add column if not exists description text;

create index if not exists notes_search_vector_idx on notes using gin (search_vector);
create index if not exists notes_status_idx on notes (status);
create index if not exists notes_category_order_idx on notes (category_id, order_index);

-- ============================================================
-- Row Level Security
-- ============================================================

alter table categories enable row level security;
alter table profiles enable row level security;
alter table notes enable row level security;
alter table comments enable row level security;
alter table note_progress enable row level security;

-- Semua CREATE POLICY didahului DROP POLICY IF EXISTS supaya file ini aman
-- dijalankan ulang kapan saja (Postgres tidak punya
-- `create policy if not exists`).

-- categories: semua orang boleh baca, tulis hanya lewat service role (admin)
drop policy if exists "categories_public_read" on categories;
create policy "categories_public_read" on categories
  for select using (true);

-- notes: publik hanya lihat yang published; tulis hanya lewat service role
drop policy if exists "notes_public_read_published" on notes;
create policy "notes_public_read_published" on notes
  for select using (status = 'published');

-- profiles: pemilik boleh baca/ubah profil sendiri; publik boleh lihat nama
-- tampilan (dipakai untuk menampilkan nama penulis komentar)
drop policy if exists "profiles_public_read" on profiles;
create policy "profiles_public_read" on profiles
  for select using (true);

drop policy if exists "profiles_owner_update" on profiles;
create policy "profiles_owner_update" on profiles
  for update using (auth.uid() = id);

drop policy if exists "profiles_owner_insert" on profiles;
create policy "profiles_owner_insert" on profiles
  for insert with check (auth.uid() = id);

-- comments: publik boleh baca; hanya user login yang boleh menulis
-- komentar atas namanya sendiri, dan hanya boleh hapus komentar sendiri
drop policy if exists "comments_public_read" on comments;
create policy "comments_public_read" on comments
  for select using (true);

drop policy if exists "comments_owner_insert" on comments;
create policy "comments_owner_insert" on comments
  for insert with check (auth.uid() = user_id);

drop policy if exists "comments_owner_delete" on comments;
create policy "comments_owner_delete" on comments
  for delete using (auth.uid() = user_id);

-- note_progress: strictly per-user, tidak ada yang lain bisa lihat/ubah
drop policy if exists "note_progress_owner_all" on note_progress;
create policy "note_progress_owner_all" on note_progress
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- ============================================================
-- Trigger: buat baris profiles otomatis saat user baru daftar
-- ============================================================

create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer set search_path = public
as $$
begin
  insert into public.profiles (id, display_name)
  values (new.id, coalesce(new.raw_user_meta_data ->> 'display_name', split_part(new.email, '@', 1)));
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();
