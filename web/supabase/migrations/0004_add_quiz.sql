-- Fitur kuis: satu kuis di akhir tiap catatan, satu kuis di akhir tiap
-- kategori (roadmap), cuma tampil untuk user yang login. Tabel dipisah
-- per scope (note vs category) daripada satu tabel dengan FK nullable
-- ganda — supaya PRIMARY KEY (user_id, note_id)/(user_id, category_id)
-- bisa dipakai langsung sebagai target ON CONFLICT saat upsert attempt
-- (index unik parsial ambigu sebagai arbiter ON CONFLICT, lebih aman
-- dihindari), dan mengikuti pola note_progress yang sudah ada.

create table if not exists note_quiz_questions (
  id uuid primary key default gen_random_uuid(),
  note_id uuid not null references notes (id) on delete cascade,
  question text not null,
  -- Array of string, minimal 2 opsi. correct_index menunjuk index yang
  -- benar (0-based) — divalidasi juga di app (lib/validateQuizQuestion.ts)
  -- selain check constraint di bawah.
  options jsonb not null,
  correct_index integer not null,
  explanation text,
  order_index integer not null default 0,
  created_at timestamptz not null default now(),
  constraint note_quiz_questions_options_len check (jsonb_array_length(options) >= 2),
  constraint note_quiz_questions_correct_index_range
    check (correct_index >= 0 and correct_index < jsonb_array_length(options))
);

create table if not exists category_quiz_questions (
  id uuid primary key default gen_random_uuid(),
  category_id uuid not null references categories (id) on delete cascade,
  question text not null,
  options jsonb not null,
  correct_index integer not null,
  explanation text,
  order_index integer not null default 0,
  created_at timestamptz not null default now(),
  constraint category_quiz_questions_options_len check (jsonb_array_length(options) >= 2),
  constraint category_quiz_questions_correct_index_range
    check (correct_index >= 0 and correct_index < jsonb_array_length(options))
);

-- Hasil pengerjaan kuis per user — satu baris per user per kuis (attempt
-- terakhir menimpa yang lama, sama seperti note_progress), bukan riwayat
-- semua percobaan.
create table if not exists note_quiz_attempts (
  user_id uuid not null references auth.users (id) on delete cascade,
  note_id uuid not null references notes (id) on delete cascade,
  score integer not null,
  total integer not null,
  answers jsonb not null default '[]'::jsonb,
  updated_at timestamptz not null default now(),
  primary key (user_id, note_id),
  -- Skor dihitung & dikirim client-side (lihat components/QuizSection.tsx)
  -- lalu di-upsert lewat RLS "owner" policy, bukan server action — sama
  -- seperti note_progress, ini honor-system, bukan ujian resmi. Constraint
  -- ini cuma jaga-jaga supaya baris tidak bisa berisi angka yang jelas
  -- tidak masuk akal (mis. score > total) kalau ada yang coba kirim
  -- request langsung ke REST API di luar UI.
  constraint note_quiz_attempts_score_range check (score >= 0 and score <= total)
);

create table if not exists category_quiz_attempts (
  user_id uuid not null references auth.users (id) on delete cascade,
  category_id uuid not null references categories (id) on delete cascade,
  score integer not null,
  total integer not null,
  answers jsonb not null default '[]'::jsonb,
  updated_at timestamptz not null default now(),
  primary key (user_id, category_id),
  constraint category_quiz_attempts_score_range check (score >= 0 and score <= total)
);

create index if not exists note_quiz_questions_note_order_idx on note_quiz_questions (note_id, order_index);
create index if not exists category_quiz_questions_category_order_idx on category_quiz_questions (category_id, order_index);

alter table note_quiz_questions enable row level security;
alter table category_quiz_questions enable row level security;
alter table note_quiz_attempts enable row level security;
alter table category_quiz_attempts enable row level security;

-- Soal kuis boleh dibaca publik (sama seperti notes/categories) — yang
-- membatasi tampil/tidaknya di UI adalah status login, bukan RLS. Nilai
-- attempt tetap strictly per-user seperti note_progress.
drop policy if exists "note_quiz_questions_public_read" on note_quiz_questions;
create policy "note_quiz_questions_public_read" on note_quiz_questions
  for select using (true);

drop policy if exists "note_quiz_questions_admin_write" on note_quiz_questions;
create policy "note_quiz_questions_admin_write" on note_quiz_questions
  for all using (public.is_admin()) with check (public.is_admin());

drop policy if exists "category_quiz_questions_public_read" on category_quiz_questions;
create policy "category_quiz_questions_public_read" on category_quiz_questions
  for select using (true);

drop policy if exists "category_quiz_questions_admin_write" on category_quiz_questions;
create policy "category_quiz_questions_admin_write" on category_quiz_questions
  for all using (public.is_admin()) with check (public.is_admin());

drop policy if exists "note_quiz_attempts_owner_all" on note_quiz_attempts;
create policy "note_quiz_attempts_owner_all" on note_quiz_attempts
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "category_quiz_attempts_owner_all" on category_quiz_attempts;
create policy "category_quiz_attempts_owner_all" on category_quiz_attempts
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);
