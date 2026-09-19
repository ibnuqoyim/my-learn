// Data 11 catatan + kategori awal, dipindahkan dari blog Eleventy lama.
// Dipakai bersama oleh scripts/seed.mjs (lewat supabase-js + secret key)
// dan scripts/seed-via-sql.mjs (lewat Management API + PAT, kalau belum
// ada secret key di .env).

export const categories = [
  {
    name: "Git",
    slug: "git",
    description: `Sebelum version control, melacak perubahan kode berarti menyimpan salinan file manual (\`script_v2_final.js\`, \`script_v2_REVISI.js\`) — tidak ada riwayat yang jelas, dan kolaborasi tim jadi mimpi buruk (siapa mengubah apa, kapan). Git menyelesaikan ini dengan melacak setiap perubahan sebagai snapshot bernama (commit) yang bisa dibandingkan, digabungkan, dan dibagikan.

Roadmap ini membawamu dari cara menyimpan perubahan (staging & commit), membatalkan perubahan yang salah, bercabang untuk mengerjakan fitur tanpa mengganggu kode utama (branching), menyimpan perubahan sementara lewat stash, berkolaborasi lewat repository remote seperti GitHub, mengabaikan file yang tidak seharusnya ikut ter-commit, sampai menyelesaikan konflik yang muncul saat menggabungkan perubahan. Tujuh langkah, ikuti berurutan.

**Asumsi:** familiar dengan command line/terminal dasar. Prasyarat tool (Git, akun GitHub) disebutkan di catatan yang membutuhkannya.`,
  },
  {
    name: "JavaScript",
    slug: "javascript",
    description: `JavaScript adalah bahasa pemrograman inti di balik hampir semua interaktivitas web — dari validasi form sampai aplikasi kompleks seperti Gmail. Roadmap ini membangun fondasinya secara bertahap: banyak konsep JS lanjutan (closure, Promise) sering disalahpahami pemula justru karena dasar-dasarnya (scope, fungsi) belum kokoh.

Roadmap ini membawamu dari variabel & scope, mendefinisikan fungsi (termasuk arrow function), membongkar object/array lewat destructuring, mentransformasi array secara deklaratif, closure untuk data privat, menangani error runtime, Promise untuk kode asinkron, async/await sebagai gula sintaksnya, sampai memecah kode jadi module terorganisir. Sembilan langkah, ikuti berurutan — tiap catatan dibangun di atas yang sebelumnya.

**Asumsi:** belum pernah menulis JavaScript sama sekali juga tidak masalah — roadmap ini menjelaskan dari variabel. Familiar dengan konsep pemrograman umum (dari bahasa apa pun) akan membantu mempercepat pemahaman, tapi bukan keharusan.`,
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
    description: `Python dikenal sebagai bahasa yang mudah dibaca dan cepat dipelajari, dipakai luas mulai dari scripting, web backend, sampai data science. Roadmap ini membangun fondasinya secara bertahap dari nol.

Roadmap ini membawamu dari sintaks & tipe data dasar, struktur kontrol (percabangan & perulangan), struktur data (list/tuple/dict/set), menulis fungsi sendiri, list comprehension untuk kode yang lebih ringkas, menangani error runtime, membaca/menulis file, memakai module & library, sampai mengisolasi dependency tiap proyek lewat virtual environment. Sembilan langkah, ikuti berurutan.

**Asumsi:** belum pernah menulis Python sama sekali juga tidak masalah — roadmap ini menjelaskan dari sintaks dasar. Familiar dengan konsep pemrograman umum (dari bahasa apa pun) akan membantu mempercepat pemahaman, tapi bukan keharusan.`,
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
    name: "Ansible",
    slug: "ansible",
    description: `Mengelola belasan atau ratusan server secara manual berarti SSH satu per satu, menjalankan command yang sama berulang-ulang — lambat, gampang lupa satu langkah di salah satu server, dan hasilnya gampang beda-beda antar server (*configuration drift*) meski niatnya sama persis. Ansible menyelesaikan ini dengan otomasi *agentless*: definisikan konfigurasi yang diinginkan sekali dalam file YAML, jalankan ke banyak server sekaligus lewat SSH.

Roadmap ini membawamu dari instalasi & cara kerja dasar, mendata server yang dikelola lewat inventory, menjalankan playbook untuk otomasi berulang, membuat konfigurasi yang fleksibel lewat variables & templating, sampai mengorganisir automation jadi modular lewat roles. Lima langkah, ikuti berurutan.

**Asumsi:** familiar dengan command line/terminal, SSH ke server Linux, dan sintaks dasar YAML. Butuh minimal satu mesin Linux untuk dipraktikkan (VM lokal atau VPS) — disebutkan di catatan pertama.`,
  },
  {
    name: "Agentic AI (Hermes)",
    slug: "agentic-ai-hermes",
    description: `Chatbot LLM biasa cuma bisa membalas teks — begitu jawabannya berupa kode atau command, KAMU yang harus menyalin, menjalankannya sendiri di terminal, membaca hasil/errornya, lalu menempelkannya balik ke chat supaya model tahu apa yang terjadi. Untuk task yang butuh banyak langkah, siklus manual ini melelahkan dan lambat. Agentic AI membalik itu: model yang mengeksekusi tool-nya sendiri (terminal, file, browser) secara langsung, mengamati hasilnya, dan melanjutkan sampai task selesai — kamu cukup kasih instruksi dan menyetujui langkah yang berisiko.

Roadmap ini pakai **Hermes Agent** dari Nous Research (open-source, *self-improving*) sebagai contoh konkret: instalasi & autentikasi, menjalankan task pertama lewat CLI, memahami memori lintas sesi, membuat & memakai ulang pengetahuan prosedural (*skills*), sampai menghubungkan tool eksternal lewat MCP. Lima langkah, ikuti berurutan.

**Asumsi:** familiar dengan command line/terminal dasar. Tidak perlu pengalaman sebelumnya dengan agentic AI atau LLM API — roadmap ini menjelaskan dari instalasi. Prasyarat tool (Git) dan akun untuk akses model disebutkan di catatan pertama.`,
  },
  {
    name: "Flutter (Android)",
    slug: "flutter",
    description: `Membangun aplikasi mobile yang jalan di Android DAN iOS secara tradisional berarti menulis DUA codebase terpisah — Kotlin/Java untuk Android, Swift untuk iOS. Logic bisnis yang sama harus diimplementasikan dua kali, dan bug yang diperbaiki di satu platform harus diperbaiki lagi manual di platform lainnya. Flutter menyelesaikan ini dengan satu codebase (bahasa Dart) yang dikompilasi jadi kode native untuk berbagai platform sekaligus.

Roadmap ini fokus ke target Android: instalasi & menjalankan aplikasi pertama, memahami widget (StatelessWidget vs StatefulWidget), menyusun layout dari beberapa widget, berpindah antar halaman, sampai mengambil data dari API lewat HTTP request. Lima langkah, ikuti berurutan.

**Asumsi:** familiar dengan konsep pemrograman umum (variabel, fungsi, class) dari bahasa apa pun — roadmap ini tidak mengajarkan sintaks Dart dari nol, tapi contoh kodenya cukup sederhana untuk diikuti pemula. Prasyarat tool (Flutter SDK, Android Studio) disebutkan di catatan pertama.`,
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
    slug: "membatalkan-perubahan-dasar",
    order: 1,
    title: "Membatalkan Perubahan: restore, reset, dan revert",
    content: `Sekarang kamu paham tiga area Git — Working Directory, Staging Area, dan Local Repository (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** kadang perubahan yang kamu buat ternyata salah atau tidak jadi dipakai — tapi cara membatalkannya BEDA-BEDA tergantung perubahan itu sudah sejauh mana: baru diedit, sudah di-\`add\`, atau sudah di-\`commit\`. Pakai command yang salah bisa kehilangan pekerjaan yang sebenarnya masih ingin disimpan.

\`\`\`mermaid
flowchart TD
  Q1{Seberapa jauh<br/>perubahannya?}
  Q1 -->|Baru diedit,<br/>belum git add| R1["git restore file"]
  Q1 -->|Sudah git add,<br/>belum commit| R2["git restore --staged file"]
  Q1 -->|Sudah commit,<br/>BELUM di-push/dibagikan| R3["git reset"]
  Q1 -->|Sudah commit DAN<br/>sudah di-push/dibagikan| R4["git revert"]

  R1 --> Out1["Perubahan di working directory hilang"]
  R2 --> Out2["Balik ke working directory<br/>(perubahan TIDAK hilang)"]
  R3 --> Out3["Riwayat commit lokal diubah"]
  R4 --> Out4["Commit BARU dibuat<br/>(riwayat lama tetap ada)"]
\`\`\`

### 1. Belum \`git add\`: \`git restore\`
\`\`\`bash
# Buang perubahan di file tertentu, kembalikan ke versi commit terakhir
git restore catatan.txt

# Buang SEMUA perubahan yang belum di-add
git restore .
\`\`\`

### 2. Sudah \`git add\`, belum commit: \`git restore --staged\`
\`\`\`bash
# Keluarkan file dari staging area — perubahannya TIDAK hilang,
# cuma balik jadi "belum di-add" lagi
git restore --staged catatan.txt
\`\`\`

### 3. Sudah commit, BELUM di-push: \`git reset\`
\`\`\`bash
# --soft: batalkan commit, tapi perubahannya tetap staged
git reset --soft HEAD~1

# --mixed (default): batalkan commit, perubahan balik ke working directory
git reset HEAD~1

# --hard: batalkan commit, perubahan HILANG SEPENUHNYA (hati-hati!)
git reset --hard HEAD~1
\`\`\`

### 4. Sudah commit DAN sudah di-push: \`git revert\`
\`\`\`bash
# Buat commit BARU yang isinya kebalikan dari commit tertentu
git revert <hash-commit>
\`\`\`

Poin penting:

- \`git reset\` MENGUBAH riwayat commit lokal — aman dipakai selama commit itu belum di-\`push\`/dibagikan ke orang lain. Kalau sudah di-\`push\`, \`reset\` lalu \`push --force\` bisa membuat riwayat rekan tim jadi tidak sinkron.
- \`git revert\` TIDAK mengubah riwayat lama — dia menambah commit baru di atasnya. Ini kenapa \`revert\` yang dipakai untuk commit yang sudah dibagikan: aman untuk branch bersama.
- \`git reset --hard\` bersifat destruktif dan permanen (kecuali kamu tahu cara memakai \`git reflog\` untuk pemulihan darurat) — selalu pastikan dulu perubahan itu memang tidak dibutuhkan lagi.
- \`HEAD~1\` berarti "satu commit sebelum HEAD saat ini" — ganti angkanya untuk mundur lebih jauh (\`HEAD~2\`, dst).`,
    sources: [
      { url: "https://git-scm.com/docs/git-restore", label: "Git Documentation — git-restore" },
      { url: "https://git-scm.com/docs/git-reset", label: "Git Documentation — git-reset" },
      { url: "https://git-scm.com/docs/git-revert", label: "Git Documentation — git-revert" },
    ],
    practice: `Di repository latihan kamu: (1) edit \`catatan.txt\` tapi JANGAN di-\`add\`, jalankan \`git restore catatan.txt\` — buktikan perubahannya hilang, kembali ke versi commit terakhir. (2) Edit lagi, kali ini \`git add\`-kan, lalu \`git restore --staged catatan.txt\` — cek \`git status\`, perubahannya masih ada tapi statusnya balik jadi belum di-\`add\`. (3) Commit perubahan itu, lalu \`git reset --soft HEAD~1\` — buktikan commit-nya hilang dari \`git log\` tapi perubahannya masih staged, siap di-commit ulang. (4) Terakhir, buat satu commit lagi, anggap itu sudah "dibagikan ke tim", lalu jalankan \`git revert <hash-commitnya>\` — perhatikan Git membuat commit BARU yang membatalkan perubahan itu, bukan menghapus commit lamanya dari riwayat.`,
  },
  {
    category: "git",
    slug: "branching",
    order: 2,
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
    slug: "git-stash-dasar",
    order: 3,
    title: "git stash: Menyimpan Perubahan Sementara",
    content: `Sekarang kamu bisa bercabang lewat branch (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** kamu sedang di tengah mengerjakan sesuatu (file sudah diedit, belum siap di-commit), tapi tiba-tiba HARUS pindah branch cepat — misalnya ada bug mendesak di branch lain. Git menolak pindah branch kalau perubahan yang belum di-commit itu berisiko tertimpa. Commit "setengah jadi" cuma supaya bisa pindah branch juga bukan solusi bagus — riwayat jadi kotor berisi commit "WIP" yang tidak berarti.

\`git stash\` menyimpan perubahan di working directory & staging area sementara TANPA commit, mengembalikan working directory ke kondisi bersih (seperti commit terakhir) — siap dikembalikan lagi kapan pun.

\`\`\`mermaid
flowchart LR
  A["Working directory kotor<br/>(ada perubahan belum commit)"] -->|git stash| B["Working directory bersih<br/>perubahan disimpan di stash"]
  B -->|git checkout branch-lain| C["Kerjakan hal lain<br/>di branch berbeda"]
  C -->|git checkout branch-asal| D["Balik ke branch semula<br/>(masih bersih)"]
  D -->|git stash pop| E["Perubahan kembali<br/>seperti sebelum di-stash"]
\`\`\`

\`\`\`bash
# Simpan perubahan saat ini ke stash (dengan pesan opsional)
git stash push -m "sedang kerjakan form validasi"

# Lihat daftar stash yang tersimpan
git stash list
# stash@{0}: On fitur-baru: sedang kerjakan form validasi

# Kembalikan stash PALING BARU, sekaligus hapus dari daftar
git stash pop

# Kembalikan tapi TETAP simpan di daftar stash (bisa di-apply ke branch lain juga)
git stash apply

# Hapus satu entri stash tanpa mengembalikannya
git stash drop stash@{0}
\`\`\`

| Command | Perubahan Dikembalikan? | Tetap di Daftar Stash? |
| --- | --- | --- |
| \`git stash pop\` | Ya | Tidak (dihapus setelah dikembalikan) |
| \`git stash apply\` | Ya | Ya (bisa di-\`apply\` lagi ke branch lain) |
| \`git stash drop\` | Tidak | Tidak (langsung dihapus) |

Poin penting:

- Stash bersifat lokal per repository — tidak ikut ter-\`push\` ke remote, jadi bukan cara mem-backup perubahan penting.
- Bisa ada lebih dari satu stash tersimpan sekaligus (\`stash@{0}\`, \`stash@{1}\`, dst) — \`pop\`/\`apply\` tanpa argumen selalu mengambil yang PALING BARU.
- \`git stash apply\` berguna kalau kamu mau menerapkan perubahan yang sama ke lebih dari satu branch, tanpa harus stash ulang tiap kali.`,
    sources: [
      { url: "https://git-scm.com/docs/git-stash", label: "Git Documentation — git-stash" },
    ],
    practice: `Di branch \`fitur-baru\` dari latihan sebelumnya, edit \`catatan.txt\` TAPI JANGAN commit. Jalankan \`git stash push -m "belum selesai"\` — buktikan \`git status\` kembali bersih (perubahan hilang dari working directory). Pindah ke \`main\` (\`git checkout main\`), lihat isi \`catatan.txt\` tidak terpengaruh sama sekali. Pindah balik ke \`fitur-baru\`, jalankan \`git stash list\` untuk lihat stash tersimpan, lalu \`git stash pop\` — buktikan perubahan yang tadi kamu buat kembali persis seperti sebelum di-stash.`,
  },
  {
    category: "git",
    slug: "remote-dasar",
    order: 4,
    title: "Git Remote: Push, Pull, dan Fetch",
    content: `Sekarang kamu bisa commit dan bercabang di komputer sendiri. **Masalah yang diselesaikan sekarang:** bagaimana kalau kode itu perlu dibagikan ke orang lain, atau di-backup di luar komputer kamu? Riwayat commit yang cuma ada di satu komputer rentan hilang (laptop rusak/hilang) dan tidak bisa diakses tim lain.

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
    practice: `Buat repository baru di GitHub (kosong, tanpa README). Di project lokal dari latihan sebelumnya, jalankan \`git remote add origin <url-repo-kamu>\`, lalu \`git push origin main\` (atau \`master\`, tergantung nama branch default-nya). Refresh halaman GitHub — pastikan commit-commit kamu muncul di sana. Coba juga \`git clone <url-yang-sama>\` ke folder lain untuk simulasi "komputer lain" yang mengambil kode itu.`,
  },
  {
    category: "git",
    slug: "gitignore-dasar",
    order: 5,
    title: "Mengabaikan File dengan .gitignore",
    content: `Sekarang project kamu sudah bisa di-push ke remote dan dibagikan ke orang lain (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** tidak semua file di folder project seharusnya ikut dilacak Git — file dependency yang bisa di-generate ulang (\`node_modules/\`), hasil build (\`dist/\`, \`.next/\`), atau file berisi rahasia (\`.env\` yang isinya API key/password). Kalau ikut ter-\`push\` ke remote publik, itu bisa membengkakkan ukuran repo atau — lebih parah — membocorkan kredensial ke siapa saja yang bisa lihat repo-nya.
\`.gitignore\` adalah file konfigurasi berisi daftar pola nama file/folder yang sengaja Git abaikan — tidak akan pernah muncul sebagai *untracked* di \`git status\`, dan tidak bisa ikut ke-\`git add\` secara tidak sengaja (termasuk lewat \`git add .\`).

\`\`\`mermaid
flowchart LR
  Edit["File diubah/dibuat"] --> Check{"Cocok pola<br/>di .gitignore?"}
  Check -->|Ya| Ignored["Diabaikan Git<br/>(tidak muncul di git status)"]
  Check -->|Tidak| Tracked["Muncul sebagai untracked/modified<br/>bisa di-git add"]
\`\`\`

### Contoh Isi \`.gitignore\` (Project Node.js/Next.js)
\`\`\`bash
# Dependency — di-generate ulang dari package.json, tidak perlu di-commit
node_modules/

# Hasil build — di-generate ulang dari source code
.next/
dist/
build/

# File rahasia — TIDAK BOLEH pernah masuk repository
.env
.env.local

# File/folder spesifik editor atau OS
.vscode/
.DS_Store

# Semua file .log, di mana pun lokasinya
*.log

# Kecuali file ini — tanda seru membatalkan pola abaikan di atasnya
!important.log
\`\`\`

Poin penting:

- Bikin \`.gitignore\` **sedini mungkin**, idealnya sebelum \`git add\` pertama kali — mencegah lebih mudah daripada membersihkan riwayat commit yang sudah terlanjur berisi secret.
- Kalau sebuah file **sudah kadung ter-commit** sebelum ditambahkan ke \`.gitignore\`, menambahkannya ke \`.gitignore\` saja tidak cukup — Git akan tetap melacaknya. Perlu \`git rm --cached <file>\` untuk berhenti melacaknya (filenya tetap ada di disk, cuma dihapus dari index Git).
- Pola \`folder/\` (dengan garis miring di akhir) cuma cocok untuk folder, sedangkan \`*.log\` cocok untuk semua file berekstensi \`.log\` di folder mana pun.
- GitHub menyediakan koleksi template \`.gitignore\` siap pakai per bahasa/framework (Node, Python, dll.) yang bisa jadi titik awal.`,
    sources: [
      { url: "https://git-scm.com/docs/gitignore", label: "Git Documentation — gitignore" },
      { url: "https://docs.github.com/en/get-started/getting-started-with-git/ignoring-files", label: "GitHub Docs — Ignoring Files" },
    ],
    practice: `Di repository latihan kamu, buat file \`rahasia.env\` berisi teks apa saja, dan buat folder \`node_modules/\` kosong (isi dengan satu file dummy). Jalankan \`git status\` — keduanya muncul sebagai *untracked*. Buat file \`.gitignore\` berisi \`rahasia.env\` dan \`node_modules/\`, jalankan \`git status\` lagi — keduanya harus HILANG dari daftar. Sekarang simulasikan kasus "sudah kadung ter-commit": hapus baris \`rahasia.env\` dari \`.gitignore\` sebentar, \`git add\` + commit filenya, lalu kembalikan baris itu ke \`.gitignore\` dan jalankan \`git rm --cached rahasia.env\` — buktikan filenya tetap ada di disk tapi sudah tidak dilacak Git lagi (\`git status\` menampilkannya sebagai untracked, bukan lagi tracked).`,
  },
  {
    category: "git",
    slug: "merge-conflict-dasar",
    order: 6,
    title: "Menyelesaikan Merge Conflict",
    content: `Sekarang kamu tahu cara branching, push/pull, dan mengabaikan file yang tidak perlu (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** kalau dua branch (atau kamu dan rekan tim) sama-sama mengubah BARIS YANG SAMA di file yang sama, Git tidak tahu versi mana yang benar saat \`merge\`/\`pull\` — proses berhenti di tengah jalan dan minta kamu memutuskan sendiri.

**Merge conflict** terjadi ketika Git tidak bisa menggabungkan otomatis dua perubahan yang saling bertabrakan pada baris yang sama.

\`\`\`mermaid
gitGraph
   commit id: "A"
   branch fitur-a
   checkout fitur-a
   commit id: "ubah baris 5 jadi X"
   checkout main
   commit id: "ubah baris 5 jadi Y"
\`\`\`

Kedua branch sama-sama mengubah baris 5 dengan nilai berbeda (\`X\` di \`fitur-a\`, \`Y\` di \`main\`) — saat \`git merge fitur-a\` dijalankan dari \`main\`, Git tidak bisa menebak versi mana yang benar, jadi proses berhenti dan minta diselesaikan manual.

### Tampilan File Saat Konflik
Git menandai bagian yang bentrok langsung di dalam file dengan *conflict markers*:

\`\`\`text
<<<<<<< HEAD
const sapaan = "Selamat pagi";
=======
const sapaan = "Halo semua";
>>>>>>> fitur-a
\`\`\`

- Baris di atas \`=======\` adalah versi branch yang sedang aktif (\`HEAD\`).
- Baris di bawah \`=======\` sampai \`>>>>>>>\` adalah versi dari branch yang sedang di-merge (\`fitur-a\`).

### Langkah Menyelesaikan Konflik
\`\`\`bash
# 1. Coba merge, Git berhenti dan melaporkan file yang konflik
git merge fitur-a
# Auto-merging index.js
# CONFLICT (content): Merge conflict in index.js

# 2. Buka file yang konflik, edit manual: pilih salah satu versi,
#    gabungan keduanya, atau tulis versi baru — lalu HAPUS conflict markers-nya
#    (<<<<<<<, =======, >>>>>>>) sepenuhnya

# 3. Tandai sudah diselesaikan dengan menambahkannya ke staging
git add index.js

# 4. Selesaikan proses merge dengan commit
git commit
\`\`\`

Poin penting:

- \`git status\` saat konflik menampilkan daftar file yang "*both modified*" — itulah file-file yang perlu diedit manual.
- Conflict marker (\`<<<<<<<\`, \`=======\`, \`>>>>>>>\`) HARUS dihapus semuanya sebelum commit — kalau lupa, marker itu akan ikut ter-commit sebagai teks biasa dan merusak kode.
- Kalau ingin membatalkan proses merge sepenuhnya dan kembali ke kondisi sebelum \`git merge\` dijalankan, pakai \`git merge --abort\`.
- Konflik yang sama juga bisa muncul saat \`git pull\` (karena \`pull\` = \`fetch\` + \`merge\`) — cara menyelesaikannya identik.`,
    sources: [
      { url: "https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging", label: "Git Basic Branching and Merging — Pro Git Book" },
      { url: "https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/resolving-a-merge-conflict-using-the-command-line", label: "GitHub Docs — Resolving a Merge Conflict Using the Command Line" },
    ],
    practice: `Di repository latihan kamu: dari \`main\`, buat branch \`fitur-a\`, ubah baris pertama \`catatan.txt\` jadi teks apa saja, commit. Pindah balik ke \`main\`, ubah baris PERTAMA yang SAMA di \`catatan.txt\` jadi teks lain, commit juga. Jalankan \`git merge fitur-a\` dari \`main\` — harus muncul CONFLICT. Buka \`catatan.txt\`, lihat conflict marker-nya, edit manual untuk memilih/menggabungkan isinya, hapus semua marker, lalu \`git add catatan.txt\` dan \`git commit\` untuk menyelesaikannya. Ini menutup roadmap Git: dari commit pertama sampai menyelesaikan konflik kolaborasi yang paling umum ditemui.`,
  },
  {
    category: "javascript",
    slug: "variabel-dan-scope",
    order: 0,
    title: "Variabel & Scope: let, const, dan var",
    content: `**Masalah yang diselesaikan:** \`var\` (satu-satunya cara deklarasi variabel sebelum ES6) punya scope di level FUNGSI, bukan di level BLOK (\`if\`, \`for\`, \`{}\`) — variabel yang harusnya cuma dipakai sementara di dalam satu blok malah "bocor" ke luar dan bisa tertimpa nilai lain tanpa sadar. \`var\` juga boleh di-deklarasi ulang dengan nama sama tanpa error, membuat bug penimpaan variabel susah dilacak.

\`\`\`js
if (true) {
  var a = "bocor";
}
console.log(a); // "bocor" — var BOCOR keluar dari blok if!

if (true) {
  let b = "aman";
}
console.log(b); // ReferenceError: b is not defined — let terkurung di blok
\`\`\`

\`\`\`mermaid
flowchart TD
  subgraph Fn["Function Scope (var)"]
    V["var a"]
    subgraph Blok["Block { }"]
      V2["var a (masih function scope!)"]
      L["let b (block scope)"]
    end
  end
  V -.->|"terlihat di seluruh fungsi"| Fn
  L -.->|"cuma terlihat di dalam { }"| Blok
\`\`\`

### \`let\` vs \`const\`
\`const\` mengunci BINDING-nya (nama variabel itu tidak bisa diarahkan ke nilai lain), bukan mengunci isinya — kalau isinya object/array, propertinya masih bisa diubah:

\`\`\`js
const user = { nama: "Budi" };
user.nama = "Ani"; // BOLEH — mengubah properti, bukan mengganti binding
console.log(user.nama); // "Ani"

user = { nama: "Lain" }; // TypeError — tidak boleh, ini mengganti binding const
\`\`\`

| | \`var\` | \`let\` | \`const\` |
| --- | --- | --- | --- |
| Scope | Function | Block | Block |
| Boleh di-redeclare? | Ya | Tidak (error) | Tidak (error) |
| Boleh di-reassign? | Ya | Ya | Tidak (error) |
| Diakses sebelum deklarasi? | \`undefined\` (hoisted) | Error (*temporal dead zone*) | Error (*temporal dead zone*) |

Poin penting:

- Aturan praktis modern: pakai \`const\` secara default, pakai \`let\` cuma kalau variabelnya memang perlu diubah nilainya nanti (misal counter di loop), dan hindari \`var\` sepenuhnya di kode baru.
- *Temporal dead zone* adalah rentang kode antara awal blok sampai baris deklarasi \`let\`/\`const\` — mengakses variabelnya di rentang itu melempar error, beda dengan \`var\` yang diam-diam bernilai \`undefined\`.
- Scope block berarti \`{ }\` di mana pun — bukan cuma \`if\`/\`for\`, tapi blok kurung kurawal biasa juga membuat scope baru untuk \`let\`/\`const\`.`,
    sources: [
      { url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let", label: "let — MDN Web Docs" },
      { url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/const", label: "const — MDN Web Docs" },
    ],
    practice: `Tulis loop \`for (var i = 0; i < 3; i++) { ... }\` lalu \`console.log(i)\` SETELAH loop-nya selesai — buktikan \`i\` masih bisa diakses (bocor). Ganti \`var\` jadi \`let\`, jalankan lagi — buktikan sekarang muncul \`ReferenceError\`. Buat \`const angka = 5\`, coba \`angka = 10\` — catat error-nya. Buat \`const arr = [1, 2, 3]\`, coba \`arr.push(4)\` — buktikan ini BERHASIL (karena mengubah isi, bukan mengganti binding-nya).`,
  },
  {
    category: "javascript",
    slug: "fungsi-dan-arrow-function",
    order: 1,
    title: "Fungsi & Arrow Function Dasar",
    content: `Sekarang kamu paham \`let\`/\`const\` dan scope (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** function declaration biasa punya \`this\` yang nilainya ditentukan SAAT DIPANGGIL (dynamic) — ini sering bikin bug tidak terduga di dalam callback (misalnya method object yang dipanggil lewat \`setTimeout\`, \`this\`-nya berubah jadi bukan object aslinya lagi). Arrow function (ES6) menyelesaikan ini dengan mewarisi \`this\` dari scope tempat dia DITULIS (lexical), bukan dari cara dia dipanggil.

### Tiga Cara Mendefinisikan Fungsi
\`\`\`js
// Function declaration — di-hoisting, bisa dipanggil sebelum baris definisinya
function sapa(nama) {
  return \`Halo, \${nama}\`;
}

// Function expression — TIDAK di-hoisting seperti declaration
const sapa2 = function (nama) {
  return \`Halo, \${nama}\`;
};

// Arrow function — sintaks ringkas, this lexical
const sapa3 = (nama) => \`Halo, \${nama}\`;
\`\`\`

### Masalah \`this\` yang Diselesaikan Arrow Function
\`\`\`js
const timer = {
  detik: 0,
  mulai() {
    // RUSAK: function biasa, "this" di dalam setTimeout BUKAN lagi "timer"
    setTimeout(function () {
      this.detik++; // this = undefined/window, BUKAN timer — error atau salah!
    }, 1000);
  },
  mulaiBenar() {
    // BENAR: arrow function mewarisi "this" dari mulaiBenar() (yaitu timer)
    setTimeout(() => {
      this.detik++; // this = timer, sesuai harapan
      console.log(this.detik);
    }, 1000);
  },
};
\`\`\`

\`\`\`mermaid
flowchart LR
  subgraph Regular["Function Biasa"]
    R1["this ditentukan SAAT dipanggil"] --> R2["Bisa berubah tergantung caller<br/>(rawan bug di callback)"]
  end
  subgraph Arrow["Arrow Function"]
    A1["this diwarisi dari scope penulisan"] --> A2["Selalu konsisten,<br/>tidak berubah tergantung caller"]
  end
\`\`\`

| | Function Declaration | Function Expression | Arrow Function |
| --- | --- | --- | --- |
| Hoisting | Ya, bisa dipanggil sebelum definisi | Tidak | Tidak |
| \`this\` | Dynamic (tergantung cara dipanggil) | Dynamic | Lexical (dari scope penulisan) |
| Bisa jadi constructor (\`new\`)? | Ya | Ya | Tidak |

Poin penting:

- Arrow function TIDAK cocok dipakai sebagai method object yang butuh akses \`this\` ke object itu sendiri secara langsung (\`this\` di situ akan merujuk ke scope LUAR object, bukan object-nya) — tapi cocok untuk callback DI DALAM method seperti contoh di atas.
- \`() => ekspresi\` tanpa kurung kurawal otomatis me-return nilai ekspresinya (*implicit return*) — \`() => { return ekspresi; }\` kalau pakai kurung kurawal harus eksplisit \`return\`.
- Function declaration di-hoisting sepenuhnya (bisa dipanggil sebelum baris definisinya di kode), function expression dan arrow function tidak.`,
    sources: [
      { url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions", label: "Arrow function expressions — MDN Web Docs" },
      { url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this", label: "this — MDN Web Docs" },
    ],
    practice: `Salin object \`timer\` di atas persis (dengan \`mulai()\` yang rusak dan \`mulaiBenar()\` yang benar). Panggil \`timer.mulai()\` dulu — perhatikan errornya (\`this.detik\` gagal karena \`this\` bukan \`timer\`). Lalu panggil \`timer.mulaiBenar()\` — buktikan \`this.detik\` bertambah dengan benar setelah 1 detik. Jelaskan dengan kata-katamu sendiri kenapa dua fungsi yang isinya mirip itu berperilaku beda.`,
  },
  {
    category: "javascript",
    slug: "destructuring-dasar",
    order: 2,
    title: "Destructuring Object & Array",
    content: `Sekarang kamu bisa mendefinisikan fungsi, termasuk arrow function (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** mengambil beberapa nilai dari object atau array biasanya berarti menulis \`obj.properti\` berulang kali baris demi baris — repetitif, apalagi kalau properti itu langsung mau dipakai sebagai variabel terpisah.

**Destructuring** membongkar object/array langsung jadi variabel-variabel terpisah dalam satu baris.

\`\`\`js
// SEBELUM destructuring — repetitif
const user = { nama: "Budi", umur: 25, kota: "Jakarta" };
const nama = user.nama;
const umur = user.umur;

// SESUDAH destructuring — satu baris
const { nama, umur } = user;
\`\`\`

### Object Destructuring: Rename & Default Value
\`\`\`js
const user = { nama: "Budi", umur: 25 };

// Rename: "nama" diambil tapi disimpan sebagai variabel "namaUser"
const { nama: namaUser } = user;

// Default value: dipakai kalau propertinya tidak ada di object
const { kota = "Tidak diketahui" } = user;
console.log(kota); // "Tidak diketahui" — karena user.kota memang tidak ada
\`\`\`

### Array Destructuring
\`\`\`js
const koordinat = [10, 20];
const [x, y] = koordinat;

// Lewati elemen dengan koma kosong
const [pertama, , ketiga] = [1, 2, 3];

// Trik menukar dua variabel tanpa variabel sementara
let a = 1, b = 2;
[a, b] = [b, a];
console.log(a, b); // 2 1
\`\`\`

### Destructuring di Parameter Fungsi
Ini kombinasi paling umum dipakai — menyambung langsung dari catatan sebelumnya soal fungsi:

\`\`\`js
function tampilkanProfil({ nama, umur }) {
  console.log(\`\${nama}, \${umur} tahun\`);
}
tampilkanProfil({ nama: "Ani", umur: 30 }); // langsung destructure dari argumen
\`\`\`

Poin penting:

- Nested destructuring bisa dipakai untuk object bersarang: \`const { alamat: { kota } } = user;\` langsung ambil \`kota\` dari \`user.alamat.kota\`.
- Destructuring array mengandalkan URUTAN (posisi index), destructuring object mengandalkan NAMA properti — beda cara kerja meski sintaksnya mirip.
- Kombinasi destructuring parameter + default value sangat umum dipakai untuk "opsi" fungsi: \`function buat({ warna = "biru", ukuran = "M" } = {}) {...}\`.`,
    sources: [
      { url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment", label: "Destructuring assignment — MDN Web Docs" },
    ],
    practice: `Buat object \`produk = { nama: "Laptop", harga: 15000000, spesifikasi: { ram: "16GB", storage: "512GB" } }\`. Destructure \`nama\` dan \`harga\` langsung ke variabel, lalu destructure \`ram\` dari \`spesifikasi\` yang bersarang (nested). Buat array \`[a, b, c] = [1, 2, 3]\`, praktikkan trik tukar nilai \`a\` dan \`c\` dalam satu baris tanpa variabel sementara. Terakhir, tulis fungsi \`cetakProduk({ nama, harga })\` yang langsung destructure dari parameter, panggil dengan object \`produk\` di atas.`,
  },
  {
    category: "javascript",
    slug: "array-method-dasar",
    order: 3,
    title: "Array Method Dasar: map, filter, reduce",
    content: `Sekarang kamu bisa pakai arrow function dan destructuring (dari catatan-catatan sebelumnya) — dua hal itu sering dipakai BARENGAN dengan topik catatan ini. **Masalah yang diselesaikan sekarang:** mengubah atau menyaring isi array dengan \`for\` loop manual itu verbose — harus bikin array kosong dulu, manual \`push\` satu-satu, gampang salah index atau lupa inisialisasi.

\`\`\`js
const produk = [
  { nama: "Buku", harga: 50000 },
  { nama: "Pensil", harga: 5000 },
  { nama: "Tas", harga: 150000 },
];

// SEBELUM: for loop manual untuk ambil nama produk di atas 10rb
const namaMahal = [];
for (let i = 0; i < produk.length; i++) {
  if (produk[i].harga > 10000) {
    namaMahal.push(produk[i].nama);
  }
}

// SESUDAH: filter + map, dibaca sebagai satu alur deklaratif
const namaMahal2 = produk
  .filter((p) => p.harga > 10000)
  .map((p) => p.nama);
\`\`\`

\`\`\`mermaid
flowchart LR
  Arr["Array awal"] -->|"filter(fn)"| Filtered["Array baru, cuma<br/>elemen yang lolos kondisi"]
  Filtered -->|"map(fn)"| Mapped["Array baru,<br/>setiap elemen ditransformasi"]
  Arr -->|"reduce(fn, awal)"| Reduced["SATU nilai akhir<br/>(bukan array)"]
\`\`\`

### \`reduce\`: Menggabungkan Array Jadi Satu Nilai
\`\`\`js
const total = produk.reduce((akumulator, p) => akumulator + p.harga, 0);
console.log(total); // 205000
\`\`\`

### \`forEach\`: Cuma Menjalankan Efek Samping, Bukan Mengembalikan Array Baru
\`\`\`js
produk.forEach((p) => console.log(p.nama)); // cuma print, tidak menghasilkan array baru
\`\`\`

| Method | Mengembalikan | Kegunaan |
| --- | --- | --- |
| \`map\` | Array baru, panjang SAMA | Transformasi tiap elemen |
| \`filter\` | Array baru, panjang bisa lebih pendek | Menyaring elemen berdasarkan kondisi |
| \`reduce\` | Satu nilai apa saja (angka, object, dll) | Menggabungkan/mengakumulasi array jadi satu hasil |
| \`forEach\` | \`undefined\` (tidak mengembalikan apa-apa) | Efek samping saja (mis. \`console.log\` tiap elemen) |

Poin penting:

- Semua method ini TIDAK mengubah array aslinya (kecuali \`forEach\` yang memang tidak menghasilkan array baru sama sekali) — \`produk\` tetap utuh setelah \`.filter()\`/\`.map()\` dipanggil.
- \`map\`/\`filter\` bisa di-*chain* (disambung) karena masing-masing mengembalikan array baru yang siap dipanggil method array lagi.
- \`reduce\` adalah yang paling fleksibel — \`map\` dan \`filter\` sebenarnya bisa ditulis ulang pakai \`reduce\`, tapi kebalikannya tidak selalu semudah itu.`,
    sources: [
      { url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map", label: "Array.prototype.map() — MDN Web Docs" },
      { url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce", label: "Array.prototype.reduce() — MDN Web Docs" },
    ],
    practice: `Dari array \`produk\` di atas (atau buat versi kamu sendiri dengan minimal 5 item), pakai \`.filter()\` + \`.map()\` di-chain untuk mendapatkan nama-nama produk dengan harga di atas 50000. Pakai \`.reduce()\` untuk menjumlahkan total harga SEMUA produk. Pakai \`.reduce()\` lagi untuk menghitung berapa banyak produk yang harganya di atas 50000 (harus dapat angka yang sama dengan panjang hasil \`.filter()\` sebelumnya) — buktikan \`reduce\` bisa menggantikan \`filter\`+hitung panjang array.`,
  },
  {
    category: "javascript",
    slug: "closure",
    order: 4,
    title: "Memahami Closure",
    content: `Sekarang kamu paham cara mendefinisikan fungsi dan konsep scope (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang:** bagaimana membuat variabel yang privat ke satu fungsi, tapi tetap bisa diakses/diubah oleh fungsi lain yang terkait dengannya — tanpa membuat variabel itu global (yang berisiko tertimpa atau diubah kode lain secara tidak sengaja)? Sebelum closure dipahami, satu-satunya cara menyimpan state antar pemanggilan fungsi terasa seperti harus pakai variabel global.

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
    slug: "error-handling-dasar",
    order: 5,
    title: "Error Handling: try, catch, finally",
    content: `Sekarang kamu paham fungsi dan closure (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang:** kalau ada error runtime yang tidak ditangani (misalnya \`JSON.parse()\` gagal karena string-nya tidak valid), SELURUH script berhenti jalan di situ juga (*uncaught exception*) — bagaimana caranya program tetap jalan dan memberi respons yang masuk akal, walau satu bagian kecil gagal?

\`\`\`js
// TANPA error handling — kalau JSON-nya rusak, seluruh script berhenti
const data = JSON.parse(teksTidakValid); // Uncaught SyntaxError, program crash

// DENGAN try/catch — error ditangkap, program tetap jalan
try {
  const data = JSON.parse(teksTidakValid);
  console.log(data);
} catch (error) {
  console.error("Gagal parse JSON:", error.message);
} finally {
  console.log("Percobaan parse selesai."); // SELALU jalan, apa pun hasilnya
}
\`\`\`

\`\`\`mermaid
flowchart TD
  Try["Kode di dalam try { }"] -->|Berhasil, tanpa error| Skip["catch DILEWATI"]
  Try -->|Error dilempar| Catch["catch (error) { } dijalankan"]
  Skip --> Finally["finally { } — SELALU dijalankan"]
  Catch --> Finally
\`\`\`

### Melempar Error Sendiri (\`throw\`)
\`\`\`js
function bagi(a, b) {
  if (b === 0) {
    throw new Error("Tidak bisa membagi dengan nol");
  }
  return a / b;
}

try {
  bagi(10, 0);
} catch (error) {
  console.error(error.message); // "Tidak bisa membagi dengan nol"
  console.error(error.name); // "Error"
}
\`\`\`

Poin penting:

- \`finally\` dijalankan SELALU — baik \`try\`-nya berhasil maupun gagal — cocok untuk kode pembersihan (*cleanup*) yang wajib jalan apa pun hasilnya (mis. menutup koneksi, menyembunyikan loading spinner).
- \`error.message\` berisi pesan error yang bisa dibaca manusia, \`error.name\` berisi jenis error-nya (\`TypeError\`, \`SyntaxError\`, \`Error\` kustom, dst) — berguna kalau perlu menangani jenis error yang berbeda dengan cara berbeda.
- Jangan \`catch\` error TANPA melakukan apa-apa (\`catch (e) {}\` kosong) — itu menyembunyikan bug alih-alih menyelesaikannya. Minimal log error-nya supaya masih terlihat saat debugging.`,
    sources: [
      { url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/try...catch", label: "try...catch — MDN Web Docs" },
      { url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/throw", label: "throw — MDN Web Docs" },
    ],
    practice: `Tulis fungsi \`parseAman(teks)\` yang membungkus \`JSON.parse(teks)\` dalam \`try/catch\` — kalau gagal, kembalikan \`null\` dan \`console.error\` pesan errornya, bukan sampai program crash. Tes dengan JSON valid dan JSON rusak (mis. \`"{tidak valid"\`). Tambahkan \`finally\` yang selalu mencetak "Percobaan parse selesai" — buktikan baris itu tetap muncul di KEDUA kasus (berhasil maupun gagal). Terakhir, buat fungsi \`bagi(a, b)\` yang melempar \`Error\` kustom kalau \`b === 0\`, panggil dalam \`try/catch\`, cetak \`error.message\`-nya.`,
  },
  {
    category: "javascript",
    slug: "promise-dasar",
    order: 6,
    title: "Promise Dasar",
    content: `\`try/catch\` dari catatan sebelumnya menangani error di kode SINKRON. **Masalah yang diselesaikan sekarang:** kode ASINKRON (timer, request ke server) yang ditulis pakai callback bersarang berkali-kali cepat jadi sulit dibaca begitu ada beberapa langkah berurutan ("*callback hell*"), dan tiap callback butuh error handling-nya sendiri-sendiri, tidak konsisten satu jalur.

**Promise** adalah object yang merepresentasikan hasil operasi asinkron yang BELUM tentu selesai sekarang, tapi akan selesai (atau gagal) di masa depan.

\`\`\`mermaid
stateDiagram-v2
  [*] --> Pending: Promise dibuat
  Pending --> Fulfilled: resolve(nilai) dipanggil
  Pending --> Rejected: reject(error) dipanggil
  Fulfilled --> [*]: .then() dijalankan
  Rejected --> [*]: .catch() dijalankan
\`\`\`

### Membuat & Memakai Promise
\`\`\`js
function tunggu(ms) {
  return new Promise((resolve, reject) => {
    if (ms < 0) {
      reject(new Error("Durasi tidak boleh negatif"));
      return;
    }
    setTimeout(() => resolve(\`Selesai menunggu \${ms}ms\`), ms);
  });
}

tunggu(1000)
  .then((pesan) => console.log(pesan)) // dijalankan kalau resolve()
  .catch((error) => console.error(error.message)) // dijalankan kalau reject()
  .finally(() => console.log("Promise selesai diproses")); // selalu jalan
\`\`\`

### Menyambung Beberapa Promise (Chaining)
\`\`\`js
tunggu(500)
  .then((pesan) => {
    console.log(pesan);
    return tunggu(500); // return Promise lain, lanjut ke .then() berikutnya
  })
  .then((pesan) => console.log("Langkah kedua:", pesan));
\`\`\`

Poin penting:

- Promise cuma punya TIGA state: \`pending\` (belum selesai), \`fulfilled\` (berhasil, sudah \`resolve\`), \`rejected\` (gagal, sudah \`reject\`) — begitu pindah dari \`pending\` ke salah satu state lain, state-nya PERMANEN, tidak bisa berubah lagi.
- \`.then()\` yang me-\`return\` Promise lain memungkinkan chaining berurutan tanpa nesting callback — inilah yang menyelesaikan masalah "callback hell".
- \`.catch()\` menangkap error dari SEMUA \`.then()\` sebelumnya di rantai yang sama, tidak perlu \`.catch()\` di tiap langkah.`,
    sources: [
      { url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises", label: "Using Promises — MDN Web Docs" },
      { url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise", label: "Promise — MDN Web Docs" },
    ],
    practice: `Tulis fungsi \`tunggu(ms)\` persis seperti contoh di atas. Panggil \`tunggu(1000).then(console.log)\` — buktikan pesannya muncul setelah kira-kira 1 detik. Panggil \`tunggu(-100).catch(console.error)\` — buktikan \`.catch()\` menangkap error dari \`reject()\`. Buat CHAIN tiga \`tunggu()\` berurutan (masing-masing 500ms) memakai \`.then()\` bersambung — bandingkan keterbacaannya dengan kalau itu ditulis pakai callback \`setTimeout\` bersarang tiga level.`,
  },
  {
    category: "javascript",
    slug: "async-await",
    order: 7,
    title: "Async/Await di JavaScript",
    content: `Promise dari catatan sebelumnya sudah menyelesaikan masalah callback bersarang, tapi rantai \`.then().then().then()\` yang panjang masih agak sulit dibaca urutannya sekilas mata. **Masalah yang diselesaikan sekarang:** bagaimana menulis kode asinkron yang TERLIHAT seperti kode sinkron biasa (baris demi baris), padahal di baliknya tetap non-blocking?

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
    category: "javascript",
    slug: "modules-dasar",
    order: 8,
    title: "Modules Dasar: import dan export",
    content: `Sekarang kamu sudah menguasai variabel, fungsi, closure, error handling, sampai async/await (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** sebelum module, semua kode JS di satu file besar — atau digabung lewat banyak tag \`<script>\` di HTML — berbagi SATU scope global yang sama. Variabel/fungsi dengan nama sama di file berbeda saling menimpa (*naming collision*), dan urutan \`<script>\` di HTML harus manual diatur sesuai dependency-nya.

**ES Modules** membuat tiap file JS punya scope-nya SENDIRI — variabel/fungsi cuma bisa diakses file lain kalau di-\`export\` secara eksplisit, dan dipakai lewat \`import\`.

\`\`\`mermaid
flowchart LR
  subgraph Sebelum["Sebelum Modules"]
    S1["script1.js"] --- G["SATU scope global"]
    S2["script2.js"] --- G
    G -.->|"rawan naming collision"| Bug["variabel saling menimpa"]
  end
  subgraph Sesudah["Dengan ES Modules"]
    M1["math.js<br/>(scope sendiri)"] -->|export| Exp["export { tambah, kurang }"]
    Exp -->|import| M2["main.js<br/>(scope sendiri)"]
  end
\`\`\`

### \`export\` (di \`math.js\`)
\`\`\`js
// Named export — bisa lebih dari satu per file
export function tambah(a, b) {
  return a + b;
}
export function kurang(a, b) {
  return a - b;
}

// Default export — maksimal SATU per file
export default function kali(a, b) {
  return a * b;
}
\`\`\`

### \`import\` (di \`main.js\`)
\`\`\`js
// Named import — nama HARUS sama persis dengan yang di-export (bisa di-rename pakai "as")
import { tambah, kurang } from "./math.js";

// Default import — boleh dikasih nama apa saja
import kali from "./math.js";

console.log(tambah(2, 3)); // 5
console.log(kali(2, 3)); // 6
\`\`\`

### Menjalankan Module
\`\`\`html
<!-- Di browser: wajib type="module" -->
<script type="module" src="main.js"></script>
\`\`\`

\`\`\`bash
# Di Node.js: pakai ekstensi .mjs, ATAU tambahkan "type": "module" di package.json
node main.mjs
\`\`\`

Poin penting:

- Variabel/fungsi di dalam module TIDAK otomatis jadi global — kalau tidak di-\`export\`, dia betul-betul privat ke file itu, tidak bisa diakses file lain sama sekali.
- Named export bisa banyak per file, default export maksimal SATU — pilih named kalau file punya beberapa hal yang mau di-export sekaligus (seperti \`math.js\` di atas).
- Module HANYA dieksekusi SEKALI meski di-\`import\` dari banyak file berbeda — hasilnya di-cache dan dipakai bersama, bukan dijalankan ulang tiap \`import\`.`,
    sources: [
      { url: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules", label: "JavaScript modules — MDN Web Docs" },
    ],
    practice: `Buat dua file: \`math.js\` berisi dua named export (\`tambah\`, \`kurang\`) dan satu default export (\`kali\`), lalu \`main.js\` yang meng-\`import\` ketiganya dan memanggilnya, cetak hasilnya ke console. Jalankan lewat \`<script type="module" src="main.js"></script>\` di file HTML kosong, buka di browser, cek hasilnya di DevTools console. Coba HAPUS \`type="module"\` dari tag script-nya — perhatikan muncul error \`Cannot use import statement outside a module\`, membuktikan \`type="module"\` memang wajib. Ini menutup roadmap JavaScript: dari variabel dasar sampai memecah kode jadi file-file yang terorganisir.`,
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
    slug: "sintaks-dan-tipe-data-dasar",
    order: 0,
    title: "Sintaks & Tipe Data Dasar",
    content: `**Masalah yang diselesaikan:** bahasa seperti Java/C# mewajibkan kamu mendeklarasikan tipe tiap variabel secara eksplisit (\`int umur = 25;\`) sebelum bisa dipakai — boilerplate ini menambah baris kode untuk hal yang sering kali sudah jelas dari nilainya sendiri. Python memakai *dynamic typing*: tipe ditentukan otomatis dari nilai yang diisikan, dan bisa berubah kapan saja variabelnya diisi ulang dengan nilai bertipe lain.

\`\`\`python
umur = 25        # int — otomatis dikenali sebagai angka bulat
tinggi = 1.75     # float — angka desimal
nama = "Budi"     # str — teks
aktif = True      # bool — True/False

print(type(umur))  # <class 'int'>

umur = "dua puluh lima"  # BOLEH — Python tidak melarang ganti tipe
print(type(umur))         # <class 'str'>
\`\`\`

### Operator Dasar & f-string
\`\`\`python
a = 10
b = 3
print(a + b)   # 13
print(a // b)  # 3  — pembagian bulat (floor division)
print(a % b)   # 1  — sisa bagi (modulo)
print(a ** b)  # 1000 — pangkat

nama = "Ani"
umur = 30
# f-string — cara modern menyisipkan variabel ke dalam teks
print(f"{nama} berumur {umur} tahun")
\`\`\`

| Tipe | Contoh | Fungsi Konversi |
| --- | --- | --- |
| \`int\` | \`25\`, \`-3\` | \`int("25")\` |
| \`float\` | \`1.75\`, \`-0.5\` | \`float("1.75")\` |
| \`str\` | \`"halo"\` | \`str(25)\` |
| \`bool\` | \`True\`, \`False\` | \`bool(1)\` (hampir semua nilai selain \`0\`/kosong dianggap \`True\`) |

Poin penting:

- \`type(nilai)\` selalu bisa dipakai untuk mengecek tipe suatu nilai saat ini — berguna terutama karena tipe variabel Python bisa berubah.
- Indentasi (spasi di awal baris) di Python BUKAN sekadar gaya penulisan — ia bagian dari sintaks, menentukan blok kode mana yang termasuk bagian mana (akan terlihat jelas di catatan berikutnya soal struktur kontrol).
- Konversi tipe eksplisit (\`int()\`, \`str()\`, dst) diperlukan saat Python tidak bisa menebak otomatis, misalnya menggabungkan angka dengan teks: \`"Umur: " + str(umur)\` — \`"Umur: " + umur\` akan error kalau \`umur\` berupa \`int\`.`,
    sources: [
      { url: "https://docs.python.org/3/tutorial/introduction.html", label: "An Informal Introduction to Python — Python Docs" },
      { url: "https://docs.python.org/3/library/stdtypes.html", label: "Built-in Types — Python Docs" },
    ],
    prerequisites: [
      { label: "Python 3 sudah terinstall (cek dengan `python --version` atau `python3 --version`)", url: "https://www.python.org/downloads/" },
    ],
    practice: `Buat empat variabel dengan masing-masing tipe (\`int\`, \`float\`, \`str\`, \`bool\`), cetak tipe masing-masing pakai \`type()\`. Buat variabel \`umur = 25\` (angka) dan coba \`print("Umur saya: " + umur)\` — catat error-nya (\`TypeError\`). Perbaiki dengan \`str(umur)\` atau f-string \`f"Umur saya: {umur}"\`. Terakhir, hitung luas persegi panjang dari \`panjang = 8\` dan \`lebar = 3\` lalu cetak hasilnya pakai f-string.`,
  },
  {
    category: "python",
    slug: "struktur-kontrol-dasar",
    order: 1,
    title: "Struktur Kontrol: if, for, while",
    content: `Sekarang kamu paham variabel dan tipe data dasar (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** program yang cuma dijalankan baris demi baris secara linear tidak bisa membuat KEPUTUSAN (melakukan hal berbeda tergantung kondisi) atau MENGULANG pekerjaan yang sama tanpa menulis ulang kodenya berkali-kali.

### Percabangan: \`if\` / \`elif\` / \`else\`
\`\`\`python
nilai = 75

if nilai >= 90:
    kategori = "A"
elif nilai >= 75:
    kategori = "B"
else:
    kategori = "C"

print(kategori)  # "B"
\`\`\`

\`\`\`mermaid
flowchart TD
  Start["nilai = 75"] --> Q1{"nilai >= 90?"}
  Q1 -->|Ya| A["kategori = A"]
  Q1 -->|Tidak| Q2{"nilai >= 75?"}
  Q2 -->|Ya| B["kategori = B"]
  Q2 -->|Tidak| C["kategori = C"]
\`\`\`

### Perulangan: \`for\` dan \`while\`
\`\`\`python
# for — mengulang untuk tiap elemen di sebuah iterable
for i in range(5):
    print(i)  # 0, 1, 2, 3, 4

buah = ["apel", "jeruk", "kiwi"]
for b in buah:
    print(b)

# while — mengulang SELAMA kondisi masih True
hitung = 0
while hitung < 3:
    print(hitung)
    hitung += 1
\`\`\`

### \`break\` dan \`continue\`
\`\`\`python
for n in range(10):
    if n == 5:
        break  # hentikan loop sepenuhnya
    if n % 2 == 0:
        continue  # lewati sisa kode, lanjut ke iterasi berikutnya
    print(n)  # cuma cetak angka ganjil sebelum 5: 1, 3
\`\`\`

Poin penting:

- Python TIDAK pakai kurung kurawal \`{ }\` untuk menandai blok kode seperti banyak bahasa lain — blok ditandai lewat INDENTASI (biasanya 4 spasi) setelah tanda titik dua (\`:\`). Indentasi yang salah/tidak konsisten menyebabkan \`IndentationError\`.
- \`range(5)\` menghasilkan urutan \`0, 1, 2, 3, 4\` (5 ANGKA, tapi berhenti SEBELUM angka 5) — pola ini sering bikin bingung pemula (*off-by-one*).
- Pakai \`for\` kalau tahu persis berapa kali/apa yang mau diiterasi (list, range), pakai \`while\` kalau pengulangannya tergantung kondisi yang tidak diketahui jumlahnya di awal.`,
    sources: [
      { url: "https://docs.python.org/3/tutorial/controlflow.html", label: "More Control Flow Tools — Python Docs" },
    ],
    practice: `Tulis program yang mengecek satu angka: cetak "Fizz" kalau habis dibagi 3, "Buzz" kalau habis dibagi 5, "FizzBuzz" kalau habis dibagi KEDUANYA, atau angkanya sendiri kalau tidak keduanya — pakai \`if\`/\`elif\`/\`else\`. Bungkus dalam \`for n in range(1, 21)\` supaya jalan untuk angka 1 sampai 20. Lalu tulis \`while\` loop terpisah yang mencetak angka 10 turun ke 1 (hitung mundur), berhenti otomatis begitu mencapai 0.`,
  },
  {
    category: "python",
    slug: "struktur-data-dasar",
    order: 2,
    title: "Struktur Data Dasar: list, tuple, dict, set",
    content: `Sekarang kamu bisa membuat keputusan dan mengulang (dari catatan sebelumnya) — biasanya dipakai BARENGAN dengan struktur data untuk mengolah kumpulan nilai. **Masalah yang diselesaikan sekarang:** satu variabel cuma menyimpan SATU nilai — bagaimana menyimpan banyak nilai sekaligus, dan bagaimana memilih struktur yang tepat tergantung kebutuhan (perlu urutan? boleh duplikat? perlu pasangan key-value? perlu nilai unik saja)?

\`\`\`python
# list — urutan, BISA diubah (mutable), boleh duplikat
belanja = ["telur", "roti", "susu", "roti"]
belanja.append("gula")

# tuple — urutan, TIDAK BISA diubah (immutable)
koordinat = (10, 20)
# koordinat[0] = 99  # TypeError — tuple tidak bisa diubah

# dict — pasangan key-value
profil = {"nama": "Budi", "umur": 25}
print(profil["nama"])  # "Budi"

# set — cuma nilai UNIK, tanpa urutan pasti
tag = {"python", "web", "python"}  # duplikat otomatis dibuang
print(tag)  # {"python", "web"}
\`\`\`

\`\`\`mermaid
flowchart TD
  Q1{"Perlu urutan?"}
  Q1 -->|Tidak, cuma unik| Set["set"]
  Q1 -->|Ya| Q2{"Perlu key-value?"}
  Q2 -->|Ya| Dict["dict"]
  Q2 -->|Tidak| Q3{"Boleh berubah?"}
  Q3 -->|Ya| List["list"]
  Q3 -->|Tidak| Tuple["tuple"]
\`\`\`

| Struktur | Urutan? | Bisa Diubah? | Boleh Duplikat? | Contoh Sintaks |
| --- | --- | --- | --- | --- |
| \`list\` | Ya | Ya | Ya | \`[1, 2, 3]\` |
| \`tuple\` | Ya | Tidak | Ya | \`(1, 2, 3)\` |
| \`dict\` | Ya (sejak Python 3.7+) | Ya | Key harus unik | \`{"a": 1}\` |
| \`set\` | Tidak | Ya (isi boleh ditambah/dibuang) | Tidak | \`{1, 2, 3}\` |

Poin penting:

- Pakai \`tuple\` untuk data yang secara konsep TIDAK BOLEH berubah (koordinat, RGB warna) — sifat immutable-nya jadi jaminan, bukan sekadar konvensi.
- Akses \`dict\` dengan key yang tidak ada melempar \`KeyError\` — pakai \`profil.get("kota", "tidak ada")\` untuk ambil dengan nilai default kalau key-nya mungkin tidak ada.
- \`set\` berguna untuk operasi seperti mengecek keberadaan nilai secara cepat, atau menghilangkan duplikat dari sebuah list: \`list(set(list_dengan_duplikat))\`.`,
    sources: [
      { url: "https://docs.python.org/3/tutorial/datastructures.html", label: "Data Structures — Python Docs" },
    ],
    practice: `Buat \`list\` berisi 5 nama buah, tambahkan satu buah lagi pakai \`.append()\`. Buat \`tuple\` berisi koordinat \`(x, y)\`, coba ubah salah satu elemennya dan catat error-nya. Buat \`dict\` profil diri sendiri (\`nama\`, \`umur\`, \`kota\`), akses satu key yang TIDAK ada pakai \`.get()\` dengan default value. Buat \`set\` dari sebuah list yang sengaja punya banyak duplikat, buktikan hasilnya cuma berisi nilai unik.`,
  },
  {
    category: "python",
    slug: "fungsi-dasar",
    order: 3,
    title: "Fungsi Dasar: def, Parameter, dan Return",
    content: `Sekarang kamu bisa membuat keputusan, mengulang, dan menyimpan koleksi data (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang:** logic yang sama (misalnya menghitung diskon) sering dibutuhkan di banyak tempat berbeda dalam program — menyalin-tempel kode yang sama berkali-kali bikin susah dipelihara (kalau ada bug, harus diperbaiki di SEMUA tempat yang menyalinnya).

\`\`\`python
def hitung_diskon(harga, persen=10):
    """Menghitung harga setelah diskon. Default diskon 10%."""
    potongan = harga * (persen / 100)
    return harga - potongan

print(hitung_diskon(100000))       # pakai default 10%: 90000.0
print(hitung_diskon(100000, 25))   # override jadi 25%: 75000.0
\`\`\`

\`\`\`mermaid
flowchart LR
  Call["hitung_diskon(100000, 25)"] --> Fn["def hitung_diskon(harga, persen=10)"]
  Fn --> Body["potongan = harga * (persen / 100)"]
  Body --> Return["return harga - potongan"]
  Return --> Result["75000.0 dikembalikan ke pemanggil"]
\`\`\`

Poin penting:

- Parameter dengan nilai default (\`persen=10\`) bersifat OPSIONAL saat memanggil fungsi — kalau tidak diisi, nilai default itu yang dipakai.
- Fungsi TANPA \`return\` eksplisit otomatis mengembalikan \`None\` — beda dengan fungsi yang memang sengaja \`return None\`.
- Argumen bisa dikirim berdasarkan POSISI (\`hitung_diskon(100000, 25)\`) atau berdasarkan NAMA (\`hitung_diskon(harga=100000, persen=25)\`) — cara kedua lebih jelas dibaca kalau parameternya banyak.`,
    sources: [
      { url: "https://docs.python.org/3/tutorial/controlflow.html#defining-functions", label: "Defining Functions — Python Docs" },
    ],
    practice: `Tulis fungsi \`cek_kelulusan(nilai, batas=60)\` yang mengembalikan \`"Lulus"\` kalau \`nilai >= batas\`, atau \`"Tidak Lulus"\` kalau tidak — dengan \`batas\` bernilai default 60. Panggil tanpa argumen kedua (pakai default), lalu panggil lagi dengan \`batas=75\` untuk kasus yang lebih ketat. Tulis fungsi kedua \`rata_rata(daftar_nilai)\` yang menerima sebuah \`list\` angka dan mengembalikan rata-ratanya — gunakan bersama fungsi \`cek_kelulusan\` untuk mengecek apakah rata-rata itu lulus atau tidak.`,
  },
  {
    category: "python",
    slug: "list-comprehension",
    order: 4,
    title: "List Comprehension",
    content: `Sekarang kamu paham \`for\` loop dan struktur data \`list\` (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang:** transformasi atau filter list yang sering dipakai (misalnya ambil elemen genap saja) biasanya butuh beberapa baris kode (deklarasi list kosong, loop, if, append) untuk operasi yang sebenarnya konsepnya sederhana.

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
    slug: "error-handling-dasar",
    order: 5,
    title: "Error Handling: try, except, finally",
    content: `Sekarang kamu bisa menulis fungsi dan mengolah struktur data (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang:** kalau ada error runtime yang tidak ditangani (misalnya user mengetik teks padahal program mengharapkan angka), seluruh program berhenti total (*uncaught exception*) — bagaimana caranya program tetap jalan dan memberi respons yang masuk akal?

\`\`\`python
# TANPA error handling — kalau input bukan angka, program CRASH total
umur = int(input("Umur kamu: "))

# DENGAN try/except — error ditangkap, program tetap jalan
try:
    umur = int(input("Umur kamu: "))
    print(f"Tahun depan umur kamu {umur + 1}")
except ValueError:
    print("Itu bukan angka yang valid!")
finally:
    print("Selesai mencoba baca input.")  # SELALU jalan
\`\`\`

\`\`\`mermaid
flowchart TD
  Try["Kode di dalam try:"] -->|Berhasil, tanpa error| Skip["except DILEWATI"]
  Try -->|Error dilempar| Except["except ValueError: dijalankan"]
  Skip --> Finally["finally: — SELALU dijalankan"]
  Except --> Finally
\`\`\`

### Menangani Beberapa Jenis Error & Melempar Error Sendiri
\`\`\`python
def bagi(a, b):
    if b == 0:
        raise ValueError("Tidak bisa membagi dengan nol")
    return a / b

try:
    hasil = bagi(10, 0)
except ValueError as e:
    print(f"Error: {e}")
except ZeroDivisionError:
    print("Pembagian nol terdeteksi dari operator langsung")
except Exception as e:
    print(f"Error tidak terduga: {e}")
\`\`\`

Poin penting:

- Tangkap jenis exception SPESIFIK (\`ValueError\`, \`KeyError\`, dst) sebisa mungkin, bukan langsung \`except:\` tanpa jenis — supaya kamu tahu persis error apa yang sedang ditangani, dan tidak diam-diam menyembunyikan bug lain yang tidak terkait.
- \`finally\` dijalankan SELALU, baik \`try\`-nya berhasil maupun gagal — cocok untuk kode pembersihan (menutup file/koneksi) yang wajib jalan apa pun hasilnya.
- \`raise\` melempar exception secara manual — berguna untuk menandai kondisi yang secara logis salah meski tidak menyebabkan error Python secara langsung.`,
    sources: [
      { url: "https://docs.python.org/3/tutorial/errors.html", label: "Errors and Exceptions — Python Docs" },
    ],
    practice: `Tulis program yang minta input umur lewat \`input()\`, coba konversi ke \`int()\` di dalam \`try/except ValueError\` — kalau gagal, cetak pesan error yang jelas alih-alih program crash. Tambahkan \`finally\` yang selalu mencetak "Selesai". Tulis fungsi \`bagi(a, b)\` yang \`raise ValueError\` kalau \`b == 0\`, panggil dalam \`try/except\`, cetak pesan error-nya lewat \`except ValueError as e: print(e)\`.`,
  },
  {
    category: "python",
    slug: "membaca-menulis-file-dasar",
    order: 6,
    title: "Membaca & Menulis File Dasar",
    content: `Sekarang kamu bisa menangani error dengan aman (dari catatan sebelumnya) — penting karena operasi file gampang gagal (file tidak ada, tidak ada izin akses, dst). **Masalah yang diselesaikan sekarang:** data yang cuma hidup di variabel HILANG begitu program selesai dijalankan — bagaimana caranya menyimpan data ke file supaya tetap ada (*persistent*) untuk dibaca lagi nanti, bahkan oleh program lain?

\`\`\`python
# Menulis ke file — mode "w" (write, menimpa isi lama)
with open("catatan.txt", "w") as f:
    f.write("Baris pertama\\n")
    f.write("Baris kedua\\n")

# Membaca seluruh isi file
with open("catatan.txt", "r") as f:
    isi = f.read()
    print(isi)

# Membaca baris per baris
with open("catatan.txt", "r") as f:
    for baris in f:
        print(baris.strip())  # .strip() buang newline di akhir baris

# Menambahkan ke file TANPA menghapus isi lama — mode "a" (append)
with open("catatan.txt", "a") as f:
    f.write("Baris tambahan\\n")
\`\`\`

\`\`\`mermaid
flowchart LR
  Open["with open('file', mode) as f:"] --> Ops["Baca/tulis lewat f"]
  Ops --> Close["File OTOMATIS ditutup<br/>saat keluar blok with"]
\`\`\`

| Mode | Fungsi |
| --- | --- |
| \`"r"\` | Baca (*read*) — error kalau file tidak ada |
| \`"w"\` | Tulis (*write*) — MENIMPA seluruh isi lama, atau buat file baru kalau belum ada |
| \`"a"\` | Tambah (*append*) — menambah di akhir file, isi lama tetap ada |

Poin penting:

- Pakai \`with open(...) as f:\` (*context manager*), BUKAN \`f = open(...)\` manual — \`with\` menjamin file otomatis ditutup begitu blok kodenya selesai, bahkan kalau terjadi error di tengah jalan. Lupa menutup file bisa menyebabkan kebocoran resource.
- Mode \`"w"\` MENGHAPUS seluruh isi file lama tanpa peringatan — pastikan memang itu yang diinginkan, kalau tidak pakai \`"a"\`.
- Kombinasikan dengan \`try/except FileNotFoundError\` (dari catatan sebelumnya) untuk menangani kasus file yang mau dibaca ternyata belum ada.`,
    sources: [
      { url: "https://docs.python.org/3/tutorial/inputoutput.html#reading-and-writing-files", label: "Reading and Writing Files — Python Docs" },
    ],
    practice: `Tulis program yang membuat file \`tugas.txt\` berisi 3 baris tugas (mode \`"w"\`). Baca ulang file itu dan cetak isinya baris per baris. Tambahkan satu baris tugas baru pakai mode \`"a"\`, baca lagi untuk buktikan baris lama TIDAK hilang. Terakhir, coba \`open("tidak-ada.txt", "r")\` pada file yang sengaja tidak ada, bungkus dengan \`try/except FileNotFoundError\` supaya program tidak crash, cetak pesan error yang jelas.`,
  },
  {
    category: "python",
    slug: "import-dan-module-dasar",
    order: 7,
    title: "Import & Module Dasar",
    content: `Sekarang kamu sudah bisa membaca/menulis file (dari catatan sebelumnya) — kode kamu makin banyak melakukan hal berbeda-beda. **Masalah yang diselesaikan sekarang:** menaruh SEMUA kode di satu file besar makin lama makin susah dikelola — bagaimana caranya memecah kode jadi beberapa file terpisah dan memakai ulang fungsi dari file lain, atau dari library yang sudah ada (bukan menulis ulang dari nol)?

### Import dari Standard Library
Python punya banyak module bawaan (*standard library*) siap pakai tanpa install apa pun:

\`\`\`python
import math
print(math.sqrt(16))  # 4.0

import random
print(random.randint(1, 10))  # angka acak 1-10

from datetime import datetime
print(datetime.now())  # waktu saat ini
\`\`\`

### Membuat Module Sendiri
\`\`\`python
# file: kalkulator.py
def tambah(a, b):
    return a + b

def kurang(a, b):
    return a - b
\`\`\`

\`\`\`python
# file: main.py — di folder yang sama dengan kalkulator.py
import kalkulator
print(kalkulator.tambah(2, 3))  # 5

# atau import fungsi tertentu langsung
from kalkulator import kurang
print(kurang(5, 2))  # 3
\`\`\`

\`\`\`mermaid
flowchart LR
  Std["Standard Library<br/>(bawaan Python: math, random, dst)"] -->|import| Code["Kode kamu"]
  Pip["Package pihak ketiga<br/>(diinstall lewat pip)"] -->|import| Code
  Own["Module buatan sendiri<br/>(file .py lain)"] -->|import| Code
\`\`\`

Poin penting:

- \`import module\` mengharuskan pakai prefix \`module.fungsi()\`, sedangkan \`from module import fungsi\` bisa langsung panggil \`fungsi()\` tanpa prefix — tapi lebih rawan bentrok nama kalau banyak module diimpor sekaligus.
- Package pihak ketiga (yang tidak termasuk standard library, misalnya \`requests\`) harus di-\`pip install\` dulu sebelum bisa di-\`import\` — dibahas lebih lanjut di catatan berikutnya soal virtual environment.
- \`import module as alias\` (mis. \`import numpy as np\`) memberi nama pendek supaya tidak perlu mengetik nama module lengkap berulang kali — konvensi umum di banyak library populer.`,
    sources: [
      { url: "https://docs.python.org/3/tutorial/modules.html", label: "Modules — Python Docs" },
    ],
    practice: `Buat file \`kalkulator.py\` berisi minimal 3 fungsi (\`tambah\`, \`kurang\`, \`kali\`). Buat file \`main.py\` di folder yang sama, \`import kalkulator\` lalu panggil ketiga fungsinya. Coba juga \`from kalkulator import tambah\` dan panggil langsung tanpa prefix. Import module bawaan \`random\`, gunakan \`random.choice()\` untuk memilih satu nama secara acak dari sebuah list nama yang kamu buat.`,
  },
  {
    category: "python",
    slug: "virtual-environment",
    order: 8,
    title: "Virtual Environment (venv)",
    content: `Sekarang kamu bisa \`import\` module dan package pihak ketiga lewat \`pip\` (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** kalau semua dependency Python diinstall secara global (satu Python untuk semua proyek), proyek A yang butuh \`django==4\` dan proyek B yang butuh \`django==3\` akan bertabrakan — cuma bisa ada satu versi terinstall global di satu waktu.

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
    practice: `Buat dua folder proyek berbeda. Di masing-masing, buat venv terpisah (\`python -m venv .venv\`), aktifkan, lalu install versi \`requests\` yang BERBEDA di tiap proyek (mis. \`pip install requests==2.31.0\` di satu, \`pip install requests==2.28.0\` di lainnya). Jalankan \`pip freeze\` di kedua venv untuk membuktikan versinya benar-benar berbeda dan tidak saling memengaruhi satu sama lain. Ini menutup roadmap Python: dari sintaks dasar sampai mengelola dependency proyek secara terisolasi.`,
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
    category: "ansible",
    slug: "pengenalan-ansible-dan-instalasi",
    order: 0,
    title: "Pengenalan Ansible & Instalasi",
    content: `**Masalah yang diselesaikan:** kalau kamu punya 20 server yang butuh package sama ter-install dan config sama ter-apply, cara manual (SSH satu-satu, jalankan command yang sama berulang) itu lambat dan rawan salah — gampang lupa jalankan di satu server, atau versi command yang dijalankan sedikit beda tanpa sadar, sehingga tiap server jadi tidak identik lagi (*configuration drift*).

**Ansible** adalah tool otomasi IT yang bersifat *agentless* — tidak perlu install software tambahan apa pun di server yang dikelola (*managed node*), cukup akses SSH dan Python sudah terinstall di sana (biasanya sudah ada secara default di distro Linux modern). Konfigurasi didefinisikan secara *declarative* dalam YAML: kamu bilang *state* seperti apa yang diinginkan ("nginx harus ter-install dan running"), bukan langkah-langkah imperatif ("jalankan apt install, lalu systemctl start").

\`\`\`mermaid
flowchart LR
  subgraph Control["Control Node (komputer kamu)"]
    Ansible["Ansible + Inventory + Playbook"]
  end

  Ansible -->|SSH| S1["Managed Node 1"]
  Ansible -->|SSH| S2["Managed Node 2"]
  Ansible -->|SSH| S3["Managed Node 3"]
\`\`\`

Tidak ada agent/daemon yang jalan terus-menerus di managed node — Ansible cuma "mampir" lewat SSH saat dijalankan, mengeksekusi task-nya, lalu selesai.

### Instalasi (di Control Node)
\`\`\`bash
# Lewat pip (disarankan, cross-platform)
python3 -m pip install --user ansible

# Atau lewat package manager (Ubuntu/Debian)
sudo apt update && sudo apt install ansible -y

# Cek versi terinstall
ansible --version
\`\`\`

### Tes Koneksi Pertama
Modul \`ping\` (bukan ICMP ping biasa) memastikan Ansible bisa connect & menjalankan Python di target:

\`\`\`bash
# Tes ke localhost (mesin kamu sendiri) tanpa perlu server lain dulu
ansible localhost -m ping
\`\`\`

Kalau berhasil, akan muncul respons \`"ping": "pong"\` — tandanya Ansible siap dipakai untuk mengelola server sungguhan.

Poin penting:

- *Agentless* berarti tidak ada proses tambahan yang jalan di background managed node — bedanya dengan tool seperti Puppet/Chef yang butuh agent ter-install permanen di tiap server.
- *Idempotent* adalah sifat penting Ansible: menjalankan playbook yang sama berkali-kali menghasilkan state akhir yang sama, tidak menduplikasi efek (misalnya, "pastikan package X ter-install" tidak akan error atau install ulang kalau X sudah ada).
- Managed node cukup punya Python terinstall (untuk generasi modern Ansible tidak lagi butuh Python di control node vs managed node versi tertentu — cek dokumentasi kalau target-nya sistem lama).`,
    sources: [
      { url: "https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html", label: "Ansible Docs — Installation Guide" },
      { url: "https://docs.ansible.com/ansible/latest/getting_started/index.html", label: "Ansible Docs — Getting Started" },
    ],
    prerequisites: [
      { label: "Python 3 sudah terinstall di control node", url: "https://www.python.org/downloads/" },
      { label: "Familiar dengan command line/terminal dan SSH dasar" },
      { label: "Minimal satu mesin Linux untuk dipraktikkan (VM lokal seperti VirtualBox/Vagrant, atau VPS murah) — kalau belum ada, catatan ini tetap bisa dipraktikkan ke localhost" },
    ],
    practice: `Install Ansible lewat \`pip\` atau package manager sesuai OS kamu, lalu cek dengan \`ansible --version\`. Jalankan \`ansible localhost -m ping\` — pastikan hasilnya \`"pong"\`. Kalau kamu punya akses SSH ke server lain (VM lokal atau VPS), coba juga \`ansible <ip-server> -m ping -u <username> --private-key <path-ke-ssh-key>\` untuk membuktikan Ansible bisa connect ke server sungguhan, bukan cuma localhost.`,
  },
  {
    category: "ansible",
    slug: "inventory-dan-ad-hoc-command",
    order: 1,
    title: "Inventory & Ad-Hoc Command",
    content: `Ansible sekarang sudah terinstall dan bisa connect ke \`localhost\` (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** kalau server yang dikelola ada belasan atau ratusan, menulis alamat IP/hostname-nya satu-satu di command itu tidak praktis — dan gimana caranya mengelompokkan server berdasarkan perannya (web server vs database server) supaya bisa ditarget terpisah?

**Inventory** adalah daftar server yang dikelola Ansible, dikelompokkan jadi *groups*. Bentuk paling sederhana adalah file teks format INI:

\`\`\`ini
# inventory.ini
[webservers]
web1.contoh.com
web2.contoh.com ansible_host=192.168.1.20

[dbservers]
db1.contoh.com

# Grup bisa berisi grup lain
[semua_server:children]
webservers
dbservers
\`\`\`

\`\`\`mermaid
flowchart TD
  Inv["inventory.ini"] --> WS["Group: webservers<br/>(web1, web2)"]
  Inv --> DB["Group: dbservers<br/>(db1)"]
  WS --> Cmd["ansible webservers -m ..."]
  DB --> Cmd2["ansible dbservers -m ..."]
\`\`\`

### Ad-Hoc Command
Command satu-baris untuk menjalankan satu task cepat ke sekelompok server, tanpa perlu menulis playbook dulu — cocok untuk pengecekan cepat, bukan otomasi berulang (untuk itu, lihat catatan berikutnya soal playbook):

\`\`\`bash
# Ping semua server di grup webservers
ansible webservers -i inventory.ini -m ping

# Install nginx di semua webservers (--become = jalankan sebagai sudo)
ansible webservers -i inventory.ini -m apt -a "name=nginx state=present" --become

# Jalankan command shell mentah di semua server
ansible semua_server -i inventory.ini -m shell -a "df -h"

# Lihat daftar modul yang tersedia
ansible-doc -l
\`\`\`

| Modul | Fungsi |
| --- | --- |
| \`ping\` | Tes koneksi & Python di target |
| \`command\` / \`shell\` | Jalankan command mentah (\`shell\` mendukung pipe \`\|\`/redirect, \`command\` tidak — lebih aman) |
| \`apt\` / \`yum\` | Install/hapus package (tergantung distro Linux) |
| \`copy\` | Salin file dari control node ke managed node |
| \`service\` | Start/stop/restart service |

Poin penting:

- \`-i inventory.ini\` menunjuk file inventory yang dipakai — bisa juga di-skip kalau sudah dikonfigurasi sebagai default di \`ansible.cfg\`.
- Ad-hoc command bagus untuk tugas sekali-jalan/pengecekan cepat, tapi tidak tersimpan sebagai kode yang bisa di-review atau dijalankan ulang secara konsisten — untuk itu perlu playbook.
- \`--become\` diperlukan kalau task butuh privilege root (setara \`sudo\`) di managed node.`,
    sources: [
      { url: "https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html", label: "Ansible Docs — How to Build Your Inventory" },
    ],
    practice: `Buat file \`inventory.ini\` dengan satu grup berisi \`localhost ansible_connection=local\` (supaya tidak perlu SSH ke server lain dulu). Jalankan \`ansible <nama_grup> -i inventory.ini -m ping\` — harus berhasil. Coba modul lain: \`ansible <nama_grup> -i inventory.ini -m shell -a "uname -a"\` untuk lihat info sistem. Kalau kamu punya server lain, tambahkan sebagai grup kedua dan coba target masing-masing grup secara terpisah.`,
  },
  {
    category: "ansible",
    slug: "playbook-dasar",
    order: 2,
    title: "Playbook Dasar",
    content: `Ad-hoc command dari catatan sebelumnya bagus untuk tugas sekali-jalan, tapi tidak tersimpan sebagai kode. **Masalah yang diselesaikan sekarang:** bagaimana menyimpan serangkaian langkah konfigurasi (install package, copy config, restart service) supaya bisa di-*review*, disimpan di Git, dan dijalankan ulang secara konsisten kapan saja — persis seperti *Infrastructure as Code*?

**Playbook** adalah file YAML berisi daftar *task* yang dijalankan berurutan ke host/grup target.

\`\`\`mermaid
flowchart TD
  PB["Playbook (site.yml)"] --> H["hosts: webservers"]
  H --> T1["Task 1: Install nginx"]
  T1 --> T2["Task 2: Copy file konfigurasi"]
  T2 --> T3["Task 3: Pastikan service running"]
\`\`\`

\`\`\`yaml
# site.yml
---
- name: Setup web server dasar
  hosts: webservers
  become: true

  tasks:
    - name: Install nginx
      apt:
        name: nginx
        state: present
        update_cache: true

    - name: Pastikan nginx running dan enabled saat boot
      service:
        name: nginx
        state: started
        enabled: true
\`\`\`

\`\`\`bash
# Menjalankan playbook
ansible-playbook -i inventory.ini site.yml
\`\`\`

### Idempotency: Jalankan Dua Kali
Ini yang membedakan playbook dari sekadar script shell — jalankan \`ansible-playbook\` yang sama dua kali:

- **Run pertama**: task menunjukkan status \`changed\` (nginx baru diinstall, service baru distart).
- **Run kedua**: task menunjukkan status \`ok\` (bukan \`changed\`) — karena nginx sudah ter-install dan sudah running, Ansible tidak melakukan apa-apa lagi. Tidak ada efek samping dari menjalankannya berulang.

Poin penting:

- \`hosts:\` menentukan grup/host mana dari inventory yang jadi target playbook ini.
- \`become: true\` setara \`--become\` di ad-hoc command — jalankan task sebagai root/sudo.
- Setiap task idealnya punya \`name:\` deskriptif — ini yang muncul di output saat playbook dijalankan, memudahkan membaca log.
- \`state: present\`/\`started\` mendeklarasikan *state* yang diinginkan, bukan perintah imperatif — inilah yang membuat Ansible idempotent.`,
    sources: [
      { url: "https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_intro.html", label: "Ansible Docs — Playbooks Intro" },
    ],
    practice: `Tulis \`site.yml\` seperti contoh di atas (ganti \`nginx\` dengan package lain kalau perlu, mis. \`apache2\`). Jalankan \`ansible-playbook -i inventory.ini site.yml\` — perhatikan tiap task berstatus \`changed\` di run pertama. Jalankan PERSIS command yang sama sekali lagi tanpa mengubah apa pun — buktikan semua task sekarang berstatus \`ok\`, bukan \`changed\`. Ini membuktikan sifat idempotent Ansible: menjalankan konfigurasi yang sama berkali-kali aman, tidak menduplikasi efek.`,
  },
  {
    category: "ansible",
    slug: "variables-dan-jinja2-templating",
    order: 3,
    title: "Variables & Jinja2 Templating",
    content: `Playbook dari catatan sebelumnya sudah menginstall & menjalankan nginx, tapi semua nilainya hardcoded langsung di YAML. **Masalah yang diselesaikan sekarang:** bagaimana kalau port atau nama domain yang dipakai beda antara environment *staging* dan *production*? Menulis playbook terpisah untuk tiap environment itu duplikatif dan gampang tidak sinkron kalau salah satu diubah tapi yang lain lupa.

**Variables** menyimpan nilai yang bisa berbeda per host/environment, dirujuk lewat sintaks **Jinja2** (\`{{ nama_variabel }}\`) di playbook maupun di file template.

\`\`\`mermaid
flowchart LR
  Var["Variable<br/>server_port: 8080"] --> Tmpl["Template .j2<br/>listen {{ server_port }};"]
  Tmpl -->|"module: template"| File["File hasil di managed node<br/>listen 8080;"]
\`\`\`

### Mendefinisikan Variables
\`\`\`yaml
# site.yml
---
- name: Setup web server dengan port kustom
  hosts: webservers
  become: true
  vars:
    server_port: 8080
    server_name: "contoh.local"

  tasks:
    - name: Deploy konfigurasi nginx dari template
      template:
        src: templates/nginx.conf.j2
        dest: /etc/nginx/sites-available/default
      notify: Restart nginx

  handlers:
    - name: Restart nginx
      service:
        name: nginx
        state: restarted
\`\`\`

### Template Jinja2
\`\`\`text
# templates/nginx.conf.j2
server {
    listen {{ server_port }};
    server_name {{ server_name }};

    location / {
        root /var/www/html;
    }
}
\`\`\`

Modul \`template\` memproses file \`.j2\`, mengganti \`{{ server_port }}\` dan \`{{ server_name }}\` dengan nilai variabel-nya, lalu menyalin HASIL-nya (bukan file \`.j2\` mentah) ke managed node.

Poin penting:

- Variable bisa didefinisikan di banyak tempat (\`vars:\` di playbook, file terpisah di \`group_vars/\`/\`host_vars/\`, atau lewat \`-e\` saat menjalankan \`ansible-playbook\`) — nilai dari sumber yang lebih spesifik (host) menang atas yang lebih umum (group).
- Modul \`template\` berbeda dari \`copy\`: \`template\` memproses Jinja2 dulu sebelum menyalin, \`copy\` menyalin file apa adanya tanpa substitusi variabel.
- Handler (\`notify\`/\`handlers:\`) cuma jalan kalau task yang memanggilnya berstatus \`changed\` — di sini, nginx cuma di-restart kalau config filenya BENAR-BENAR berubah, bukan di setiap run.`,
    sources: [
      { url: "https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_templating.html", label: "Ansible Docs — Templating (Jinja2)" },
    ],
    practice: `Ubah \`site.yml\` dari catatan sebelumnya supaya memakai \`vars\` dan \`template\` seperti contoh di atas. Buat file \`templates/nginx.conf.j2\` dengan variabel \`{{ server_port }}\`. Jalankan playbook-nya, lalu cek isi file hasil di managed node (\`/etc/nginx/sites-available/default\`) — pastikan \`{{ server_port }}\` sudah tergantikan jadi angka aslinya, bukan teks mentah. Ubah nilai \`server_port\` di \`vars\`, jalankan ulang playbook-nya, dan buktikan HANYA task \`template\` yang \`changed\` sekaligus men-trigger handler restart nginx — task lain tetap \`ok\`.`,
  },
  {
    category: "ansible",
    slug: "roles-dasar",
    order: 4,
    title: "Roles Dasar",
    content: `Playbook dari catatan-catatan sebelumnya masih satu file — untuk satu service sederhana itu masih rapi. **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** begitu kamu mengelola banyak service (nginx, database, aplikasi sendiri) dalam satu proyek infrastruktur, satu file playbook raksasa berisi semua task/vars/template jadi susah dibaca dan tidak bisa dipakai ulang di proyek lain.

**Role** adalah cara Ansible mengorganisir playbook jadi unit yang modular dan reusable, lewat struktur folder standar yang otomatis dikenali Ansible.

\`\`\`mermaid
flowchart TD
  Role["roles/nginx/"] --> Tasks["tasks/main.yml<br/>(daftar task)"]
  Role --> Templates["templates/<br/>(file .j2)"]
  Role --> Handlers["handlers/main.yml<br/>(mis. restart service)"]
  Role --> Defaults["defaults/main.yml<br/>(nilai default variable)"]
  Role --> Vars["vars/main.yml<br/>(variable tetap)"]
\`\`\`

### Membuat Struktur Role
\`\`\`bash
ansible-galaxy init roles/nginx
\`\`\`

Perintah di atas otomatis membuat folder \`roles/nginx/\` berisi sub-folder standar (\`tasks/\`, \`templates/\`, \`handlers/\`, \`defaults/\`, \`vars/\`, dst) masing-masing dengan \`main.yml\` kosong siap diisi.

### Memindahkan Isi Playbook ke Role
\`\`\`yaml
# roles/nginx/tasks/main.yml — isi dipindah dari tasks: di site.yml sebelumnya
---
- name: Deploy konfigurasi nginx dari template
  template:
    src: nginx.conf.j2
    dest: /etc/nginx/sites-available/default
  notify: Restart nginx
\`\`\`

\`\`\`yaml
# roles/nginx/handlers/main.yml
---
- name: Restart nginx
  service:
    name: nginx
    state: restarted
\`\`\`

\`\`\`yaml
# roles/nginx/defaults/main.yml — nilai default, gampang di-override
---
server_port: 8080
server_name: "contoh.local"
\`\`\`

Playbook utama sekarang jadi jauh lebih ringkas — cuma memanggil role-nya:

\`\`\`yaml
# site.yml
---
- name: Setup semua server
  hosts: webservers
  become: true
  roles:
    - nginx
\`\`\`

Poin penting:

- File \`.j2\` di dalam role TIDAK perlu path lengkap \`templates/nginx.conf.j2\` lagi saat dirujuk dari task di dalam role itu sendiri — Ansible otomatis mencari di folder \`templates/\` milik role tersebut.
- Satu playbook (\`roles:\`) bisa memanggil banyak role sekaligus (misalnya \`nginx\`, \`postgresql\`, \`app-sendiri\`) — tiap role independen dan bisa dipakai ulang di proyek lain.
- \`defaults/main.yml\` beda prioritas dari \`vars/main.yml\`: nilai di \`defaults\` paling gampang di-override dari luar role, sedangkan \`vars\` di dalam role punya prioritas lebih tinggi.`,
    sources: [
      { url: "https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_reuse_roles.html", label: "Ansible Docs — Roles" },
    ],
    practice: `Jalankan \`ansible-galaxy init roles/nginx\` untuk membuat struktur role. Pindahkan task, handler, dan variable dari \`site.yml\` (catatan sebelumnya) ke file-file di dalam \`roles/nginx/\` sesuai contoh di atas. Sederhanakan \`site.yml\` supaya cuma memanggil \`roles: - nginx\`. Jalankan ulang \`ansible-playbook -i inventory.ini site.yml\` — hasil akhirnya harus identik dengan sebelum di-refactor jadi role. Ini menutup roadmap Ansible: dari instalasi dasar sampai automation yang terorganisir dan bisa dipakai ulang.`,
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
  {
    category: "flutter",
    slug: "pengenalan-flutter-dan-instalasi",
    order: 0,
    title: "Pengenalan Flutter & Instalasi",
    content: `**Masalah yang diselesaikan:** membangun aplikasi mobile yang jalan di Android DAN iOS secara tradisional berarti menulis DUA codebase terpisah dengan bahasa berbeda (Kotlin/Java untuk Android, Swift untuk iOS) — fitur yang sama harus diimplementasikan dua kali, dan bug yang diperbaiki di satu platform harus diperbaiki lagi manual di platform lainnya.

**Flutter** adalah UI toolkit open-source dari Google — satu codebase Dart dikompilasi langsung jadi kode NATIVE (bukan berjalan di dalam WebView) untuk Android, iOS, web, dan desktop sekaligus.

\`\`\`mermaid
flowchart TD
  subgraph Tradisional["Native Terpisah"]
    K["Kotlin/Java"] --> APK1["Android App"]
    S["Swift"] --> IPA1["iOS App"]
  end
  subgraph Flutter["Dengan Flutter"]
    D["Satu Codebase Dart"] --> APK2["Android App"]
    D --> IPA2["iOS App"]
  end
\`\`\`

### Instalasi
Cara paling mudah: install lewat editor (VS Code dengan ekstensi Flutter, atau Android Studio) yang otomatis mengurus SDK Flutter — atau instalasi manual lewat \`flutter doctor\`:

\`\`\`bash
# Setelah Flutter SDK ter-extract/terinstall, cek kelengkapan environment
flutter doctor
# Menampilkan checklist: Flutter SDK, Android toolchain, Android Studio,
# emulator/device terhubung — tandai bagian mana yang masih perlu dilengkapi
\`\`\`

### Membuat & Menjalankan App Pertama
\`\`\`bash
flutter create nama_app
cd nama_app
flutter run
\`\`\`

\`flutter create\` menghasilkan project starter berisi *counter app* sederhana (tombol \`+\` menambah angka) — bukti bahwa environment kamu sudah siap sebelum masuk ke konsep widget di catatan berikutnya.

Poin penting:

- \`flutter doctor\` WAJIB dijalankan sebelum mulai — ini yang paling sering menyelesaikan masalah "kenapa app tidak bisa di-build" di awal setup.
- Perlu minimal SATU target untuk menjalankan app: emulator Android (dibuat lewat Android Studio → Device Manager) atau device fisik dengan USB debugging aktif.
- *Hot reload* (tekan \`r\` di terminal saat \`flutter run\` jalan, atau tombol petir di editor) menerapkan perubahan kode ke app yang sedang jalan dalam hitungan detik, TANPA restart aplikasi dari awal — ini yang bikin iterasi UI di Flutter terasa sangat cepat.`,
    sources: [
      { url: "https://docs.flutter.dev/get-started/install", label: "Flutter Docs — Install" },
      { url: "https://docs.flutter.dev/platform-integration/android/setup", label: "Flutter Docs — Android Setup" },
    ],
    prerequisites: [
      { label: "Android Studio terinstall (untuk Android SDK & emulator)", url: "https://developer.android.com/studio" },
      { label: "Editor kode — VS Code dengan ekstensi Flutter direkomendasikan", url: "https://code.visualstudio.com/" },
    ],
    practice: `Install Flutter SDK sesuai OS kamu, jalankan \`flutter doctor\` dan selesaikan semua item yang masih bertanda silang/peringatan. Buat emulator Android lewat Android Studio (Device Manager → Create Device). Jalankan \`flutter create app_pertama\`, masuk ke foldernya, jalankan \`flutter run\` — pastikan counter app default muncul di emulator. Ubah teks \`'You have pushed the button this many times:'\` di \`lib/main.dart\` jadi kalimat lain, simpan file, dan buktikan hot reload menerapkan perubahan itu TANPA restart app.`,
  },
  {
    category: "flutter",
    slug: "widget-dasar-stateless-stateful",
    order: 1,
    title: "Widget Dasar: StatelessWidget vs StatefulWidget",
    content: `Sekarang environment Flutter kamu sudah siap dan app pertama sudah jalan (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** di Flutter, HAMPIR SEMUA hal — teks, tombol, layout, bahkan padding — adalah *widget*. Ini beda dari native Android yang memisahkan layout XML (deklaratif) dari logic Kotlin/Java (imperatif); di Flutter keduanya digabung jadi satu lewat kode Dart yang deklaratif. Pertanyaan pertama yang harus dijawab: widget mana yang perlu MENGINGAT sesuatu yang bisa berubah (butuh *state*), dan mana yang tidak?

\`\`\`mermaid
flowchart TD
  subgraph SL["StatelessWidget"]
    SL1["build() cuma bergantung<br/>pada parameter constructor"] --> SL2["Immutable — tidak bisa<br/>berubah sendiri setelah dibuat"]
  end
  subgraph SF["StatefulWidget"]
    SF1["Punya objek State terpisah"] --> SF2["setState() memicu<br/>build() ulang"]
    SF2 --> SF3["Tampilan ter-update"]
  end
\`\`\`

### StatelessWidget — Tidak Pernah Berubah Sendiri
\`\`\`dart
class SapaanWidget extends StatelessWidget {
  final String nama;
  const SapaanWidget({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Text('Halo, $nama!');
  }
}
\`\`\`

### StatefulWidget — Punya State yang Bisa Berubah
\`\`\`dart
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _jumlah = 0; // state — nilai yang bisa berubah antar build()

  void _tambah() {
    setState(() {
      _jumlah++; // WAJIB di dalam setState() supaya UI ikut ter-update
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Jumlah: $_jumlah'),
        ElevatedButton(onPressed: _tambah, child: const Text('Tambah')),
      ],
    );
  }
}
\`\`\`

| | StatelessWidget | StatefulWidget |
| --- | --- | --- |
| Bisa berubah tanpa dibuat ulang dari parent? | Tidak | Ya, lewat \`setState()\` |
| Contoh pemakaian | Teks statis, icon, layout tetap | Counter, form input, toggle switch |
| Objek \`State\` terpisah? | Tidak perlu | Ya, wajib override \`createState()\` |

Poin penting:

- Mengubah variabel state TANPA memanggil \`setState()\` (mis. \`_jumlah++;\` saja tanpa dibungkus) TIDAK akan mengubah tampilan — variabelnya berubah di memori, tapi Flutter tidak tahu harus \`build()\` ulang.
- \`const\` di depan constructor widget (seperti \`const SapaanWidget(...)\`) memberi tahu Flutter widget itu tidak akan berubah — optimisasi performa supaya tidak di-build ulang tanpa perlu.
- Keputusan Stateless vs Stateful ditentukan oleh KONTEN widget-nya, bukan aturan kaku — kalau ragu, mulai dari StatelessWidget, baru naikkan jadi StatefulWidget begitu memang butuh menyimpan state yang berubah.`,
    sources: [
      { url: "https://docs.flutter.dev/ui/widgets-intro", label: "Flutter Docs — Introduction to Widgets" },
    ],
    practice: `Ganti isi \`lib/main.dart\` dengan \`CounterWidget\` di atas (bungkus dalam \`MaterialApp\` + \`Scaffold\`). Jalankan, tekan tombol "Tambah" beberapa kali — pastikan angkanya bertambah di layar. SENGAJA hapus \`setState()\`-nya (langsung \`_jumlah++;\` tanpa dibungkus), jalankan lagi — buktikan angkanya BERTAMBAH di data (bisa dicek lewat \`print()\`) tapi tampilan di layar TIDAK berubah, membuktikan pentingnya \`setState()\`.`,
  },
  {
    category: "flutter",
    slug: "layout-dasar-row-column-container",
    order: 2,
    title: "Layout Dasar: Row, Column, Container",
    content: `Sekarang kamu paham widget Stateless dan Stateful (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** satu widget saja tidak cukup untuk membangun tampilan nyata — kamu perlu cara MENYUSUN banyak widget jadi satu layout utuh: horizontal, vertikal, dengan jarak/padding yang rapi.

Flutter menyusun UI dengan cara MENUMPUK widget layout di dalam widget layout lain (*composition*) — tidak ada bahasa markup terpisah seperti XML.

\`\`\`mermaid
flowchart TD
  Container["Container (padding, warna background)"] --> Column["Column (susun vertikal)"]
  Column --> Row["Row (susun horizontal)"]
  Row --> Icon["Icon"]
  Row --> Text1["Text (nama)"]
  Column --> Text2["Text (deskripsi)"]
\`\`\`

\`\`\`dart
Container(
  padding: const EdgeInsets.all(16),
  color: Colors.blue.shade50,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          const Icon(Icons.person),
          const SizedBox(width: 8), // jarak antar widget
          const Text('Budi Santoso', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
      const Text('Flutter Developer'),
    ],
  ),
)
\`\`\`

| Widget | Fungsi |
| --- | --- |
| \`Row\` | Menyusun children secara HORIZONTAL |
| \`Column\` | Menyusun children secara VERTIKAL |
| \`Container\` | Membungkus satu child dengan padding, margin, warna, atau border |
| \`Center\` | Memusatkan satu child secara horizontal & vertikal |
| \`SizedBox\` | Kotak kosong berukuran tetap — sering dipakai untuk memberi JARAK antar widget |
| \`Expanded\` | Membuat child mengisi ruang tersisa di dalam \`Row\`/\`Column\` |

Poin penting:

- \`Row\` dan \`Column\` masing-masing WAJIB diisi parameter \`children: [...]\` berisi list widget — kalau isinya melebihi ruang tersedia (misal terlalu banyak widget di \`Row\` sempit) akan muncul error "overflow" berwarna kuning-hitam khas Flutter.
- \`mainAxisAlignment\` mengatur perataan SEPANJANG arah utama (horizontal untuk \`Row\`, vertikal untuk \`Column\`), \`crossAxisAlignment\` mengatur perataan TEGAK LURUS arah utama.
- \`Container\` cuma boleh punya SATU child langsung — kalau butuh lebih dari satu widget di dalamnya, bungkus dulu dengan \`Row\`/\`Column\` seperti contoh di atas.`,
    sources: [
      { url: "https://docs.flutter.dev/ui/layout", label: "Flutter Docs — Layout" },
    ],
    practice: `Buat widget "kartu profil" persis seperti contoh di atas (icon + nama dalam \`Row\`, deskripsi di bawahnya dalam \`Column\`, dibungkus \`Container\` dengan padding dan warna latar). Tambahkan \`Expanded\` di dalam \`Row\` supaya teks nama mengambil sisa ruang yang ada, cek apa bedanya visualnya dibanding tanpa \`Expanded\`. Coba ganti \`crossAxisAlignment\` dari \`start\` ke \`center\`, amati bagaimana posisi konten berubah.`,
  },
  {
    category: "flutter",
    slug: "navigasi-dasar",
    order: 3,
    title: "Navigasi Antar Halaman",
    content: `Sekarang kamu bisa menyusun layout satu halaman penuh (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** aplikasi nyata hampir selalu punya LEBIH dari satu halaman — bagaimana caranya berpindah ke halaman lain, dan (kalau perlu) mengirim data ke halaman itu atau menerima data balik darinya?

**Navigator** di Flutter mengelola halaman sebagai STACK (tumpukan) — \`push\` menambah halaman baru di atas, \`pop\` membuang halaman teratas dan kembali ke sebelumnya.

\`\`\`mermaid
flowchart LR
  A["HalamanUtama"] -->|"Navigator.push()"| B["HalamanDetail"]
  B -->|"Navigator.pop()"| A
\`\`\`

### Berpindah Halaman & Mengirim Data
\`\`\`dart
// Dari HalamanUtama, kirim data "nama" ke HalamanDetail
Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => HalamanDetail(nama: 'Budi'),
  ),
);

class HalamanDetail extends StatelessWidget {
  final String nama;
  const HalamanDetail({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail')),
      body: Center(child: Text('Halo, $nama')),
    );
  }
}
\`\`\`

### Kembali Sambil Membawa Data
\`\`\`dart
// Di HalamanDetail — kembali sambil kirim hasil
ElevatedButton(
  onPressed: () => Navigator.of(context).pop('Data dari detail'),
  child: const Text('Kembali'),
)

// Di HalamanUtama — menerima hasil dari push (harus pakai await)
final hasil = await Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => const HalamanDetail(nama: 'Budi')),
);
print(hasil); // "Data dari detail"
\`\`\`

Poin penting:

- \`Navigator.push()\` mengembalikan sebuah \`Future\` — pakai \`await\` kalau butuh menunggu dan menangkap data yang dikirim balik lewat \`Navigator.pop(data)\`.
- Tombol "back" bawaan Android/iOS otomatis memanggil \`pop()\` kalau ada \`AppBar\` dengan tombol back — kamu tidak perlu menangani ini manual di kasus umum.
- Untuk aplikasi dengan navigasi kompleks (deep linking, banyak tab), package seperti \`go_router\` lebih direkomendasikan daripada \`Navigator\` manual — tapi memahami \`push\`/\`pop\` tetap fondasi yang perlu dikuasai lebih dulu.`,
    sources: [
      { url: "https://docs.flutter.dev/ui/navigation", label: "Flutter Docs — Navigation and Routing" },
    ],
    practice: `Buat dua halaman: \`HalamanUtama\` dengan tombol yang meng-\`Navigator.push()\` ke \`HalamanDetail\`, kirim sebuah String lewat constructor. Di \`HalamanDetail\`, tampilkan data itu, dan buat tombol yang \`Navigator.pop()\` sambil membawa data BARU (String lain). Di \`HalamanUtama\`, tangkap data balik itu pakai \`await\` pada \`Navigator.push()\`, tampilkan lewat \`SnackBar\` atau \`print()\` begitu pengguna kembali dari \`HalamanDetail\`.`,
  },
  {
    category: "flutter",
    slug: "http-request-dasar",
    order: 4,
    title: "Mengambil Data dari API (HTTP Request)",
    content: `Sekarang kamu bisa membangun UI multi-halaman (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** semua data yang dipakai sejauh ini di-hardcode langsung di kode. Aplikasi nyata butuh data dari SERVER — dan karena request jaringan itu ASINKRON (butuh waktu, bisa gagal), UI harus bisa menampilkan status loading, data, atau error dengan tepat.

### Package \`http\`
\`\`\`bash
flutter pub add http
\`\`\`

\`\`\`dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<String>> ambilDaftarPost() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/posts?_limit=5'),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as List;
    return data.map((item) => item['title'] as String).toList();
  } else {
    throw Exception('Gagal mengambil data (status: \${response.statusCode})');
  }
}
\`\`\`

### Menampilkan dengan \`FutureBuilder\`
\`\`\`mermaid
flowchart TD
  FB["FutureBuilder"] --> Loading["Belum selesai:<br/>CircularProgressIndicator"]
  FB --> Error["Gagal (hasError):<br/>Tampilkan pesan error"]
  FB --> Data["Berhasil (hasData):<br/>Tampilkan datanya"]
\`\`\`

\`\`\`dart
FutureBuilder<List<String>>(
  future: ambilDaftarPost(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const CircularProgressIndicator();
    } else if (snapshot.hasError) {
      return Text('Error: \${snapshot.error}');
    } else if (snapshot.hasData) {
      return Column(
        children: snapshot.data!.map((judul) => Text(judul)).toList(),
      );
    }
    return const Text('Tidak ada data');
  },
)
\`\`\`

Poin penting:

- \`FutureBuilder\` otomatis rebuild widget-nya sesuai state \`Future\`: \`waiting\` (masih loading), \`hasError\` (gagal), atau \`hasData\` (berhasil) — kamu tidak perlu mengelola \`setState()\` manual untuk loading spinner.
- Panggil fungsi \`Future\` (seperti \`ambilDaftarPost()\`) di \`initState()\` dan simpan hasilnya ke variabel, JANGAN dipanggil langsung di \`build()\` — kalau dipanggil di \`build()\`, request akan terkirim ULANG setiap kali widget di-*rebuild*.
- Selalu cek \`response.statusCode\` sebelum memproses \`response.body\` — status selain 200 (seperti 404 atau 500) berarti request-nya gagal meski tidak melempar exception Dart secara otomatis.`,
    sources: [
      { url: "https://docs.flutter.dev/cookbook/networking/fetch-data", label: "Flutter Cookbook — Fetch Data from the Internet" },
    ],
    practice: `Tambahkan package \`http\` (\`flutter pub add http\`). Buat fungsi \`ambilDaftarPost()\` seperti contoh di atas, tampilkan hasilnya lewat \`FutureBuilder\` di sebuah halaman baru. Pastikan tampilan menunjukkan \`CircularProgressIndicator\` sesaat sebelum data muncul. SENGAJA salahkan URL-nya (mis. ganti jadi domain yang tidak ada) untuk memicu \`hasError\`, buktikan pesan error-nya tertampil alih-alih app crash. Ini menutup roadmap Flutter: dari instalasi sampai aplikasi yang menampilkan data sungguhan dari API.`,
  },
];
