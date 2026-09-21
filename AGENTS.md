# 🤖 Project Guidelines for AI Agents

Ini **Single Source of Truth (SSOT)** untuk semua AI agent yang bekerja di
repo ini — Claude Code, Cursor, Windsurf, Aider, agent lain, siapa pun.
File aturan spesifik-agent (`CLAUDE.md`, `.cursorrules`, `.windsurfrules`,
`.aider.conf.yml`) cuma bridge ke file ini — jangan duplikasi aturan di
sana, edit di sini.

> **Catatan:** `web/AGENTS.md` dan `web/CLAUDE.md` itu file **berbeda**,
> bukan duplikat SSOT ini — keduanya di-generate & di-maintain otomatis
> oleh `next dev`/`next build` sendiri (Next.js 16+), isinya cuma
> peringatan kalau versi Next.js yang dipakai mungkin beda dari training
> data agent (breaking changes API/convention). Biarkan apa adanya,
> jangan dihapus manual — akan otomatis ditulis ulang tiap `next dev`
> jalan. Aturan project tetap di sini (root `AGENTS.md`), bukan di sana.

## 📋 Project Context & Purpose

Blog Catatan Belajar — kumpulan catatan pelajaran (roadmap per teknologi:
Git, JavaScript, TypeScript, Python, Next.js, Supabase, .NET, dll),
dibangun dengan **Next.js (App Router) + TypeScript** di folder `web/`,
konten & auth di **Supabase (Postgres)**, deploy otomatis ke **Vercel**
dari branch `main`. Fitur: baca catatan per roadmap kategori, auth
(login/daftar), komentar, progress belajar, search full-text, dan
dashboard admin (`/admin`, role-gated lewat RBAC) untuk CRUD konten.

## ⚡ Command Matrix (Execution Rules)

Semua command dijalankan dari folder **`web/`** (atau lewat `make <target>`
dari root, yang cuma wrapper `cd web && npm run <target>`):

- **Install:** `npm install`
- **Dev server:** `npm run dev`
- **Build:** `npm run build`
- **Lint (strict, 0 warning):** `npm run lint -- --max-warnings 0`
- **Typecheck:** `npm run typecheck`
- **Unit test (Vitest):** `npm run test` (sekali jalan) / `npm run test:watch` (mode watch)
- **Unit test + coverage gate:** `npm run test:coverage`
- **Full verification (WAJIB sebelum bikin PR / sebelum lapor kerja selesai):**
  `npm run verify` — menjalankan lint + typecheck + test:coverage + build
  berurutan, harus semuanya lolos.
- **Jalankan migrasi baru ke Supabase:** lewat Supabase MCP
  (`apply_migration`) atau `node scripts/run-sql.mjs <file.sql>` — lihat
  bagian 5.

Unit test (Vitest) sudah ada tapi **scope-nya sengaja terbatas** ke
modul logika murni di `web/lib/` (`slugify.ts`, `validateNote.ts`,
`validateCategory.ts`, `normalizeNoteSummary.ts`) — lihat
`web/vitest.config.mts` untuk daftar file yang di-cover dan kenapa
coverage gate 80% cuma berlaku untuk scope itu, bukan seluruh
`lib`/`app`. Kalau menambah modul logika murni baru (tidak butuh
Supabase/Next request context), tambahkan test-nya juga dan masukkan ke
`coverage.include` di `vitest.config.mts`. Jangan naikkan/turunkan angka
threshold cuma supaya gate lolos — perbaiki testnya atau kecilkan scope
`include`-nya secara jujur.

## ⛔ Larangan Tegas (Strictly Forbidden Actions)

1. **JANGAN** install/uninstall/upgrade dependency (`package.json`) tanpa
   persetujuan eksplisit dari user, sekecil apa pun.
2. **JANGAN** ubah `package-lock.json` secara manual — selalu lewat
   `npm install`/`npm ci` supaya tetap sinkron dengan `package.json`.
3. **JANGAN** hapus atau skip test yang sudah ada cuma supaya build/CI
   lolos. Kalau test gagal, perbaiki penyebabnya.
4. **JANGAN** ubah skema database Supabase langsung di SQL Editor/dashboard
   tanpa membuat file migrasi baru di `web/supabase/migrations/` dulu
   (lihat bagian 5) — schema drift antara file migrasi dan database live
   membuat riwayat perubahan tidak bisa dilacak.
5. **JANGAN** edit file migrasi yang sudah pernah di-commit — kalau perlu
   mengubah lagi, buat file migrasi baru (incremental), jangan menimpa
   yang lama.
6. **JANGAN** taruh secret, API key, password, atau token di kode,
   komentar, atau commit message. Semua secret lewat environment variable
   (`.env.local`, GitHub Actions secrets) yang sudah di-`.gitignore`.
7. **JANGAN** refactor file di luar scope permintaan/prompt yang sedang
   dikerjakan.
8. **JANGAN** merge/push ke `main` atas inisiatif sendiri — lihat aturan
   branch di bagian 1.
9. **JANGAN** publish catatan (`status = 'published'`) tanpa perintah
   eksplisit user — lihat bagian 3.

---

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
  setiap push ke `main` langsung memengaruhi situs live. CI (`.github/workflows/ci.yml`)
  jalan di tiap push/PR ke `main`/`draft` sebagai quality gate — lihat bagian 6.

## 2. Alur konten (tabel `notes` di Supabase)

Konten catatan tidak lagi berupa file yang di-commit ke Git. Aturan
draft/publish-nya dilakukan lewat kolom, bukan branch:

- Catatan baru/revisi disimpan dengan `status = 'draft'` dulu — tidak
  tampil di situs publik (semua query publik di `lib/queries.ts` selalu
  filter `status = 'published'`).
- Publish (`status` diubah jadi `'published'`) **hanya atas perintah
  eksplisit** user, sama seperti semangat aturan `draft`→`main` di Git:
  tidak ada yang tayang ke publik tanpa izin.
- Menulis/mengubah catatan bisa lewat dashboard `/admin` (perlu login
  dengan akun ber-role `admin` di `profiles.role`) atau tetap lewat SQL
  langsung (`web/scripts/run-sql.mjs`) / data di `web/scripts/seed-data.mjs`
  + `npm run seed` / `node scripts/seed-via-sql.mjs`. Keduanya sah — SQL
  masih dipakai untuk migrasi/seed massal, dashboard untuk perubahan
  satuan sehari-hari. Lihat `web/README.md` bagian "Role admin" untuk cara
  mempromosikan user jadi admin (sengaja tidak ada jalur self-service).
- Setiap kali isi catatan diverifikasi ulang (mis. lewat riset internet)
  dan dipastikan masih akurat, update kolom `updated_at` catatan itu ke
  waktu verifikasi.

## 3. Standar isi materi

Filosofinya: catatan bukan potongan referensi lepas — tiap catatan adalah
satu langkah di **roadmap belajar** kategorinya (lihat bagian 4), jadi
harus terasa seperti bagian dari cerita yang berkesinambungan, bukan
entri glosarium.

Setiap catatan baru atau revisi materi **wajib** memenuhi hal-hal
berikut. Ini standar mengikat untuk siapa pun/apa pun yang menulis
catatan di repo ini — termasuk AI agent lain yang bukan Claude — supaya
kualitas dan bentuknya konsisten di seluruh platform, bukan tergantung
siapa yang menulis.

1. **Fokus skill dasar** — bahas konsep/skill fundamental dari topik
   tersebut, bukan kasus advanced/niche. Kalau satu topik punya banyak
   sub-skill, pecah jadi beberapa catatan kecil per skill dasar, jangan
   digabung jadi satu catatan panjang yang membahas banyak hal sekaligus.
2. **Buka dengan masalah nyata, bukan syntax** — paragraf pembuka harus
   menjawab "masalah apa yang diselesaikan konsep ini" (idealnya dengan
   membandingkan ke cara lama/tanpa konsep ini) sebelum masuk ke definisi
   atau contoh kode. Kalau catatan ini bukan langkah pertama roadmap
   kategorinya (lihat `order_index` di bagian 4), sebut secara eksplisit
   di paragraf pembuka apa yang tadinya sudah dipelajari di catatan
   sebelumnya dan kenapa itu jadi dasar buat topik ini — supaya pembaca
   yang mengikuti urutan roadmap merasakan kesinambungan, bukan lompat
   topik. Jangan mengulang kalimat penyambung ini kalau isinya cuma
   template kosong ("Setelah paham X di catatan sebelumnya...") tanpa
   makna — harus benar-benar menjelaskan keterkaitannya.
3. **Prasyarat eksplisit kalau ada hal DI LUAR roadmap ini** — isi kolom
   `prerequisites` (`jsonb`, array `{label, url?}`, sama bentuknya dengan
   `sources` tapi `url` opsional) untuk hal konkret yang harus sudah ada
   *sebelum* mulai catatan ini dan **tidak** didapat dari catatan
   sebelumnya di roadmap yang sama:
   - Tool/software yang harus sudah terinstall, sebutkan versi minimum
     kalau relevan dan `url` ke halaman download/install resminya. Contoh:
     `{ label: "Node.js versi 18.17+ sudah terinstall", url: "https://nodejs.org" }`.
   - Akun/layanan eksternal yang harus sudah dibuat (mis. akun Supabase).
   - Pengetahuan dari topik/kategori lain yang platform ini belum punya
     roadmap-nya sendiri (mis. dasar React untuk roadmap Next.js) — kalau
     ini berlaku untuk **seluruh kategori**, taruh sekali di
     `categories.description` (lihat bagian 4), bukan diulang di tiap
     catatan.

   **Jangan** isi `prerequisites` dengan "sudah menyelesaikan catatan
   sebelumnya di roadmap ini" — itu sudah otomatis jelas dari posisi
   `order_index` dan sudah ditangani oleh poin 2. Kolom ini nullable/array
   kosong secara default; kebanyakan catatan di tengah roadmap tidak
   butuh apa pun di luar itu, jadi biarkan kosong.
4. **Ada contoh konkret** — setiap konsep yang dijelaskan harus disertai
   contoh kode/kasus nyata yang bisa langsung dicoba, bukan cuma
   penjelasan teori. **Kalau catatan ini tentang instalasi/setup sebuah
   tool** (seperti "Instalasi & Struktur Project"), WAJIB sertakan
   command CLI instalasinya secara lengkap dan siap disalin-jalankan
   (fenced code block ` ```bash `), bukan dideskripsikan naratif saja.
5. **Ada sumber valid** — setiap catatan wajib mencantumkan minimal satu
   sumber rujukan yang kredibel dan benar-benar ada (dokumentasi resmi
   bahasa/tool, buku, atau situs yang diakui luas), disimpan di kolom
   `sources` (`jsonb`, array `{label, url}`, keduanya wajib diisi di
   sini — beda dengan `prerequisites` yang `url`-nya opsional) dan
   ditampilkan otomatis di bagian "Sumber" halaman catatan. Jangan
   mengarang sumber atau mencantumkan link yang belum diverifikasi
   keberadaannya.
6. **Sertakan diagram kalau membantu pemahaman** — untuk konsep yang
   punya alur, state, atau struktur (bukan sekadar daftar API), tambahkan
   diagram **Mermaid asli** (bukan ASCII) di dalam kolom `content`, pakai
   fenced code block dengan tag ```` ```mermaid ````. Situs ini me-render
   Mermaid lewat `web/components/Mermaid.tsx`, mendukung `graph`/
   `flowchart`, `gitGraph`, `erDiagram`, dst. Untuk topik yang lebih pas
   dijelaskan lewat tabel perbandingan daripada diagram alur (mis. "list
   vs tuple vs dict"), tabel Markdown (GFM) juga sah — sudah ada styling-nya
   di `globals.css` (termasuk `ol`/`ul` numbered & bullet list). Diagram
   melengkapi contoh kode di poin 4, bukan menggantikannya. Lihat
   `web/scripts/seed-data.mjs` untuk contoh nyata tiap jenis diagram.
7. **Latihan hands-on kalau topiknya cocok** — isi kolom `practice`
   (markdown, terpisah dari `content`) dengan instruksi latihan konkret
   yang dikerjakan pembaca di project/environment mereka sendiri (bukan
   di platform ini — belum ada sandbox interaktif). Latihan yang bagus
   membuat pembaca *mengamati sesuatu yang nyata* (mis. cek ukuran bundle
   di Network tab, baca pesan error yang muncul), bukan cuma "ketik ulang
   kode di atas". Nullable — topik yang murni konseptual atau konfigurasi
   boleh tidak punya latihan. Ditampilkan otomatis sebagai kotak
   "🎯 Coba Sendiri" di halaman catatan.
8. **Kuis kalau ada waktu (opsional, direkomendasikan)** — tiap catatan
   dan tiap kategori bisa punya kuis pilihan ganda, ditampilkan di
   paling bawah halaman (setelah "Sumber" untuk catatan, setelah daftar
   catatan untuk kategori), **cuma tampil untuk user yang login**. Beda
   dari kolom-kolom di atas, kuis **tidak** disimpan di
   `seed-data.mjs`/tabel `notes` — dikelola terpisah lewat dashboard
   admin (`/admin/quiz/note/<id>` atau `/admin/quiz/category/<id>`, link
   "Kuis" ada di `/admin/notes` & `/admin/categories`), tabel
   `note_quiz_questions`/`category_quiz_questions`. Minimal 2 opsi per
   soal, tandai satu sebagai jawaban benar, penjelasan opsional
   (ditampilkan ke user setelah submit). Nullable — banyak catatan boleh
   belum punya kuis sama sekali, tambahkan bertahap lewat dashboard,
   bukan wajib ada sejak catatan dibuat.

### Template objek catatan (WAJIB diikuti bentuknya)

Ini bentuk persis satu entri di array `notes` pada
`web/scripts/seed-data.mjs` — dipakai baik oleh `npm run seed` maupun
`node scripts/seed-via-sql.mjs`. Ikuti field dan urutannya supaya
konsisten dengan catatan yang sudah ada:

```js
{
  category: "slug-kategori-yang-sudah-ada", // wajib — kategori harus sudah ada di array `categories`
  slug: "slug-singkat-kebab-case",           // wajib, unik di dalam kategorinya
  order: 0,                                   // wajib — urutan belajar (0, 1, 2, ...), lihat bagian 4
  title: "Judul Catatan",                     // wajib
  content: `...markdown, ikuti poin 1-2 & 4-6 di atas...`, // wajib
  sources: [{ label: "...", url: "https://..." }],         // wajib, minimal 1 — lihat poin 5
  prerequisites: [{ label: "...", url: "https://..." }],   // opsional (default []) — lihat poin 3, url boleh diomit
  practice: `...markdown, latihan hands-on...`,             // opsional (default null) — lihat poin 7
}
```

Kategori baru (di array `categories`) bentuknya:

```js
{
  name: "Nama Kategori",
  slug: "slug-kategori",
  description: `...markdown, narasi roadmap...`, // opsional (default null) — lihat bagian 4
}
```

## 4. Roadmap per kategori

Kategori bukan cuma pengelompokan, tapi representasi satu **roadmap
belajar** untuk teknologi tertentu:

- `notes.order_index` menentukan urutan belajar yang disarankan di dalam
  kategori — halaman kategori menampilkannya sebagai daftar bernomor, dan
  ini juga yang dipakai untuk navigasi "Sebelumnya/Selanjutnya" di
  halaman catatan (`lib/queries.ts`: `getAdjacentNotes`). Catatan baru
  masuk di posisi yang tepat sesuai prasyaratnya — kalau perlu
  menyisipkan di tengah roadmap yang sudah ada, geser `order_index`
  catatan-catatan setelahnya.
- `categories.description` (nullable, markdown) adalah **narasi
  roadmap**: masalah besar apa yang diselesaikan teknologi ini secara
  keseluruhan, pembaca akan bisa bikin apa setelah menyelesaikan urutan
  catatan di kategori itu, dan asumsi pengetahuan dasar yang berlaku ke
  **seluruh roadmap** (lihat poin 3 soal prasyarat lintas-kategori).
  Ditampilkan di atas daftar catatan pada halaman kategori. Tulis ini
  begitu kategori punya narasi berkesinambungan yang jelas
  antar-catatannya — kategori dengan cuma satu catatan atau catatan yang
  saling lepas boleh dibiarkan `null`.
- Progress belajar (`note_progress`) dihitung per kategori di halaman
  kategori (progress bar "X dari Y selesai") — pastikan `order_index`
  yang benar supaya progress terasa seperti menyelesaikan roadmap, bukan
  centang-centang acak.

Lihat kategori `nextjs` (`web/scripts/seed-data.mjs`, 9 catatan) sebagai
contoh acuan pola ini diterapkan penuh: `description` di level kategori
(termasuk asumsi pengetahuan dasarnya), `prerequisites` tool di catatan
pertama, dan tiap catatan saling menyambung eksplisit di paragraf
pembuka.

### Struktur data satu catatan

```
categories                    notes
-----------------------------  --------------------------------
id, name, slug                 id, category_id, title, slug
description (narasi roadmap +  content (markdown + mermaid)
  asumsi pengetahuan dasar)    sources (jsonb: [{label, url}], url wajib)
                                prerequisites (jsonb: [{label, url?}],
                                  url opsional — tool/akun/pengetahuan
                                  di LUAR roadmap ini)
                                practice (markdown, latihan hands-on)
                                order_index (urutan belajar)
                                status ('draft' | 'published')
                                created_at, updated_at
```

Kategori mengikuti tabel `categories` (bukan folder seperti versi
Eleventy dulu) — buat baris kategori baru dulu kalau memang perlu
kategori baru, baru tambahkan catatannya.

## 5. Migrasi database (`web/supabase/`)

- `schema.sql` = **snapshot** — bentuk akhir skema database saat ini,
  ditulis idempotent (`create table if not exists`, `add column if not
  exists`, `drop policy if exists` sebelum `create policy`) supaya aman
  dijalankan ulang kapan saja ke project Supabase baru dari nol.
- `migrations/NNNNMMDD_nama-perubahan.sql` = **riwayat incremental** —
  tiap perubahan skema (kolom baru, policy baru, tabel baru) ditulis
  sebagai file baru di folder ini, bernomor urut/timestamp. **Jangan
  pernah edit file migrasi yang sudah ada** — buat file baru untuk
  perubahan lanjutan, meski itu memperbaiki migrasi sebelumnya (lihat
  contoh `0002_fix_prevent_role_self_escalation.sql` yang memperbaiki
  bug di `0001`, bukan mengedit `0001` langsung).
- Urutan kerja untuk perubahan skema: (1) tulis file migrasi baru di
  `migrations/`, (2) terapkan ke database lewat Supabase MCP
  (`apply_migration`, otomatis tercatat di tabel
  `supabase_migrations.schema_migrations` milik Supabase) atau
  `node scripts/run-sql.mjs <file>`, (3) update `schema.sql` supaya tetap
  jadi cerminan akurat dari skema saat ini.
- Jangan ubah skema lewat SQL Editor dashboard secara ad-hoc tanpa
  menuliskannya sebagai file migrasi — kalau itu terjadi, tulis migrasi
  susulan yang merekonstruksi perubahannya supaya riwayatnya tetap utuh.

## 6. CI/CD & Verifikasi Otomatis

- `.github/workflows/ci.yml` — quality gate wajib lolos sebelum merge:
  `npm audit --audit-level=high`, lint (`--max-warnings 0`), typecheck
  (`tsc --noEmit`), unit test + coverage gate (`vitest`, scope terbatas —
  lihat bagian Command Matrix), build (`next build`), dan scan secret
  (`gitleaks`). Jalan di tiap push/PR ke `main` dan `draft`. **Dilarang
  menambahkan `|| true` atau flag permissive lain** ke langkah
  lint/typecheck/test di workflow ini — kalau suatu step gagal, itu
  harus tetap menggagalkan CI, bukan diloloskan paksa.
- `.github/workflows/ai-review.yml` — AI code reviewer otomatis di tiap
  PR (custom script `scripts/ai_pr_review.py`, bukan `pr-agent`/litellm —
  lihat komentar di file itu soal kenapa). Butuh secret `OPENAI_API_KEY`
  (+ `OPENAI_BASE_URL`, `OPENAI_MODEL` opsional) di GitHub repo settings
  supaya aktif penuh; tanpa secret itu dia cuma posting komentar fallback
  dan tidak memblokir PR.
- **Unit test (Vitest) ada tapi cuma cover modul logika murni** di
  `web/lib/` — query Supabase, server actions (I/O-nya), komponen React,
  dan **E2E (Playwright)** masih belum ada test-nya sama sekali. Ini gap
  yang disengaja didokumentasikan, bukan disembunyikan. Lihat checklist
  di akhir file.
- **Socket.dev** — GitHub App terpisah (instal lewat GitHub Marketplace,
  bukan file di repo) yang scan paket npm untuk perilaku berbahaya
  (typosquatting, install script mencurigakan, kode ter-obfuscate) —
  beda dari `npm audit`/Dependabot yang cuma cocokkan CVE yang sudah
  publik diketahui. **Belum diinstal** — manual oleh pemilik repo.
- Branch protection (`main` & `draft`: wajib status check `quality-gate`
  lolos, restrict direct push) **belum diaktifkan** — ini pengaturan
  GitHub repo Settings, bukan file di repo, jadi harus diaktifkan manual
  oleh pemilik repo. Begitu juga **GitHub Dependabot security alerts**
  (beda dari `.github/dependabot.yml` yang sudah aktif untuk PR update
  versi — "security alerts" ini toggle terpisah di Settings → Security →
  Code security and analysis) dan Socket.dev GitHub App di atas —
  keduanya instalasi lewat GitHub UI/Marketplace, bukan lewat commit.

## 7. Serah terima antar-agent

Kalau pekerjaan berpindah antar-agent (Claude Code, Cursor, dst) dalam
satu task, atau task besar dikerjakan bertahap lintas sesi, tulis
ringkasan singkat di `AGENT_LOG.md` (format & contoh ada di file itu)
supaya agent berikutnya tahu konteks tanpa harus membaca ulang seluruh
riwayat commit.

---

## 📋 Checklist Status Standar Repo (jujur, bukan aspirasional)

- [x] `AGENTS.md` sebagai SSOT + Command Matrix + Forbidden Actions
- [x] Bridge config (`CLAUDE.md`, `.cursorrules`, `.windsurfrules`,
  `.aider.conf.yml`) mengarah ke file ini
- [x] `.agentignore` untuk hemat token/konteks agent
- [x] Command verifikasi tunggal (`npm run verify` di `web/`, `make
  verify` dari root)
- [x] Direktori migrasi DB (`web/supabase/migrations/`) + schema
  snapshot (`web/supabase/schema.sql`)
- [x] Security audit dependency (`npm audit`) & secret scan (`gitleaks`)
  di CI
- [x] Pipeline CI/CD (`ci.yml`) — lint/typecheck/test+coverage/build/audit/gitleaks
  sebagai gate
- [x] AI PR Reviewer (`ai-review.yml`) — aktif penuh begitu secret
  `OPENAI_API_KEY` diisi di GitHub Settings
- [x] `AGENT_LOG.md` untuk serah terima antar-agent
- [x] **Sebagian**: unit test runner (Vitest) + coverage gate — aktif
  dan strict (80%), tapi scope-nya baru modul logika murni di `web/lib/`
  (`slugify`, `validateNote`, `validateCategory`, `normalizeNoteSummary`,
  `validateQuizQuestion` — 38 test, 100% coverage untuk scope itu). Query
  Supabase, server actions (bagian I/O-nya), dan komponen React **belum**
  dites — butuh strategi mocking Supabase yang belum diputuskan.
- [x] Fitur kuis (bagian 3 poin 8) — di akhir catatan & akhir kategori,
  login-gated, dikelola lewat `/admin/quiz/*`. 9 soal contoh sudah diisi
  (2 catatan + 1 kategori) untuk demonstrasi; sisanya (~84 catatan, ~10
  kategori) **belum ada kuisnya** — tambahkan bertahap lewat dashboard
  admin, bukan wajib sekaligus.
- [ ] **Belum**: E2E smoke test (Playwright) — butuh mock service
  Supabase lokal dulu supaya hermetic (tidak bergantung project Supabase
  asli di CI)
- [ ] **Belum diaktifkan (manual, GitHub Settings/Marketplace)**: branch
  protection rule di `main`/`draft`, GitHub Dependabot security alerts
  (Settings → Security → Code security and analysis — beda dari
  `dependabot.yml` yang sudah aktif), Socket.dev GitHub App (scan
  supply-chain/typosquatting npm, lihat bagian 6)
