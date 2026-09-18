# Catatan Belajar — Next.js + Supabase

Situs Catatan Belajar. Konten disimpan di Supabase (database-backed),
bukan file Markdown, supaya bisa nambah fitur autentikasi, komentar, dan
search.

> Live di Vercel (root directory `web`), tersambung ke project Supabase
> asli, berisi 6 kategori + 11 catatan. Blog statis Eleventy yang dulu ada
> di root repo sudah dihapus sepenuhnya (cutover selesai) — lihat
> `CLAUDE.md` di root untuk aturan alur kerja repo ini sekarang.

## Setup (project Supabase baru dari nol)

1. Buat project baru di [Supabase](https://supabase.com/dashboard).
2. Jalankan `supabase/schema.sql` ke project itu — lewat SQL Editor di
   dashboard, atau lewat `scripts/run-sql.mjs` (butuh personal access token
   Supabase, lihat komentar di file itu).
3. Salin `.env.local.example` jadi `.env.local` (atau `.env`), isi dengan
   URL & key dari **Project Settings → API Keys**.
4. Migrasikan 11 catatan awal — dua jalur, pilih salah satu:
   - Ada `SUPABASE_SECRET_KEY`: `npm run seed` (lewat supabase-js).
   - Cuma ada personal access token (PAT): `node scripts/seed-via-sql.mjs <project-ref>`
     (lewat Supabase Management API, lihat komentar di file itu).
5. Jalankan dev server:
   ```bash
   npm install
   npm run dev
   ```
   Buka http://localhost:3000

## Status fitur

- [x] Baca catatan per kategori, render Markdown + diagram Mermaid/ERD
- [x] Login, daftar, dan keluar (email + password), status login tampil di sidebar
- [x] Komentar per catatan (butuh login untuk menulis, publik untuk baca)
- [x] Progress belajar per catatan (Belum/Sedang Dipelajari/Selesai) + halaman `/progress`
- [x] Search full-text (`/cari?q=...`), form GET tanpa perlu JS
- [x] Title tab browser dinamis per catatan/kategori (`generateMetadata`)

Semua fitur di atas sudah dites end-to-end dengan project Supabase asli
(signup, konfirmasi email, login, komentar, progress, search) — bukan cuma
lolos build.

## Belum dikerjakan

- Halaman admin untuk menulis/mengedit catatan lewat UI (sekarang lewat
  script seed atau SQL langsung; lihat `CLAUDE.md` soal kolom
  `status` draft/published).

## Struktur

```
app/                     Halaman (App Router)
components/               Komponen React (shell navigasi, Markdown, Mermaid,
                           komentar, progress belajar)
lib/supabase/              Supabase client (browser & server)
lib/queries.ts              Helper query data (kategori, catatan, komentar,
                            progress, search, profil user)
supabase/schema.sql          Skema database + RLS
scripts/seed.mjs              Migrasi awal lewat supabase-js (perlu secret key)
scripts/seed-via-sql.mjs       Migrasi awal lewat Management API (perlu PAT)
scripts/seed-data.mjs           Data 11 catatan, dipakai bersama kedua script di atas
scripts/run-sql.mjs             Jalankan file .sql apa pun ke project lewat Management API
```
