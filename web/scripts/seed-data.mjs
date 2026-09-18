// Data 11 catatan + kategori awal, dipindahkan dari blog Eleventy lama.
// Dipakai bersama oleh scripts/seed.mjs (lewat supabase-js + secret key)
// dan scripts/seed-via-sql.mjs (lewat Management API + PAT, kalau belum
// ada secret key di .env).

export const categories = [
  { name: "Git", slug: "git" },
  { name: "JavaScript", slug: "javascript" },
  {
    name: "Next.js",
    slug: "nextjs",
    description: `Sebelum ada *file-based routing* seperti di Next.js, menyusun routing di aplikasi React itu kerja manual: install library router, lalu tulis config terpisah yang memetakan tiap URL ke komponennya — dan config ini gampang jadi tidak sinkron dengan struktur folder komponen aslinya. Masalah lain: React tradisional mengirim **semua** kode JavaScript ke browser, bahkan untuk bagian yang cuma menampilkan teks statis dari database, bikin aplikasi lambat di koneksi lemah.

Roadmap ini membawamu dari nol sampai bisa membangun aplikasi Next.js App Router yang lengkap: mulai dari setup project, memahami routing dan navigasi, menyusun layout bersama antar halaman, memahami batas Server/Client Component, mengambil data dengan aman, membuat API sendiri lewat Route Handlers, mengelola environment variables, sampai melengkapi halaman dengan metadata untuk SEO. Sembilan langkah, ikuti berurutan — tiap catatan secara eksplisit dibangun di atas yang sebelumnya, jadi jangan lompat kalau belum menyelesaikan langkah sebelumnya.

**Asumsi:** roadmap ini fokus ke Next.js itu sendiri, bukan mengajari React dari nol — kamu perlu familiar dengan dasar JavaScript dan konsep component/props/hooks di React (belum ada roadmap React tersendiri di platform ini). Prasyarat tool spesifik (mis. versi Node.js) disebutkan di catatan pertama.`,
  },
  { name: "Python", slug: "python" },
  { name: "Supabase", slug: "supabase" },
  {
    name: "TypeScript",
    slug: "typescript",
    description: `JavaScript murni tidak mendeteksi kesalahan tipe data sampai program benar-benar dijalankan (runtime) — kirim string ke fungsi yang harusnya menerima angka baru ketahuan setelah aplikasi jalan, bahkan mungkin sudah di production. TypeScript menambahkan sistem tipe di atas JavaScript yang dicek saat menulis kode (compile time), sebelum bug itu sempat sampai ke user.

Roadmap ini membawamu dari tipe dasar sampai bisa membaca dan menulis konfigurasi TypeScript sendiri: mulai dari type annotation primitif, mendefinisikan bentuk object lewat interface/type alias, union & literal type untuk merepresentasikan pilihan terbatas, type narrowing untuk menangani union dengan aman, generics untuk kode yang reusable tanpa kehilangan type safety, enum sebagai alternatif union, sampai opsi \`tsconfig.json\` yang paling penting untuk dikonfigurasi. Tujuh langkah, ikuti berurutan.

**Asumsi:** TypeScript itu JavaScript plus sistem tipe, bukan bahasa baru dari nol — roadmap ini mengasumsikan kamu familiar dengan JavaScript dasar (variabel, fungsi, object, array). Prasyarat tool (Node.js, TypeScript compiler) disebutkan di catatan pertama.`,
  },
];

export const notes = [
  {
    category: "git",
    slug: "branching",
    order: 0,
    title: "Dasar Branching di Git",
    content: `Branch memungkinkan kita bekerja pada fitur/perbaikan tanpa mengganggu kode di branch utama.

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
  },
  {
    category: "javascript",
    slug: "closure",
    order: 0,
    title: "Memahami Closure",
    content: `Closure adalah fungsi yang "mengingat" variabel dari scope tempat ia dibuat, meskipun fungsi luar sudah selesai dieksekusi.

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
  },
  {
    category: "javascript",
    slug: "async-await",
    order: 1,
    title: "Async/Await di JavaScript",
    content: `\`async/await\` adalah gula sintaks di atas Promise agar kode asinkron terlihat seperti kode sinkron.

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
    content: `List comprehension adalah cara ringkas membuat list baru dari list/iterable lain.

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
  },
  {
    category: "python",
    slug: "virtual-environment",
    order: 1,
    title: "Virtual Environment (venv)",
    content: `Virtual environment digunakan agar dependency setiap proyek Python terisolasi dan tidak bentrok satu sama lain.

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
  },
  {
    category: "supabase",
    slug: "setup-client",
    order: 0,
    title: "Setup Supabase Client",
    content: `Supabase adalah backend siap pakai (database Postgres, auth, storage, dst) yang diakses lewat library \`@supabase/supabase-js\` di sisi aplikasi.

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
  },
  {
    category: "supabase",
    slug: "query-dasar",
    order: 1,
    title: "Query Data Dasar (CRUD)",
    content: `Setelah client Supabase siap, operasi dasar ke database (CRUD) dipanggil lewat method di atas nama tabel.

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
    order: 4,
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
    order: 5,
    title: "Enum Dasar",
    content: `Catatan sebelumnya (generics) dan sebelum-sebelumnya (union & literal type) sama-sama cara merepresentasikan "pilihan terbatas" dengan cara yang berbeda. **Masalah yang diselesaikan sekarang:** enum adalah alternatif lain — sekumpulan konstanta bernama yang dikelompokkan dalam satu namespace, umum dipakai di code base yang lebih bergaya OOP.

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
    order: 6,
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
];
