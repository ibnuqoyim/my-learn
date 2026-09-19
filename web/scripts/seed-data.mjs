// Data 11 catatan + kategori awal, dipindahkan dari blog Eleventy lama.
// Dipakai bersama oleh scripts/seed.mjs (lewat supabase-js + secret key)
// dan scripts/seed-via-sql.mjs (lewat Management API + PAT, kalau belum
// ada secret key di .env).

export const categories = [
  {
    name: "Git",
    slug: "git",
    description: `Sebelum version control, melacak perubahan kode berarti menyimpan salinan file manual (\`script_v2_final.js\`, \`script_v2_REVISI.js\`) — tidak ada riwayat yang jelas, dan kolaborasi tim jadi mimpi buruk (siapa mengubah apa, kapan). Git menyelesaikan ini dengan melacak setiap perubahan sebagai snapshot bernama (commit) yang bisa dibandingkan, digabungkan, dan dibagikan.

Roadmap ini membawamu dari cara menyimpan perubahan (staging & commit), bercabang untuk mengerjakan fitur tanpa mengganggu kode utama (branching), sampai berkolaborasi lewat repository remote seperti GitHub. Tiga langkah, ikuti berurutan.

**Asumsi:** familiar dengan command line/terminal dasar. Prasyarat tool (Git, akun GitHub) disebutkan di catatan yang membutuhkannya.`,
  },
  {
    name: "JavaScript",
    slug: "javascript",
    description: `Dua konsep JavaScript yang sering disalahpahami pemula, tapi jadi fondasi buat memahami kode JS yang lebih besar: closure (bagaimana fungsi "mengingat" variabel dari scope-nya, jadi cara umum membuat data privat) dan async/await (cara menulis kode asinkron yang terlihat sinkron, menghindari "callback hell").

Dua catatan ini relatif independen satu sama lain — tidak ada urutan prasyarat ketat di antaranya, tapi closure biasanya lebih dulu dikenalkan karena polanya lebih dasar.

**Asumsi:** familiar dengan sintaks dasar JavaScript (variabel, function, if/else, array).`,
  },
  {
    name: "Next.js",
    slug: "nextjs",
    description: `Sebelum ada *file-based routing* seperti di Next.js, menyusun routing di aplikasi React itu kerja manual: install library router, lalu tulis config terpisah yang memetakan tiap URL ke komponennya — dan config ini gampang jadi tidak sinkron dengan struktur folder komponen aslinya. Masalah lain: React tradisional mengirim **semua** kode JavaScript ke browser, bahkan untuk bagian yang cuma menampilkan teks statis dari database, bikin aplikasi lambat di koneksi lemah.

Roadmap ini membawamu dari nol sampai bisa membangun aplikasi Next.js App Router yang lengkap: mulai dari setup project, memahami routing dan navigasi, menyusun layout bersama antar halaman, memahami batas Server/Client Component, mengambil data dengan aman, membuat API sendiri lewat Route Handlers, mengelola environment variables, sampai melengkapi halaman dengan metadata untuk SEO. Sembilan langkah, ikuti berurutan — tiap catatan secara eksplisit dibangun di atas yang sebelumnya, jadi jangan lompat kalau belum menyelesaikan langkah sebelumnya.

**Asumsi:** roadmap ini fokus ke Next.js itu sendiri, bukan mengajari React dari nol — kamu perlu familiar dengan dasar JavaScript dan konsep component/props/hooks di React (belum ada roadmap React tersendiri di platform ini). Prasyarat tool spesifik (mis. versi Node.js) disebutkan di catatan pertama.`,
  },
  {
    name: "Python",
    slug: "python",
    description: `Dua skill dasar Python yang sering dipakai harian: list comprehension (cara ringkas membuat list baru dari list lain, menggantikan loop-append manual) dan virtual environment (mengisolasi dependency per proyek supaya versi package tidak bentrok antar proyek).

Dua catatan ini relatif independen satu sama lain — tidak ada urutan prasyarat ketat di antaranya.

**Asumsi:** familiar dengan sintaks dasar Python (variabel, \`for\` loop, function).`,
  },
  {
    name: "Supabase",
    slug: "supabase",
    description: `Membangun backend sendiri dari nol — server, database, sistem auth, storage — butuh waktu berminggu-minggu sebelum sempat menulis fitur aplikasi yang sebenarnya. Supabase menyediakan semua itu siap pakai di atas Postgres, diakses langsung dari client tanpa perlu backend server terpisah.

Roadmap ini membawamu dari setup client, operasi CRUD dasar, mengenali user lewat autentikasi, mengamankan data per user lewat Row Level Security, menyimpan file lewat Storage, sampai mendengarkan perubahan data secara live lewat Realtime. Enam langkah yang membangun satu sama lain — RLS memakai \`auth.uid()\` dari langkah autentikasi sebelumnya, dan policy Storage/Realtime memakai pola RLS yang sama, jadi urutannya penting.

**Asumsi:** familiar dengan JavaScript/TypeScript dasar dan konsep \`async\`/\`await\`. Butuh akun Supabase (gratis) — disebutkan di catatan pertama.`,
  },
  {
    name: "TypeScript",
    slug: "typescript",
    description: `JavaScript murni tidak mendeteksi kesalahan tipe data sampai program benar-benar dijalankan (runtime) — kirim string ke fungsi yang harusnya menerima angka baru ketahuan setelah aplikasi jalan, bahkan mungkin sudah di production. TypeScript menambahkan sistem tipe di atas JavaScript yang dicek saat menulis kode (compile time), sebelum bug itu sempat sampai ke user.

Roadmap ini membawamu dari tipe dasar sampai bisa membaca dan menulis konfigurasi TypeScript sendiri: mulai dari type annotation primitif, mendefinisikan bentuk object lewat interface/type alias, union & literal type untuk merepresentasikan pilihan terbatas, type narrowing untuk menangani union dengan aman, type assertion untuk kasus kamu lebih tahu dari compiler, generics untuk kode yang reusable tanpa kehilangan type safety, utility types untuk memanipulasi tipe yang sudah ada, enum sebagai alternatif union, sampai opsi \`tsconfig.json\` yang paling penting untuk dikonfigurasi. Sembilan langkah, ikuti berurutan.

**Asumsi:** TypeScript itu JavaScript plus sistem tipe, bukan bahasa baru dari nol — roadmap ini mengasumsikan kamu familiar dengan JavaScript dasar (variabel, fungsi, object, array). Prasyarat tool (Node.js, TypeScript compiler) disebutkan di catatan pertama.`,
  },
  {
    name: ".NET",
    slug: "dotnet",
    description: `Sebelum .NET Core (2016 ke atas), .NET Framework hanya berjalan di Windows — sulit dipakai untuk deployment modern yang mengandalkan server Linux dan container. .NET sekarang adalah platform open-source dan cross-platform dari Microsoft: satu SDK yang jalan di Windows, Linux, maupun macOS, untuk membangun aplikasi web, cloud, hingga desktop.

Roadmap ini membawamu dari pengenalan ekosistem & CLI \`dotnet\`, dasar bahasa C# (tipe data, class, record), pola Dependency Injection yang jadi tulang punggung aplikasi .NET modern, membangun REST API sungguhan lewat ASP.NET Core Minimal API, sampai menyimpan datanya secara permanen ke database lewat Entity Framework Core. Enam langkah, ikuti berurutan.

**Asumsi:** roadmap ini menjelaskan dari dasar, tapi familiar dengan konsep OOP (object, class) dari bahasa lain akan membantu mempercepat pemahaman. Prasyarat tool (.NET SDK) disebutkan di catatan pertama.`,
  },
  {
    name: "Agentic AI (Hermes)",
    slug: "agentic-ai-hermes",
    description: `Chatbot LLM biasa cuma bisa membalas teks — begitu jawabannya berupa kode atau command, KAMU yang harus menyalin, menjalankannya sendiri di terminal, membaca hasil/errornya, lalu menempelkannya balik ke chat supaya model tahu apa yang terjadi. Untuk task yang butuh banyak langkah, siklus manual ini melelahkan dan lambat. Agentic AI membalik itu: model yang mengeksekusi tool-nya sendiri (terminal, file, browser) secara langsung, mengamati hasilnya, dan melanjutkan sampai task selesai — kamu cukup kasih instruksi dan menyetujui langkah yang berisiko.

Roadmap ini pakai **Hermes Agent** dari Nous Research (open-source, *self-improving*) sebagai contoh konkret: instalasi & autentikasi, menjalankan task pertama lewat CLI, memahami memori lintas sesi, membuat & memakai ulang pengetahuan prosedural (*skills*), sampai menghubungkan tool eksternal lewat MCP. Lima langkah, ikuti berurutan.

**Asumsi:** familiar dengan command line/terminal dasar. Tidak perlu pengalaman sebelumnya dengan agentic AI atau LLM API — roadmap ini menjelaskan dari instalasi. Prasyarat tool (Git) dan akun untuk akses model disebutkan di catatan pertama.`,
  },
];

export const notes = [
  {
    category: "git",
    slug: "commit-dan-staging",
    order: 0,
    title: "Dasar Commit & Staging di Git",
    content: `**Masalah yang diselesaikan:** sebelum version control, melacak perubahan kode berarti menyimpan salinan file manual (\`script_v2_final.js\`, \`script_v2_REVISI.js\`) — tidak ada riwayat yang jelas, dan susah tahu apa saja yang sebenarnya berubah antar versi.

Git bekerja dengan melacak perubahan file melalui tiga area utama: **Working Directory** (tempat kita mengedit file), **Staging Area** (area persiapan sebelum disimpan permanen), dan **Local Repository** (tempat riwayat commit tersimpan).

\`\`\`mermaid
flowchart LR
  WD["Working Directory<br/>(file diubah)"] -->|git add| SA["Staging Area<br/>(file siap dicommit)"]
  SA -->|git commit| LR["Local Repository<br/>(riwayat tersimpan)"]
  LR -.->|git restore| WD
\`\`\`

Alur kerja dasar untuk menyimpan perubahan:

\`\`\`bash
# 1. Memeriksa status file yang baru dibuat atau diubah
git status

# 2. Memasukkan file tertentu ke Staging Area
git add index.html

# Atau memasukkan semua file yang berubah di direktori saat ini
git add .

# 3. Menyimpan perubahan dari Staging Area ke Repository dengan pesan deskriptif
git commit -m "feat: tambah halaman beranda awal"

# 4. Melihat riwayat commit yang sudah tercatat
git log --oneline
\`\`\`

Poin penting:

- Memisahkan \`git add\` dan \`git commit\` memberi kontrol penuh: kita bisa memilih file mana saja yang ingin digabungkan dalam satu commit logis, tanpa harus mencampur semua file yang sedang kita edit.
- Pesan commit sebaiknya ringkas, jelas, dan menjelaskan *mengapa* atau *apa* perubahan yang dilakukan.
- File baru yang belum pernah di-\`git add\` berstatus *untracked* (belum dilacak oleh Git).`,
    sources: [
      {
        label: "Git Basics - Recording Changes to the Repository — Pro Git Book",
        url: "https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository",
      },
    ],
    prerequisites: [
      { label: "Git sudah terinstall (cek dengan `git --version`)", url: "https://git-scm.com/downloads" },
      { label: "Familiar dengan perintah dasar terminal/command line" },
    ],
    practice: `Buat folder baru, jalankan \`git init\` di dalamnya. Buat file \`catatan.txt\` berisi satu baris teks, jalankan \`git status\` — harus muncul sebagai *untracked*. Jalankan \`git add catatan.txt\`, cek \`git status\` lagi (sekarang *staged*). Commit dengan \`git commit -m "..."\`. Ubah lagi isi file itu dan jalankan \`git status\` sekali lagi — perhatikan Git membedakan status "modified" dari "untracked". Lihat riwayatnya dengan \`git log --oneline\`.`,
  },
  {
    category: "git",
    slug: "branching",
    order: 1,
    title: "Dasar Branching di Git",
    content: `Sekarang kamu bisa commit perubahan secara berurutan di satu garis riwayat (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** bagaimana kalau kamu mau coba-coba fitur baru atau perbaikan, tapi tidak mau kode \`main\` yang sudah stabil ikut berubah/rusak selama proses coba-coba itu?

Branch memungkinkan kita bekerja pada fitur/perbaikan tanpa mengganggu kode di branch utama.

\`\`\`mermaid
gitGraph
   commit id: "A"
   commit id: "B"
   branch fitur-baru
   checkout fitur-baru
   commit id: "C"
   commit id: "D"
   checkout main
   merge fitur-baru id: "E"
   commit id: "F"
\`\`\`

Branch \`fitur-baru\` bercabang dari commit \`B\` di \`main\`, berkembang sendiri lewat commit \`C\` dan \`D\`, lalu digabungkan (merge) kembali jadi commit \`E\` di \`main\` — sepanjang itu, isi \`main\` (\`A\`, \`B\`) tidak berubah sama sekali.

\`\`\`bash
# membuat branch baru sekaligus pindah ke branch itu
git checkout -b fitur-baru

# melihat semua branch
git branch

# pindah branch
git checkout main

# menggabungkan branch ke branch aktif saat ini
git merge fitur-baru

# menghapus branch yang sudah tidak dipakai
git branch -d fitur-baru
\`\`\`

Praktik yang baik: buat satu branch untuk satu fitur/perbaikan, beri nama yang jelas, dan gabungkan (merge) setelah selesai direview.`,
    sources: [
      {
        label: "Git Branching - Branches in a Nutshell — Pro Git Book",
        url: "https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell",
      },
    ],
    practice: `Di repository dari latihan sebelumnya, buat branch baru \`git checkout -b fitur-baru\`, edit \`catatan.txt\`, commit perubahannya. Pindah balik ke \`main\` (\`git checkout main\`) — perhatikan isi \`catatan.txt\` kembali ke versi sebelum diedit di branch \`fitur-baru\`. Jalankan \`git merge fitur-baru\` dari \`main\`, cek isinya lagi (sekarang harus dapat perubahan dari branch itu). Terakhir hapus branch-nya: \`git branch -d fitur-baru\`.`,
  },
  {
    category: "git",
    slug: "remote-dasar",
    order: 2,
    title: "Git Remote: Push, Pull, dan Fetch",
    content: `Sekarang kamu bisa commit dan bercabang di komputer sendiri. **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** bagaimana kalau kode itu perlu dibagikan ke orang lain, atau di-backup di luar komputer kamu? Riwayat commit yang cuma ada di satu komputer rentan hilang (laptop rusak/hilang) dan tidak bisa diakses tim lain.

Repository remote adalah salinan proyek yang disimpan di server internet atau jaringan (seperti GitHub atau GitLab), memungkinkan kolaborasi tim dan backup kode.

\`\`\`mermaid
sequenceDiagram
  autonumber
  participant L as Komputer Lokal
  participant R as Remote Repository
  Note over L,R: Alur Sinkronisasi Kode
  L->>R: git push origin main
  Note right of R: Commit lokal diunggah ke remote
  R-->>L: git fetch origin
  Note left of L: Unduh riwayat commit tanpa merge
  R->>L: git pull origin main
  Note left of L: Unduh dan gabungkan ke branch aktif
\`\`\`

Perintah umum bekerja dengan remote:

\`\`\`bash
# Mengkloning repository yang sudah ada ke komputer lokal
git clone https://github.com/username/nama-repo.git

# Melihat daftar remote yang terhubung beserta URL-nya
git remote -v

# Mengambil perubahan terbaru dari remote tanpa mengubah branch lokal (fetch)
git fetch origin

# Mengambil sekaligus menggabungkan perubahan terbaru ke branch lokal saat ini (pull)
git pull origin main

# Mengunggah commit lokal ke branch di remote repository (push)
git push origin main
\`\`\`

Poin penting:

- \`origin\` adalah nama alias standar untuk URL repository remote utama.
- \`git fetch\` hanya mengunduh data riwayat baru dari remote; file lokalmu belum berubah sebelum kamu menjalankan \`git merge\`.
- \`git pull\` merupakan kombinasi otomatis dari \`git fetch\` diikuti dengan \`git merge\`.
- Sebelum melakukan \`git push\`, pastikan branch lokal sudah sinkron dengan versi remote untuk menghindari penolakan (non-fast-forward reject).`,
    sources: [
      { url: "https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes", label: "Git Basics - Working with Remotes — Pro Git Book" },
    ],
    prerequisites: [{ label: "Akun GitHub (atau GitLab/Bitbucket) sudah dibuat", url: "https://github.com/signup" }],
    practice: `Buat repository baru di GitHub (kosong, tanpa README). Di project lokal dari latihan sebelumnya, jalankan \`git remote add origin <url-repo-kamu>\`, lalu \`git push origin main\` (atau \`master\`, tergantung nama branch default-nya). Refresh halaman GitHub — pastikan commit-commit kamu muncul di sana. Coba juga \`git clone <url-yang-sama>\` ke folder lain untuk simulasi "komputer lain" yang mengambil kode itu. Ini menutup roadmap Git: dari commit pertama sampai kolaborasi lewat remote.`,
  },
  {
    category: "javascript",
    slug: "closure",
    order: 0,
    title: "Memahami Closure",
    content: `**Masalah yang diselesaikan:** bagaimana membuat variabel yang privat ke satu fungsi, tapi tetap bisa diakses/diubah oleh fungsi lain yang terkait dengannya — tanpa membuat variabel itu global (yang berisiko tertimpa atau diubah kode lain secara tidak sengaja)? Sebelum closure dipahami, satu-satunya cara menyimpan state antar pemanggilan fungsi terasa seperti harus pakai variabel global.

Closure adalah fungsi yang "mengingat" variabel dari scope tempat ia dibuat, meskipun fungsi luar sudah selesai dieksekusi.

\`\`\`js
function buatCounter() {
  let jumlah = 0;
  return function () {
    jumlah++;
    return jumlah;
  };
}

const counter = buatCounter();
console.log(counter()); // 1
console.log(counter()); // 2
\`\`\`

\`\`\`mermaid
graph TD
  subgraph luar["buatCounter() — scope luar, dijalankan sekali"]
    j["jumlah = 0"]
    subgraph dalam["function() — closure (scope dalam)"]
      c["jumlah++ dan return jumlah"]
    end
  end
  j -. "tetap bisa diakses walau buatCounter() sudah selesai" .-> c
\`\`\`

Poin penting:

- Setiap pemanggilan \`buatCounter()\` menghasilkan closure baru dengan \`jumlah\` masing-masing.
- Variabel \`jumlah\` tetap hidup di memori selama closure-nya masih dipakai.
- Sering dipakai untuk membuat data privat, seperti pola module.`,
    sources: [
      { label: "Closures — MDN Web Docs", url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Closures" },
    ],
    practice: `Modifikasi \`buatCounter()\` supaya mengembalikan object berisi dua fungsi sekaligus: \`tambah()\` dan \`kurang()\`, keduanya berbagi variabel \`jumlah\` yang sama lewat closure. Buat dua instance counter berbeda (\`counterA\` dan \`counterB\`) dari \`buatCounter()\` yang sama, lalu buktikan variabel \`jumlah\` masing-masing independen — mengubah \`counterA\` tidak memengaruhi \`counterB\` sama sekali.`,
  },
  {
    category: "javascript",
    slug: "async-await",
    order: 1,
    title: "Async/Await di JavaScript",
    content: `**Masalah yang diselesaikan:** sebelum Promise dan \`async/await\` umum dipakai, kode asinkron (fetch data, timer, dll) ditulis pakai callback bersarang yang cepat jadi sulit dibaca begitu ada beberapa langkah asinkron berurutan ("callback hell").

\`async/await\` adalah gula sintaks di atas Promise agar kode asinkron terlihat seperti kode sinkron.

\`\`\`mermaid
graph LR
  subgraph sinkron["Sinkron (blocking)"]
    s1["tugas1"] --> s2["tugas2"] --> s3["tugas3"]
  end
  subgraph asinkron["Async/Await (non-blocking)"]
    a1["await fetch()"] -. "kode lain tetap jalan selagi menunggu" .-> a2["lanjut pakai data"]
  end
\`\`\`

\`\`\`js
async function ambilData() {
  try {
    const res = await fetch("/api/data");
    const data = await res.json();
    console.log(data);
  } catch (err) {
    console.error("Gagal mengambil data:", err);
  }
}
\`\`\`

Poin penting:

- \`await\` hanya bisa dipakai di dalam fungsi \`async\`.
- \`await\` menjeda eksekusi fungsi sampai Promise selesai, tanpa memblokir thread utama.
- Gunakan \`try/catch\` untuk menangani error, menggantikan \`.catch()\` pada Promise biasa.`,
    sources: [
      {
        label: "async function — MDN Web Docs",
        url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function",
      },
    ],
    practice: `Tulis fungsi \`ambilDuaData()\` yang memanggil dua endpoint berbeda (mis. \`https://jsonplaceholder.typicode.com/users/1\` dan \`.../posts/1\`) satu per satu pakai \`await\` berurutan, catat waktunya (\`console.time\`/\`console.timeEnd\`). Lalu tulis ulang supaya kedua \`fetch\` itu jalan bersamaan pakai \`Promise.all([...])\` — bandingkan waktunya, harus jauh lebih cepat karena tidak menunggu satu selesai dulu sebelum mulai yang lain.`,
  },
  {
    category: "nextjs",
    slug: "instalasi-dan-struktur-project",
    order: 0,
    title: "Instalasi & Struktur Project Next.js Dasar",
    content: `**Masalah yang diselesaikan:** dulu, memulai project React dari nol berarti setup manual — bundler, transpiler, routing, semua dikonfigurasi sendiri sebelum baris kode aplikasi pertama ditulis. \`create-next-app\` menyelesaikan ini dengan scaffold project siap pakai dalam satu perintah, lengkap dengan konvensi struktur folder yang dipakai di seluruh roadmap ini — terutama folder \`app/\` yang jadi topik utama catatan-catatan berikutnya.

Membuat proyek Next.js baru paling mudah menggunakan CLI resmi \`create-next-app\` dengan konfigurasi standar TypeScript dan Tailwind CSS.

\`\`\`mermaid
flowchart TD
    subgraph Root ["my-next-app/ (Root)"]
        A["app/ (Routing & UI Pages)"]
        B["public/ (Asset Statis: gambar, favicon)"]
        C["next.config.mjs (Konfigurasi Next.js)"]
        D["package.json (Dependensi & Skrip)"]
        E["tsconfig.json (Konfigurasi TypeScript)"]
        F[".env.local (Environment Variables)"]
    end

    A --> A1["layout.tsx (Root Layout / HTML Wrapper)"]
    A --> A2["page.tsx (Halaman Utama / Home)"]
    A --> A3["globals.css (Global Stylesheet)"]
\`\`\`

### 1. Inisialisasi Proyek Baru
Jalankan perintah berikut di terminal:

\`\`\`bash
npx create-next-app@latest my-app --typescript --tailwind --eslint --app
cd my-app
npm run dev
\`\`\`

### 2. File Khusus di Dalam Folder \`app/\`

| Nama File | Peran / Fungsi |
| --- | --- |
| \`layout.tsx\` | Kerangka layout UI bersama (navbar, footer, tag \`<html>\` dan \`<body>\`). |
| \`page.tsx\` | Konten halaman yang unik untuk route tersebut (menjadi rute publik). |
| \`loading.tsx\` | Tampilan loading skeleton otomatis menggunakan React Suspense. |
| \`not-found.tsx\` | Tampilan khusus halaman 404 ketika data atau URL tidak ditemukan. |
| \`error.tsx\` | Error boundary untuk menangkap crash runtime tanpa merusak seluruh web. |

Struktur berbasis folder di \`app/\` secara otomatis memetakan folder menjadi rute URL di browser — topik ini dibahas lengkap di catatan berikutnya.`,
    sources: [
      { url: "https://nextjs.org/docs/app/getting-started/installation", label: "Next.js Docs — Installation" },
      { url: "https://nextjs.org/docs/app/getting-started/project-structure", label: "Next.js Docs — Project Structure" },
    ],
    prerequisites: [
      {
        label: "Node.js versi 18.17 atau lebih baru sudah terinstall (cek dengan `node --version` di terminal)",
        url: "https://nodejs.org",
      },
      { label: "Familiar dengan perintah dasar terminal/command line (masuk folder, jalankan perintah)" },
    ],
    practice: `Jalankan \`npx create-next-app@latest belajar-nextjs --typescript --tailwind --eslint --app\` di terminal, lalu \`cd belajar-nextjs && npm run dev\`. Buka \`http://localhost:3000\`, lalu:

1. Buka \`app/page.tsx\`, ubah teksnya, simpan, lihat halaman otomatis reload (Fast Refresh).
2. Hapus file \`app/page.tsx\` sementara dan reload — perhatikan pesan error yang muncul, itu petunjuk kenapa \`page.tsx\` wajib ada di tiap folder route.
3. Kembalikan filenya. Project ini akan dipakai untuk semua latihan di catatan-catatan Next.js berikutnya.`,
  },
  {
    category: "nextjs",
    slug: "routing-dasar",
    order: 1,
    title: "Routing Dasar dengan App Router",
    content: `Project Next.js kamu dari catatan sebelumnya sudah jalan — pertanyaan berikutnya: bagaimana URL seperti \`/blog/artikel-pertama\` bisa menampilkan halaman yang tepat? **Masalah yang diselesaikan:** sebelum ada file-based routing, mengatur routing di aplikasi React itu kerja manual — install library router (React Router), lalu tulis config terpisah yang memetakan tiap URL ke komponennya: \`<Route path="/blog/:slug" element={<BlogPost />} />\`. Config ini gampang jadi tidak sinkron dengan struktur folder komponen aslinya, apalagi kalau aplikasinya sudah besar dan ditulis banyak orang.

Next.js (App Router) menyelesaikan ini dengan **memakai struktur folder itu sendiri sebagai definisi routing** — tidak ada file config routing terpisah untuk disinkronkan. Struktur folder di dalam \`app/\` menentukan URL, dan file \`page.tsx\` di dalam folder itu yang jadi halamannya.

\`\`\`mermaid
graph TD
  A["app/"] --> B["page.tsx → /"]
  A --> C["about/"]
  C --> D["page.tsx → /about"]
  A --> E["blog/[slug]/"]
  E --> F["page.tsx → /blog/apa-saja (dynamic route)"]
\`\`\`

Contoh halaman dasar:

\`\`\`tsx
// app/about/page.tsx
export default function AboutPage() {
  return <h1>Tentang Kami</h1>;
}
\`\`\`

Contoh dynamic route (segmen URL jadi parameter):

\`\`\`tsx
// app/blog/[slug]/page.tsx
export default async function BlogPost({
  params,
}: {
  params: Promise<{ slug: string }>;
}) {
  const { slug } = await params;
  return <h1>Artikel: {slug}</h1>;
}
\`\`\`

Poin penting:

- Hanya file bernama \`page.tsx\` (atau \`.jsx\`) yang membuat route bisa diakses publik; file lain di folder yang sama (komponen, util) tidak otomatis jadi halaman.
- Nama folder di dalam kurung siku \`[slug]\` berarti segmen URL dinamis, dan nilainya diterima lewat prop \`params\`.
- Sejak Next.js 15, \`params\` berupa \`Promise\` sehingga harus di-\`await\` dulu sebelum dipakai — bukan object biasa seperti versi Next.js 14 ke bawah.
- \`layout.tsx\` di level folder yang sama membungkus semua halaman di dalamnya (misalnya untuk header/footer bersama).`,
    sources: [
      {
        label: "Next.js Docs — Dynamic Route Segments",
        url: "https://nextjs.org/docs/app/api-reference/file-conventions/dynamic-routes",
      },
    ],
    practice: `Di project Next.js dari latihan catatan sebelumnya, tambahkan dua halaman baru:

1. \`app/kontak/page.tsx\` yang menampilkan teks "Hubungi Kami".
2. \`app/produk/[id]/page.tsx\` — dynamic route yang menerima \`id\` dari URL dan menampilkannya. Buka \`/produk/42\` di browser, harus muncul "Detail produk: 42".

Kalau sudah jalan, coba tambahkan satu level lagi: \`app/produk/[id]/ulasan/page.tsx\` (nested dynamic route), lalu perhatikan bagaimana struktur folder yang makin dalam otomatis jadi URL yang makin panjang. Latihan ini melatih kamu membaca struktur folder sebagai peta URL, bukan sekadar menghafal syntax-nya.`,
  },
  {
    category: "nextjs",
    slug: "navigasi-link-dan-router",
    order: 2,
    title: "Navigasi dengan Link dan useRouter",
    content: `**Masalah yang diselesaikan:** setelah tahu cara *membuat* route lewat struktur folder di catatan sebelumnya, pertanyaan berikutnya: bagaimana cara *pindah* antar route itu dari dalam aplikasi? Cara naif: pakai tag \`<a href="...">\` biasa seperti website statis — tapi ini memicu *full page reload*, membuang keuntungan performa React (semua state hilang, seluruh halaman di-fetch ulang dari server termasuk asset yang sebenarnya sama).

Next.js menyediakan navigasi sisi klien (*client-side navigation*) yang cepat menggunakan komponen \`<Link>\` dan hook programatik \`useRouter\`.

\`\`\`mermaid
flowchart LR
    Browser["Klik &lt;Link href='/about'&gt;"] --> Prefetch["Prefetch Route di Background"]
    Prefetch --> Render["Ganti Konten Halaman (SPA Transition)"]
    Render -.-> NoReload["Tanpa Full Page Reload!"]
\`\`\`

### 1. Komponen \`<Link>\` (Direkomendasikan)
Gunakan tag \`<Link>\` untuk navigasi deklaratif. Next.js otomatis melakukan *prefetching* resource di background saat link muncul di viewport:

\`\`\`tsx
import Link from "next/link";

export default function Navigasi() {
  return (
    <nav className="flex gap-4">
      <Link href="/" className="hover:underline">Beranda</Link>
      <Link href="/blog" className="hover:underline">Daftar Artikel</Link>
      <Link href="/dashboard?tab=profile">Profil</Link>
    </nav>
  );
}
\`\`\`

### 2. Navigasi Programatik dengan \`useRouter\`
Untuk navigasi yang dipicu oleh suatu aksi logika (misal: setelah tombol simpan diklik atau selesai submit form):

\`\`\`tsx
"use client";

import { useRouter } from "next/navigation";

export default function FormLogin() {
  const router = useRouter();

  async function handleLogin() {
    // Simulasi proses login
    await loginApi();
    // Navigasi ke halaman dashboard
    router.push("/dashboard");
    // Opsional: refresh data server component
    router.refresh();
  }

  return <button onClick={handleLogin}>Masuk</button>;
}
\`\`\`

- **\`<Link>\` vs \`<a>\`**: Jangan gunakan tag \`<a href="...">\` biasa karena akan memicu *full page reload* yang lambat.
- **Import Path**: Di App Router, \`useRouter\` wajib di-import dari \`next/navigation\`, bukan \`next/router\` (Pages Router lama).`,
    sources: [
      {
        url: "https://nextjs.org/docs/app/building-your-application/routing/linking-and-navigating",
        label: "Next.js Docs — Linking and Navigating",
      },
    ],
    practice: `Di project latihan kamu, tambahkan komponen \`<Navigasi>\` (seperti contoh di atas) ke \`app/layout.tsx\` supaya muncul di semua halaman. Lalu:

1. Klik-klik antar link, buka DevTools tab Network, perhatikan request yang terjadi — apakah full HTML di-download ulang tiap klik, atau cuma data yang berubah?
2. Ganti salah satu \`<Link>\` jadi \`<a>\` biasa, ulangi langkah 1, bandingkan bedanya.
3. Tambahkan tombol yang memanggil \`router.push('/produk/99')\` (pakai dynamic route dari latihan sebelumnya) tanpa lewat \`<Link>\` sama sekali.`,
  },
  {
    category: "nextjs",
    slug: "layout-dan-nested-layout",
    order: 3,
    title: "Layout & Nested Layout Dasar",
    content: `**Masalah yang diselesaikan:** makin banyak halaman yang kamu buat dan navigasikan (seperti di catatan sebelumnya), makin banyak juga elemen UI yang berulang di tiap halaman — navbar, footer, sidebar. Copy-paste elemen itu ke tiap \`page.tsx\` bikin kode duplikat dan gampang jadi tidak konsisten kalau salah satu lupa di-update.

Layout adalah komponen UI yang dibagikan ke beberapa halaman anak. Ketika berpindah halaman di dalam layout yang sama, layout tetap bertahan (*persisted state*) dan tidak di-render ulang dari awal.

\`\`\`mermaid
flowchart TD
    subgraph RootLayout ["app/layout.tsx (Root Layout: Navbar + Footer Global)"]
        subgraph DashboardLayout ["app/dashboard/layout.tsx (Sidebar Dashboard)"]
            P1["app/dashboard/page.tsx (Ringkasan)"]
            P2["app/dashboard/settings/page.tsx (Pengaturan)"]
        end
    end
\`\`\`

### 1. Root Layout (\`app/layout.tsx\`)
Setiap aplikasi Next.js App Router wajib memiliki satu Root Layout untuk membungkus elemen dasar dokumen HTML:

\`\`\`tsx
// app/layout.tsx
import "./globals.css";

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="id">
      <body>
        <header className="p-4 border-b">Navbar Global</header>
        <main>{children}</main>
      </body>
    </html>
  );
}
\`\`\`

### 2. Nested Layout (\`app/dashboard/layout.tsx\`)
Layout bersarang hanya membungkus semua rute di dalam subfolder tersebut:

\`\`\`tsx
// app/dashboard/layout.tsx
export default function DashboardLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <div className="flex">
      <aside className="w-64 p-4 bg-gray-100">Menu Sidebar</aside>
      <section className="flex-1 p-6">{children}</section>
    </div>
  );
}
\`\`\`

- **Re-render Efisien**: Mengubah rute dari \`/dashboard\` ke \`/dashboard/settings\` hanya me-render ulang \`children\`, sedangkan Sidebar dan Navbar tetap utuh.
- **Data Sharing**: Layout cocok untuk meletakkan konteks state bersama atau navigasi lokal.`,
    sources: [
      {
        url: "https://nextjs.org/docs/app/building-your-application/routing/pages-and-layouts",
        label: "Next.js Docs — Pages and Layouts",
      },
    ],
    practice: `Di project latihan, tambahkan \`app/dashboard/layout.tsx\` dengan sidebar sederhana (seperti contoh di atas), lalu buat dua halaman di dalamnya: \`app/dashboard/page.tsx\` dan \`app/dashboard/pengaturan/page.tsx\`. Navigasi antar keduanya (pakai \`<Link>\` dari catatan sebelumnya) dan amati lewat DevTools Elements/Inspector: apakah sidebar ikut ter-render ulang tiap pindah halaman, atau tetap diam?`,
  },
  {
    category: "nextjs",
    slug: "server-client-components",
    order: 4,
    title: "Server Component vs Client Component",
    content: `Sekarang kamu sudah bisa bikin routing, navigasi antar halaman, dan berbagi layout UI. Pertanyaan berikutnya: **kode apa saja yang sebenarnya dikirim ke browser** waktu halaman itu diakses? Sebelum React Server Components, jawabannya selalu sama — semua kode komponennya, bahkan kalau komponen itu cuma menampilkan teks statis dari database dan tidak butuh interaktivitas sama sekali. Ini boros: bundle JavaScript makin besar, waktu render pertama makin lambat, terutama di HP dengan koneksi lambat.

Di App Router, semua komponen di dalam folder \`app/\` adalah **Server Component** secara default — dirender di server, tidak mengirim JavaScript komponennya ke browser. Untuk komponen yang butuh interaktivitas (state, event handler, hooks), harus ditandai sebagai **Client Component**.

\`\`\`mermaid
graph LR
  A["Server Component<br/>fetch data, render HTML"] -- "kirim HTML saja" --> B["Browser<br/>render statis"]
  C["Client Component<br/>'use client'"] -- "kirim HTML + JS" --> D["Browser<br/>di-hydrate, jadi interaktif"]
\`\`\`

\`\`\`tsx
// app/page.tsx — Server Component (default, tanpa directive apa pun)
async function getData() {
  const res = await fetch("https://api.example.com/produk");
  return res.json();
}

export default async function HomePage() {
  const produk = await getData(); // boleh langsung await, tanpa useEffect
  return <p>Jumlah produk: {produk.length}</p>;
}
\`\`\`

\`\`\`tsx
// app/components/Counter.tsx — Client Component
"use client";

import { useState } from "react";

export default function Counter() {
  const [count, setCount] = useState(0);
  return <button onClick={() => setCount(count + 1)}>Klik: {count}</button>;
}
\`\`\`

Poin penting:

- Directive \`"use client"\` wajib ditulis paling atas file, sebelum import lain, supaya komponen (dan semua yang di-import olehnya) dikirim juga ke browser sebagai JavaScript.
- Server Component tidak bisa memakai \`useState\`, \`useEffect\`, atau event handler (\`onClick\`, dst) — kalau butuh itu, pindahkan bagian interaktifnya ke Client Component terpisah.
- Server Component boleh langsung \`async\`/\`await\` untuk fetch data, tanpa perlu \`useEffect\`.`,
    sources: [
      {
        label: "Next.js Docs — Server and Client Components",
        url: "https://nextjs.org/docs/app/getting-started/server-and-client-components",
      },
    ],
    practice: `Buka DevTools browser (tab Network) di salah satu halaman yang kamu buat di latihan catatan sebelumnya, lalu:

1. Tambahkan komponen counter interaktif (\`"use client"\` + \`useState\`, seperti contoh di atas) ke halaman \`app/kontak/page.tsx\`.
2. Reload halaman, filter Network berdasarkan JS, lalu bandingkan ukuran JS yang di-download sebelum dan sesudah kamu tambahkan counter itu.
3. Coba hapus baris \`"use client"\` dari komponen counter itu — Next.js akan menolak build karena kamu masih pakai \`useState\` di Server Component. Baca pesan errornya sampai habis; itu cara Next.js memaksa kamu sadar batas antara Server dan Client Component.`,
  },
  {
    category: "nextjs",
    slug: "data-fetching-server-component",
    order: 5,
    title: "Data Fetching di Server Component",
    content: `**Masalah yang diselesaikan:** sekarang kamu tahu bedanya Server Component dan Client Component dari catatan sebelumnya — tapi bagaimana caranya Server Component itu benar-benar *mengambil* data (dari database atau API) sebelum dikirim jadi HTML? Cara lama di React murni: pakai \`useEffect\` + \`useState\`, yang berarti komponen dirender dulu dalam keadaan kosong/loading, baru data menyusul dan komponen dirender ulang — dan semua ini terjadi di browser (Client Component), bukan di server.

Di Next.js App Router, Server Component dapat langsung mengambil data secara *asynchronous* (\`async/await\`) langsung di badan fungsi komponen tanpa perlu \`useEffect\` atau \`useState\`.

\`\`\`mermaid
flowchart TD
    Req["Request Halaman Masuk"] --> SC["Server Component: async function Page()"]
    SC --> DB["Query Database / fetch() API Langsung"]
    DB --> Render["Render HTML di Server"]
    Render --> Client["Kirim HTML Ringan ke Browser"]
\`\`\`

### 1. Mengambil Data Langsung dengan \`fetch()\`
\`\`\`tsx
// app/produk/page.tsx
interface Produk {
  id: number;
  nama: string;
  harga: number;
}

async function getProduk(): Promise<Produk[]> {
  const res = await fetch("https://api.example.com/produk", {
    // Revalidasi data setiap 60 detik (Incremental Static Regeneration)
    next: { revalidate: 60 }
  });

  if (!res.ok) throw new Error("Gagal mengambil data");
  return res.json();
}

export default async function HalamanProduk() {
  const daftarProduk = await getProduk();

  return (
    <div>
      <h1 className="text-xl font-bold">Daftar Produk</h1>
      <ul>
        {daftarProduk.map((p) => (
          <li key={p.id}>{p.nama} - Rp {p.harga.toLocaleString()}</li>
        ))}
      </ul>
    </div>
  );
}
\`\`\`

### 2. Opsi Caching pada \`fetch()\`

| Konfigurasi | Perilaku Caching |
| --- | --- |
| \`cache: 'force-cache'\` | Data di-cache secara statis (default di versi Next.js sebelumnya). |
| \`cache: 'no-store'\` | Dynamic data: selalu fetch data segar setiap request masuk. |
| \`next: { revalidate: 3600 }\` | ISR: cache data selama 1 jam, lalu perbarui di background. |

### Keuntungan Data Fetching di Server
- **Keamanan:** Kredensial API key dan query database tetap berada di server, tidak bocor ke browser.
- **Performa:** Mengurangi ukuran JavaScript bundle yang dikirimkan ke user.`,
    sources: [
      {
        url: "https://nextjs.org/docs/app/building-your-application/data-fetching/fetching",
        label: "Next.js Docs — Data Fetching and Caching",
      },
    ],
    practice: `Di halaman \`app/produk/page.tsx\` (buat baru kalau belum ada), praktikkan pola di atas dengan fetch data dari API publik gratis, misalnya \`https://fakestoreapi.com/products\`. Lalu:

1. Buka DevTools tab Network dan cari request ke \`fakestoreapi.com\` — perhatikan request itu TIDAK muncul di sana. Itu karena fetch-nya terjadi di server, bukan di browser.
2. Ubah komponennya jadi Client Component (\`"use client"\` + \`useEffect\`/\`fetch\`), lalu ulangi langkah 1 — sekarang request-nya baru muncul di Network tab browser. Bandingkan bedanya.`,
  },
  {
    category: "nextjs",
    slug: "route-handlers-dasar",
    order: 6,
    title: "Route Handlers Dasar (API Routes)",
    content: `**Masalah yang diselesaikan:** catatan sebelumnya fokus mengambil data DARI luar (API pihak ketiga). Tapi bagaimana kalau justru aplikasi Next.js kamu sendiri yang perlu jadi sumber data buat aplikasi lain (mobile app, atau frontend terpisah)? Kamu butuh bikin API endpoint sendiri.

Route Handlers memungkinkan kita membuat custom request handler untuk REST API publik menggunakan Web Standard \`Request\` dan \`Response\` API di dalam file \`route.ts\`.

\`\`\`mermaid
flowchart LR
    Client["Client / External App"] -->|HTTP GET /api/users| GetHandler["GET(request)"]
    Client -->|HTTP POST /api/users| PostHandler["POST(request)"]

    GetHandler --> Res["NextResponse.json(...)"]
    PostHandler --> Res
\`\`\`

### 1. Membuat Endpoint API (\`app/api/users/route.ts\`)
\`\`\`ts
// app/api/users/route.ts
import { NextResponse } from "next/server";

// Handler HTTP GET
export async function GET(request: Request) {
  const { searchParams } = new URL(request.url);
  const filter = searchParams.get("role") || "semua";

  const users = [
    { id: 1, nama: "Ahmad", role: "admin" },
    { id: 2, nama: "Budi", role: "member" },
  ];

  return NextResponse.json({ sukses: true, filter, data: users });
}

// Handler HTTP POST
export async function POST(request: Request) {
  const body = await request.json();

  if (!body.nama) {
    return NextResponse.json(
      { sukses: false, pesan: "Nama wajib diisi" },
      { status: 400 }
    );
  }

  // Simpan data ke database...
  return NextResponse.json(
    { sukses: true, pesan: "User berhasil dibuat", user: body },
    { status: 201 }
  );
}
\`\`\`

### 2. Dynamic Route Handler (\`app/api/users/[id]/route.ts\`)
\`\`\`ts
export async function GET(
  request: Request,
  { params }: { params: { id: string } }
) {
  const userId = params.id;
  return NextResponse.json({ id: userId, nama: \`User \${userId}\` });
}
\`\`\`

- File \`route.ts\` tidak boleh ditaruh di folder yang sama dengan \`page.tsx\`.
- Method HTTP yang didukung: \`GET\`, \`POST\`, \`PUT\`, \`PATCH\`, \`DELETE\`, \`HEAD\`, dan \`OPTIONS\`.`,
    sources: [
      {
        url: "https://nextjs.org/docs/app/building-your-application/routing/route-handlers",
        label: "Next.js Docs — Route Handlers",
      },
    ],
    practice: `Buat \`app/api/produk/route.ts\` yang punya handler \`GET\` mengembalikan daftar produk statis (array beberapa object). Lalu:

1. Buka \`http://localhost:3000/api/produk\` langsung di browser — harus muncul JSON-nya.
2. Tambahkan handler \`POST\` yang menerima body JSON dan validasi field wajib (seperti contoh error 400 di atas), lalu tes lewat \`fetch\` di console browser atau tool seperti Postman/curl.`,
  },
  {
    category: "nextjs",
    slug: "environment-variables-dasar",
    order: 7,
    title: "Environment Variables Dasar di Next.js",
    content: `**Masalah yang diselesaikan:** Route Handler yang barusan kamu buat mungkin perlu terhubung ke database atau API eksternal yang butuh API key rahasia. Menaruh key itu langsung di kode (hardcode) berbahaya — apalagi kalau kode itu ter-commit ke Git repo publik.

Next.js memiliki dukungan bawaan untuk memuat environment variables dari file \`.env.local\` dengan pemisahan keamanan antara Server dan Browser.

\`\`\`mermaid
flowchart TD
    subgraph EnvFile [".env.local"]
        Secret["DATABASE_SECRET_KEY=rahasia123"]
        Public["NEXT_PUBLIC_API_URL=https://api.com"]
    end

    Secret -->|Hanya Terbaca| Server["Server Environment (Node.js Runtime)"]
    Public -->|Terbaca & Di-bundle| Browser["Browser / Client Bundle ('use client')"]

    Secret -.->|BLOCKED / undefined| Browser
\`\`\`

### 1. Definisi Variabel di \`.env.local\`
\`\`\`bash
# Variabel Rahasia (Server Only)
DATABASE_URL="postgresql://user:pass@localhost:5432/db"
SUPABASE_SERVICE_ROLE_KEY="eyJh..."

# Variabel Publik (Browser & Server)
NEXT_PUBLIC_SUPABASE_URL="https://example.supabase.co"
NEXT_PUBLIC_SITE_NAME="Catatan Belajar"
\`\`\`

### 2. Mengakses Variabel di Kode

\`\`\`tsx
// 1. Di Server Component atau Route Handler (Bisa akses keduanya)
export default function ServerPage() {
  const secret = process.env.DATABASE_URL; // Terbaca aman
  const site = process.env.NEXT_PUBLIC_SITE_NAME;
  return <div>{site}</div>;
}

// 2. Di Client Component ('use client')
"use client";

export default function ClientButton() {
  // Hanya variabel dengan prefix NEXT_PUBLIC_ yang bisa diakses
  const site = process.env.NEXT_PUBLIC_SITE_NAME;
  // process.env.DATABASE_URL -> undefined (Mencegah kebocoran kunci rahasia)

  return <button>Kunjungi {site}</button>;
}
\`\`\`

- **Prefix \`NEXT_PUBLIC_\`**: Wajib diberikan jika suatu variabel perlu dibaca di sisi klien/browser.
- **Keamanan**: Jangan pernah memberi prefix \`NEXT_PUBLIC_\` pada Private Key, Secret Token, atau Database Password.`,
    sources: [
      {
        url: "https://nextjs.org/docs/app/building-your-application/configuring/environment-variables",
        label: "Next.js Docs — Environment Variables",
      },
    ],
    practice: `Tambahkan \`.env.local\` di root project dengan dua variabel: satu tanpa prefix (\`RAHASIA_TEST=abc123\`) dan satu dengan prefix \`NEXT_PUBLIC_\` (\`NEXT_PUBLIC_NAMA_APP=Belajar Next.js\`). Restart dev server (\`.env.local\` cuma dibaca saat start), lalu:

1. Di Server Component manapun, \`console.log(process.env.RAHASIA_TEST)\` — muncul di terminal tempat \`npm run dev\` jalan.
2. Di Client Component, coba akses \`process.env.RAHASIA_TEST\` (harus \`undefined\`) vs \`process.env.NEXT_PUBLIC_NAMA_APP\` (harus muncul nilainya) — buktikan sendiri batas keamanannya.`,
  },
  {
    category: "nextjs",
    slug: "metadata-seo-dasar",
    order: 8,
    title: "Metadata Dasar untuk SEO di Next.js",
    content: `**Masalah yang diselesaikan:** semua yang sudah kamu bangun sejauh ini fungsional, tapi bagaimana orang lain (dan mesin pencari seperti Google) tahu halaman kamu ini tentang apa sebelum mereka klik? Tanpa metadata yang benar, link yang dibagikan ke sosial media cuma menampilkan URL polos, dan Google kesulitan mengindeks halaman dengan judul yang relevan.

Next.js App Router menyediakan API Metadata untuk mendefinisikan informasi \`<head>\` HTML (seperti title, description, favicon, dan OpenGraph tag untuk media sosial) baik secara statis maupun dinamis.

\`\`\`mermaid
flowchart LR
    Meta["export const metadata = {...}"] --> Gen["Next.js HTML Engine"]
    Gen --> Head["&lt;head&gt;<br/>&lt;title&gt;...&lt;/title&gt;<br/>&lt;meta name='description' .../&gt;<br/>&lt;meta property='og:image' .../&gt;<br/>&lt;/head&gt;"]
\`\`\`

### 1. Static Metadata (\`app/about/page.tsx\`)
Untuk halaman dengan data judul dan deskripsi yang tetap:

\`\`\`tsx
import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Tentang Kami - Catatan Belajar",
  description: "Platform catatan belajar teknologi web dan pemrograman.",
  openGraph: {
    title: "Tentang Kami",
    description: "Platform catatan belajar teknologi web dan pemrograman.",
    images: ["/og-image.png"],
  },
};

export default function AboutPage() {
  return <h1>Tentang Kami</h1>;
}
\`\`\`

### 2. Dynamic Metadata dengan \`generateMetadata\`
Untuk halaman dinamis seperti artikel blog (\`app/notes/[slug]/page.tsx\`):

\`\`\`tsx
import type { Metadata } from "next";

type Props = {
  params: { slug: string };
};

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  // Ambil data catatan dari API / Database
  const note = await getNoteBySlug(params.slug);

  return {
    title: \`\${note.title} | Catatan Belajar\`,
    description: note.excerpt,
    openGraph: {
      title: note.title,
      description: note.excerpt,
    },
  };
}

export default function NoteDetailPage({ params }: Props) {
  return <article>Konten Catatan</article>;
}
\`\`\`

- **Title Template**: Di \`app/layout.tsx\`, kita bisa membuat format title konsisten:
  \`\`\`ts
  export const metadata: Metadata = {
    title: {
      template: "%s | Catatan Belajar",
      default: "Catatan Belajar",
    },
  };
  \`\`\``,
    sources: [
      {
        url: "https://nextjs.org/docs/app/building-your-application/optimizing/metadata",
        label: "Next.js Docs — Metadata",
      },
    ],
    practice: `Tambahkan \`export const metadata\` ke salah satu halaman project latihan kamu (mis. \`app/produk/page.tsx\`), isi title dan description yang relevan. Lalu:

1. Lihat tab browser — judulnya harus berubah sesuai \`metadata.title\`.
2. View page source (Ctrl+U / klik kanan → View Page Source), cari tag \`<meta name="description">\` di \`<head>\` — pastikan isinya sesuai yang kamu tulis.
3. Kalau sempat, coba \`generateMetadata\` dinamis untuk halaman \`app/produk/[id]/page.tsx\` yang title-nya berbeda tergantung \`id\`-nya — ini menutup roadmap Next.js: dari struktur project sampai halaman yang siap ditemukan orang lain.`,
  },
  {
    category: "python",
    slug: "list-comprehension",
    order: 0,
    title: "List Comprehension",
    content: `**Masalah yang diselesaikan:** transformasi atau filter list yang sering dipakai (misalnya ambil elemen genap saja) biasanya butuh beberapa baris kode (deklarasi list kosong, loop, if, append) untuk operasi yang sebenarnya konsepnya sederhana.

List comprehension adalah cara ringkas membuat list baru dari list/iterable lain.

\`\`\`mermaid
graph TD
  A["angka = [1, 2, 3, 4, 5, 6]"] --> B["for n in angka"]
  B --> C{"n % 2 == 0 ?"}
  C -- ya --> D["masuk ke hasil"]
  C -- tidak --> E["dilewati"]
  D --> F["[2, 4, 6]"]
\`\`\`

\`\`\`python
angka = [1, 2, 3, 4, 5, 6]

# cara biasa
genap = []
for n in angka:
    if n % 2 == 0:
        genap.append(n)

# dengan list comprehension
genap = [n for n in angka if n % 2 == 0]
\`\`\`

Pola umum: \`[ekspresi for item in iterable if kondisi]\`.

Bisa juga dipakai untuk dictionary comprehension:

\`\`\`python
kuadrat = {n: n**2 for n in angka}
\`\`\``,
    sources: [
      {
        label: "List Comprehensions — Python Docs",
        url: "https://docs.python.org/3/tutorial/datastructures.html#list-comprehensions",
      },
    ],
    practice: `Diberikan \`kata = ['apel', 'jeruk', 'kiwi', 'nanas', 'anggur']\`, buat list comprehension baru yang cuma mengambil kata dengan panjang lebih dari 4 huruf, dan sekaligus ubah semuanya jadi huruf besar (\`.upper()\`). Lalu buat dictionary comprehension \`{kata: len(kata) for kata in kata}\` untuk memetakan tiap kata ke panjangnya.`,
  },
  {
    category: "python",
    slug: "virtual-environment",
    order: 1,
    title: "Virtual Environment (venv)",
    content: `**Masalah yang diselesaikan:** kalau semua dependency Python diinstall secara global (satu Python untuk semua proyek), proyek A yang butuh \`django==4\` dan proyek B yang butuh \`django==3\` akan bertabrakan — cuma bisa ada satu versi terinstall global di satu waktu.

Virtual environment digunakan agar dependency setiap proyek Python terisolasi dan tidak bentrok satu sama lain.

\`\`\`mermaid
graph TD
  subgraph A["Proyek A"]
    A1[".venv A"] --> A2["django==4, requests==2.1"]
  end
  subgraph B["Proyek B"]
    B1[".venv B"] --> B2["flask==3, requests==2.31"]
  end
\`\`\`

\`\`\`bash
# membuat venv
python -m venv .venv

# mengaktifkan (Linux/Mac)
source .venv/bin/activate

# mengaktifkan (Windows)
.venv\\Scripts\\activate

# menginstal dependency
pip install -r requirements.txt

# keluar dari venv
deactivate
\`\`\`

Tips:

- Tambahkan folder \`.venv/\` ke \`.gitignore\` agar tidak ikut ter-commit.
- Simpan daftar dependency dengan \`pip freeze > requirements.txt\`.`,
    sources: [
      { label: "venv — Creation of virtual environments — Python Docs", url: "https://docs.python.org/3/library/venv.html" },
    ],
    prerequisites: [{ label: "Python sudah terinstall (cek dengan `python --version`)", url: "https://www.python.org/downloads/" }],
    practice: `Buat dua folder proyek berbeda. Di masing-masing, buat venv terpisah (\`python -m venv .venv\`), aktifkan, lalu install versi \`requests\` yang BERBEDA di tiap proyek (mis. \`pip install requests==2.31.0\` di satu, \`pip install requests==2.28.0\` di lainnya). Jalankan \`pip freeze\` di kedua venv untuk membuktikan versinya benar-benar berbeda dan tidak saling memengaruhi satu sama lain.`,
  },
  {
    category: "supabase",
    slug: "setup-client",
    order: 0,
    title: "Setup Supabase Client",
    content: `**Masalah yang diselesaikan:** membangun backend sendiri dari nol — server, database, sistem auth, storage — butuh waktu berminggu-minggu sebelum sempat menulis fitur aplikasi yang sebenarnya.

Supabase adalah backend siap pakai (database Postgres, auth, storage, dst) yang diakses lewat library \`@supabase/supabase-js\` di sisi aplikasi.

\`\`\`mermaid
graph LR
  App["App (kode kamu)"] -- "createClient(url, key)" --> Client["Supabase Client"]
  Client --> DB["Postgres (database)"]
  Client --> Auth["Auth"]
  Client --> Storage["Storage"]
\`\`\`

\`\`\`bash
npm install @supabase/supabase-js
\`\`\`

\`\`\`ts
// lib/supabase.ts
import { createClient } from "@supabase/supabase-js";

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!;

export const supabase = createClient(supabaseUrl, supabaseKey);
\`\`\`

\`\`\`
# .env.local
NEXT_PUBLIC_SUPABASE_URL=https://xxxxx.supabase.co
NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY=sb_publishable_xxxxxxxxxxxxxxxx
\`\`\`

Poin penting:

- \`supabaseUrl\` dan \`supabaseKey\` didapat dari dashboard project Supabase (Project Settings → API Keys).
- Key ini disebut **publishable key** (\`sb_publishable_...\`) — pengganti "anon key" lama, karena Supabase sedang memensiunkan anon/service_role key. Kedua jenis key masih berfungsi untuk sementara, tapi project baru sebaiknya pakai publishable key.
- Publishable key aman dipakai di sisi client/browser karena akses datanya tetap dibatasi oleh Row Level Security (RLS) di database, bukan oleh key itu sendiri.
- Client (\`supabase\`) yang dibuat sekali ini dipakai ulang di seluruh aplikasi untuk query, auth, dan storage.`,
    sources: [
      { label: "Supabase Docs — JavaScript Client Reference", url: "https://supabase.com/docs/reference/javascript/introduction" },
      {
        label: "Supabase Docs — Migrating to publishable and secret API keys",
        url: "https://supabase.com/docs/guides/getting-started/migrating-to-new-api-keys",
      },
    ],
    prerequisites: [
      { label: "Akun & project Supabase sudah dibuat (gratis)", url: "https://supabase.com/dashboard" },
      { label: "Node.js & npm sudah terinstall", url: "https://nodejs.org" },
    ],
    practice: `Buat project baru di dashboard Supabase (kalau belum ada), install \`@supabase/supabase-js\`, lalu buat file \`lib/supabase.ts\` seperti contoh di atas dengan URL & key project kamu sendiri (dari Project Settings → API Keys). Panggil \`await supabase.auth.getSession()\` dari mana saja di project untuk memastikan client-nya berhasil terhubung — harus return object tanpa error, walau sesinya masih \`null\` karena belum ada yang login.`,
  },
  {
    category: "supabase",
    slug: "query-dasar",
    order: 1,
    title: "Query Data Dasar (CRUD)",
    content: `Client Supabase dari catatan sebelumnya sudah siap. **Masalah yang diselesaikan sekarang:** bagaimana benar-benar membaca dan mengubah data di database dari kode aplikasi, tanpa menulis query SQL manual satu per satu?

Setelah client Supabase siap, operasi dasar ke database (CRUD) dipanggil lewat method di atas nama tabel.

\`\`\`ts
import { supabase } from "./lib/supabase";

// SELECT — ambil semua baris
const { data, error } = await supabase.from("produk").select("*");

// SELECT dengan filter
const { data: satu } = await supabase
  .from("produk")
  .select("*")
  .eq("id", 1)
  .single();

// INSERT — tambah baris baru
await supabase.from("produk").insert({ nama: "Buku", harga: 50000 });

// UPDATE — ubah baris yang cocok filter
await supabase.from("produk").update({ harga: 60000 }).eq("id", 1);

// DELETE — hapus baris yang cocok filter
await supabase.from("produk").delete().eq("id", 1);
\`\`\`

| Method Supabase | Setara perintah SQL |
| --- | --- |
| \`.select("*")\` | \`SELECT * FROM produk\` |
| \`.insert({...})\` | \`INSERT INTO produk (...) VALUES (...)\` |
| \`.update({...}).eq("id", 1)\` | \`UPDATE produk SET ... WHERE id = 1\` |
| \`.delete().eq("id", 1)\` | \`DELETE FROM produk WHERE id = 1\` |

Poin penting:

- Setiap query mengembalikan \`{ data, error }\` — selalu cek \`error\` sebelum memakai \`data\`, jangan asumsikan query selalu berhasil.
- \`.eq("kolom", nilai)\` adalah filter kondisi \`WHERE kolom = nilai\`; ada filter lain seperti \`.gt()\`, \`.lt()\`, \`.like()\` untuk kondisi berbeda.
- Query hanya akan berhasil kalau diizinkan oleh Row Level Security (RLS) tabel tersebut — kalau RLS aktif tapi belum ada policy, semua query dari client akan ditolak meskipun kodenya benar.`,
    sources: [
      { label: "Supabase Docs — JavaScript Client Reference", url: "https://supabase.com/docs/reference/javascript/introduction" },
    ],
    practice: `Di project Supabase kamu, buat tabel \`produk\` (kolom: \`id\`, \`nama\` text, \`harga\` numeric). Praktikkan keempat operasi CRUD di atas lewat client — insert 2-3 produk, select semuanya, update salah satu harganya, lalu delete satu. Cek tabel \`produk\` di dashboard Supabase (Table Editor) setiap habis satu operasi, untuk memastikan perubahannya benar-benar tersimpan di database.`,
  },
  {
    category: "supabase",
    slug: "auth-dasar",
    order: 2,
    title: "Autentikasi Dasar Pengguna",
    content: `Sekarang kamu bisa query data bebas (asalkan RLS belum aktif). **Masalah yang diselesaikan sekarang:** bagaimana tahu *siapa* yang sedang mengakses aplikasi, supaya nanti data bisa dibatasi per user — bukan semua orang melihat/mengubah data yang sama?

Supabase menyediakan modul autentikasi lengkap (**Supabase Auth**) untuk mengelola pendaftaran, login, sesi token JWT, dan verifikasi email pengguna.

\`\`\`mermaid
sequenceDiagram
  autonumber
  participant C as Browser Client
  participant A as Supabase Auth
  participant DB as PostgreSQL Database
  C->>A: Kirim email dan password
  A->>A: Verifikasi hash kata sandi
  A-->>C: Kembalikan Session dan Token JWT
  C->>DB: Query data dengan Bearer JWT
  DB->>DB: Validasi JWT dan isi auth.uid
  DB-->>C: Kembalikan baris data sesuai RLS
\`\`\`

Contoh kode alur autentikasi email dan kata sandi:

\`\`\`ts
import { supabase } from "./lib/supabase";

// 1. Mendaftarkan user baru (Sign Up)
async function daftarUser(email: string, kataSandi: string) {
  const { data, error } = await supabase.auth.signUp({
    email,
    password: kataSandi,
  });
  if (error) throw error;
  return data.user;
}

// 2. Masuk menggunakan email & password (Sign In)
async function masukUser(email: string, kataSandi: string) {
  const { data, error } = await supabase.auth.signInWithPassword({
    email,
    password: kataSandi,
  });
  if (error) throw error;
  return data.session;
}

// 3. Mendapatkan user yang sedang aktif saat ini
async function ambilUserAktif() {
  const { data: { user } } = await supabase.auth.getUser();
  return user;
}

// 4. Keluar dari sesi aplikasi (Sign Out)
async function keluar() {
  const { error } = await supabase.auth.signOut();
  if (error) throw error;
}
\`\`\`

Poin penting:

- Data akun autentikasi disimpan terpisah secara aman di dalam skema \`auth.users\`, bukan di skema \`public\`.
- Untuk membaca identitas user di server atau client secara aman dan terverifikasi ke server auth, selalu utamakan pemanggilan \`supabase.auth.getUser()\`.
- Setelah login berhasil, token JWT sesi otomatis disimpan (di cookie atau localStorage) dan disertakan di setiap panggilan query database berikutnya, sehingga RLS mengenali \`auth.uid()\`.`,
    sources: [
      { url: "https://supabase.com/docs/guides/auth", label: "Supabase Docs — User Management & Authentication" },
      { url: "https://supabase.com/docs/reference/javascript/auth-signup", label: "Supabase Docs — Auth Reference (JavaScript)" },
    ],
    practice: `Buat form sederhana (atau langsung panggil dari kode/console) untuk \`daftarUser()\` dengan email+password sungguhan, cek email konfirmasi yang masuk. Setelah konfirmasi, coba \`masukUser()\`, lalu \`ambilUserAktif()\` untuk memastikan sesinya tersimpan. Terakhir panggil \`keluar()\` dan \`ambilUserAktif()\` lagi — pastikan hasilnya \`null\`.`,
  },
  {
    category: "supabase",
    slug: "rls-dasar",
    order: 3,
    title: "Dasar Row Level Security (RLS)",
    content: `Sekarang kamu punya cara mengenali user yang login (\`auth.uid()\`, dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** bagaimana memastikan user A tidak bisa membaca/mengubah data milik user B, padahal keduanya memakai publishable key yang sama dan bisa langsung memanggil database dari browser?

**Row Level Security (RLS)** adalah fitur keamanan bawaan PostgreSQL yang membatasi baris data mana saja yang boleh dibaca (*SELECT*), ditambah (*INSERT*), diubah (*UPDATE*), atau dihapus (*DELETE*) oleh pengguna tertentu.

Di Supabase, karena client browser memanggil database langsung menggunakan Publishable Key, RLS adalah lapisan pertahanan utama agar pengguna tidak bisa membaca atau memanipulasi data milik orang lain.

\`\`\`mermaid
flowchart TD
  Req["Client Request<br/>SELECT dari browser"] --> CheckRLS{"Apakah RLS Aktif?"}
  CheckRLS -->|Tidak| AllowAll["Izinkan Akses Semua Baris (Bahaya)"]
  CheckRLS -->|Ya| EvalPolicy{"Evaluasi Policy per Baris"}
  EvalPolicy -->|Lolos Policy: Sesuai User ID| ReturnRow["Baris Dikembalikan ke Client"]
  EvalPolicy -->|Gagal: Bukan Pemilik Data| DropRow["Baris Diabaikan atau Ditolak"]
\`\`\`

Mengaktifkan RLS dan membuat policy melalui SQL:

\`\`\`sql
-- 1. Selalu aktifkan RLS pada tabel yang dibuat
ALTER TABLE catatan ENABLE ROW LEVEL SECURITY;

-- 2. Policy: Siapa saja (publik) boleh membaca catatan yang berstatus published
CREATE POLICY "Catatan published dapat dibaca publik"
ON catatan
FOR SELECT
USING (status = 'published');

-- 3. Policy: User yang login hanya boleh membaca catatan miliknya
CREATE POLICY "User dapat membaca catatan miliknya"
ON catatan
FOR SELECT
TO authenticated
USING (auth.uid() = user_id);

-- 4. Policy: User yang login hanya boleh menambah catatan dengan user_id miliknya
CREATE POLICY "User dapat menambah catatan miliknya"
ON catatan
FOR INSERT
TO authenticated
WITH CHECK (auth.uid() = user_id);
\`\`\`

Poin penting:

- Saat RLS diaktifkan pada suatu tabel tanpa policy apa pun, perilakunya adalah **default deny** (semua query dari client anon/authenticated akan menghasilkan data kosong atau error).
- Klausa \`USING\` digunakan untuk memeriksa baris yang sudah ada di database (cocok untuk \`SELECT\`, \`UPDATE\`, \`DELETE\`).
- Klausa \`WITH CHECK\` digunakan untuk memvalidasi baris data baru yang akan ditulis ke database (cocok untuk \`INSERT\`, \`UPDATE\`).
- Fungsi pembantu \`auth.uid()\` mengembalikan UUID pengguna yang sedang login berdasarkan token JWT sesi saat ini.`,
    sources: [
      { url: "https://supabase.com/docs/guides/database/postgres/row-level-security", label: "Supabase Docs — Row Level Security" },
      { url: "https://www.postgresql.org/docs/current/ddl-rowsecurity.html", label: "PostgreSQL Docs — Row Security Policies" },
    ],
    practice: `Di tabel \`produk\` dari latihan sebelumnya, aktifkan RLS (\`ALTER TABLE produk ENABLE ROW LEVEL SECURITY\`) TANPA membuat policy apa pun dulu — coba \`select\` dari client, harus mendapat data kosong (default deny). Lalu tambahkan kolom \`user_id uuid\` ke tabel itu, buat policy SELECT & INSERT seperti contoh di atas berdasarkan \`auth.uid()\`. Terakhir, tes dengan dua akun berbeda: pastikan tiap akun cuma bisa melihat produk yang dia insert sendiri. Ini menutup roadmap Supabase: dari setup client sampai data yang benar-benar aman per user.`,
  },
  {
    category: "supabase",
    slug: "storage-dasar",
    order: 4,
    title: "Storage Dasar: Upload & Ambil URL File",
    content: `Sekarang kamu bisa autentikasi user dan proteksi data lewat RLS. **Masalah yang diselesaikan sekarang:** bagaimana kalau aplikasi kamu perlu menyimpan *file* — foto profil, dokumen, gambar produk — bukan cuma data terstruktur di tabel? Menyimpan file sebagai base64 di kolom database itu boros dan lambat; kamu butuh tempat penyimpanan file terpisah yang tetap terintegrasi dengan sistem auth & RLS yang sama.

**Supabase Storage** menyediakan penyimpanan file berbasis *bucket* (semacam folder besar), dengan kontrol akses yang bisa diatur sama seperti RLS di database.

\`\`\`mermaid
flowchart LR
  File["File dari input user"] -->|upload| Bucket["Bucket (mis. 'avatars')"]
  Bucket -->|"getPublicUrl()"| URL["URL publik file"]
  Bucket -->|"createSignedUrl()"| SignedURL["URL sementara (bucket privat)"]
\`\`\`

\`\`\`ts
import { supabase } from "./lib/supabase";

// Upload file ke bucket "avatars"
async function uploadAvatar(userId: string, file: File) {
  const path = \`\${userId}/\${file.name}\`;
  const { data, error } = await supabase.storage
    .from("avatars")
    .upload(path, file, { upsert: true });

  if (error) throw error;
  return data.path;
}

// Ambil URL publik (untuk bucket public)
function ambilUrlAvatar(path: string) {
  const { data } = supabase.storage.from("avatars").getPublicUrl(path);
  return data.publicUrl;
}

// Ambil URL sementara/kedaluwarsa (untuk bucket privat)
async function ambilUrlSementara(path: string) {
  const { data, error } = await supabase.storage
    .from("dokumen-privat")
    .createSignedUrl(path, 60); // berlaku 60 detik

  if (error) throw error;
  return data.signedUrl;
}
\`\`\`

| Jenis Bucket | Siapa yang bisa akses URL | Cara ambil URL |
| --- | --- | --- |
| Public | Siapa saja yang punya URL-nya | \`getPublicUrl()\` — URL permanen |
| Private | Cuma yang lolos RLS storage | \`createSignedUrl()\` — URL sementara, kedaluwarsa |

Poin penting:

- Bucket dibuat lewat dashboard (Storage → New bucket) atau API, dan bisa ditandai *public* atau *private* saat pembuatan.
- Penamaan path yang menyertakan \`userId/\` (seperti contoh di atas) memudahkan penulisan RLS policy storage berdasarkan pemilik file.
- Storage juga punya RLS sendiri (tabel \`storage.objects\`) — bucket private tanpa policy akan menolak semua akses, sama seperti tabel biasa tanpa policy.`,
    sources: [
      { url: "https://supabase.com/docs/guides/storage", label: "Supabase Docs — Storage" },
      { url: "https://supabase.com/docs/reference/javascript/storage-from-upload", label: "Supabase Docs — Storage Upload Reference" },
    ],
    practice: `Buat bucket baru bernama \`avatars\` lewat dashboard Supabase (Storage → New bucket), tandai sebagai *public*. Di project kamu, buat form upload sederhana (\`<input type="file">\`), upload file yang dipilih user ke bucket itu memakai \`uploadAvatar()\` di atas, lalu tampilkan hasilnya lewat tag \`<img src={url} />\` memakai \`ambilUrlAvatar()\`. Setelah berhasil, buat bucket KEDUA yang privat, upload file yang sama ke sana, dan buktikan \`getPublicUrl()\`-nya tidak bisa diakses langsung (403) sementara \`createSignedUrl()\` bisa.`,
  },
  {
    category: "supabase",
    slug: "realtime-dasar",
    order: 5,
    title: "Realtime Subscription Dasar",
    content: `Sekarang kamu sudah bisa CRUD, auth, RLS, dan simpan file. **Masalah yang diselesaikan sekarang (dan menutup roadmap Supabase ini):** bagaimana kalau aplikasi kamu perlu tahu SAAT ITU JUGA ketika data berubah di database — tanpa user harus refresh halaman manual? Cara lama: *polling* (fetch ulang tiap beberapa detik), yang boros request dan tetap ada delay sampai beberapa detik.

**Supabase Realtime** memungkinkan client mendengarkan perubahan data (INSERT/UPDATE/DELETE) langsung dari database lewat WebSocket, tanpa polling.

\`\`\`mermaid
sequenceDiagram
  autonumber
  participant DB as Database
  participant RT as Supabase Realtime
  participant C as Client (Browser)
  C->>RT: channel().on('postgres_changes').subscribe()
  Note over C,RT: Koneksi WebSocket terbuka
  DB->>DB: INSERT INTO produk (...)
  DB-->>RT: Perubahan terdeteksi
  RT-->>C: Event terkirim real-time
  Note over C: UI update tanpa reload
\`\`\`

\`\`\`ts
import { supabase } from "./lib/supabase";

// Mendengarkan semua perubahan di tabel "produk"
const channel = supabase
  .channel("produk-changes")
  .on(
    "postgres_changes",
    { event: "*", schema: "public", table: "produk" },
    (payload) => {
      console.log("Perubahan diterima:", payload.eventType, payload.new);
    }
  )
  .subscribe();

// Berhenti mendengarkan (mis. saat komponen di-unmount)
supabase.removeChannel(channel);
\`\`\`

Bisa juga dipersempit cuma ke event atau baris tertentu:

\`\`\`ts
supabase
  .channel("produk-baru-saja")
  .on(
    "postgres_changes",
    { event: "INSERT", schema: "public", table: "produk", filter: "kategori_id=eq.5" },
    (payload) => console.log("Produk baru di kategori 5:", payload.new)
  )
  .subscribe();
\`\`\`

Poin penting:

- Realtime harus diaktifkan dulu per tabel lewat dashboard (Database → Replication) atau SQL \`alter publication supabase_realtime add table produk;\` — tabel yang belum diaktifkan tidak akan mengirim event apa pun.
- Payload event berisi \`eventType\` (\`INSERT\`/\`UPDATE\`/\`DELETE\`), \`new\` (data terbaru), dan \`old\` (data sebelumnya, untuk UPDATE/DELETE).
- RLS tetap berlaku untuk Realtime — user cuma menerima event untuk baris yang boleh dia \`SELECT\` menurut policy yang ada.`,
    sources: [
      { url: "https://supabase.com/docs/guides/realtime/postgres-changes", label: "Supabase Docs — Postgres Changes (Realtime)" },
    ],
    practice: `Aktifkan Realtime untuk tabel \`produk\` (Database → Replication di dashboard, atau lewat SQL). Buka dua tab browser di halaman yang sama, keduanya menjalankan kode \`channel().on(...)\` di atas. Di tab pertama, insert produk baru (lewat kode atau dashboard) — lihat tab KEDUA, data barunya harus muncul di console tanpa reload halaman sama sekali. Coba juga persempit filter-nya cuma ke event \`INSERT\`, lalu ke baris tertentu pakai \`filter\`, dan buktikan event UPDATE/DELETE tidak lagi memicu callback-nya. Ini menutup roadmap Supabase: dari setup client sampai data yang live ter-sinkron ke semua client yang terhubung.`,
  },
  {
    category: "typescript",
    slug: "tipe-dasar",
    order: 0,
    title: "Tipe Dasar & Type Annotation",
    content: `**Masalah yang diselesaikan:** JavaScript murni tidak mendeteksi kesalahan tipe data sampai program benar-benar dijalankan — kirim string ke tempat yang harusnya angka baru ketahuan saat aplikasi sudah jalan (bahkan mungkin sudah di production), bukan saat menulis kode.

TypeScript menambahkan sistem tipe di atas JavaScript, dicek SEBELUM kode dijalankan (compile time). Tipe bisa ditulis manual (annotation) atau otomatis ditebak oleh compiler (inference).

| Tipe | Contoh nilai |
| --- | --- |
| \`string\` | \`"Budi"\` |
| \`number\` | \`20\` |
| \`boolean\` | \`true\` |
| \`string[]\` | \`["baca", "coding"]\` |
| \`[number, number]\` | \`[10, 20]\` (tuple: jumlah & urutan elemen tetap) |

\`\`\`ts
// annotation manual
let nama: string = "Budi";
let umur: number = 20;
let aktif: boolean = true;

// array & tuple
let hobi: string[] = ["baca", "coding"];
let titik: [number, number] = [10, 20];

// inference otomatis, tidak perlu ditulis manual
let kota = "Jakarta"; // TypeScript tahu ini string

// function dengan tipe parameter & return value
function tambah(a: number, b: number): number {
  return a + b;
}

// error ketika tipe tidak cocok, akan tertangkap saat kompilasi
// tambah("1", 2); // Error: Argument of type 'string' is not assignable...
\`\`\`

Poin penting:

- Tipe dicek saat kompilasi (compile time), bukan saat program berjalan.
- Kalau tidak ditulis, TypeScript tetap mencoba menebak tipe lewat inference — tetap disarankan menulis annotation di parameter fungsi agar jelas.
- File TypeScript berekstensi \`.ts\` (atau \`.tsx\` untuk JSX/React).`,
    sources: [
      { label: "TypeScript Handbook — Everyday Types", url: "https://www.typescriptlang.org/docs/handbook/2/everyday-types.html" },
    ],
    prerequisites: [
      { label: "Node.js & npm sudah terinstall", url: "https://nodejs.org" },
      {
        label:
          "TypeScript compiler tersedia (`npm install -g typescript`, atau lewat project yang sudah menyertakannya seperti Next.js)",
      },
    ],
    practice: `Buat file \`coba.ts\`, isi dengan variabel beranotasi tipe (\`string\`, \`number\`, \`boolean\`) dan satu function bertipe seperti contoh di atas. Jalankan \`npx tsc coba.ts --noEmit\` di terminal — perintah ini cuma mengecek tipe tanpa menghasilkan file \`.js\`. Lalu:

1. Ubah salah satu nilai supaya tipenya salah (mis. \`let umur: number = "dua puluh";\`), jalankan lagi \`npx tsc\` — baca pesan error yang muncul.
2. Kembalikan ke benar, lalu coba panggil \`tambah("1", 2)\` seperti komentar di atas — pastikan compiler menolaknya sebelum kode itu sempat dijalankan.`,
  },
  {
    category: "typescript",
    slug: "interface-dan-type-alias",
    order: 1,
    title: "Interface & Type Alias",
    content: `Catatan sebelumnya membahas tipe untuk nilai tunggal (\`string\`, \`number\`, dst). **Masalah yang diselesaikan sekarang:** bagaimana kalau yang perlu diberi tipe adalah *object* dengan banyak properti — misalnya data user dengan \`id\`, \`nama\`, \`email\`? Menuliskan ulang bentuk object yang sama di setiap fungsi yang memakainya itu berulang dan gampang tidak konsisten kalau salah satu lupa di-update.

\`interface\` dan \`type\` sama-sama dipakai untuk mendefinisikan bentuk (shape) sebuah object, supaya TypeScript bisa memeriksa strukturnya.

\`\`\`ts
// pakai interface
interface User {
  id: number;
  nama: string;
  email?: string; // tanda "?" = properti opsional
}

function tampilkanUser(user: User): void {
  console.log(\`\${user.id} - \${user.nama}\`);
}

tampilkanUser({ id: 1, nama: "Budi" }); // email opsional, boleh tidak diisi

// pakai type alias
type Produk = {
  nama: string;
  harga: number;
};

const produk: Produk = { nama: "Buku", harga: 50000 };
\`\`\`

| | \`interface\` | \`type\` |
| --- | --- | --- |
| extend | \`interface Admin extends User {}\` | \`type Admin = User & { ... }\` |
| declaration merging | bisa (dua deklarasi nama sama digabung) | tidak bisa |
| union type | tidak bisa | bisa: \`"aktif" \\| "nonaktif"\` |
| bentuk object biasa | bisa | bisa |

Perbedaan singkat:

- \`interface\` bisa di-*extend* (\`interface Admin extends User {}\`) dan bisa digabung otomatis kalau dideklarasikan dua kali (declaration merging).
- \`type\` lebih fleksibel: bisa dipakai untuk union (\`type Status = "aktif" | "nonaktif"\`), bukan hanya bentuk object.
- Untuk mendefinisikan bentuk object biasa, keduanya bisa dipakai — pilih salah satu dan konsisten dalam satu project.`,
    sources: [
      { label: "TypeScript Handbook — Object Types (Interfaces)", url: "https://www.typescriptlang.org/docs/handbook/2/objects.html" },
    ],
    practice: `Buat \`interface Buku { judul: string; penulis: string; tahun?: number }\`. Tulis fungsi \`cetakInfo(buku: Buku)\` yang menampilkan info buku (tahun opsional, tampilkan "Tahun tidak diketahui" kalau tidak diisi). Lalu buat ULANG hal yang sama pakai \`type\` alih-alih \`interface\` — bandingkan, apa bedanya secara sintaks? Terakhir, coba \`interface Buku { penerbit: string }\` sekali lagi dengan nama yang sama — perhatikan declaration merging (TypeScript menggabungkan otomatis), lalu coba hal yang sama dengan \`type\` — harus muncul error "duplicate identifier".`,
  },
  {
    category: "typescript",
    slug: "union-dan-literal-type",
    order: 2,
    title: "Union Type & Literal Type",
    content: `Sekarang kamu bisa mendefinisikan bentuk object lewat interface/type alias di catatan sebelumnya. **Masalah yang diselesaikan sekarang:** bagaimana kalau sebuah nilai cuma boleh salah satu dari beberapa pilihan spesifik — misalnya status pesanan yang cuma boleh \`"pending"\`, \`"success"\`, atau \`"failed"\`? Kalau cuma dianotasi \`string\` biasa, TypeScript tidak akan komplain kalau ada yang salah ketik \`"pendign"\` atau mengirim status yang sama sekali tidak valid.

Union type memungkinkan suatu variabel atau parameter memiliki lebih dari satu kemungkinan tipe data (menggunakan operator \`|\`). Literal type mempersempit tipe data ke nilai eksak tertentu (bukan sekadar \`string\` atau \`number\` umum).

\`\`\`mermaid
flowchart TD
    subgraph UnionType ["type Status = 'pending' | 'success' | 'failed'"]
        A["'pending'"]
        B["'success'"]
        C["'failed'"]
    end
    Val["Input Nilai: 'success'"] -->|Valid| B
    ValInvalid["Input Nilai: 'cancelled'"] -->|Type Error| UnionType
\`\`\`

### 1. Union Type Sederhana
Mengizinkan nilai berupa salah satu dari tipe yang didefinisikan:

\`\`\`ts
function formatID(id: string | number): string {
  return \`ID: \${id}\`;
}

console.log(formatID(101));       // Output: ID: 101
console.log(formatID("USR-001")); // Output: ID: USR-001
\`\`\`

### 2. Literal Type (String & Number Literal)
Mengunci nilai agar hanya menerima teks atau angka tertentu:

\`\`\`ts
type Role = "admin" | "member" | "guest";
type DiceRoll = 1 | 2 | 3 | 4 | 5 | 6;

let userRole: Role = "admin";
// userRole = "superadmin"; // Error: Type '"superadmin"' is not assignable to type 'Role'.

let roll: DiceRoll = 6;
// let invalidRoll: DiceRoll = 7; // Error: Type '7' is not assignable to type 'DiceRoll'.
\`\`\`

### 3. Discriminated Union (Tagged Union)
Teknik menggabungkan beberapa object type yang memiliki properti penanda (*discriminant property*) yang sama untuk membedakan struktur datanya:

\`\`\`ts
type ResponseData =
  | { status: "loading" }
  | { status: "success"; data: string[] }
  | { status: "error"; message: string };

function renderResponse(res: ResponseData) {
  if (res.status === "loading") {
    console.log("Sedang memuat data...");
  } else if (res.status === "success") {
    console.log("Data diterima:", res.data.length, "item");
  } else {
    console.log("Error:", res.message);
  }
}
\`\`\`

- **Union (\`|\`)** = nilai bisa bertipe A **atau** B.
- **Literal Type** = nilai harus persis teks/angka tertentu, sangat berguna menggantikan magic string/number.
- **Discriminated Union** = pola standar di TypeScript untuk menangani state kompleks (misal: state API, aksi Redux, dll).`,
    sources: [
      { url: "https://www.typescriptlang.org/docs/handbook/2/everyday-types.html#union-types", label: "TypeScript Handbook — Everyday Types (Unions)" },
      { url: "https://www.typescriptlang.org/docs/handbook/2/everyday-types.html#literal-types", label: "TypeScript Handbook — Literal Types" },
    ],
    practice: `Definisikan \`type Pembayaran = "transfer" | "kartu" | "cod"\`. Buat fungsi \`prosesPembayaran(metode: Pembayaran)\` yang mencetak pesan berbeda per metode. Coba panggil dengan nilai yang salah ketik (\`"trasfer"\`) — pastikan TypeScript langsung menolak sebelum kode dijalankan. Lalu buat discriminated union \`type Notifikasi = { tipe: "email"; alamat: string } | { tipe: "sms"; nomor: string }\` dan fungsi yang menangani keduanya seperti contoh \`renderResponse\` di atas.`,
  },
  {
    category: "typescript",
    slug: "type-narrowing",
    order: 3,
    title: "Type Narrowing Dasar",
    content: `Union type dan literal type dari catatan sebelumnya menyelesaikan masalah "nilai apa saja yang valid". **Masalah yang diselesaikan sekarang:** begitu kamu punya variabel bertipe union (misalnya \`string | number\`), compiler tidak tahu persis tipe konkretnya di titik tertentu dalam kode — jadi method yang spesifik ke satu tipe (\`.toUpperCase()\` untuk string, \`.toFixed()\` untuk number) tidak bisa langsung dipanggil tanpa pengecekan dulu.

Type Narrowing adalah proses di mana TypeScript mempersempit tipe variabel yang luas menjadi tipe yang lebih spesifik berdasarkan pemeriksaan kondisi logika di kode (*control flow analysis*).

\`\`\`mermaid
flowchart TD
    Input["Input: string | number"] --> Check{"typeof value === 'string'?"}
    Check -- Yes --> BranchStr["Tipe menyempit ke: string<br/>(Bisa akses .toUpperCase(), .slice())"]
    Check -- No --> BranchNum["Tipe menyempit ke: number<br/>(Bisa akses .toFixed(), operasi hitung)"]
\`\`\`

### 1. \`typeof\` Guard
Digunakan untuk tipe primitif (\`string\`, \`number\`, \`boolean\`, \`symbol\`, \`bigint\`):

\`\`\`ts
function padLeft(padding: number | string, input: string): string {
  if (typeof padding === "number") {
    // Di dalam blok ini, padding pasti bertipe \`number\`
    return " ".repeat(padding) + input;
  }
  // Di luar blok if, TypeScript tahu padding pasti bertipe \`string\`
  return padding + input;
}
\`\`\`

### 2. Equality Guard (\`===\`, \`!==\`)
Pemeriksaan kesamaan nilai literal mempersempit tipe union:

\`\`\`ts
function prosesStatus(state: "idle" | "loading" | "success") {
  if (state === "loading") {
    console.log("Animasi spinner...");
  } else if (state === "success") {
    console.log("Tampilkan konten!");
  } else {
    console.log("Menunggu aksi user.");
  }
}
\`\`\`

### 3. Operator \`in\`
Memeriksa keberadaan sebuah property pada object:

\`\`\`ts
type Burung = { terbang: () => void };
type Ikan = { berenang: () => void };

function gerak(hewan: Burung | Ikan) {
  if ("terbang" in hewan) {
    hewan.terbang(); // TypeScript tahu ini Burung
  } else {
    hewan.berenang(); // TypeScript tahu ini Ikan
  }
}
\`\`\`

### 4. \`instanceof\` Guard
Memeriksa apakah object merupakan instance dari suatu \`class\`:

\`\`\`ts
function logDateOrString(x: Date | string) {
  if (x instanceof Date) {
    console.log(x.toUTCString()); // x bertipe Date
  } else {
    console.log(x.toUpperCase()); // x bertipe string
  }
}
\`\`\`

TypeScript secara pintar memotong kemungkinan tipe (*type narrowing*) di setiap cabang \`if/else\`, sehingga method yang dipanggil dijamin aman tanpa perlu casting manual (\`as\`).`,
    sources: [
      { url: "https://www.typescriptlang.org/docs/handbook/2/narrowing.html", label: "TypeScript Handbook — Narrowing" },
    ],
    practice: `Tulis fungsi \`formatNilai(value: string | number | boolean)\` yang mengembalikan versi string dari \`value\` dengan format berbeda per tipe (uppercase untuk string, 2 angka desimal untuk number, "Ya"/"Tidak" untuk boolean). Pakai \`typeof\` guard untuk tiap cabang. Lalu coba hapus salah satu pengecekan \`typeof\`-nya dan lihat error yang muncul saat memanggil method yang tidak sesuai tipe di cabang itu.`,
  },
  {
    category: "typescript",
    slug: "generics-dasar",
    order: 5,
    title: "Generics Dasar",
    content: `Semua fungsi yang kamu tulis sejauh ini punya tipe parameter yang spesifik. **Masalah yang diselesaikan sekarang:** bagaimana kalau kamu mau bikin fungsi yang bekerja untuk banyak tipe data sekaligus (angka, teks, object apa pun) tanpa menulis versi terpisah untuk masing-masing, dan tanpa kehilangan informasi tipe seperti yang terjadi kalau pakai \`any\`?

Generics memungkinkan kita membuat fungsi, interface, atau class yang dapat bekerja dengan berbagai tipe data tanpa kehilangan informasi tipe aslinya (*type safety*), bertindak seperti variabel penampung tipe (*type placeholder*).

\`\`\`mermaid
flowchart LR
    subgraph Function ["Fungsi Generic: identitas&lt;T&gt;(arg: T): T"]
        T["T (Type Placeholder)"]
    end
    Call1["identitas&lt;number&gt;(42)"] -->|T = number| Result1["Return: 42 (number)"]
    Call2["identitas&lt;string&gt;('halo')"] -->|T = string| Result2["Return: 'halo' (string)"]
\`\`\`

### 1. Masalah Tanpa Generics vs Dengan Generics
Jika menggunakan \`any\`, tipe return akan hilang. Dengan generics (\`<T>\`), tipe input dan output tetap terjaga:

\`\`\`ts
// Tanpa Generics: kehilangan type check
function identitasAny(arg: any): any {
  return arg;
}

// Dengan Generics: tipe tetap terjaga
function identitas<T>(arg: T): T {
  return arg;
}

const angka = identitas<number>(100);    // tipe: number
const teks = identitas("Selamat Datang"); // tipe: string (type inference otomatis)
\`\`\`

### 2. Generic pada Interface & Type Alias
Sangat umum digunakan untuk response API:

\`\`\`ts
interface ApiResponse<T> {
  status: number;
  sukses: boolean;
  data: T;
}

interface UserProfile {
  id: string;
  nama: string;
}

const userRes: ApiResponse<UserProfile> = {
  status: 200,
  sukses: true,
  data: { id: "u1", nama: "Ahmad" }
};

const countRes: ApiResponse<number> = {
  status: 200,
  sukses: true,
  data: 42
};
\`\`\`

### 3. Generic Constraints (\`extends\`)
Membatasi tipe yang boleh masuk ke dalam parameter generic:

\`\`\`ts
interface MemilikiPanjang {
  length: number;
}

function hitungPanjang<T extends MemilikiPanjang>(item: T): number {
  return item.length;
}

console.log(hitungPanjang("Halo Dunia")); // valid (string punya .length)
console.log(hitungPanjang([1, 2, 3]));     // valid (array punya .length)
// hitungPanjang(123); // Error: Argument of type 'number' is not assignable to 'MemilikiPanjang'
\`\`\`

Generics membuat kode bersifat *reusable* (dapat dipakai ulang) untuk berbagai jenis data namun tetap 100% *type-safe*.`,
    sources: [
      { url: "https://www.typescriptlang.org/docs/handbook/2/generics.html", label: "TypeScript Handbook — Generics" },
    ],
    practice: `Buat fungsi generic \`ambilElemenPertama<T>(arr: T[]): T\` yang mengembalikan elemen pertama array apa pun. Panggil dengan array number, array string, dan array object — pastikan tipe hasil return-nya ikut menyesuaikan tanpa perlu casting manual. Lalu buat \`interface Kotak<T> { isi: T }\` dan buat dua instance kotak dengan tipe isi yang berbeda.`,
  },
  {
    category: "typescript",
    slug: "enum-dasar",
    order: 7,
    title: "Enum Dasar",
    content: `Catatan-catatan sebelumnya (generics, utility types, union & literal type) sama-sama cara merepresentasikan "pilihan terbatas" atau bentuk tipe yang fleksibel dengan cara yang berbeda-beda. **Masalah yang diselesaikan sekarang:** enum adalah alternatif lain — sekumpulan konstanta bernama yang dikelompokkan dalam satu namespace, umum dipakai di code base yang lebih bergaya OOP.

Enum (*enumerations*) adalah fitur TypeScript yang memungkinkan pendefinisian sekumpulan konstanta bernama. Enum memudahkan representasi pilihan opsi yang terbatas dan tetap.

\`\`\`mermaid
flowchart TD
    subgraph NumericEnum ["Numeric Enum (Auto Increment)"]
        D0["Direction.Up = 0"]
        D1["Direction.Right = 1"]
        D2["Direction.Down = 2"]
        D3["Direction.Left = 3"]
    end
    subgraph StringEnum ["String Enum (Eksplisit)"]
        S1["StatusPesanan.Pending = 'PENDING'"]
        S2["StatusPesanan.Proses = 'PROSES'"]
        S3["StatusPesanan.Selesai = 'SELESAI'"]
    end
\`\`\`

### 1. Numeric Enum (Enum Angka)
Secara default, nilai enum dimulai dari \`0\` dan otomatis bertambah 1:

\`\`\`ts
enum Arah {
  Atas,    // 0
  Kanan,   // 1
  Bawah,   // 2
  Kiri     // 3
}

let gerakan: Arah = Arah.Atas;
console.log(gerakan); // Output: 0
\`\`\`

Kita juga bisa menentukan nilai awal:
\`\`\`ts
enum HttpStatus {
  OK = 200,
  BadRequest = 400,
  NotFound = 404,
  InternalServerError = 500
}
\`\`\`

### 2. String Enum (Direkomendasikan)
String enum lebih mudah di-debug karena nilainya langsung terbaca saat di-log atau disimpan ke database:

\`\`\`ts
enum PeranPengguna {
  Admin = "ADMIN",
  Editor = "EDITOR",
  Viewer = "VIEWER"
}

function cekAkses(peran: PeranPengguna) {
  if (peran === PeranPengguna.Admin) {
    console.log("Akses penuh diberikan.");
  }
}

cekAkses(PeranPengguna.Admin);
\`\`\`

### Enum vs String Literal Union
Dalam ekosistem TypeScript modern, ada perbandingan umum antara \`enum\` dan \`union literal\`:

| Fitur | \`enum\` | \`type Status = "a" \\| "b"\` |
| --- | --- | --- |
| Transpile Output | Menghasilkan kode JavaScript (object IIFE) | Hilang setelah transpile (0 runtime overhead) |
| Import | Harus import nama enum-nya | Cukup gunakan string literal langsung |
| Keterbacaan | Terkapsulasi rapi di namespace | Sangat ringkas dan idiomatis di React/Next.js |

Gunakan **String Enum** saat membutuhkan namespace konstanta yang terstruktur, atau gunakan **Union Literal** untuk tipe opsi yang ringan dan sering dioper langsung.`,
    sources: [
      { url: "https://www.typescriptlang.org/docs/handbook/2/enums.html", label: "TypeScript Handbook — Enums" },
    ],
    practice: `Buat \`enum StatusTugas { Belum, Proses, Selesai }\`, tulis fungsi yang menerima parameter bertipe \`StatusTugas\` dan mencetak pesan berbeda per status. Lalu tulis ULANG hal yang sama pakai union literal (\`type StatusTugas = "belum" | "proses" | "selesai"\`). Bandingkan: mana yang menurutmu lebih enak dibaca saat hover ke variabelnya di editor?`,
  },
  {
    category: "typescript",
    slug: "tsconfig-dasar",
    order: 8,
    title: "Konfigurasi Penting tsconfig.json",
    content: `Sepanjang roadmap ini, TypeScript sudah menjaga banyak kesalahan lewat compiler. **Masalah yang diselesaikan sekarang:** seberapa ketat pengecekannya, versi JavaScript apa yang dihasilkan, dan bagaimana \`import\` di-resolve — semua diatur di satu file: \`tsconfig.json\`. Ini catatan penutup roadmap, tentang mengonfigurasi compiler-nya sendiri, bukan lagi soal sintaks tipe.

File \`tsconfig.json\` adalah file konfigurasi utama proyek TypeScript yang menentukan aturan kompilasi, target JavaScript, sistem modul, dan tingkat ketatnya pemeriksaan tipe (*type-checking*).

\`\`\`mermaid
flowchart TD
    Config["tsconfig.json"]
    Config --> Comp["compilerOptions (Aturan Compiler)"]
    Config --> Inc["include / exclude (Target File)"]

    Comp --> C1["target: 'ES2022' (Versi output JS)"]
    Comp --> C2["module: 'ESNext' (Sistem import/export)"]
    Comp --> C3["strict: true (Keamanan tipe maksimal)"]
    Comp --> C4["noEmit: true (Hanya cek tipe, tanpa build file .js)"]
\`\`\`

### Contoh Konfigurasi Standar untuk Web Modern / Next.js
\`\`\`json
{
  "compilerOptions": {
    "target": "ES2022",
    "lib": ["DOM", "DOM.Iterable", "ESNext"],
    "allowJs": true,
    "skipLibCheck": true,
    "strict": true,
    "noEmit": true,
    "esModuleInterop": true,
    "module": "ESNext",
    "moduleResolution": "bundler",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "jsx": "preserve",
    "incremental": true,
    "paths": {
      "@/*": ["./src/*"]
    }
  },
  "include": ["next-env.d.ts", "**/*.ts", "**/*.tsx"],
  "exclude": ["node_modules"]
}
\`\`\`

### Opsi Compiler Paling Penting untuk Pemula

| Opsi | Nilai Populer | Fungsi |
| --- | --- | --- |
| \`strict\` | \`true\` | Menyalakan semua aturan ketat TypeScript (termasuk \`noImplicitAny\`, \`strictNullChecks\`). Sangat direkomendasikan selalu \`true\`. |
| \`target\` | \`ES2020\` / \`ES2022\` | Menentukan versi JavaScript hasil output kompilasi. |
| \`moduleResolution\` | \`node\` / \`bundler\` | Menentukan bagaimana TypeScript mencari path module saat \`import\`. \`bundler\` standar untuk Vite/Next.js modern. |
| \`paths\` | \`{"@/*": ["./*"]}\` | Alias path import agar tidak perlu menulis \`../../components\`. |
| \`noEmit\` | \`true\` | Memberitahu TypeScript hanya melakukan *type checking* (biasanya bundler lain seperti Vite/Webpack/Next.js yang menghasilkan file JS-nya). |
| \`skipLibCheck\` | \`true\` | Melewati pemeriksaan tipe di file \`.d.ts\` pihak ketiga (\`node_modules\`) agar proses kompilasi jauh lebih cepat. |

Menjaga \`strict: true\` sejak awal proyek membantu mencegah bug seperti \`null pointer exception\` sebelum kode sampai ke produksi.`,
    sources: [
      { url: "https://www.typescriptlang.org/docs/handbook/tsconfig-json.html", label: "TypeScript Handbook — What is a tsconfig.json" },
      { url: "https://www.typescriptlang.org/tsconfig", label: "TSConfig Reference Guide" },
    ],
    practice: `Buka \`tsconfig.json\` di sebuah project TypeScript/Next.js yang sudah kamu punya (dari roadmap Next.js kalau sudah dikerjakan). Cek apakah \`strict\` bernilai \`true\`. Kalau belum, set jadi \`true\`, lalu jalankan ulang type-check (\`npx tsc --noEmit\` atau \`npm run build\`) — lihat apakah muncul error baru yang sebelumnya lolos karena strict mode belum aktif. Ini menutup roadmap TypeScript: dari sintaks tipe sampai konfigurasi compiler-nya sendiri.`,
  },
  {
    category: "dotnet",
    slug: "pengenalan-dotnet-dan-cli",
    order: 0,
    title: "Pengenalan Ekosistem .NET & CLI Dasar",
    content: `**Masalah yang diselesaikan:** sebelum .NET Core (2016 ke atas), .NET Framework hanya berjalan di Windows — sulit dipakai untuk deployment modern yang mengandalkan server Linux dan container Docker, yang jadi standar industri sekarang.

.NET adalah platform pengembangan perangkat lunak open-source dan cross-platform dari Microsoft untuk membangun berbagai jenis aplikasi (web, mobile, desktop, cloud, hingga IoT).

\`\`\`mermaid
flowchart TD
    subgraph Ecosystem [".NET Ecosystem"]
        Lang["Bahasa: C# / F# / VB.NET"]
        Comp["Roslyn Compiler"]
        IL["Intermediate Language (IL)"]
        CLR["Common Language Runtime (CLR / CoreCLR)"]
        OS["Sistem Operasi: Linux / Windows / macOS"]

        Lang --> Comp --> IL --> CLR --> OS
    end
\`\`\`

### Perintah Dasar .NET CLI (\`dotnet\`)
Untuk mengelola proyek berbasis .NET, kita menggunakan command-line tool \`dotnet\`:

\`\`\`bash
# Cek versi SDK yang terpasang
dotnet --version

# Membuat proyek Console App baru
dotnet new console -n HaloDunia
cd HaloDunia

# Menjalankan proyek
dotnet run

# Membangun (compile) kode
dotnet build

# Menambahkan package NuGet
dotnet add package Newtonsoft.Json
\`\`\`

### Struktur File Proyek .NET
File \`.csproj\` (C# Project) berisi informasi SDK, target framework (.NET 8/9), dan dependensi:

\`\`\`xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net8.0</TargetFramework>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
  </PropertyGroup>
</Project>
\`\`\`

- **Runtime & SDK**: SDK digunakan untuk membangun dan menjalankan proyek, Runtime hanya untuk menjalankan aplikasi yang sudah di-compile.
- **Cross-Platform**: Kode yang ditulis di C# dapat berjalan di Linux, macOS, dan Windows tanpa perubahan.`,
    sources: [
      { url: "https://learn.microsoft.com/en-us/dotnet/core/introduction", label: "Microsoft Learn — What is .NET?" },
      { url: "https://learn.microsoft.com/en-us/dotnet/core/tools/", label: "Microsoft Learn — .NET CLI Overview" },
    ],
    prerequisites: [
      { label: ".NET SDK versi 8 atau lebih baru sudah terinstall (cek dengan `dotnet --version`)", url: "https://dotnet.microsoft.com/download" },
      { label: "Familiar dengan perintah dasar terminal/command line" },
    ],
    practice: `Jalankan \`dotnet --version\` untuk cek SDK yang terpasang. Buat console app baru (\`dotnet new console -n HaloDunia\`), masuk ke foldernya, jalankan (\`dotnet run\`) — harus muncul "Hello, World!". Lalu:

1. Edit \`Program.cs\` supaya mencetak nama kamu sendiri, jalankan ulang.
2. Jalankan \`dotnet add package Newtonsoft.Json\`, buka file \`.csproj\` — perhatikan baris \`<PackageReference>\` baru yang otomatis ditambahkan.`,
  },
  {
    category: "dotnet",
    slug: "csharp-dasar-dan-tipe-data",
    order: 1,
    title: "Struktur Program C# & Tipe Data Dasar",
    content: `Project .NET kamu dari catatan sebelumnya sudah bisa jalan. **Masalah yang diselesaikan sekarang:** bagaimana menulis kode C# yang sebenarnya? Dulu, C# selalu butuh boilerplate \`class Program\` dan method \`Main\` sebelum baris kode aplikasi pertama ditulis — sejak C# 9/10, *Top-Level Statements* menghilangkan boilerplate itu.

C# adalah bahasa pemrograman berorientasi objek yang bertipe statis (*statically typed*) dan *type-safe*. Sejak C# 9/10, kita bisa menggunakan *Top-Level Statements* untuk menulis kode yang sangat ringkas tanpa boilerplate class \`Program\`.

\`\`\`mermaid
flowchart TD
    subgraph DataStructures ["Tipe Data di C#"]
        V["Value Types (Disimpan di Stack)<br/>int, double, bool, char, struct"]
        R["Reference Types (Disimpan di Heap)<br/>string, object, class, record, array"]
    end
\`\`\`

### 1. Contoh Program C# Sederhana (Top-Level Statements)
\`\`\`csharp
// Program.cs
string nama = "Budi";
int umur = 25;
double tinggiBadan = 172.5;
bool isActive = true;

Console.WriteLine($"Halo, nama saya {nama}, umur {umur} tahun.");
\`\`\`

### 2. Tipe Data Primitif Populer

| Tipe Data | Ukuran | Contoh Nilai | Keterangan |
| --- | --- | --- | --- |
| \`int\` | 32-bit | \`42\` | Bilangan bulat standar |
| \`long\` | 64-bit | \`3000000000L\` | Bilangan bulat besar |
| \`double\` | 64-bit | \`3.14159\` | Bilangan desimal presisi ganda |
| \`decimal\` | 128-bit | \`199.99m\` | Sangat akurat untuk perhitungan uang / finansial |
| \`bool\` | 8-bit | \`true\` / \`false\` | Nilai kebenaran boolean |
| \`string\` | Variabel | \`"Belajar .NET"\` | Teks / karakter berurutan |

### 3. Nullable Reference Types (\`?\`)
Secara default pada .NET modern, compiler memperingatkan potensi nilai null (*null safety*):

\`\`\`csharp
string? namaOpsional = null; // Boleh null karena ada tanda '?'
string namaWajib = "Ibnu";    // Tidak boleh null

if (namaOpsional is not null)
{
    Console.WriteLine(namaOpsional.ToUpper());
}
\`\`\``,
    sources: [
      { url: "https://learn.microsoft.com/en-us/dotnet/csharp/tour-of-csharp/types", label: "Microsoft Learn — C# Types & Variables" },
    ],
    practice: `Buat variabel bertipe \`int\`, \`double\`, \`bool\`, \`string\` seperti contoh di atas, cetak semuanya dalam satu baris pakai string interpolation (\`$"..."\`). Lalu coba deklarasikan \`string? namaOpsional = null;\` dan \`string namaWajib = null;\` — perhatikan warning/error yang muncul dari compiler soal nullable reference types pada baris kedua.`,
  },
  {
    category: "dotnet",
    slug: "csharp-class-dan-record",
    order: 2,
    title: "Class, Record, dan Objek di C#",
    content: `Catatan sebelumnya membahas tipe data untuk nilai tunggal. **Masalah yang diselesaikan sekarang:** bagaimana merepresentasikan data yang punya banyak properti terkait sekaligus (misalnya data mahasiswa: id, nama, jurusan) dan punya perilaku (method) yang menyertainya?

C# mendukung Pemrograman Berorientasi Objek (OOP) dengan \`class\`, serta tipe data *immutable* modern yang ringkas menggunakan \`record\`.

\`\`\`mermaid
classDiagram
    class Mahasiswa {
        +int Id
        +string Nama
        +string Jurusan
        +Belajar() void
    }
    class ProdukRecord {
        <<record>>
        +string Kode
        +decimal Harga
    }
\`\`\`

### 1. Membuat Class Biasa
\`\`\`csharp
public class Mahasiswa
{
    // Auto-implemented Properties
    public int Id { get; set; }
    public string Nama { get; set; }
    public string Jurusan { get; set; }

    // Constructor
    public Mahasiswa(int id, string nama, string jurusan)
    {
        Id = id;
        Nama = nama;
        Jurusan = jurusan;
    }

    public void Sapa()
    {
        Console.WriteLine($"Halo, saya {Nama} dari jurusan {Jurusan}.");
    }
}

var mhs = new Mahasiswa(1, "Siti", "Informatika");
mhs.Sapa();
\`\`\`

### 2. Menggunakan \`record\` (Immutable Data Transfer Object)
\`record\` sangat berguna untuk DTO (Data Transfer Object) karena otomatis memiliki *value-based equality* dan bersifat *immutable*:

\`\`\`csharp
// Definisi ringkas satu baris (Positional Record)
public record Produk(string Nama, decimal Harga);

var p1 = new Produk("Laptop", 12000000m);
var p2 = new Produk("Laptop", 12000000m);

// Value Equality: membandingkan isi nilai, bukan alamat memori
Console.WriteLine(p1 == p2); // Output: True

// Non-destructive Mutation dengan keyword 'with'
var p3 = p1 with { Harga = 11500000m };
Console.WriteLine($"Harga diskon: {p3.Harga}");
\`\`\`

- Gunakan **\`class\`** saat object memiliki *state* yang sering berubah (mutable) dan memiliki logika bisnis yang kompleks.
- Gunakan **\`record\`** untuk model data murni / DTO / response API yang tidak berubah.`,
    sources: [
      { url: "https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/types/classes", label: "Microsoft Learn — Classes and Records in C#" },
    ],
    practice: `Buat \`class Produk\` dengan properti \`Nama\` & \`Harga\` plus method \`TampilkanInfo()\`. Lalu buat versi \`record\` untuk data yang sama. Buat dua instance \`record\` dengan nilai identik, bandingkan dengan \`==\` (harus \`True\` karena value equality) — lalu coba hal yang sama dengan dua instance \`class\` biasa yang nilainya identik (harus \`False\`, karena class memakai reference equality secara default).`,
  },
  {
    category: "dotnet",
    slug: "dotnet-dependency-injection",
    order: 3,
    title: "Dependency Injection (DI) Dasar di .NET",
    content: `Sekarang kamu bisa bikin class dan object di C#. **Masalah yang diselesaikan sekarang:** kalau satu class butuh instance dari class lain (misalnya \`NotifikasiManager\` butuh \`EmailService\` untuk mengirim email), cara paling naif adalah \`new EmailService()\` langsung di dalam \`NotifikasiManager\`. Ini membuat kedua class jadi kaku (*tightly coupled*) — susah dites (tidak bisa diganti versi palsu/mock saat testing) dan susah diganti implementasinya (misal ganti dari email ke SMS).

Dependency Injection (DI) adalah pola desain (*design pattern*) bawaan di .NET untuk mencapai *Inversion of Control* (IoC), di mana ketergantungan antar kelas diatur oleh framework (*Service Container*) alih-alih di-instansiasi manual (\`new\`).

\`\`\`mermaid
flowchart TD
    subgraph Container ["IoC Service Container"]
        Reg["Daftarkan: builder.Services.AddScoped&lt;IPembayaran, TransferBank&gt;()"]
    end

    Req["Request Masuk / Controller"] --> Inject["Injeksi otomatis lewat Constructor"]
    Container -.->|Menyediakan instance| Inject
    Inject --> App["PesananService(IPembayaran pembayaran)"]
\`\`\`

### 3 Macam Service Lifetime di .NET

| Lifetime | Method Registrasi | Karakteristik Siklus Hidup |
| --- | --- | --- |
| **Transient** | \`AddTransient<T>()\` | Instance baru dibuat **setiap kali** diminta (cocok untuk service ringan tanpa state). |
| **Scoped** | \`AddScoped<T>()\` | Satu instance dibuat **per HTTP Request** (standar untuk database context seperti Entity Framework). |
| **Singleton** | \`AddSingleton<T>()\` | Hanya ada **satu instance** selama aplikasi berjalan (cocok untuk caching global / configuration). |

### Contoh Penggunaan Constructor Injection
\`\`\`csharp
// 1. Interface kontrak
public interface IEmailService
{
    void KirimEmail(string tujuan, string pesan);
}

// 2. Implementasi
public class EmailService : IEmailService
{
    public void KirimEmail(string tujuan, string pesan)
    {
        Console.WriteLine($"Mengirim email ke {tujuan}: {pesan}");
    }
}

// 3. Konsumen Service (Injeksi lewat Constructor)
public class NotifikasiManager
{
    private readonly IEmailService _emailService;

    public NotifikasiManager(IEmailService emailService)
    {
        _emailService = emailService;
    }

    public void BeritahuUser(string email)
    {
        _emailService.KirimEmail(email, "Selamat datang di sistem!");
    }
}
\`\`\`

### Registrasi di \`Program.cs\`:
\`\`\`csharp
var builder = WebApplication.CreateBuilder(args);

// Mendaftarkan service ke IoC container
builder.Services.AddScoped<IEmailService, EmailService>();
builder.Services.AddScoped<NotifikasiManager>();

var app = builder.Build();
\`\`\``,
    sources: [
      { url: "https://learn.microsoft.com/en-us/dotnet/core/extensions/dependency-injection", label: "Microsoft Learn — Dependency Injection in .NET" },
    ],
    practice: `Ikuti contoh \`IEmailService\`/\`EmailService\`/\`NotifikasiManager\` di atas dalam satu console app (tambahkan package \`Microsoft.Extensions.DependencyInjection\` kalau bukan project web). Daftarkan service-nya, lalu ambil \`NotifikasiManager\` dari container dan panggil \`BeritahuUser\`. Setelah jalan, buat implementasi KEDUA dari \`IEmailService\` (misal \`ConsoleLogEmailService\` yang cuma print ke console), ganti registrasinya ke implementasi baru itu — perhatikan kode \`NotifikasiManager\` tidak perlu diubah sama sekali.`,
  },
  {
    category: "dotnet",
    slug: "aspnet-core-minimal-api",
    order: 4,
    title: "Membangun REST API dengan ASP.NET Core Minimal API",
    content: `Sekarang kamu paham Dependency Injection, yang jadi tulang punggung ASP.NET Core. **Masalah yang diselesaikan sekarang:** bagaimana mengekspos logic yang sudah kamu bangun jadi HTTP endpoint yang bisa diakses aplikasi lain (mobile app, frontend web)? Sebelum Minimal API, ASP.NET Core butuh struktur controller yang cukup verbose untuk API sederhana.

Minimal API adalah pendekatan modern dan efisien di ASP.NET Core untuk membangun endpoint HTTP / REST API dengan kode yang sangat ringkas tanpa membutuhkan controller yang kompleks.

\`\`\`mermaid
flowchart LR
    Client["Client / Frontend"] -->|GET /api/todos| Route["app.MapGet()"]
    Client -->|POST /api/todos| PostRoute["app.MapPost()"]

    Route --> JSON["Return JSON Response"]
    PostRoute --> Status["Return Results.Created()"]
\`\`\`

### Contoh Lengkap CRUD Minimal API di \`Program.cs\`
\`\`\`csharp
var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

// Dummy in-memory database
var todos = new List<TodoItem>
{
    new(1, "Belajar .NET Dasar", true),
    new(2, "Membangun REST API", false)
};

// GET: Semua items
app.MapGet("/api/todos", () => Results.Ok(todos));

// GET: Berdasarkan ID
app.MapGet("/api/todos/{id:int}", (int id) =>
{
    var item = todos.FirstOrDefault(t => t.Id == id);
    return item is not null ? Results.Ok(item) : Results.NotFound();
});

// POST: Tambah baru
app.MapPost("/api/todos", (TodoItem input) =>
{
    todos.Add(input);
    return Results.Created($"/api/todos/{input.Id}", input);
});

// DELETE: Hapus item
app.MapDelete("/api/todos/{id:int}", (int id) =>
{
    var item = todos.FirstOrDefault(t => t.Id == id);
    if (item is null) return Results.NotFound();

    todos.Remove(item);
    return Results.NoContent();
});

app.Run();

public record TodoItem(int Id, string Judul, bool Selesai);
\`\`\`

### Keunggulan Minimal API
- **Performa Tinggi**: Mengurangi *overhead* refleksi controller tradisional.
- **Sintaks Ringkas**: Struktur file tunggal memudahkan pembuatan microservice atau service kecil.
- **Dukungan OpenAPI / Swagger**: Cukup tambahkan \`app.UseSwagger()\` untuk dokumentasi interaktif otomatis.`,
    sources: [
      { url: "https://learn.microsoft.com/en-us/aspnet/core/fundamentals/minimal-apis", label: "Microsoft Learn — Minimal APIs Overview" },
    ],
    practice: `Buat project baru dengan \`dotnet new web -n TodoApi\`. Salin contoh CRUD Minimal API di atas ke \`Program.cs\`. Jalankan (\`dotnet run\`), lalu tes tiap endpoint (GET semua, GET by id, POST tambah baru, DELETE) lewat browser (untuk GET) atau tool seperti curl/Postman (untuk POST/DELETE). Simpan project ini — catatan berikutnya akan menyambungkannya ke database beneran lewat Entity Framework Core.`,
  },
  {
    category: "dotnet",
    slug: "efcore-dasar",
    order: 5,
    title: "Entity Framework Core Dasar: Akses Database",
    content: `Minimal API dari catatan sebelumnya sudah bisa menerima request dan balas response, tapi datanya cuma \`List<TodoItem>\` di memori — hilang total tiap aplikasi di-restart. **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** bagaimana menyimpan data ke database beneran yang bertahan lintas restart, tanpa menulis SQL mentah satu per satu untuk tiap operasi CRUD?

**Entity Framework Core (EF Core)** adalah ORM (*Object-Relational Mapper*) resmi dari Microsoft — class C# biasa dipetakan otomatis jadi tabel database, query ditulis pakai LINQ (C#) bukan string SQL.

\`\`\`mermaid
flowchart TD
    Model["Class C# (Entity)<br/>public class Todo { ... }"] --> Ctx["DbContext<br/>DbSet&lt;Todo&gt; Todos"]
    Ctx -->|"dotnet ef migrations add"| Migration["File Migration (C#)"]
    Migration -->|"dotnet ef database update"| DB[("Database (SQLite/Postgres/dst)")]
    Ctx -->|"LINQ: ToListAsync(), Add(), SaveChangesAsync()"| DB
\`\`\`

### 1. Definisikan Entity & DbContext
EF Core butuh dua hal: class yang merepresentasikan tabel (*entity*), dan \`DbContext\` yang jadi jembatan ke database. Karena EF Core perlu melacak perubahan nilai propertinya, di sini kita pakai \`class\` biasa (bukan \`record\` seperti \`TodoItem\` di catatan sebelumnya):

\`\`\`csharp
// Entity — dipetakan jadi tabel "Todos"
public class Todo
{
    public int Id { get; set; }
    public string Judul { get; set; } = "";
    public bool Selesai { get; set; }
}

// DbContext — jembatan ke database
public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

    public DbSet<Todo> Todos => Set<Todo>();
}
\`\`\`

### 2. Registrasi & Migration
\`\`\`bash
# Install package (SQLite dipilih karena tidak butuh server database terpisah)
dotnet add package Microsoft.EntityFrameworkCore.Sqlite
dotnet tool install --global dotnet-ef

# Buat migration pertama dari model di atas
dotnet ef migrations add InitialCreate

# Terapkan migration ke database (bikin file todos.db)
dotnet ef database update
\`\`\`

\`\`\`csharp
var builder = WebApplication.CreateBuilder(args);

// Daftarkan DbContext ke DI container (Scoped secara default — 1 instance per request)
builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlite("Data Source=todos.db"));

var app = builder.Build();
\`\`\`

### 3. CRUD Lewat EF Core (Ganti List In-Memory)
Endpoint dari catatan sebelumnya sekarang menerima \`AppDbContext\` lewat DI, bukan lagi baca/tulis ke \`List\` statis:

\`\`\`csharp
app.MapGet("/api/todos", async (AppDbContext db) =>
    Results.Ok(await db.Todos.ToListAsync()));

app.MapGet("/api/todos/{id:int}", async (int id, AppDbContext db) =>
    await db.Todos.FindAsync(id) is Todo todo ? Results.Ok(todo) : Results.NotFound());

app.MapPost("/api/todos", async (Todo input, AppDbContext db) =>
{
    db.Todos.Add(input);
    await db.SaveChangesAsync();
    return Results.Created($"/api/todos/{input.Id}", input);
});

app.MapDelete("/api/todos/{id:int}", async (int id, AppDbContext db) =>
{
    var todo = await db.Todos.FindAsync(id);
    if (todo is null) return Results.NotFound();

    db.Todos.Remove(todo);
    await db.SaveChangesAsync();
    return Results.NoContent();
});
\`\`\`

| Operasi | Method EF Core | Catatan |
| --- | --- | --- |
| Baca semua | \`ToListAsync()\` | Query dieksekusi ke database saat method ini dipanggil, bukan saat \`db.Todos\` ditulis (*deferred execution*). |
| Baca satu by key | \`FindAsync(id)\` | Cek dulu di memori (*change tracker*) sebelum query ke database. |
| Tambah | \`Add()\` + \`SaveChangesAsync()\` | \`Add()\` cuma menandai di memori — perubahan baru benar-benar ditulis ke database saat \`SaveChangesAsync()\` dipanggil. |
| Hapus | \`Remove()\` + \`SaveChangesAsync()\` | Sama seperti \`Add()\` — perlu \`SaveChangesAsync()\` untuk commit. |

Poin penting:

- \`SaveChangesAsync()\` membungkus semua perubahan (\`Add\`/\`Remove\`/edit properti) dalam satu transaksi — kalau ada yang gagal, semuanya di-rollback.
- Migration adalah riwayat perubahan skema (file C# yang di-generate otomatis) — tiap kali entity berubah (nambah properti baru, dst), jalankan \`dotnet ef migrations add <NamaPerubahan>\` lagi lalu \`dotnet ef database update\`.
- SQLite dipakai di sini karena paling sederhana untuk belajar (satu file \`.db\`, tanpa install server) — provider lain (\`Npgsql.EntityFrameworkCore.PostgreSQL\` untuk Postgres, dst) dipakai dengan pola yang sama persis, cuma beda \`UseSqlite\` jadi \`UseNpgsql\`.`,
    sources: [
      { url: "https://learn.microsoft.com/en-us/ef/core/", label: "Microsoft Learn — Entity Framework Core" },
      { url: "https://learn.microsoft.com/en-us/ef/core/get-started/overview/first-app?tabs=netcore-cli", label: "Microsoft Learn — EF Core Get Started" },
    ],
    practice: `Lanjutkan project \`TodoApi\` dari catatan sebelumnya. Ganti \`List<TodoItem>\` in-memory dengan \`AppDbContext\` + SQLite seperti contoh di atas (termasuk jalankan migration-nya). Jalankan API, tambah beberapa todo lewat POST, lalu STOP aplikasinya (Ctrl+C) dan jalankan ulang (\`dotnet run\`) — panggil GET /api/todos lagi dan buktikan data yang kamu tambahkan sebelumnya masih ada (tidak hilang seperti versi in-memory yang direset tiap restart). Ini menutup roadmap .NET: dari CLI dasar sampai REST API yang datanya beneran tersimpan permanen.`,
  },
  {
    category: "typescript",
    slug: "type-assertion-dasar",
    order: 4,
    title: "Type Assertion Dasar",
    content: `Type narrowing di catatan sebelumnya membiarkan TypeScript menyimpulkan tipe lewat pengecekan runtime (\`typeof\`, \`instanceof\`, dst). **Masalah yang diselesaikan sekarang:** kadang KAMU tahu tipe sebenarnya dari sebuah nilai lebih pasti daripada yang bisa disimpulkan compiler — misalnya hasil \`document.getElementById()\` yang TypeScript anggap \`HTMLElement | null\`, padahal kamu yakin elemen itu selalu ada dan bertipe \`HTMLInputElement\` spesifik.

**Type assertion** membiarkan kamu memberi tahu compiler tentang tipe suatu nilai secara manual — TANPA pengecekan runtime seperti narrowing. Ini paradigma yang sepenuhnya berbeda: narrowing itu compiler *memverifikasi*, assertion itu kamu yang *berjanji* (dan compiler percaya begitu saja).

\`\`\`mermaid
flowchart LR
  subgraph Narrowing["Type Narrowing (aman)"]
    N1["if (typeof x === 'string')"] --> N2["Compiler VERIFIKASI saat runtime"]
  end
  subgraph Assertion["Type Assertion (janji developer)"]
    A1["x as string"] --> A2["Compiler PERCAYA tanpa verifikasi"]
    A2 -.->|"Kalau salah"| A3["Runtime Error!"]
  end
\`\`\`

\`\`\`ts
// Syntax "as" (direkomendasikan, wajib di file .tsx karena <> bentrok dengan JSX)
const input = document.getElementById("username") as HTMLInputElement;
input.value = "Budi"; // valid — TypeScript percaya ini HTMLInputElement

// Non-null assertion (!) — bilang "aku yakin ini bukan null/undefined"
const app = document.getElementById("app")!;
app.innerHTML = "Halo"; // tanpa "!", TypeScript akan komplain "app mungkin null"

// Assertion yang SALAH tetap lolos compile — bahaya baru terasa saat runtime
const angka = "123" as unknown as number;
console.log(angka.toFixed(2)); // compile OK, tapi runtime ERROR (angka aslinya string)
\`\`\`

Poin penting:

- Assertion cuma memengaruhi apa yang compiler *percaya*, bukan mengubah nilai aslinya saat runtime — kalau assertion-nya salah, error baru muncul belakangan saat kode itu benar-benar dijalankan.
- Pakai assertion secukupnya, di tempat yang benar-benar kamu yakin (DOM, hasil \`JSON.parse()\`, atau data dari API yang sudah divalidasi) — bukan sebagai jalan pintas untuk mengabaikan error tipe yang sebenarnya valid.
- \`as unknown as T\` (double assertion) dipakai kalau dua tipe dianggap TypeScript "tidak cukup mirip" untuk di-assert langsung — tanda bahwa perlu dipikir ulang, bukan dipakai sembarangan.`,
    sources: [
      { url: "https://www.typescriptlang.org/docs/handbook/2/everyday-types.html#type-assertions", label: "TypeScript Handbook — Type Assertions" },
    ],
    practice: `Di kode yang berinteraksi dengan DOM (\`document.getElementById(...)\`), gunakan \`as HTMLInputElement\` untuk memberi tahu compiler elemen itu pasti input, lalu akses \`.value\`-nya. Setelah itu, SENGAJA buat assertion yang salah — misalnya \`const x = "halo" as unknown as number\` — lalu panggil \`x.toFixed(2)\`. Perhatikan: TypeScript TIDAK menangkap errornya saat compile (tidak seperti kalau kamu pakai narrowing), tapi kalau kode itu dijalankan sungguhan akan error runtime. Ini membuktikan bedanya "compiler percaya" (assertion) vs "compiler memverifikasi" (narrowing).`,
  },
  {
    category: "typescript",
    slug: "utility-types-dasar",
    order: 6,
    title: "Utility Types Dasar",
    content: `Sekarang kamu paham generics — parameter tipe yang bisa diisi apa saja. TypeScript sendiri memakai generics secara internal untuk menyediakan **Utility Types**: tipe siap pakai yang memanipulasi tipe lain tanpa kamu perlu menulis ulang strukturnya dari nol. **Masalah yang diselesaikan:** sering kali kamu butuh VARIASI dari satu tipe yang sudah ada — misalnya tipe yang sama tapi semua propertinya opsional (untuk form update parsial), atau cuma sebagian properti saja (untuk preview card) — menulis interface baru dari nol untuk tiap variasi itu duplikatif dan gampang tidak sinkron kalau tipe aslinya berubah.

\`\`\`mermaid
flowchart TD
  Produk["interface Produk<br/>{ id, nama, harga, deskripsi }"] --> Partial["Partial&lt;Produk&gt;<br/>semua opsional"]
  Produk --> Pick["Pick&lt;Produk, 'id'|'nama'&gt;<br/>cuma sebagian"]
  Produk --> Omit["Omit&lt;Produk, 'id'&gt;<br/>tanpa sebagian"]
  Produk --> Record["Record&lt;string, number&gt;<br/>key-value custom"]
\`\`\`

\`\`\`ts
interface Produk {
  id: number;
  nama: string;
  harga: number;
  deskripsi: string;
}

// Partial<T> — semua properti jadi opsional (cocok untuk update parsial/PATCH)
type ProdukUpdate = Partial<Produk>;
const update: ProdukUpdate = { harga: 60000 }; // valid, field lain boleh tidak diisi

// Pick<T, K> — ambil beberapa properti saja
type ProdukPreview = Pick<Produk, "id" | "nama" | "harga">;
const preview: ProdukPreview = { id: 1, nama: "Buku", harga: 50000 };

// Omit<T, K> — buang beberapa properti
type ProdukTanpaDeskripsi = Omit<Produk, "deskripsi">;

// Record<K, T> — bikin object type dengan key & value tertentu
type DaftarHarga = Record<string, number>;
const harga: DaftarHarga = { "produk-1": 10000, "produk-2": 25000 };
\`\`\`

| Utility Type | Fungsi | Contoh Use Case |
| --- | --- | --- |
| \`Partial<T>\` | Semua properti opsional | Body request \`PATCH\` (update parsial) |
| \`Required<T>\` | Semua properti wajib (kebalikan \`Partial\`) | Validasi sebelum data disimpan ke database |
| \`Pick<T, K>\` | Ambil sebagian properti | Data preview/card ringkas |
| \`Omit<T, K>\` | Buang sebagian properti | Hilangkan field sensitif dari response API |
| \`Record<K, T>\` | Object dengan key & value tertentu | Mapping/lookup table |

Poin penting:

- Semua utility type ini bawaan TypeScript (*global*), tidak perlu di-\`import\` dari mana pun.
- \`Pick\`/\`Omit\` tidak membuat properti yang tersisa jadi opsional — kalau properti itu wajib di tipe asli, tetap wajib di hasil \`Pick\`/\`Omit\`.
- Utility type bisa dikombinasikan, mis. \`Partial<Pick<Produk, "harga" | "deskripsi">>\` untuk "sebagian properti, dan itu pun opsional".`,
    sources: [
      { url: "https://www.typescriptlang.org/docs/handbook/utility-types.html", label: "TypeScript Handbook — Utility Types" },
    ],
    practice: `Dari \`interface Produk\` di atas (atau buat versi kamu sendiri), buat 4 variasi tipe: \`ProdukUpdate\` (\`Partial\`), \`ProdukPreview\` (\`Pick\` id+nama), \`ProdukTanpaHarga\` (\`Omit\`), dan \`DaftarStok\` (\`Record<string, number>\` memetakan nama produk ke jumlah stoknya). Isi masing-masing dengan data valid. Lalu SENGAJA hilangkan satu field wajib di \`ProdukPreview\` — pastikan compiler menolaknya, membuktikan \`Pick\` tidak membuat field jadi opsional, cuma memilih subset dari tipe aslinya.`,
  },
  {
    category: "agentic-ai-hermes",
    slug: "pengenalan-hermes-agent-dan-instalasi",
    order: 0,
    title: "Pengenalan Hermes Agent & Instalasi",
    content: `**Masalah yang diselesaikan:** chatbot LLM biasa cuma membalas teks — begitu jawabannya berupa command atau kode, KAMU yang harus menyalinnya, menjalankannya sendiri di terminal, membaca hasil/error-nya, lalu menempelkan balik ke chat supaya modelnya tahu apa yang terjadi. Untuk task yang butuh banyak langkah bolak-balik, siklus manual ini melelahkan dan lambat.

**Hermes Agent** adalah AI agent open-source dan *self-improving* dari Nous Research — bukan sekadar chatbot, tapi agent yang bisa langsung mengeksekusi tool-nya sendiri (terminal, baca/tulis file, browser, web search), mengamati hasilnya, dan melanjutkan sampai task selesai.

\`\`\`mermaid
flowchart TD
  subgraph Manual["Chatbot Biasa (manual loop)"]
    M1["Kamu tanya"] --> M2["Model jawab teks/kode"]
    M2 --> M3["KAMU jalankan sendiri di terminal"]
    M3 --> M4["KAMU salin hasil/error balik ke chat"]
    M4 --> M1
  end

  subgraph Agent["Hermes Agent (agentic loop)"]
    A1["Kamu kasih task"] --> A2["Agent jalankan tool sendiri<br/>(terminal/file/browser)"]
    A2 --> A3["Agent amati hasilnya"]
    A3 -->|belum selesai| A2
    A3 -->|selesai| A4["Agent kasih laporan akhir"]
  end
\`\`\`

### Instalasi
\`\`\`bash
# Linux / macOS / WSL2 / Android (Termux)
curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash

# Reload shell setelah instalasi
source ~/.bashrc   # atau ~/.zshrc di macOS
\`\`\`

\`\`\`powershell
# Windows (PowerShell)
iex (irm https://hermes-agent.nousresearch.com/install.ps1)
\`\`\`

Untuk macOS/Windows, alternatifnya download installer **Hermes Desktop** dari situs resminya. Installer otomatis mengurus dependency lain (Python, Node.js, ripgrep, ffmpeg) — prasyarat manual cuma \`git\`.

### Autentikasi & Verifikasi
\`\`\`bash
# Cara tercepat: langganan Nous Portal (akses 300+ model + tool gateway)
hermes setup --portal

# Cek instalasi bermasalah atau tidak
hermes doctor

# Cek versi terinstall
hermes --version
\`\`\`

| | Chatbot Biasa | Hermes Agent |
| --- | --- | --- |
| Eksekusi command/kode | Tidak bisa — kamu jalankan manual | Langsung dieksekusi agent lewat tool |
| Ingat konteks lintas sesi | Tidak (kecuali fitur khusus platform) | Ya, lewat sistem memory bawaan |
| Belajar prosedur baru | Tidak | Ya, lewat sistem skills |
| Akses tool eksternal (API, database) | Tidak | Ya, lewat MCP |

Poin penting:

- Hermes Agent bisa jalan di macOS/Linux/Windows(WSL2), dan juga di infrastruktur cloud (VPS, Modal, Daytona) untuk task yang butuh jalan lama tanpa laptop kamu nyala terus.
- \`hermes setup --portal\` adalah jalur setup paling cepat, tapi provider model lain (OpenAI-compatible endpoint, OpenRouter) juga didukung lewat \`hermes model\`.
- Instalasi per-user menyimpan datanya di \`~/.hermes/\` — ini folder yang akan sering direferensikan di catatan-catatan berikutnya (memory, skills, config).`,
    sources: [
      { url: "https://hermes-agent.nousresearch.com/docs/getting-started/installation", label: "Hermes Agent Docs — Installation" },
      { url: "https://hermes-agent.nousresearch.com/", label: "Hermes Agent — Homepage" },
    ],
    prerequisites: [
      { label: "Git sudah terinstall (cek dengan `git --version`)", url: "https://git-scm.com/downloads" },
      { label: "Akun untuk akses model — Nous Portal (langganan), atau API key provider lain yang kompatibel (OpenAI, OpenRouter)", url: "https://hermes-agent.nousresearch.com/" },
      { label: "Familiar dengan command line/terminal dasar" },
    ],
    practice: `Install Hermes Agent sesuai OS kamu, reload shell, lalu jalankan \`hermes doctor\` — pastikan tidak ada error dependency. Jalankan \`hermes setup --portal\` (atau \`hermes model\` kalau pakai provider lain) untuk autentikasi. Cek \`hermes --version\` berhasil menampilkan versi terinstall. Kalau semua langkah ini lolos tanpa error, instalasi kamu siap dipakai di catatan berikutnya.`,
  },
  {
    category: "agentic-ai-hermes",
    slug: "task-pertama-dan-cli-dasar",
    order: 1,
    title: "Menjalankan Task Pertama & CLI Dasar",
    content: `Hermes Agent sekarang sudah terinstall dan terautentikasi (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** bagaimana caranya kasih task ke agent dan memastikan dia BENAR-BENAR mengeksekusi tool (bukan cuma menjawab teks tebakan tanpa verifikasi)?

\`\`\`bash
# Interface modern (disarankan)
hermes --tui

# Atau CLI klasik
hermes
\`\`\`

### Kasih Task yang Mudah Diverifikasi
Task pertama sebaiknya spesifik dan hasilnya gampang dicek — supaya kamu tahu pasti agent benar-benar menjalankan tool, bukan menebak jawaban:

\`\`\`text
Cek direktori saat ini dan sebutkan apa yang kelihatan seperti file utama project ini.
\`\`\`

\`\`\`text
Berapa penggunaan disk saya? Tampilkan 5 folder terbesar.
\`\`\`

Interaksi yang berhasil menampilkan: banner model/provider yang dipakai, agent membalas tanpa error, dan — kalau tool dipakai — kamu bisa lihat eksekusi tool-nya (terminal command, baca file, web search) sebelum jawaban akhir muncul.

### Melanjutkan Sesi
\`\`\`bash
# Lanjutkan sesi paling terakhir
hermes --continue
# atau bentuk pendeknya
hermes -c

# Lihat daftar sesi sebelumnya
hermes sessions list
\`\`\`

| Fitur | Cara Pakai |
| --- | --- |
| Menu slash command | Ketik \`/\` untuk lihat pilihan (\`/help\`, \`/tools\`, \`/model\`, dst) |
| Input multi-baris | \`Alt+Enter\`, \`Ctrl+J\`, atau \`Shift+Enter\` |
| Interupsi proses berjalan | Ketik pesan baru lalu Enter — proses saat ini dihentikan |

Poin penting:

- \`hermes --tui\` (Text User Interface) menampilkan progress tool-calling secara visual real-time — lebih mudah diamati dibanding CLI klasik saat belajar.
- Sesi yang sudah selesai TIDAK hilang begitu terminal ditutup — \`hermes --continue\` membuka kembali histori percakapan & konteksnya.
- Ketik \`/tools\` untuk melihat daftar tool bawaan yang tersedia (60+ tool: terminal, file, web search, browser automation, dst) — agent memilih sendiri tool mana yang relevan untuk task-mu.`,
    sources: [
      { url: "https://hermes-agent.nousresearch.com/docs/getting-started/quickstart", label: "Hermes Agent Docs — Quickstart" },
    ],
    practice: `Jalankan \`hermes --tui\`. Kasih task yang hasilnya gampang diverifikasi, misalnya "Cek direktori saat ini dan sebutkan apa yang kelihatan seperti file utama project ini" — perhatikan agent benar-benar menjalankan command \`ls\`/\`dir\` (bukan menebak) sebelum menjawab. Tutup terminal, buka lagi, jalankan \`hermes --continue\` — buktikan agent masih ingat percakapan sebelumnya di sesi yang sama. Ketik \`/tools\` untuk lihat daftar tool bawaan yang tersedia.`,
  },
  {
    category: "agentic-ai-hermes",
    slug: "memory-lintas-sesi",
    order: 2,
    title: "Memory: Ingatan Lintas Sesi",
    content: `Sekarang kamu bisa kasih task dan lanjutkan sesi yang sama (dari catatan sebelumnya) — tapi \`--continue\` cuma bekerja untuk sesi yang SAMA. **Masalah yang diselesaikan sekarang:** begitu kamu mulai sesi yang benar-benar BARU, agent (seperti chatbot biasa pada umumnya) kembali dari nol — kamu harus jelaskan ulang preferensi dan konteks project dari awal, setiap kali.

**Memory** di Hermes Agent adalah dua file berukuran terbatas yang disimpan di \`~/.hermes/memories/\`: \`MEMORY.md\` (catatan lingkungan/konvensi/hal yang dipelajari) dan \`USER.md\` (profil preferensi & gaya komunikasi kamu).

\`\`\`mermaid
flowchart LR
  S1["Sesi 1 selesai"] -->|"tool memory: add/replace/remove"| Files[("MEMORY.md + USER.md<br/>~/.hermes/memories/")]
  Files -->|"Injeksi ke system prompt saat sesi mulai"| S2["Sesi 2 (baru)"]
  S2 -.->|"Kalau butuh detail lama<br/>yang tidak ada di snapshot"| Search["Full-text search<br/>histori sesi lama"]
\`\`\`

### Cara Kerja
- **Snapshot di awal sesi**: isi \`MEMORY.md\` dan \`USER.md\` dimuat ke system prompt saat sesi baru dimulai — langsung tersedia tanpa biaya token tambahan di tengah percakapan. Perubahan yang terjadi DALAM sesi baru muncul di sesi BERIKUTNYA, bukan langsung di sesi yang sama.
- **Pencarian sesi lama**: kalau info yang dibutuhkan tidak ada di snapshot memory aktif, agent bisa mencari lewat histori sesi lama (full-text search) — bisa menemukan hal yang dibahas berminggu-minggu lalu meski tidak ada di memory aktif.

### Perintah Terkait
\`\`\`bash
# Lihat daftar sesi lama
hermes sessions list
\`\`\`

Di dalam chat:
- \`/journey\` — lihat timeline skill & entri memory yang sudah dipelajari agent
- \`/memory pending\` — review perubahan memory yang belum disimpan (kalau mode approval aktif)

| File | Isi |
| --- | --- |
| \`MEMORY.md\` | Fakta lingkungan, konvensi project, workaround yang ditemukan |
| \`USER.md\` | Preferensi kamu, gaya komunikasi, ekspektasi |

Poin penting:

- Memory di Hermes BERBEDA dari sekadar context window panjang: kapasitasnya dibatasi ketat (karakter maksimum per file) dan agent aktif memutuskan apa yang layak disimpan vs dibuang, bukan menyimpan semuanya.
- Kamu bisa audit dan edit apa yang sudah "dipelajari" agent lewat \`/journey\` — bukan black box.
- Kalau \`write_approval\` diaktifkan, agent minta persetujuan kamu dulu sebelum menulis perubahan ke memory — berguna kalau kamu mau kontrol penuh atas apa yang disimpan.`,
    sources: [
      { url: "https://hermes-agent.nousresearch.com/docs/user-guide/features/memory", label: "Hermes Agent Docs — Memory" },
    ],
    practice: `Di satu sesi, kasih tahu agent sebuah preferensi spesifik (mis. "selalu jawab pakai Bahasa Indonesia santai, jangan formal"). Tutup terminal SEPENUHNYA (bukan cuma \`--continue\`), buka \`hermes --tui\` lagi sebagai sesi BARU tanpa flag \`--continue\` — tanya sesuatu yang tidak berhubungan, dan perhatikan apakah gaya jawabannya masih mengikuti preferensi yang kamu kasih tahu sebelumnya. Ketik \`/journey\` untuk melihat apa saja yang sudah tersimpan sebagai memory.`,
  },
  {
    category: "agentic-ai-hermes",
    slug: "skills-pengetahuan-prosedural",
    order: 3,
    title: "Skills: Pengetahuan Prosedural yang Dipakai Ulang",
    content: `Memory dari catatan sebelumnya bagus untuk fakta & preferensi singkat — tapi punya batas ukuran ketat. **Masalah yang diselesaikan sekarang:** bagaimana kalau agent berulang kali harus mengerjakan PROSEDUR multi-langkah yang sama (misalnya alur review PR khusus project kamu)? Menjelaskan ulang instruksi detailnya setiap kali itu boros token dan rawan ada detail kecil yang terlewat.

**Skill** adalah dokumen pengetahuan prosedural yang dimuat *on-demand* (bukan selalu aktif di context seperti memory) — mengikuti pola *progressive disclosure* supaya hemat token: agent cuma lihat daftar nama & deskripsi skill dulu, baru memuat isi lengkapnya kalau memang relevan dengan task saat itu.

\`\`\`mermaid
flowchart TD
  Exp["Agent kerjakan prosedur<br/>multi-langkah berulang"] -->|"tool: skill_manage"| Auto["Skill dibuat OTOMATIS<br/>dari pengalaman"]
  Doc["Dokumentasi/SDK yang ada"] -->|"/learn"| Manual["Skill dibuat MANUAL<br/>dari materi referensi"]
  Auto --> Store[("SKILL.md<br/>~/.hermes/skills/")]
  Manual --> Store
  Store -->|"/nama-skill instruksi"| Load["Dimuat saat dibutuhkan<br/>(progressive disclosure)"]
\`\`\`

### Format \`SKILL.md\`
\`\`\`yaml
---
name: github-pr-workflow
description: Alur review & merge PR khusus project ini
version: 1.0.0
---
# GitHub PR Workflow

## When to Use
Saat diminta membuat atau review pull request di repo ini.

## Procedure
1. ...langkah-langkah spesifik...

## Pitfalls
- ...hal yang sering salah...

## Verification
- ...cara memastikan berhasil...
\`\`\`

### Cara Skill Terbentuk
- **Otomatis dari pengalaman**: lewat tool \`skill_manage\`, agent sendiri yang membuat skill saat menemukan prosedur non-trivial yang layak dipakai ulang (habis mengerjakan alur berulang, menemukan solusi dari error, atau menerima koreksi darimu).
- **Manual lewat \`/learn\`**: kamu convert materi referensi (dokumentasi lokal, halaman web, catatan yang kamu ketik) jadi skill.
- **Dari hub**: install skill siap pakai dari komunitas lewat \`hermes skills install <sumber>\`.

\`\`\`bash
# Cari & pasang skill dari hub
hermes skills browse
hermes skills search <kata kunci>
hermes skills install <sumber>

# Lihat skill yang tersedia
hermes skills list  # atau /skills list di dalam chat
\`\`\`

Memanggil skill secara eksplisit lewat slash command:
\`\`\`text
/github-pr-workflow buatkan PR untuk refactor auth ini
\`\`\`

| Cara Terbentuk | Trigger |
| --- | --- |
| Otomatis (\`skill_manage\`) | Agent sendiri, setelah kerjakan prosedur berulang atau menerima koreksi |
| Manual (\`/learn\`) | Kamu, dari dokumentasi/materi yang sudah ada |
| Hub | Kamu, install skill siap pakai dari komunitas |

Poin penting:

- Skill BEDA dari memory: memory itu fakta/preferensi singkat yang selalu aktif di context, skill itu prosedur lebih panjang yang cuma dimuat kalau relevan — supaya tidak membebani context dengan hal yang jarang dipakai.
- Skill dari hub melewati security scanning (deteksi command berbahaya, prompt injection) sebelum dipakai — level trust-nya bertingkat dari \`builtin\` sampai \`community\`.
- Beberapa skill bisa digabung jadi satu \`bundle\` (\`~/.hermes/skill-bundles/\`) dan dipanggil sekaligus lewat satu slash command.`,
    sources: [
      { url: "https://hermes-agent.nousresearch.com/docs/user-guide/features/skills", label: "Hermes Agent Docs — Skills" },
    ],
    practice: `Pilih satu prosedur berulang yang relevan buat kamu (mis. alur commit & PR project tertentu), lalu jalankan \`/learn\` sambil menunjukkan dokumentasinya ke agent (atau jelaskan prosedurnya langsung). Setelah skill terbentuk, cek isinya di \`~/.hermes/skills/\`. Buka sesi BARU, panggil skill itu lewat slash command (\`/nama-skill <instruksi>\`) — buktikan agent langsung mengikuti prosedur yang tersimpan tanpa kamu jelaskan ulang detailnya.`,
  },
  {
    category: "agentic-ai-hermes",
    slug: "mcp-menghubungkan-tool-eksternal",
    order: 4,
    title: "MCP: Menghubungkan Tool Eksternal",
    content: `Sekarang agent bisa eksekusi tool bawaan, ingat konteks, dan pakai ulang skill (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** bagaimana kalau kamu butuh agent bisa akses tool yang TIDAK dibawa bawaan Hermes — API internal perusahaan, database tertentu, atau service pihak ketiga seperti GitHub/Linear?

**MCP (Model Context Protocol)** adalah protokol standar yang menghubungkan Hermes Agent ke *tool server* eksternal, tanpa perlu membangun integrasi native satu-satu untuk tiap service.

\`\`\`mermaid
flowchart LR
  Hermes["Hermes Agent"] --> Client["MCP Client"]
  Client -->|"stdio (subprocess lokal)"| Local["MCP Server Lokal<br/>(mis. filesystem)"]
  Client -->|"HTTP (remote)"| Remote["MCP Server Remote<br/>(mis. API internal)"]
  Local --> Tools["Tool tersedia untuk agent"]
  Remote --> Tools
\`\`\`

### Konfigurasi (\`~/.hermes/config.yaml\`)
Ada dua tipe transport: **stdio** (subprocess lokal) dan **HTTP** (endpoint remote):

\`\`\`yaml
mcp_servers:
  # stdio — dijalankan sebagai subprocess lokal
  filesystem:
    command: "npx"
    args: ["-y", "@modelcontextprotocol/server-filesystem", "/home/user/projects"]

  # HTTP — connect ke server remote
  company_api:
    url: "https://mcp.internal.contoh.com"
    headers:
      Authorization: "Bearer ***"
\`\`\`

Contoh menghubungkan GitHub dengan filter tool tertentu saja:
\`\`\`yaml
mcp_servers:
  github:
    command: "npx"
    args: ["-y", "@modelcontextprotocol/server-github"]
    env:
      GITHUB_PERSONAL_ACCESS_TOKEN: "***"
    tools:
      include: [create_issue, list_issues]
\`\`\`

### Cara Cepat Lewat CLI
\`\`\`bash
# Pilih interaktif dari katalog server yang sudah direkomendasikan Nous
hermes mcp

# Install langsung by name
hermes mcp install linear

# Lihat semua entri katalog
hermes mcp catalog
\`\`\`

Setelah terhubung, cukup minta secara natural — agent otomatis menemukan tool dari MCP server itu dan memakainya:
\`\`\`text
List open bugs dan draft issue baru untuk masalah reconnection yang flaky.
\`\`\`

| Transport | Kapan Dipakai |
| --- | --- |
| \`stdio\` | Tool server jalan sebagai proses lokal di komputer/server yang sama dengan Hermes |
| \`HTTP\` | Tool server sudah di-deploy sebagai endpoint terpisah (internal API, service pihak ketiga) |

Poin penting:

- \`tools.include\` (atau \`exclude\`) membatasi tool mana saja dari satu MCP server yang boleh dipakai agent — berguna untuk membatasi akses (misalnya cuma boleh baca issue, tidak boleh hapus repo).
- \`hermes mcp catalog\` berisi server yang sudah direkomendasikan/diverifikasi Nous — titik awal paling aman dibanding menulis config MCP server pihak ketiga secara manual.
- MCP membuat Hermes Agent bisa terus diperluas kapabilitasnya tanpa update aplikasi Hermes itu sendiri — cukup tambah entri di \`mcp_servers\`.`,
    sources: [
      { url: "https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp", label: "Hermes Agent Docs — MCP Integration" },
    ],
    practice: `Jalankan \`hermes mcp catalog\` untuk lihat server yang tersedia, lalu \`hermes mcp install <salah satu nama dari katalog>\` (atau tambahkan server \`filesystem\` secara manual ke \`~/.hermes/config.yaml\` seperti contoh di atas kalau mau coba tanpa akun pihak ketiga). Mulai sesi baru, minta agent melakukan sesuatu yang HANYA bisa dikerjakan lewat tool dari MCP server itu (bukan tool bawaan) — verifikasi dari responsnya bahwa dia benar-benar memanggil tool eksternal itu, bukan tool bawaan Hermes. Ini menutup roadmap Agentic AI: dari instalasi dasar sampai agent yang bisa diperluas kapabilitasnya ke sistem eksternal apa pun.`,
  },
];
