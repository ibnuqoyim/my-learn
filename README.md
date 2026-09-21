# Catatan Belajar

Blog Catatan Belajar — kumpulan catatan singkat dari berbagai materi
belajar, dikelompokkan per topik. Dibangun dengan **Next.js (App Router)**
dan **Supabase** (Postgres, Auth), deploy di **Vercel**.

Aplikasinya ada di folder [`web/`](./web) — lihat
[`web/README.md`](./web/README.md) untuk setup lokal, skema database, dan
daftar fitur.

> Repo ini sebelumnya blog statis Eleventy dengan catatan dalam file
> Markdown. Sudah dimigrasikan penuh ke Next.js + Supabase (database-backed)
> supaya bisa punya autentikasi, komentar, progress belajar, dan search.

## Aturan repo

Lihat [`AGENTS.md`](./AGENTS.md) — Single Source of Truth untuk alur
kerja Git, standar konten, migrasi database, dan CI/CD — sebelum
menambah/mengubah apa pun di repo ini. (`CLAUDE.md` dan file serupa
lainnya cuma bridge ke situ.)

## Verifikasi sebelum PR

```bash
make verify   # atau: cd web && npm run verify
```
Menjalankan lint (strict), typecheck, dan build. Harus lolos sebelum PR
dibuat — lihat `AGENTS.md` bagian 6 untuk detail CI/CD.
