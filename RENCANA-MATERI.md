# Rencana Materi Catatan Belajar

File internal, bukan konten yang dipublikasikan (lihat `.eleventyignore`).
Tujuannya: peta jalan materi per kategori supaya agent lain (atau sesi
Claude lain) bisa lanjut menulis catatan baru tanpa tumpang tindih dan
tetap bertahap (dasar dulu, baru lanjutan) — bukan berdasarkan preferensi
sesaat, tapi mengikuti urutan wajar belajar satu topik.

## Cara pakai

1. Pilih kategori, ambil butir **belum ditulis** paling atas (urutan sudah
   disusun dari prasyarat ke lanjutan).
2. Ikuti aturan di `CLAUDE.md`: satu skill dasar per catatan, wajib ada
   contoh kode konkret, wajib ada `## Sumber` yang valid dan bisa
   diverifikasi (jangan mengarang link).
3. Kerjakan di branch baru dari `main` terbaru, lalu merge ke `draft`
   (bukan langsung ke `main`) — lihat bagian 1 `CLAUDE.md`.
4. Setelah catatan baru ditulis, centang `[x]` butir yang sudah selesai di
   file ini dan sertakan dalam commit yang sama.
5. Kalau menulis catatan yang ternyata butuh prasyarat yang belum ada di
   daftar ini, tambahkan butir itu ke roadmap alih-alih melompat langsung
   ke topik lanjutan.

Legenda: `[x]` sudah ada di `notes/`, `[ ]` belum ditulis.

---

## Git

- [x] Dasar Branching di Git (`notes/git/branching.md`)
- [ ] **Dasar Commit & Staging** — `git init`/`clone`, `add`, `commit`,
      `status`, `diff`, `log` dasar. *(Prasyarat yang sebenarnya lebih
      dasar dari branching — prioritas tinggi karena catatan branching
      yang ada sekarang mengasumsikan ini sudah dipahami.)*
- [ ] `.gitignore` dan File yang Tidak Perlu Ditrack
- [ ] Remote Dasar: `push`, `pull`, `fetch`, `clone` dari repo remote
- [ ] Membatalkan Perubahan: `git restore`, `git reset` (mode dasar),
      `git revert` — kapan pakai yang mana
- [ ] Resolusi Konflik Merge Dasar
- [ ] `git stash` untuk Menyimpan Perubahan Sementara

## JavaScript

- [x] Memahami Closure (`notes/javascript/closure.md`)
- [x] Async/Await di JavaScript (`notes/javascript/async-await.md`)
- [ ] **Promise Dasar** — state pending/fulfilled/rejected, `.then()`,
      `.catch()`. *(Idealnya ditulis sebelum Async/Await karena
      async/await adalah gula sintaks di atas Promise; tambahkan sebagai
      prasyarat meski async/await sudah lebih dulu ada.)*
- [ ] Variabel & Scope: `let`, `const`, `var`, dan block scope
- [ ] Fungsi & Arrow Function Dasar
- [ ] Array Method Dasar: `map`, `filter`, `reduce`, `forEach`
- [ ] Destructuring Object & Array
- [ ] Modules Dasar: `import` / `export`
- [ ] Error Handling dengan `try/catch/finally`

## Next.js (App Router)

- [x] Routing Dasar dengan App Router (`notes/nextjs/routing-dasar.md`)
- [x] Server Component vs Client Component
      (`notes/nextjs/server-client-components.md`)
- [ ] **Instalasi & Struktur Project Dasar** — `create-next-app`, struktur
      folder awal, `npm run dev`. *(Prasyarat sebelum routing, belum ada
      sama sekali di catatan saat ini.)*
- [ ] Layout & Nested Layout Dasar (`layout.tsx` bersarang)
- [ ] Navigasi dengan `<Link>` dan `useRouter` Dasar
- [ ] Data Fetching Dasar di Server Component (fetch + caching dasar)
- [ ] Route Handlers Dasar (`app/api/.../route.ts`)
- [ ] Environment Variables Dasar (`.env.local`, prefix `NEXT_PUBLIC_`)
- [ ] Metadata Dasar untuk SEO (`generateMetadata`, `metadata` object)

## Python

- [x] List Comprehension (`notes/python/list-comprehension.md`)
- [x] Virtual Environment / venv (`notes/python/virtual-environment.md`)
- [ ] **Sintaks & Tipe Data Dasar** — variabel, `int`/`float`/`str`/`bool`,
      operator dasar. *(Prasyarat paling dasar, belum ada sama sekali.)*
- [ ] Struktur Kontrol: `if`/`elif`/`else`, `for`, `while`
- [ ] Struktur Data Dasar: `list`, `tuple`, `dict`, `set` — operasi dasar
      *(sebaiknya ditulis sebelum List Comprehension karena jadi
      prasyaratnya)*
- [ ] Fungsi Dasar: `def`, parameter, `return`, default argument
- [ ] Error Handling: `try`/`except`/`finally`
- [ ] Membaca & Menulis File Dasar (`open`, context manager `with`)
- [ ] Import & Module Dasar

## Supabase

- [x] Setup Supabase Client (`notes/supabase/setup-client.md`)
- [x] Query Data Dasar / CRUD (`notes/supabase/query-dasar.md`)
- [ ] Autentikasi Dasar: sign up, sign in, sign out
      (`supabase.auth.*`)
- [ ] Row Level Security (RLS) Dasar — konsep policy dan contoh policy
      sederhana per tabel
- [ ] Storage Dasar: upload & ambil URL file
- [ ] Realtime Subscription Dasar (`supabase.channel(...).on(...)`)

## TypeScript

- [x] Tipe Dasar & Type Annotation (`notes/typescript/tipe-dasar.md`)
- [x] Interface & Type Alias
      (`notes/typescript/interface-dan-type-alias.md`)
- [ ] Union Type & Literal Type Dasar
- [ ] Type Narrowing Dasar (`typeof`, `instanceof`, `in`)
- [ ] Generics Dasar (fungsi generic sederhana, `<T>`)
- [ ] Enum Dasar
- [ ] Opsi `tsconfig.json` yang Paling Penting untuk Pemula

---

## Kategori baru yang mungkin relevan (belum diprioritaskan)

Belum ditambahkan sebagai kategori resmi — catat dulu di sini, putuskan
nanti kalau memang mau dibuka kategori baru di `notes/<kategori>/`:

- **React dasar** — beberapa catatan Next.js sudah memakai `useState`
  langsung tanpa penjelasan dasar React (state, props, event handler).
  Next.js mengasumsikan React, jadi kategori ini bisa jadi prasyarat
  bersama untuk semua catatan Next.js yang butuh interaktivitas.
- **SQL dasar** — Supabase pakai Postgres; query builder-nya lebih mudah
  dipahami kalau ada dasar `SELECT`/`WHERE`/`JOIN` SQL biasa.
