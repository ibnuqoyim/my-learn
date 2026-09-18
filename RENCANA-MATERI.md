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
3. **Sertakan diagram** sesuai saran di butir "Diagram" masing-masing
   topik di bawah — lihat format di bagian "Cara buat diagram" sebelum
   menulis.
4. Kerjakan di branch baru dari `main` terbaru, lalu merge ke `draft`
   (bukan langsung ke `main`) — lihat bagian 1 `CLAUDE.md`.
5. Setelah catatan baru ditulis, centang `[x]` butir yang sudah selesai di
   file ini dan sertakan dalam commit yang sama.
6. Kalau menulis catatan yang ternyata butuh prasyarat yang belum ada di
   daftar ini, tambahkan butir itu ke roadmap alih-alih melompat langsung
   ke topik lanjutan.

Legenda: `[x]` sudah ada di `notes/`, `[ ]` belum ditulis.

## Cara buat diagram

Situs ini Markdown statis tanpa pipeline gambar/mermaid, jadi diagram
dibuat sebagai **ASCII diagram polos di dalam code fence** (```) —
persis seperti struktur folder di `notes/nextjs/routing-dasar.md`. Tidak
perlu tool eksternal, cukup teks biasa: kotak pakai `[ ]`, panah pakai
`->`/`-->`/`|`, percabangan pakai indentasi atau `+--`. Taruh diagram
tepat setelah penjelasan konsepnya, sebelum atau sesudah contoh kode —
mana yang lebih membantu alur baca. Diagram itu pelengkap contoh kode,
bukan pengganti (aturan #2 `CLAUDE.md` soal contoh konkret tetap wajib).

Kalau satu topik memang lebih pas dijelaskan lewat tabel perbandingan
(mis. "list vs tuple vs dict") daripada diagram alur, tabel juga sah —
intinya representasi visual yang mempercepat pemahaman, bukan literal
harus berbentuk kotak-panah.

---

## Git

- [x] Dasar Branching di Git (`notes/git/branching.md`)
      *(sudah ada diagram commit graph.)*
- [ ] **Dasar Commit & Staging** — `git init`/`clone`, `add`, `commit`,
      `status`, `diff`, `log` dasar. *(Prasyarat yang sebenarnya lebih
      dasar dari branching — prioritas tinggi karena catatan branching
      yang ada sekarang mengasumsikan ini sudah dipahami.)*
  - Diagram: tiga area kerja Git —
    `Working Directory -> (git add) -> Staging Area -> (git commit) -> Repository`
    — supaya jelas bedanya `add` dan `commit`.
- [ ] `.gitignore` dan File yang Tidak Perlu Ditrack
  - Diagram: daftar file dalam folder project, ditandai mana yang
    "dilacak Git" vs "diabaikan (.gitignore)" — dua kolom sederhana.
- [ ] Remote Dasar: `push`, `pull`, `fetch`, `clone` dari repo remote
  - Diagram: dua kotak `Local Repo` dan `Remote Repo (GitHub)` dengan
    panah `push ->` dan `<- pull/fetch` di antaranya.
- [ ] Membatalkan Perubahan: `git restore`, `git reset` (mode dasar),
      `git revert` — kapan pakai yang mana
  - Diagram: garis waktu commit (`A - B - C`) dengan penanda di titik
    mana masing-masing `restore`/`reset`/`revert` bekerja dan apa yang
    berubah di riwayat.
- [ ] Resolusi Konflik Merge Dasar
  - Diagram: dua branch mengubah baris yang sama lalu bertemu di satu
    titik konflik, tunjukkan bentuk marker `<<<<<<<`/`=======`/`>>>>>>>`.
- [ ] `git stash` untuk Menyimpan Perubahan Sementara
  - Diagram: `Working Directory -> (git stash) -> Stash (tumpukan) -> (git stash pop) -> Working Directory`.

## JavaScript

- [x] Memahami Closure (`notes/javascript/closure.md`)
      *(sudah ada diagram scope luar/dalam.)*
- [x] Async/Await di JavaScript (`notes/javascript/async-await.md`)
      *(sudah ada diagram timeline sinkron vs async.)*
- [ ] **Promise Dasar** — state pending/fulfilled/rejected, `.then()`,
      `.catch()`. *(Idealnya ditulis sebelum Async/Await karena
      async/await adalah gula sintaks di atas Promise; tambahkan sebagai
      prasyarat meski async/await sudah lebih dulu ada.)*
  - Diagram: state machine —
    `pending -> fulfilled (.then)` dan `pending -> rejected (.catch)`.
- [ ] Variabel & Scope: `let`, `const`, `var`, dan block scope
  - Diagram: kotak scope bersarang, `Global > Function > Block`,
    menandai di lapisan mana `let`/`const` terlihat vs `var`.
- [ ] Fungsi & Arrow Function Dasar
  - Diagram: opsional — cukup blok kode berdampingan (function biasa vs
    arrow function) untuk bentuk yang setara; tidak wajib diagram alur.
- [ ] Array Method Dasar: `map`, `filter`, `reduce`, `forEach`
  - Diagram: pipeline — `[array asli] -> map() -> [array baru]` dan
    serupa untuk `filter`/`reduce`, tiap method satu baris pipeline.
- [ ] Destructuring Object & Array
  - Diagram: garis penghubung dari tiap properti/elemen sumber ke
    variabel hasil destructuring (visual pemetaan, bukan alur proses).
- [ ] Modules Dasar: `import` / `export`
  - Diagram: dua file — `a.js (export)  ->  b.js (import { x } from "./a")`.
- [ ] Error Handling dengan `try/catch/finally`
  - Diagram: flowchart percabangan —
    `try -> sukses -> lanjut` / `try -> error -> catch -> finally`.

## Next.js (App Router)

- [x] Routing Dasar dengan App Router (`notes/nextjs/routing-dasar.md`)
      *(sudah punya diagram struktur folder `app/` -> URL, sudah sesuai
      standar, jadi contoh acuan format diagram untuk topik lain.)*
- [x] Server Component vs Client Component
      (`notes/nextjs/server-client-components.md`)
      *(sudah ada diagram alur render Server -> Browser.)*
- [ ] **Instalasi & Struktur Project Dasar** — `create-next-app`, struktur
      folder awal, `npm run dev`. *(Prasyarat sebelum routing, belum ada
      sama sekali di catatan saat ini.)*
  - Diagram: pohon folder hasil `create-next-app` (mengikuti gaya
    diagram folder yang sudah ada di catatan routing).
- [ ] Layout & Nested Layout Dasar (`layout.tsx` bersarang)
  - Diagram: kotak layout bersarang —
    `Root layout.tsx [ Section layout.tsx [ page.tsx ] ]`.
- [ ] Navigasi dengan `<Link>` dan `useRouter` Dasar
  - Diagram: opsional — dua halaman dengan panah `<Link href>` di
    antaranya cukup sebagai ilustrasi, tidak wajib diagram rumit.
- [ ] Data Fetching Dasar di Server Component (fetch + caching dasar)
  - Diagram: alur request —
    `Server Component -> fetch() -> (cache?) -> render HTML -> browser`.
- [ ] Route Handlers Dasar (`app/api/.../route.ts`)
  - Diagram: `Client request -> app/api/.../route.ts -> Response`.
- [ ] Environment Variables Dasar (`.env.local`, prefix `NEXT_PUBLIC_`)
  - Diagram: dua kotak `Server` dan `Browser` — variabel biasa cuma
    sampai kotak Server, yang berprefix `NEXT_PUBLIC_` tembus ke Browser.
- [ ] Metadata Dasar untuk SEO (`generateMetadata`, `metadata` object)
  - Diagram: opsional — bisa cukup contoh kode + hasil `<head>` render,
    tidak wajib diagram alur.

## Python

- [x] List Comprehension (`notes/python/list-comprehension.md`)
      *(sudah ada diagram pipeline filter elemen.)*
- [x] Virtual Environment / venv (`notes/python/virtual-environment.md`)
      *(sudah ada diagram isolasi dependency per proyek.)*
- [ ] **Sintaks & Tipe Data Dasar** — variabel, `int`/`float`/`str`/`bool`,
      operator dasar. *(Prasyarat paling dasar, belum ada sama sekali.)*
  - Diagram: opsional — tabel ringkas tipe data dengan satu contoh nilai
    per tipe biasanya lebih jelas daripada diagram alur di topik ini.
- [ ] Struktur Kontrol: `if`/`elif`/`else`, `for`, `while`
  - Diagram: flowchart percabangan `if/elif/else` sederhana (kondisi →
    cabang benar/salah).
- [ ] Struktur Data Dasar: `list`, `tuple`, `dict`, `set` — operasi dasar
      *(sebaiknya ditulis sebelum List Comprehension karena jadi
      prasyaratnya)*
  - Diagram: tabel perbandingan `list` (mutable, berurut) vs `tuple`
    (immutable, berurut) vs `dict` (key-value) vs `set` (unik, tanpa
    urutan).
- [ ] Fungsi Dasar: `def`, parameter, `return`, default argument
  - Diagram: opsional — anotasi bagian-bagian `def nama(param): ... return`
    langsung di atas contoh kode sudah cukup, tidak perlu diagram alur.
- [ ] Error Handling: `try`/`except`/`finally`
  - Diagram: flowchart sama pola dengan try/catch JavaScript —
    `try -> sukses -> lanjut` / `try -> error -> except -> finally`.
- [ ] Membaca & Menulis File Dasar (`open`, context manager `with`)
  - Diagram: alur `with open(...) as f: -> baca/tulis -> file otomatis ditutup`.
- [ ] Import & Module Dasar
  - Diagram: sama pola dengan modules JavaScript —
    `modul.py (fungsi) -> import modul -> dipakai di file lain`.

## Supabase

- [x] Setup Supabase Client (`notes/supabase/setup-client.md`)
      *(sudah ada diagram App -> Client -> Supabase Project.)*
- [x] Query Data Dasar / CRUD (`notes/supabase/query-dasar.md`)
      *(sudah ada tabel pemetaan method -> SQL.)*
- [ ] Autentikasi Dasar: sign up, sign in, sign out
      (`supabase.auth.*`)
  - Diagram: alur `sign up/sign in -> Supabase Auth -> session/token -> disertakan di request berikutnya`.
- [ ] Row Level Security (RLS) Dasar — konsep policy dan contoh policy
      sederhana per tabel
  - Diagram: `Request -> RLS aktif? -> cek policy per baris -> izinkan/tolak`
    — ini konsep paling butuh diagram karena sering bikin bingung pemula.
- [ ] Storage Dasar: upload & ambil URL file
  - Diagram: `File -> upload() -> Bucket -> getPublicUrl() -> URL file`.
- [ ] Realtime Subscription Dasar (`supabase.channel(...).on(...)`)
  - Diagram: `Database berubah -> Supabase Realtime -> event terkirim -> Client (channel.on)`.

## TypeScript

- [x] Tipe Dasar & Type Annotation (`notes/typescript/tipe-dasar.md`)
      *(sudah ada tabel tipe & contoh nilai.)*
- [x] Interface & Type Alias
      (`notes/typescript/interface-dan-type-alias.md`)
      *(sudah ada tabel perbandingan interface vs type.)*
- [ ] Union Type & Literal Type Dasar
  - Diagram: diagram himpunan (set) sederhana — nilai-nilai yang
    termasuk `type Status = "aktif" | "nonaktif"` sebagai dua kotak
    dalam satu lingkaran union.
- [ ] Type Narrowing Dasar (`typeof`, `instanceof`, `in`)
  - Diagram: flowchart percabangan — tipe union masuk, `typeof`/`in`
    mempersempit ke cabang tipe yang lebih spesifik.
- [ ] Generics Dasar (fungsi generic sederhana, `<T>`)
  - Diagram: kotak `<T>` sebagai "placeholder tipe" yang diisi beda-beda
    tiap pemanggilan — mis. `identitas<number>` vs `identitas<string>`.
- [ ] Enum Dasar
  - Diagram: opsional — daftar anggota enum dengan nilai di baliknya
    (mis. `Status.Aktif -> 0`) cukup sebagai tabel, bukan diagram alur.
- [ ] Opsi `tsconfig.json` yang Paling Penting untuk Pemula
  - Diagram: opsional — tidak wajib, ini topik konfigurasi, contoh file
    `tsconfig.json` beranotasi biasanya lebih membantu daripada diagram.

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
