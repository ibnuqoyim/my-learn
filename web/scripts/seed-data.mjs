// Data 11 catatan + kategori awal, dipindahkan dari blog Eleventy lama.
// Dipakai bersama oleh scripts/seed.mjs (lewat supabase-js + secret key)
// dan scripts/seed-via-sql.mjs (lewat Management API + PAT, kalau belum
// ada secret key di .env).

export const categories = [
  { name: "Git", slug: "git" },
  { name: "JavaScript", slug: "javascript" },
  { name: "Next.js", slug: "nextjs" },
  { name: "Python", slug: "python" },
  { name: "Supabase", slug: "supabase" },
  { name: "TypeScript", slug: "typescript" },
];

export const notes = [
  {
    category: "git",
    slug: "branching",
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
    slug: "routing-dasar",
    title: "Routing Dasar dengan App Router",
    content: `Next.js (App Router) memakai file-based routing: struktur folder di dalam \`app/\` menentukan URL, dan file \`page.tsx\` di dalam folder itu yang jadi halamannya.

\`\`\`mermaid
graph TD
  A["app/"] --> B["page.tsx → \\"/\\""]
  A --> C["about/"]
  C --> D["page.tsx → \\"/about\\""]
  A --> E["blog/[slug]/"]
  E --> F["page.tsx → \\"/blog/apa-saja\\" (dynamic route)"]
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
  },
  {
    category: "nextjs",
    slug: "server-client-components",
    title: "Server Component vs Client Component",
    content: `Di App Router, semua komponen di dalam folder \`app/\` adalah **Server Component** secara default — dirender di server, tidak mengirim JavaScript komponennya ke browser. Untuk komponen yang butuh interaktivitas (state, event handler, hooks), harus ditandai sebagai **Client Component**.

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
  },
  {
    category: "python",
    slug: "list-comprehension",
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
    title: "Tipe Dasar & Type Annotation",
    content: `TypeScript menambahkan sistem tipe di atas JavaScript. Tipe bisa ditulis manual (annotation) atau otomatis ditebak oleh compiler (inference).

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
  },
  {
    category: "typescript",
    slug: "interface-dan-type-alias",
    title: "Interface & Type Alias",
    content: `\`interface\` dan \`type\` sama-sama dipakai untuk mendefinisikan bentuk (shape) sebuah object, supaya TypeScript bisa memeriksa strukturnya.

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
  },
];
