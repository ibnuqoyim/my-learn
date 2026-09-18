# Aturan Repo: Catatan Belajar

Repo ini adalah blog statis (Eleventy) berisi catatan pelajaran dalam file
Markdown di `notes/<kategori>/`. Aturan di bawah ini WAJIB diikuti setiap kali
ada perubahan materi, baik oleh Claude maupun kontributor lain.

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

Setiap catatan baru atau revisi materi di `notes/` harus memenuhi tiga hal:

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

### Template catatan

```md
---
title: Judul Catatan
date: YYYY-MM-DD
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
