# Catatan Belajar — Next.js + Supabase

Versi baru situs Catatan Belajar, menggantikan blog statis Eleventy di root
repo. Konten sekarang disimpan di Supabase (database-backed), bukan file
Markdown lagi, supaya bisa nambah fitur autentikasi, komentar, dan search.

> Selama migrasi berlangsung, versi Eleventy lama di root repo **tetap
> dipakai untuk situs live** — folder ini dikembangkan terpisah sampai siap
> di-cutover. Lihat `CLAUDE.md` di root untuk aturan alur kerja lengkap.

## Setup

1. Buat project baru di [Supabase](https://supabase.com/dashboard).
2. Buka **SQL Editor** di dashboard project, jalankan isi `supabase/schema.sql`.
3. Salin `.env.local.example` jadi `.env.local`, isi dengan URL & key dari
   **Project Settings → API Keys** (publishable key untuk
   `NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY`, secret key untuk
   `SUPABASE_SECRET_KEY` — secret key hanya dipakai script seed, jangan
   pernah di-commit atau dipakai di kode client).
4. Install dependency & migrasikan 11 catatan awal:
   ```bash
   npm install
   npm run seed
   ```
5. Jalankan dev server:
   ```bash
   npm run dev
   ```
   Buka http://localhost:3000

## Status fitur

- [x] Baca catatan per kategori, render Markdown + diagram Mermaid/ERD
- [x] Login & daftar (email + password)
- [x] Skema tabel komentar & progress belajar (`supabase/schema.sql`)
- [ ] UI komentar per catatan (tabel sudah ada, UI menyusul)
- [ ] UI search full-text (index sudah ada, UI menyusul)
- [ ] UI progress/bookmark per catatan (tabel sudah ada, UI menyusul)

## Struktur

```
app/                  Halaman (App Router)
components/           Komponen React (shell navigasi, render Markdown, Mermaid)
lib/supabase/         Supabase client (browser & server)
lib/queries.ts         Helper query data (kategori, catatan)
supabase/schema.sql    Skema database + RLS, dijalankan sekali di dashboard
scripts/seed.mjs       Migrasi 11 catatan awal ke Supabase
```
