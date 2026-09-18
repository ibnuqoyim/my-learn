# Aturan Repo: Catatan Belajar

Repo ini adalah blog statis (Eleventy) berisi catatan pelajaran dalam file
Markdown di `notes/<kategori>/`. Aturan di bawah ini WAJIB diikuti setiap kali
ada perubahan materi, baik oleh Claude maupun kontributor lain.

## 0. Status migrasi ke Next.js + Supabase

Situs ini sedang dimigrasikan ke stack baru: **Next.js + Supabase**, di
folder `web/` — lihat `web/README.md` untuk arsitektur, skema database, dan
alur konten yang baru (kolom `notes.status` menggantikan branch `draft`
sebagai mekanisme "draft vs published").

Selama migrasi belum di-cutover secara eksplisit:

- Situs **live tetap versi Eleventy** ini (root repo, `notes/**/*.md`).
  Semua aturan di bagian 1 & 2 di bawah **masih berlaku penuh** untuk
  `notes/**/*.md` sampai ada perintah eksplisit untuk cutover.
- Kode aplikasi baru di `web/` mengikuti aturan Git yang sama di bagian 1
  (branch dari `main` terbaru, merge ke `draft` dulu), tapi perubahan di
  `web/**` **bukan** "perubahan materi" — jadi tidak perlu memenuhi standar
  isi materi di bagian 2 (itu khusus `notes/**/*.md`).
- Jangan hapus file Eleventy (`.eleventy.js`, `_includes/`, `*.njk`,
  `css/style.css`, `notes/**/*.md`, `netlify.toml`) atau ubah `netlify.toml`
  tanpa perintah eksplisit — situs live masih bergantung pada semua itu.

## 1. Alur Git untuk pengembangan

- Semua branch kerja/pengembangan — baik perubahan materi (`notes/**/*.md`,
  folder kategori baru, data kategori `*.json` di dalam `notes/`) maupun
  infrastruktur (konfigurasi Eleventy, styling, dependency, dsb.) —
  **wajib dibuat dari `main` terbaru**:
  `git fetch origin main && git checkout -b <nama-branch> origin/main`.
- Hasil pengembangan **digabung (merge) ke `draft` dulu**, **tidak boleh
  langsung commit/push ke `main`**. `draft` adalah branch staging/integrasi
  tempat semua perubahan bertemu sebelum dirilis.
- `draft` **hanya digabung (merge) ke `main` saat ada perintah eksplisit**
  dari user (misalnya: "merge ke main", "publish", "gabungkan draft ke
  main"). Tanpa perintah eksplisit itu, biarkan perubahan tetap di `draft`
  meskipun sudah selesai dan sudah di-push.
- Jangan merge/push ke `main` atas inisiatif sendiri, sekecil apa pun
  perubahannya (termasuk typo fix).

## 2. Standar isi materi

Setiap catatan baru atau revisi materi di `notes/` harus memenuhi hal-hal
berikut:

1. **Fokus skill dasar** — bahas konsep/skill fundamental dari topik
   tersebut, bukan kasus advanced/niche. Kalau satu topik punya banyak
   sub-skill, pecah jadi beberapa catatan kecil per skill dasar, jangan
   digabung jadi satu catatan panjang yang membahas banyak hal sekaligus.
2. **Ada contoh konkret** — setiap konsep yang dijelaskan harus disertai
   contoh kode/kasus nyata yang bisa langsung dicoba, bukan cuma penjelasan
   teori.
3. **Ada sumber valid** — setiap catatan wajib mencantumkan minimal satu
   sumber rujukan yang kredibel dan benar-benar ada (dokumentasi resmi
   bahasa/tool, buku, atau situs yang diakui luas) di bagian akhir catatan
   dalam heading `## Sumber`. Jangan mengarang sumber atau mencantumkan
   link yang belum diverifikasi keberadaannya.
4. **Tandai kapan terakhir diverifikasi** — setiap kali isi catatan dicek
   ulang (misalnya lewat riset internet) dan dipastikan masih akurat untuk
   kondisi saat ini, set/perbarui field `updated: YYYY-MM-DD` ke tanggal
   verifikasi itu. `date` tetap tanggal catatan pertama kali ditulis,
   jangan diubah.
5. **Sertakan diagram kalau membantu pemahaman** — untuk konsep yang
   punya alur, state, atau struktur (bukan sekadar daftar API), tambahkan
   diagram sebagai ASCII art polos di dalam code fence (```), persis gaya
   diagram folder `app/` di `notes/nextjs/routing-dasar.md`. Situs Eleventy
   ini Markdown statis tanpa pipeline gambar/mermaid, jadi jangan pakai
   gambar eksternal atau syntax mermaid **di sini**. Untuk topik yang lebih
   pas dijelaskan lewat tabel perbandingan daripada diagram alur (mis. "list
   vs tuple vs dict"), tabel juga sah — diagram melengkapi contoh kode di
   poin 2, bukan menggantikannya. Saran diagram per topik ada di
   `RENCANA-MATERI.md`.

   > Aturan ASCII-only ini khusus untuk `notes/**/*.md` (blog Eleventy
   > lama). Konten yang sudah dimigrasikan ke `web/` (Next.js + Supabase,
   > lihat bagian 0) justru sebaliknya: pakai diagram Mermaid asli
   > (termasuk `erDiagram`/`gitGraph`), bukan ASCII — lihat
   > `web/scripts/seed.mjs` untuk contohnya.

### Template catatan

```md
---
title: Judul Catatan
date: YYYY-MM-DD
updated: YYYY-MM-DD
---

Penjelasan singkat konsep dasar di sini.

```lang
// contoh kode konkret
```

Poin-poin penting (opsional, kalau perlu).

## Sumber

- [Nama sumber](https://url-resmi-yang-valid)
```

Kategori & layout otomatis mengikuti folder (lihat file
`notes/<kategori>/<kategori>.json`) — tidak perlu diatur manual di tiap
catatan.
