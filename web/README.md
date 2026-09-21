# Catatan Belajar — Next.js + Supabase

Situs Catatan Belajar. Konten disimpan di Supabase (database-backed),
bukan file Markdown, supaya bisa nambah fitur autentikasi, komentar, dan
search.

> Live di Vercel (root directory `web`), tersambung ke project Supabase
> asli. Blog statis Eleventy yang dulu ada di root repo sudah dihapus
> sepenuhnya (cutover selesai) — lihat `AGENTS.md` di root untuk aturan
> alur kerja repo ini sekarang, termasuk bagian 3 & 4 soal standar konten
> roadmap (framing masalah, latihan hands-on, narasi per kategori).

## Setup (project Supabase baru dari nol)

1. Buat project baru di [Supabase](https://supabase.com/dashboard).
2. Jalankan `supabase/schema.sql` ke project itu — lewat SQL Editor di
   dashboard, atau lewat `scripts/run-sql.mjs` (butuh personal access token
   Supabase, lihat komentar di file itu).
3. Salin `.env.local.example` jadi `.env.local` (atau `.env`), isi dengan
   URL & key dari **Project Settings → API Keys**. Variabel `AI_BASE_URL`/
   `AI_API_KEY`/`AI_MODEL` opsional — isi kalau mau mengaktifkan fitur
   "Tanya AI" (lihat "Status fitur" di bawah), boleh dikosongkan dulu.
4. Migrasikan catatan awal (`scripts/seed-data.mjs`) — dua jalur, pilih salah satu:
   - Ada `SUPABASE_SECRET_KEY`: `npm run seed` (lewat supabase-js).
   - Cuma ada personal access token (PAT): `node scripts/seed-via-sql.mjs <project-ref>`
     (lewat Supabase Management API, lihat komentar di file itu).
5. Jalankan dev server:
   ```bash
   npm install
   npm run dev
   ```
   Buka http://localhost:3000
6. Sebelum bikin PR, jalankan `npm run verify` (lint strict + typecheck +
   test+coverage + build) — lihat `AGENTS.md` bagian "Command Matrix".
   `npm run test:watch` untuk mode watch waktu nulis test baru.

## Status fitur

- [x] Baca catatan per kategori, render Markdown + diagram Mermaid/ERD
- [x] Login, daftar, dan keluar (email + password), status login tampil di sidebar
- [x] Komentar per catatan (butuh login untuk menulis, publik untuk baca)
- [x] Progress belajar per catatan (Belum/Sedang Dipelajari/Selesai) + halaman `/progress`
- [x] Search full-text (`/cari?q=...`), form GET tanpa perlu JS
- [x] Title tab browser dinamis per catatan/kategori (`generateMetadata`)
- [x] Urutan belajar per kategori (`notes.order_index`) — catatan tampil
  bernomor sesuai urutan disarankan, bukan tanggal update
- [x] Progress belajar per kategori — progress bar + "X dari Y selesai" di
  halaman kategori, badge status di tiap catatan
- [x] Navigasi "Sebelumnya/Selanjutnya" di halaman catatan mengikuti
  `order_index`, bukan cuma daftar kategori
- [x] Narasi roadmap per kategori (`categories.description`) — masalah
  besar apa yang diselesaikan teknologinya & bisa bikin apa di akhir,
  ditampilkan di atas daftar catatan
- [x] Framing "masalah yang diselesaikan" + kesinambungan antar-catatan di
  paragraf pembuka (lihat AGENTS.md bagian 3 poin 2)
- [x] Latihan hands-on per catatan (`notes.practice`) — kotak
  "🎯 Coba Sendiri" di halaman catatan, dikerjakan di project sendiri
- [x] Prasyarat eksplisit per catatan (`notes.prerequisites`) — tool/versi
  yang harus terinstall, akun eksternal, atau pengetahuan di luar roadmap
  ini, ditampilkan sebagai kotak "📋 Prasyarat"
- [x] Standar penulisan materi terformalisasi di `AGENTS.md` (termasuk
  template objek JS persis) supaya AI agent mana pun yang menambah
  catatan menghasilkan bentuk yang konsisten
- [x] RBAC + dashboard admin (`/admin`) — role `admin` di `profiles.role`
  bisa CRUD catatan & kategori lewat UI (bukan cuma SQL/script seed lagi).
  Lihat bagian "Role admin" di bawah untuk cara mempromosikan user jadi
  admin.
- [x] Kuis pilihan ganda di akhir tiap catatan & di akhir tiap kategori,
  cuma tampil untuk user yang login (nonlogin lihat ajakan masuk). Skor
  tersimpan per user (attempt terakhir menimpa yang lama), bisa "Coba
  Lagi" kapan saja. Admin kelola soal lewat `/admin/quiz/note/<id>` &
  `/admin/quiz/category/<id>` (link "Kuis" di `/admin/notes` &
  `/admin/categories`).
- [x] Tanya AI di akhir tiap catatan & di akhir tiap kategori, login-gated
  sama seperti kuis. Konteks AI dibatasi ke materi catatan/roadmap
  kategori yang sedang dibuka (system prompt dibangun dari `content`
  catatan atau `description` + daftar catatan kategori) — pertanyaan di
  luar topik itu ditolak oleh AI-nya sendiri. Riwayat chat tersimpan per
  user (bisa dihapus manual lewat tombol "Hapus riwayat"). Butuh endpoint
  OpenAI-compatible — lihat env var `AI_BASE_URL`/`AI_API_KEY`/`AI_MODEL`
  di bawah; tanpa itu, fitur menampilkan pesan error saat dipakai (bukan
  hilang dari UI).

Kategori `nextjs` (9 catatan, urutan lengkap dari instalasi sampai
metadata/SEO) jadi contoh acuan pola roadmap ini diterapkan penuh — lihat
`web/scripts/seed-data.mjs`.

Semua fitur di atas sudah dites end-to-end dengan project Supabase asli
(signup, konfirmasi email, login, komentar, progress, search, navigasi
roadmap 9 langkah) — bukan cuma lolos build.

## Role admin

`profiles.role` (`'user'` default, atau `'admin'`) menentukan siapa yang
bisa akses `/admin` dan CRUD `notes`/`categories` — dijaga dobel: RLS di
database (`categories_admin_write`, `notes_admin_all`, fungsi
`is_admin()` di `supabase/schema.sql`) dan cek role di
`middleware.ts`/`app/admin/layout.tsx`. Trigger `prevent_role_self_escalation`
mengunci kolom `role` supaya user biasa tidak bisa self-promote jadi admin
lewat update ke profilnya sendiri.

**Tidak ada jalur self-service untuk jadi admin** (disengaja, konsisten
dengan semangat "tidak ada yang tayang tanpa izin" di `AGENTS.md`).
Promosikan user jadi admin lewat SQL Editor di dashboard Supabase (atau
`scripts/run-sql.mjs`):

```sql
update public.profiles set role = 'admin' where id = '<uuid user>';
-- atau, kalau cuma tahu emailnya:
update public.profiles set role = 'admin'
where id = (select id from auth.users where email = 'user@contoh.com');
```

## Testing

Unit test (Vitest) di `__tests__/` — `npm run test` / `npm run
test:coverage`. Scope-nya baru modul logika murni di `lib/` (slug
generator, validasi form admin, normalisasi data Supabase); server
actions, query Supabase, dan komponen React belum ada test-nya (butuh
strategi mocking Supabase, lihat `AGENTS.md` checklist). Belum ada E2E
(Playwright).

## Belum dikerjakan

- Manajemen role dari dalam dashboard (sekarang promote admin baru cuma
  lewat SQL langsung, lihat bagian "Role admin" di atas).
- Preview draft di halaman publik untuk admin (sekarang draft cuma bisa
  dilihat isinya lewat form edit di `/admin/notes`, bukan di URL
  publiknya — semua query publik tetap filter `status = 'published'`).
- Unit test untuk server actions/query Supabase, dan E2E Playwright —
  lihat bagian "Testing" di atas & checklist di `AGENTS.md`.

## Struktur

```
app/                     Halaman (App Router)
components/               Komponen React (shell navigasi, Markdown, Mermaid,
                           komentar, progress belajar)
lib/supabase/              Supabase client (browser & server)
lib/queries.ts              Helper query data (kategori, catatan, komentar,
                            progress, search, profil user)
lib/slugify.ts, lib/validateNote.ts, lib/validateCategory.ts,
lib/normalizeNoteSummary.ts, lib/validateQuizQuestion.ts
                              Modul logika murni (dites — lihat __tests__/)
__tests__/lib/                Unit test (Vitest) untuk modul di atas
components/QuizSection.tsx    Komponen kuis publik (catatan & kategori)
components/admin/QuizManager.tsx
                              Form admin create/edit/hapus soal kuis
app/admin/quiz/note/[id]/, app/admin/quiz/category/[id]/
                              Halaman admin kelola soal kuis per catatan/kategori
supabase/schema.sql          Skema database + RLS
supabase/migrations/          Riwayat migrasi incremental (lihat AGENTS.md bagian 5)
scripts/seed.mjs              Migrasi awal lewat supabase-js (perlu secret key)
scripts/seed-via-sql.mjs       Migrasi awal lewat Management API (perlu PAT)
scripts/seed-data.mjs           Data semua catatan & kategori, sumber kebenaran tunggal
                                (lihat AGENTS.md untuk template & standar isinya)
scripts/run-sql.mjs             Jalankan file .sql apa pun ke project lewat Management API
```
