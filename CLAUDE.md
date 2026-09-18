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

Filosofinya: catatan bukan potongan referensi lepas — tiap catatan adalah
satu langkah di **roadmap belajar** kategorinya (lihat bagian 4), jadi
harus terasa seperti bagian dari cerita yang berkesinambungan, bukan
entri glosarium.

Setiap catatan baru atau revisi materi harus memenuhi hal-hal berikut:

1. **Fokus skill dasar** — bahas konsep/skill fundamental dari topik
   tersebut, bukan kasus advanced/niche. Kalau satu topik punya banyak
   sub-skill, pecah jadi beberapa catatan kecil per skill dasar, jangan
   digabung jadi satu catatan panjang yang membahas banyak hal sekaligus.
2. **Buka dengan masalah nyata, bukan syntax** — paragraf pembuka harus
   menjawab "masalah apa yang diselesaikan konsep ini" (idealnya dengan
   membandingkan ke cara lama/tanpa konsep ini) sebelum masuk ke definisi
   atau contoh kode. Kalau catatan ini punya prasyarat catatan lain di
   kategori yang sama (lihat `order_index` di bagian 4), sebut secara
   eksplisit di paragraf pembuka apa yang tadinya sudah dipelajari dan
   kenapa itu jadi dasar buat topik ini — supaya pembaca yang mengikuti
   urutan roadmap merasakan kesinambungan, bukan lompat topik.
3. **Ada contoh konkret** — setiap konsep yang dijelaskan harus disertai
   contoh kode/kasus nyata yang bisa langsung dicoba, bukan cuma
   penjelasan teori.
4. **Ada sumber valid** — setiap catatan wajib mencantumkan minimal satu
   sumber rujukan yang kredibel dan benar-benar ada (dokumentasi resmi
   bahasa/tool, buku, atau situs yang diakui luas), disimpan di kolom
   `sources` (`jsonb`, array `{label, url}`) dan ditampilkan otomatis di
   bagian "Sumber" halaman catatan. Jangan mengarang sumber atau
   mencantumkan link yang belum diverifikasi keberadaannya.
5. **Sertakan diagram kalau membantu pemahaman** — untuk konsep yang
   punya alur, state, atau struktur (bukan sekadar daftar API), tambahkan
   diagram **Mermaid asli** (bukan ASCII) di dalam kolom `content`, pakai
   fenced code block dengan tag ```` ```mermaid ````. Situs ini me-render
   Mermaid lewat `web/components/Mermaid.tsx`, mendukung `graph`/
   `flowchart`, `gitGraph`, `erDiagram`, dst. Untuk topik yang lebih pas
   dijelaskan lewat tabel perbandingan daripada diagram alur (mis. "list
   vs tuple vs dict"), tabel Markdown (GFM) juga sah — sudah ada styling-nya
   di `globals.css`. Diagram melengkapi contoh kode di poin 3, bukan
   menggantikannya. Lihat `web/scripts/seed-data.mjs` untuk contoh nyata
   tiap jenis diagram.
6. **Latihan hands-on kalau topiknya cocok** — isi kolom `practice`
   (markdown, terpisah dari `content`) dengan instruksi latihan konkret
   yang dikerjakan pembaca di project/environment mereka sendiri (bukan
   di platform ini — belum ada sandbox interaktif). Latihan yang bagus
   membuat pembaca *mengamati sesuatu yang nyata* (mis. cek ukuran bundle
   di Network tab, baca pesan error yang muncul), bukan cuma "ketik ulang
   kode di atas". Nullable — topik yang murni konseptual atau konfigurasi
   boleh tidak punya latihan. Ditampilkan otomatis sebagai kotak
   "🎯 Coba Sendiri" di halaman catatan.

## 4. Roadmap per kategori

Kategori bukan cuma pengelompokan, tapi representasi satu **roadmap
belajar** untuk teknologi tertentu:

- `notes.order_index` menentukan urutan belajar yang disarankan di dalam
  kategori — halaman kategori menampilkannya sebagai daftar bernomor, dan
  ini juga yang dipakai untuk navigasi "Sebelumnya/Selanjutnya" di
  halaman catatan (`lib/queries.ts`: `getAdjacentNotes`). Prasyarat harus
  ber-`order_index` lebih kecil dari catatan yang membutuhkannya.
- `categories.description` (nullable, markdown) adalah **narasi
  roadmap**: masalah besar apa yang diselesaikan teknologi ini secara
  keseluruhan, dan pembaca akan bisa bikin apa setelah menyelesaikan
  urutan catatan di kategori itu. Ditampilkan di atas daftar catatan pada
  halaman kategori. Tulis ini begitu kategori punya narasi
  berkesinambungan yang jelas antar-catatannya — kategori dengan cuma
  satu catatan atau catatan yang saling lepas boleh dibiarkan `null`.
- Progress belajar (`note_progress`) dihitung per kategori di halaman
  kategori (progress bar "X dari Y selesai") — pastikan `order_index`
  yang benar supaya progress terasa seperti menyelesaikan roadmap, bukan
  centang-centang acak.

Lihat kategori `nextjs` (`web/scripts/seed-data.mjs`) sebagai contoh
acuan pola ini diterapkan penuh: `description` di level kategori, dan
kedua catatannya saling menyambung eksplisit di paragraf pembuka.

### Struktur data satu catatan

```
categories                    notes
-----------------------------  --------------------------------
id, name, slug                 id, category_id, title, slug
description (narasi roadmap)   content (markdown + mermaid)
                                sources (jsonb: [{label, url}])
                                practice (markdown, latihan hands-on)
                                order_index (urutan belajar)
                                status ('draft' | 'published')
                                created_at, updated_at
```

Kategori mengikuti tabel `categories` (bukan folder seperti versi
Eleventy dulu) — buat baris kategori baru dulu kalau memang perlu
kategori baru, baru tambahkan catatannya.
