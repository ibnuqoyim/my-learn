# Aturan Repo: Catatan Belajar

Repo ini adalah aplikasi **Next.js (App Router) + Supabase** di folder
`web/` — lihat `web/README.md` untuk arsitektur, skema database, dan
setup lokal. Konten catatan disimpan di tabel `notes` Supabase (bukan
file Markdown), status `draft`/`published` menentukan apakah sebuah
catatan tampil di situs publik atau belum.

Repo ini sebelumnya blog statis Eleventy dengan catatan dalam file
Markdown di root; sudah dimigrasikan penuh ke Next.js + Supabase
(cutover selesai) supaya bisa punya autentikasi, komentar, progress
belajar, dan search. Aturan di bawah ini WAJIB diikuti setiap kali ada
perubahan di repo, baik oleh Claude maupun kontributor lain.

## 1. Alur Git untuk pengembangan

- Semua branch kerja/pengembangan **wajib dibuat dari `main` terbaru**:
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
- `main` adalah branch yang di-deploy Vercel (root directory `web`) —
  setiap push ke `main` langsung memengaruhi situs live.

## 2. Alur konten (tabel `notes` di Supabase)

Konten catatan tidak lagi berupa file yang di-commit ke Git. Aturan
draft/publish-nya dilakukan lewat kolom, bukan branch:

- Catatan baru/revisi disimpan dengan `status = 'draft'` dulu — tidak
  tampil di situs publik (semua query publik di `lib/queries.ts` selalu
  filter `status = 'published'`).
- Publish (`status` diubah jadi `'published'`) **hanya atas perintah
  eksplisit** user, sama seperti semangat aturan `draft`→`main` di Git:
  tidak ada yang tayang ke publik tanpa izin.
- Menulis/mengubah catatan sekarang lewat SQL langsung
  (`web/scripts/run-sql.mjs`) atau lewat data di
  `web/scripts/seed-data.mjs` + `npm run seed` /
  `node scripts/seed-via-sql.mjs`. Belum ada UI admin untuk ini.
- Setiap kali isi catatan diverifikasi ulang (mis. lewat riset internet)
  dan dipastikan masih akurat, update kolom `updated_at` catatan itu ke
  waktu verifikasi.

## 3. Standar isi materi

Setiap catatan baru atau revisi materi harus memenuhi hal-hal berikut:

1. **Fokus skill dasar** — bahas konsep/skill fundamental dari topik
   tersebut, bukan kasus advanced/niche. Kalau satu topik punya banyak
   sub-skill, pecah jadi beberapa catatan kecil per skill dasar, jangan
   digabung jadi satu catatan panjang yang membahas banyak hal sekaligus.
2. **Ada contoh konkret** — setiap konsep yang dijelaskan harus disertai
   contoh kode/kasus nyata yang bisa langsung dicoba, bukan cuma
   penjelasan teori.
3. **Ada sumber valid** — setiap catatan wajib mencantumkan minimal satu
   sumber rujukan yang kredibel dan benar-benar ada (dokumentasi resmi
   bahasa/tool, buku, atau situs yang diakui luas), disimpan di kolom
   `sources` (`jsonb`, array `{label, url}`) dan ditampilkan otomatis di
   bagian "Sumber" halaman catatan. Jangan mengarang sumber atau
   mencantumkan link yang belum diverifikasi keberadaannya.
4. **Sertakan diagram kalau membantu pemahaman** — untuk konsep yang
   punya alur, state, atau struktur (bukan sekadar daftar API), tambahkan
   diagram **Mermaid asli** (bukan ASCII) di dalam kolom `content`, pakai
   fenced code block dengan tag ```` ```mermaid ````. Situs ini me-render
   Mermaid lewat `web/components/Mermaid.tsx`, mendukung `graph`/
   `flowchart`, `gitGraph`, `erDiagram`, dst. Untuk topik yang lebih pas
   dijelaskan lewat tabel perbandingan daripada diagram alur (mis. "list
   vs tuple vs dict"), tabel Markdown (GFM) juga sah — sudah ada styling-nya
   di `globals.css`. Diagram melengkapi contoh kode di poin 2, bukan
   menggantikannya. Lihat `web/scripts/seed-data.mjs` untuk contoh nyata
   tiap jenis diagram.

### Struktur data satu catatan

```
categories          notes
-------------------  --------------------------------
id, name, slug       id, category_id, title, slug
                      content (markdown + mermaid)
                      sources (jsonb: [{label, url}])
                      status ('draft' | 'published')
                      created_at, updated_at
```

Kategori mengikuti tabel `categories` (bukan folder seperti versi
Eleventy dulu) — buat baris kategori baru dulu kalau memang perlu
kategori baru, baru tambahkan catatannya.
