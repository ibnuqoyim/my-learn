-- Database Backup Snapshot (data only)
-- Generated: 2026-09-22T14:30:47.920Z
-- Supabase Project: sgtopeghogkwaaaygakc

BEGIN;

-- Categories (20 baris)
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('b4e47208-8775-4a24-a2f3-1655745b90f1', 'Python', 'python', 'Python dikenal sebagai bahasa yang mudah dibaca dan cepat dipelajari, dipakai luas mulai dari scripting, web backend, sampai data science. Roadmap ini membangun fondasinya secara bertahap dari nol.

Roadmap ini membawamu dari sintaks & tipe data dasar, struktur kontrol (percabangan & perulangan), struktur data (list/tuple/dict/set), menulis fungsi sendiri, list comprehension untuk kode yang lebih ringkas, menangani error runtime, membaca/menulis file, memakai module bawaan, mengisolasi dependency tiap proyek lewat virtual environment, sampai menginstal library pihak ketiga dengan pip dan mengambil data API dengan Requests. Sepuluh langkah, ikuti berurutan.

**Asumsi:** belum pernah menulis Python sama sekali juga tidak masalah — roadmap ini menjelaskan dari sintaks dasar. Familiar dengan konsep pemrograman umum (dari bahasa apa pun) akan membantu mempercepat pemahaman, tapi bukan keharusan.', '2026-09-18 06:20:59.380972+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('94331b9c-fe70-4f7c-be9b-742a1996b9e1', 'Redis', 'redis', '**Remote Dictionary Server** — in-memory data structure store berkecepatan tinggi yang dapat difungsikan sebagai database, cache layer, session store, dan message broker. Menyimpan seluruh data di RAM dengan latensi sub-milidetik (< 1 ms), menjadikannya senjata utama untuk mengatasi beban tinggi (*high traffic*) di aplikasi web modern.

Roadmap ini membawamu dari instalasi & koneksi lewat redis-cli, tipe data String dan masa kedaluwarsa otomatis (TTL), struktur data tingkat lanjut (Hash, List, Set), penerapan pola arsitektur Cache-Aside untuk meringankan beban database SQL, sampai komunikasi realtime lewat Publish/Subscribe (Pub/Sub). Lima langkah berjenjang, ikuti berurutan.

**Asumsi:** familiar dengan konsep dasar client-server dan format data key-value. Prasyarat tool (Docker atau Redis server) disebutkan di catatan pertama.', '2026-09-22 14:24:46.062157+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('3e71ad0e-b25a-4567-b43e-282574f1590a', 'Supabase', 'supabase', 'Membangun backend sendiri dari nol — server, database, sistem auth, storage — butuh waktu berminggu-minggu sebelum sempat menulis fitur aplikasi yang sebenarnya. Supabase menyediakan semua itu siap pakai di atas Postgres, diakses langsung dari client tanpa perlu backend server terpisah.

Roadmap ini membawamu dari setup client, operasi CRUD dasar, menghubungkan data lewat relasi tabel & foreign key, mengenali user lewat autentikasi, mengamankan data per user lewat Row Level Security, menyimpan file lewat Storage, sampai mendengarkan perubahan data secara live lewat Realtime. Tujuh langkah yang membangun satu sama lain — RLS memakai `auth.uid()` dari langkah autentikasi sebelumnya, dan policy Storage/Realtime memakai pola RLS yang sama, jadi urutannya penting.

**Asumsi:** familiar dengan JavaScript/TypeScript dasar dan konsep `async`/`await`. Butuh akun Supabase (gratis) — disebutkan di catatan pertama.', '2026-09-18 06:20:59.380972+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('df6694f2-8cc1-47da-b697-e5c0f0f2cf89', 'Git', 'git', 'Sebelum version control, melacak perubahan kode berarti menyimpan salinan file manual (`script_v2_final.js`, `script_v2_REVISI.js`) — tidak ada riwayat yang jelas, dan kolaborasi tim jadi mimpi buruk (siapa mengubah apa, kapan). Git menyelesaikan ini dengan melacak setiap perubahan sebagai snapshot bernama (commit) yang bisa dibandingkan, digabungkan, dan dibagikan.

Roadmap ini membawamu dari cara menyimpan perubahan (staging & commit), mengabaikan file yang tidak boleh ter-commit lewat .gitignore, berkolaborasi lewat repository remote (GitHub), bercabang untuk mengerjakan fitur terisolasi (branching), menyimpan perubahan sementara lewat stash, menyelesaikan merge conflict saat menggabungkan kode, sampai teknik membatalkan perubahan yang salah (restore, reset, revert). Tujuh langkah, ikuti berurutan.

**Asumsi:** familiar dengan command line/terminal dasar. Prasyarat tool (Git, akun GitHub) disebutkan di catatan yang membutuhkannya.', '2026-09-18 06:20:59.380972+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('4e1efab5-9672-4b24-bdd9-5951a9a18a9d', 'Ansible', 'ansible', 'Mengelola belasan atau ratusan server secara manual berarti SSH satu per satu, menjalankan command yang sama berulang-ulang — lambat, gampang lupa satu langkah di salah satu server, dan hasilnya gampang beda-beda antar server (*configuration drift*) meski niatnya sama persis. Ansible menyelesaikan ini dengan otomasi *agentless*: definisikan konfigurasi yang diinginkan sekali dalam file YAML, jalankan ke banyak server sekaligus lewat SSH.

Roadmap ini membawamu dari instalasi & cara kerja dasar, mendata server yang dikelola lewat inventory, menjalankan playbook untuk otomasi berulang, membuat konfigurasi yang fleksibel lewat variables & templating, sampai mengorganisir automation jadi modular lewat roles. Lima langkah, ikuti berurutan.

**Asumsi:** familiar dengan command line/terminal, SSH ke server Linux, dan sintaks dasar YAML. Butuh minimal satu mesin Linux untuk dipraktikkan (VM lokal atau VPS) — disebutkan di catatan pertama.', '2026-09-19 10:15:28.833636+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('620410c3-ebfb-4e0b-a8a6-578aaa70d726', 'Java (Spring Boot)', 'java-spring-boot', 'Spring (framework Java untuk aplikasi enterprise) secara tradisional butuh konfigurasi XML manual dan setup server terpisah (Tomcat, web.xml) sebelum sempat menulis baris kode business logic pertama. Spring Boot menyelesaikan ini dengan auto-configuration, server tertanam (*embedded*), dan bundel dependency siap pakai (*starter*) — aplikasi web bisa jalan dari satu perintah.

Roadmap ini membawamu dari instalasi & menjalankan aplikasi pertama, Dependency Injection yang jadi tulang punggung Spring, membangun REST API, menyimpan data ke database lewat Spring Data JPA, validasi request & penanganan error terpusat, sampai arsitektur DTO yang aman dan konfigurasi CORS agar API bisa diakses oleh aplikasi frontend. Enam langkah, ikuti berurutan.

**Asumsi:** familiar dengan dasar bahasa Java (class, interface, method) dan konsep OOP — roadmap ini fokus ke Spring Boot itu sendiri, bukan mengajari sintaks Java dari nol. Prasyarat tool (JDK, Maven) disebutkan di catatan pertama.', '2026-09-19 12:26:42.215569+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('9edf40dd-0158-4e70-b0e6-1e64c4282cb0', 'Quarkus', 'quarkus', 'Framework Java tradisional (seperti Spring konvensional atau Java EE lama) dirancang di era monolithic server: memakan waktu startup beberapa detik hingga puluhan detik dan menghabiskan memori RAM ratusan megabyte — sangat boros ketika dijalankan di arsitektur cloud modern, Kubernetes, atau serverless containers. **Quarkus** adalah framework revolusioner berslogan **"Supersonic Subatomic Java"**: memindahkan proses pemindaian anotasi dan konfigurasi ke tahap *build-time*, menghasilkan startup hitungan milidetik dan konsumsi memori super hemat.

Roadmap ini membawamu dari nol membangun aplikasi cloud-native: instalasi Quarkus CLI dan sensasi instan Live Coding (`quarkus dev`), membangun REST API reaktif dengan RESTEasy Reactive, Dependency Injection tanpa reflection menggunakan ArC (Jakarta CDI), akses database sangat mudah dengan Hibernate ORM with Panache, sampai kompilasi native binary menggunakan GraalVM. Lima langkah, ikuti berurutan.

**Asumsi:** familiar dengan dasar bahasa Java (OOP) dan konsep dasar REST API. Prasyarat tool (JDK 17+, GraalVM opsional) disebutkan di catatan pertama.', '2026-09-22 14:14:28.877119+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('5f927683-b6aa-425e-9b06-82fe47703e2f', '.NET', 'dotnet', 'Sebelum .NET Core (2016 ke atas), .NET Framework hanya berjalan di Windows — sulit dipakai untuk deployment modern yang mengandalkan server Linux dan container. .NET sekarang adalah platform open-source dan cross-platform dari Microsoft: satu SDK yang jalan di Windows, Linux, maupun macOS, untuk membangun aplikasi web, cloud, hingga desktop.

Roadmap ini membawamu dari pengenalan ekosistem & CLI `dotnet`, dasar bahasa C# (tipe data, class, record), pola Dependency Injection yang jadi tulang punggung aplikasi .NET modern, membangun REST API sungguhan lewat ASP.NET Core Minimal API, menyimpan datanya ke database lewat Entity Framework Core, sampai proteksi data dengan DTO dan konfigurasi CORS untuk integrasi frontend. Tujuh langkah, ikuti berurutan.

**Asumsi:** roadmap ini menjelaskan dari dasar, tapi familiar dengan konsep OOP (object, class) dari bahasa lain akan membantu mempercepat pemahaman. Prasyarat tool (.NET SDK) disebutkan di catatan pertama.', '2026-09-18 09:10:05.725507+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('9deddb76-862f-4fce-83e4-57a0202df83b', 'JavaScript', 'javascript', 'JavaScript adalah bahasa pemrograman inti di balik hampir semua interaktivitas web — dari validasi form sampai aplikasi kompleks seperti Gmail. Roadmap ini membangun fondasinya secara bertahap: banyak konsep JS lanjutan (closure, Promise) sering disalahpahami pemula justru karena dasar-dasarnya (scope, fungsi) belum kokoh.

Roadmap ini membawamu dari variabel & scope, mendefinisikan fungsi (termasuk arrow function), membongkar object/array lewat destructuring, mentransformasi array secara deklaratif, manipulasi DOM & event listener untuk mengubah tampilan web, closure untuk data privat, menangani error runtime, Promise untuk kode asinkron, async/await sebagai gula sintaksnya, memanggil REST API dengan Fetch API, sampai memecah kode jadi module terorganisir. Sebelas langkah, ikuti berurutan — tiap catatan dibangun di atas yang sebelumnya.

**Asumsi:** belum pernah menulis JavaScript sama sekali juga tidak masalah — roadmap ini menjelaskan dari variabel. Familiar dengan konsep pemrograman umum (dari bahasa apa pun) akan membantu mempercepat pemahaman, tapi bukan keharusan.', '2026-09-18 06:20:59.380972+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('a6e9d866-c1b5-4e38-a511-d27a0fed6caa', 'MariaDB', 'mariadb', 'Database relasional open-source berkinerja tinggi, dibuat oleh pengembang asli MySQL setelah akuisisi oleh Oracle untuk memastikan kebebasan open-source sejati. Kompatibel penuh dengan ekosistem MySQL, banyak digunakan di arsitektur LAMP/LEMP stack, hosting web, dan enterprise berkat performa query cepat dan mesin penyimpanan (*storage engine*) yang fleksibel.

Roadmap ini membawamu dari pengenalan server MariaDB dan CLI, operasi dasar SQL dan manajemen tabel, memahami arsitektur modular storage engine (InnoDB vs Aria), manajemen user dan hak akses aman (*privileges*), sampai prosedur backup dan restore berkala menggunakan mariadb-dump. Lima langkah, ikuti berurutan.

**Asumsi:** familiar dengan dasar command line/terminal. Prasyarat tool (Docker atau MariaDB server) disebutkan di catatan pertama.', '2026-09-22 14:24:45.96517+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('ea6a08d0-0af9-435b-88f7-ff6e196be052', 'TypeScript', 'typescript', 'JavaScript murni tidak mendeteksi kesalahan tipe data sampai program benar-benar dijalankan (runtime) — kirim string ke fungsi yang harusnya menerima angka baru ketahuan setelah aplikasi jalan, bahkan mungkin sudah di production. TypeScript menambahkan sistem tipe di atas JavaScript yang dicek saat menulis kode (compile time), sebelum bug itu sempat sampai ke user.

Roadmap ini membawamu dari tipe dasar sampai bisa membaca dan menulis konfigurasi TypeScript sendiri: mulai dari type annotation primitif, mendefinisikan bentuk object lewat interface/type alias, union & literal type untuk merepresentasikan pilihan terbatas, type narrowing untuk menangani union dengan aman, type assertion untuk kasus kamu lebih tahu dari compiler, generics untuk kode yang reusable tanpa kehilangan type safety, utility types untuk memanipulasi tipe yang sudah ada, enum sebagai alternatif union, sampai opsi `tsconfig.json` yang paling penting untuk dikonfigurasi. Sembilan langkah, ikuti berurutan.

**Asumsi:** TypeScript itu JavaScript plus sistem tipe, bukan bahasa baru dari nol — roadmap ini mengasumsikan kamu familiar dengan JavaScript dasar (variabel, fungsi, object, array). Prasyarat tool (Node.js, TypeScript compiler) disebutkan di catatan pertama.', '2026-09-18 06:20:59.380972+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('3a7e2da4-7876-4fe7-9cab-4d1e3dd1c902', 'Java Lanjutan (Advance)', 'java-advance', 'Setelah memahami sintaks dasar dan konsep OOP di roadmap Java Dasar, menulis kode Java modern skala industri menuntut pemahaman teknik lanjutan: bagaimana mengelola koleksi data secara dinamis, menulis kode yang type-safe tanpa duplikasi, dan memproses ribuan data secara deklaratif serta konkruen.

Roadmap ini membawamu menguasai fitur-fitur penting Java modern: Generics untuk fleksibilitas tipe data, Java Collections Framework (List, Set, Map), Functional Programming dengan Lambda Expressions, pemrosesan data deklaratif lewat Stream API, penanganan null yang aman dengan Optional, sampai revolusi konkurensi modern lewat Virtual Threads (Java 21 / Project Loom). Enam langkah, ikuti berurutan setelah menyelesaikan Java Dasar.

**Asumsi:** sudah menyelesaikan atau familiar dengan materi di roadmap [Java Dasar](/kategori/java-dasar) (OOP, class, inheritance, interface).', '2026-09-22 14:14:28.78047+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'React', 'react', 'React adalah library JavaScript paling populer untuk membangun antarmuka (UI) — dipakai jutaan aplikasi web, dari dashboard internal sampai produk skala besar seperti Instagram dan Facebook (yang menciptakannya). Sebelum React (dan library serupa), memperbarui tampilan setelah data berubah berarti memanipulasi DOM manual satu per satu (`document.getElementById(...).innerHTML = ...`) — gampang jadi berantakan dan bug begitu aplikasinya makin besar. React menyelesaikan ini lewat pendekatan deklaratif: kamu deskripsikan UI seharusnya terlihat seperti apa berdasarkan state saat ini, React yang mengurus cara memperbaruinya di DOM.

Roadmap ini membawamu dari instalasi project dengan Vite, menulis UI dengan JSX, memecah UI jadi component yang bisa dipakai ulang lewat props, merespons interaksi user lewat event listener, membuat component "mengingat" sesuatu lewat state (useState), menampilkan UI kondisional, me-render list data dinamis, berbagi state antar-komponen (lifting state up), mengelola form, menyinkronkan component dengan sistem luar lewat useEffect, sampai mengetik komponen React dengan TypeScript sebagai jembatan ke Next.js. Sebelas langkah, ikuti berurutan — tiap catatan dibangun di atas yang sebelumnya.

**Asumsi:** kamu perlu familiar dengan dasar JavaScript (variabel, fungsi, array method seperti `map`/`filter`, destructuring) — kalau belum, roadmap [JavaScript](/kategori/javascript) di platform ini membahas semua itu dari nol. Roadmap ini murni fokus ke React-nya sendiri, bukan mengulang dasar JavaScript.', '2026-09-21 23:24:41.175314+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('d68cb157-4b1f-4921-a71f-2d6c9b127e5f', 'Flutter (Android)', 'flutter', 'Membangun aplikasi mobile yang jalan di Android DAN iOS secara tradisional berarti menulis DUA codebase terpisah — Kotlin/Java untuk Android, Swift untuk iOS. Logic bisnis yang sama harus diimplementasikan dua kali, dan bug yang diperbaiki di satu platform harus diperbaiki lagi manual di platform lainnya. Flutter menyelesaikan ini dengan satu codebase (bahasa Dart) yang dikompilasi jadi kode native untuk berbagai platform sekaligus.

Roadmap ini fokus ke target Android: instalasi & menjalankan aplikasi pertama, memahami widget (StatelessWidget vs StatefulWidget), menyusun layout dari beberapa widget, berpindah antar halaman, mengambil data dari API lewat HTTP request, sampai berbagi state reaktif antar-halaman secara ringan lewat ValueNotifier. Enam langkah, ikuti berurutan.

**Asumsi:** familiar dengan konsep pemrograman umum (variabel, fungsi, class) dari bahasa apa pun — roadmap ini tidak mengajarkan sintaks Dart dari nol, tapi contoh kodenya cukup sederhana untuk diikuti pemula. Prasyarat tool (Flutter SDK, Android Studio) disebutkan di catatan pertama.', '2026-09-19 12:19:14.593871+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('c397eb64-1f60-4364-b6c2-ad628083b315', 'PostgreSQL', 'postgresql', 'Database relasional open-source paling canggih di dunia, terkenal dengan kepatuhan standar SQL yang ketat, keandalan transaksi ACID, dan dukungan tipe data modern seperti JSONB. PostgreSQL menjadi fondasi teknologi di balik platform cloud-native modern seperti Supabase.

Roadmap ini membawamu dari nol memahami arsitektur database relasional: mulai dari instalasi & CLI psql, perancangan skema tabel dengan constraints dan tipe data modern, relasi antar-tabel lewat foreign key dan berbagai variasi JOIN, optimasi query dengan B-Tree Index dan EXPLAIN ANALYZE, query dokumen semi-terstruktur menggunakan JSONB & GIN index, sampai jaminan integritas data lewat transaksi ACID dan isolation levels. Enam langkah berjenjang, ikuti berurutan.

**Asumsi:** belum pernah menulis SQL sama sekali tidak masalah — roadmap ini menjelaskan dari sintaks dasar. Prasyarat tool (Docker atau instalasi PostgreSQL) disebutkan di catatan pertama.', '2026-09-22 14:24:45.634768+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('651e63fd-70f5-4611-9727-7181eb577a4c', 'Java Dasar', 'java-dasar', 'Java adalah salah satu bahasa pemrograman paling stabil dan banyak digunakan di dunia — dari backend sistem perbankan, aplikasi Android, hingga platform big data. Filosofi utamanya adalah **"Write Once, Run Anywhere" (WORA)**: kode Java yang dikompilasi menjadi bytecode dapat berjalan di sistem operasi apa pun (Windows, Linux, macOS) asalkan memiliki Java Virtual Machine (JVM).

Roadmap ini membangun fondasi Java murni dari nol: mulai dari setup JDK dan memahami ekosistem JVM, tipe data primitif vs reference, percabangan dan perulangan modern, dasar Pemrograman Berorientasi Objek (Class, Object, Constructor), pewarisan sifat (Inheritance & Polymorphism), sampai merancang kontrak modular lewat Interface dan Abstract Class. Enam langkah berjenjang, ikuti berurutan.

**Asumsi:** belum pernah menulis Java sama sekali tidak masalah — roadmap ini menjelaskan dari nol. Familiar dengan konsep logika dasar komputer akan membantu mempercepat pemahaman.', '2026-09-22 14:14:28.535743+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('45b3c3a2-5021-4fe0-a1d2-494440bb4ea8', 'PHP', 'php', 'PHP adalah bahasa pemrograman server-side yang menggerakkan lebih dari 75% website di dunia — dari platform raksasa seperti Wikipedia dan WordPress hingga sistem enterprise berskala besar. Di era modern (PHP 8.2 & 8.3+), PHP telah bertransformasi total menjadi bahasa yang cepat (JIT compiler), sangat aman dengan sistem strict typing, dan kaya fitur berorientasi objek yang elegan.

Roadmap ini membangun fondasi PHP modern dari nol: mulai dari setup PHP CLI dan server bawaan, tipe data modern dan match expression, type hinting pada fungsi dan arrow functions, OOP modern tanpa boilerplate lewat Constructor Property Promotion dan Readonly, penanganan error dan exception terstruktur, sampai manajemen dependensi standar industri menggunakan Composer dan PSR-4 autoloading. Enam langkah berjenjang, ikuti berurutan.

**Asumsi:** belum pernah menulis PHP sama sekali tidak masalah — roadmap ini menjelaskan dari sintaks modern. Prasyarat tool (PHP 8.2+) disebutkan di catatan pertama.', '2026-09-22 14:30:02.571206+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('8d1b066d-2a4b-429c-ab92-be5a7f37e392', 'Laravel', 'laravel', 'Framework web PHP paling populer di dunia dengan filosofi *"The PHP Framework for Web Artisans"*. Di **Laravel 11**, arsitektur aplikasi disederhanakan secara dramatis: konfigurasi terpusat di `bootstrap/app.php`, routing ramping, Eloquent ORM yang ekspresif, dan ekosistem modern untuk membangun API maupun fullstack apps.

Roadmap ini membawamu dari nol menguasai framework Laravel 11 modern: mulai dari instalasi project ramping dan arsitektur file terbaru, routing dan controller dengan Route Model Binding, templating dinamis dengan Blade Layout Components, kontrol versi database lewat Migrations dan Seeders, manipulasi data ekspresif dengan Eloquent ORM dan pencegahan masalah N+1 query, sampai validasi input terpusat dengan Form Request dan Middleware. Enam langkah berjenjang, ikuti berurutan.

**Asumsi:** familiar dengan dasar bahasa PHP (OOP dan fungsi) dari roadmap [PHP](/kategori/php). Prasyarat tool (PHP 8.2+ dan Composer) disebutkan di catatan pertama.', '2026-09-22 14:30:02.833338+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('b403e972-3cb3-4605-a6b6-bb0f2774b0f6', 'Next.js', 'nextjs', 'Sebelum ada *file-based routing* seperti di Next.js, menyusun routing di aplikasi React itu kerja manual: install library router, lalu tulis config terpisah yang memetakan tiap URL ke komponennya — dan config ini gampang jadi tidak sinkron dengan struktur folder komponen aslinya. Masalah lain: React tradisional mengirim **semua** kode JavaScript ke browser, bahkan untuk bagian yang cuma menampilkan teks statis dari database, bikin aplikasi lambat di koneksi lemah.

Roadmap ini membawamu dari nol sampai bisa membangun aplikasi Next.js App Router yang lengkap: mulai dari setup project, memahami routing dasar, memahami batas Server vs Client Component sejak awal, navigasi dinamis, menyusun layout bersama antar halaman, mengambil data di Server Component, mutasi data langsung lewat Server Actions, membuat API publik lewat Route Handlers, mengelola environment variables, sampai melengkapi halaman dengan metadata untuk SEO. Sepuluh langkah, ikuti berurutan — tiap catatan secara eksplisit dibangun di atas yang sebelumnya.

**Asumsi:** roadmap ini fokus ke Next.js itu sendiri, bukan mengajari React dari nol — kamu perlu familiar dengan dasar JavaScript dan konsep component/props/hooks di React (lihat roadmap [React](/kategori/react) di platform ini jika belum). Prasyarat tool spesifik (Node.js) disebutkan di catatan pertama.', '2026-09-18 06:20:59.380972+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;
INSERT INTO categories (id, name, slug, description, created_at) VALUES ('b8ecce90-6cfa-42bd-bd17-b76f0aa0569d', 'Agentic AI (Hermes)', 'agentic-ai-hermes', 'Chatbot LLM biasa cuma bisa membalas teks — begitu jawabannya berupa kode atau command, KAMU yang harus menyalin, menjalankannya sendiri di terminal, membaca hasil/errornya, lalu menempelkannya balik ke chat supaya model tahu apa yang terjadi. Untuk task yang butuh banyak langkah, siklus manual ini melelahkan dan lambat. Agentic AI membalik itu: model yang mengeksekusi tool-nya sendiri (terminal, file, browser) secara langsung, mengamati hasilnya, dan melanjutkan sampai task selesai — kamu cukup kasih instruksi dan menyetujui langkah yang berisiko.

Roadmap ini pakai **Hermes Agent** dari Nous Research (open-source, *self-improving*) sebagai contoh konkret: instalasi & autentikasi, menjalankan task pertama lewat CLI, memahami memori lintas sesi, membuat & memakai ulang pengetahuan prosedural (*skills*), sampai menghubungkan tool eksternal lewat MCP. Lima langkah, ikuti berurutan.

**Asumsi:** familiar dengan command line/terminal dasar. Tidak perlu pengalaman sebelumnya dengan agentic AI atau LLM API — roadmap ini menjelaskan dari instalasi. Prasyarat tool (Git) dan akun untuk akses model disebutkan di catatan pertama.', '2026-09-19 10:23:25.989758+00') ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;

-- Notes (139 baris)
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('1a462faa-c9cc-44fc-ba29-bcebad51fdae', '45b3c3a2-5021-4fe0-a1d2-494440bb4ea8', 'Pengenalan PHP Modern (8.2+), CLI, & Built-in Server', 'pengenalan-php-modern-dan-cli', '**Masalah yang diselesaikan:** banyak orang memiliki stigma bahwa PHP adalah bahasa yang lambat, penuh kode campur aduk spageti HTML-PHP, dan rawan bug karena tipe data yang terlalu longgar. Stigma tersebut berasal dari era PHP 4 dan 5 (dua dekade lalu!). Di era modern (**PHP 8.2 dan 8.3+**), PHP telah berevolusi menjadi bahasa pemrograman yang sangat cepat (dilengkapi JIT / Just-In-Time compiler), memiliki sistem pengetikan ketat (*strict typing*), dan arsitektur berorientasi objek yang bersih.

PHP dijalankan di sisi server (*server-side*). Setiap kali pengunjung membuka halaman web, server mengeksekusi skrip PHP untuk mengambil data atau memproses logika, lalu mengirimkan hasil akhirnya (biasanya berupa HTML murni atau JSON) ke browser.

```mermaid
flowchart LR
  Browser["Browser Klien"] -->|HTTP Request| WebServer["Web Server (PHP CLI / FPM)"]
  WebServer --> Engine["PHP 8.x Engine (Strict Types & JIT)"]
  Engine --> Exec["Eksekusi Logika & Render Output"]
  Exec -->|Kirim HTML / JSON Bersih| Browser
```

Menjalankan PHP dari Terminal dan Mengaktifkan Development Server Bawaan:

```bash
# 1. Memeriksa versi PHP yang terpasang di komputer
php -v

# 2. Menjalankan skrip PHP langsung lewat CLI
php skrip.php

# 3. Menjalankan web server lokal bawaan PHP (tanpa perlu install XAMPP/Apache!)
php -S localhost:8000
```

Contoh skrip PHP Modern pertama (`index.php`):

```php
<?php
// Wajib di baris paling atas: mengaktifkan pengetikan ketat di seluruh berkas
declare(strict_types=1);

// Variabel di PHP selalu diawali tanda dollar ($)
$nama = "Budi Santoso";
$tahunIni = 2026;

// Mencetak output ke layar terminal / browser
echo "Halo, $nama! Selamat datang di PHP Modern tahun $tahunIni.
";
```

Poin penting:

- Skrip PHP selalu diawali dengan tag pembuka `<?php`. Jika berkas murni hanya berisi kode PHP (tanpa campuran tag HTML), **jangan pernah menulis tag penutup `?>`** di akhir file untuk mencegah celah spasi putih tak disengaja (*whitespace header issues*).
- Direktif `declare(strict_types=1);` memaksa PHP menolak nilai yang tidak sesuai tipe data parameter fungsi (mencegah bug konversi tipe otomatis).
- Perintah `php -S localhost:8000` sangat praktis untuk pengembangan lokal cepat tanpa perlu mengonfigurasi web server berat.', '[{"url":"https://phptherightway.com/","label":"PHP: The Right Way — Modern PHP Best Practices"},{"url":"https://www.php.net/manual/en/getting-started.php","label":"PHP Official Manual — Getting Started"}]'::jsonb, '[{"url":"https://www.php.net/downloads","label":"PHP versi 8.2 atau 8.3 sudah terpasang (cek dengan `php -v` di terminal)"}]'::jsonb, 'Buka terminal:
1. Pastikan PHP terpasang dengan mengetik `php -v`.
2. Buat folder baru `belajar-php` dan buat file `index.php`.
3. Tulis kode contoh di atas dan ubah variabel nama dengan namamu.
4. Jalankan `php index.php` di terminal dan periksa hasilnya.
5. Jalankan `php -S localhost:8000`, lalu buka `http://localhost:8000` di browser untuk melihat outputnya secara langsung.', 0, 'published', '2026-09-22 14:30:04.949566+00', '2026-09-22 14:30:04.634+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('aa64099e-d0de-407b-99f1-f5fa90dbf50b', '651e63fd-70f5-4611-9727-7181eb577a4c', 'Class, Object, dan Constructor (Dasar OOP)', 'class-object-dan-constructor', 'Catatan sebelumnya membahas logika percabangan dan perulangan. **Masalah yang diselesaikan sekarang:** di aplikasi nyata, data dan fungsi yang memanipulasinya saling terikat erat. Mengelola data user menggunakan variabel terpisah (`nama1`, `umur1`, `nama2`, `umur2`) akan sangat kacau saat ada ratusan data. Java adalah bahasa **Object-Oriented Programming (OOP)** murni: segala entitas di dunia nyata dimodelkan sebagai **Class** dan **Object**.

- **Class** adalah cetak biru (*blueprint*) atau rancangan.
- **Object** adalah wujud nyata (*instance*) dari blueprint tersebut yang menempati memori.
- **Constructor** adalah method khusus yang otomatis dipanggil saat object pertama kali dibuat dengan kata kunci `new`.

```mermaid
flowchart TD
  Blueprint["Class Produk (Blueprint)<br/>Atribut: nama, harga<br/>Method: tampilkanInfo()"]
  Blueprint -->|new Produk(''Buku'', 50000)| Obj1["Objek 1 di Heap<br/>nama: ''Buku'', harga: 50000"]
  Blueprint -->|new Produk(''Pensil'', 5000)| Obj2["Objek 2 di Heap<br/>nama: ''Pensil'', harga: 5000"]
```

Contoh pembuatan Class dan Constructor:

```java
// File: Produk.java
class Produk {
    // 1. Atribut / Field (State)
    private String nama;
    private double harga;

    // 2. Constructor: nama sama persis dengan nama Class, tanpa return type
    public Produk(String nama, double harga) {
        this.nama = nama; // ''this.nama'' merujuk ke atribut class
        this.harga = harga;
    }

    // 3. Method (Perilaku / Behavior)
    public void tampilkanInfo() {
        System.out.println("Produk: " + this.nama + " | Harga: Rp" + this.harga);
    }

    // Getter untuk membaca atribut private (Enkapsulasi)
    public String getNama() {
        return nama;
    }
}

// File: Main.java
public class Main {
    public static void main(String[] args) {
        // Instansiasi objek nyata menggunakan kata kunci ''new''
        Produk p1 = new Produk("Laptop Pro", 15000000.0);
        Produk p2 = new Produk("Mouse Wireless", 250000.0);

        p1.tampilkanInfo();
        p2.tampilkanInfo();
    }
}
```

Poin penting:

- Kata kunci `this` digunakan untuk merujuk pada objek saat ini, membedakan nama parameter constructor dari nama atribut class.
- **Enkapsulasi**: Praktik terbaik OOP adalah menjadikan atribut bersifat `private` dan menyediakannya lewat method `getter`/`setter` agar data terlindungi dari modifikasi liar.
- Jika kamu tidak mendefinisikan constructor sama sekali, Java akan menyediakan satu *default constructor* kosong secara otomatis. Namun jika kamu sudah membuat constructor berparameter, default constructor tersebut tidak lagi otomatis dibuat.', '[{"url":"https://docs.oracle.com/javase/tutorial/java/javaOO/classes.html","label":"Oracle Java Tutorial — Classes and Objects"},{"url":"https://docs.oracle.com/javase/tutorial/java/javaOO/constructors.html","label":"Oracle Java Tutorial — Providing Constructors for your Classes"}]'::jsonb, '[]'::jsonb, 'Di project latihan kamu:
1. Buat class `Mobil` dengan atribut `merk` (String), `tahun` (int), dan `kecepatan` (int, default 0).
2. Buat constructor yang menerima parameter `merk` dan `tahun`.
3. Buat method `tambahKecepatan(int akselerasi)` yang menambah nilai kecepatan dan mencetak kecepatan saat ini.
4. Di method `main`, buat objek `Mobil mobilSaya = new Mobil("Toyota", 2022);`.
5. Panggil `mobilSaya.tambahKecepatan(40);` dua kali dan amati perubahan kecepatannya.', 3, 'published', '2026-09-22 14:14:31.016826+00', '2026-09-22 14:30:11.104+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('f5e12ef2-2bb3-4c8c-84dc-022aa5214645', 'df6694f2-8cc1-47da-b697-e5c0f0f2cf89', 'Menyelesaikan Merge Conflict', 'merge-conflict-dasar', 'Sekarang kamu tahu cara branching, push/pull, dan mengabaikan file yang tidak perlu (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** kalau dua branch (atau kamu dan rekan tim) sama-sama mengubah BARIS YANG SAMA di file yang sama, Git tidak tahu versi mana yang benar saat `merge`/`pull` — proses berhenti di tengah jalan dan minta kamu memutuskan sendiri.

**Merge conflict** terjadi ketika Git tidak bisa menggabungkan otomatis dua perubahan yang saling bertabrakan pada baris yang sama.

```mermaid
gitGraph
   commit id: "A"
   branch fitur-a
   checkout fitur-a
   commit id: "ubah baris 5 jadi X"
   checkout main
   commit id: "ubah baris 5 jadi Y"
```

Kedua branch sama-sama mengubah baris 5 dengan nilai berbeda (`X` di `fitur-a`, `Y` di `main`) — saat `git merge fitur-a` dijalankan dari `main`, Git tidak bisa menebak versi mana yang benar, jadi proses berhenti dan minta diselesaikan manual.

### Tampilan File Saat Konflik
Git menandai bagian yang bentrok langsung di dalam file dengan *conflict markers*:

```text
<<<<<<< HEAD
const sapaan = "Selamat pagi";
=======
const sapaan = "Halo semua";
>>>>>>> fitur-a
```

- Baris di atas `=======` adalah versi branch yang sedang aktif (`HEAD`).
- Baris di bawah `=======` sampai `>>>>>>>` adalah versi dari branch yang sedang di-merge (`fitur-a`).

### Langkah Menyelesaikan Konflik
```bash
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
```

Poin penting:

- `git status` saat konflik menampilkan daftar file yang "*both modified*" — itulah file-file yang perlu diedit manual.
- Conflict marker (`<<<<<<<`, `=======`, `>>>>>>>`) HARUS dihapus semuanya sebelum commit — kalau lupa, marker itu akan ikut ter-commit sebagai teks biasa dan merusak kode.
- Kalau ingin membatalkan proses merge sepenuhnya dan kembali ke kondisi sebelum `git merge` dijalankan, pakai `git merge --abort`.
- Konflik yang sama juga bisa muncul saat `git pull` (karena `pull` = `fetch` + `merge`) — cara menyelesaikannya identik.', '[{"url":"https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging","label":"Git Basic Branching and Merging — Pro Git Book"},{"url":"https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/resolving-a-merge-conflict-using-the-command-line","label":"GitHub Docs — Resolving a Merge Conflict Using the Command Line"}]'::jsonb, '[]'::jsonb, 'Di repository latihan kamu: dari `main`, buat branch `fitur-a`, ubah baris pertama `catatan.txt` jadi teks apa saja, commit. Pindah balik ke `main`, ubah baris PERTAMA yang SAMA di `catatan.txt` jadi teks lain, commit juga. Jalankan `git merge fitur-a` dari `main` — harus muncul CONFLICT. Buka `catatan.txt`, lihat conflict marker-nya, edit manual untuk memilih/menggabungkan isinya, hapus semua marker, lalu `git add catatan.txt` dan `git commit` untuk menyelesaikannya. Ini menutup roadmap Git: dari commit pertama sampai menyelesaikan konflik kolaborasi yang paling umum ditemui.', 5, 'published', '2026-09-19 10:05:15.317547+00', '2026-09-22 13:48:35.812+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('094325c7-ec35-493d-84a3-7fdaca5e37e9', '9deddb76-862f-4fce-83e4-57a0202df83b', 'Fungsi & Arrow Function Dasar', 'fungsi-dan-arrow-function', 'Sekarang kamu paham `let`/`const` dan scope (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** function declaration biasa punya `this` yang nilainya ditentukan SAAT DIPANGGIL (dynamic) — ini sering bikin bug tidak terduga di dalam callback (misalnya method object yang dipanggil lewat `setTimeout`, `this`-nya berubah jadi bukan object aslinya lagi). Arrow function (ES6) menyelesaikan ini dengan mewarisi `this` dari scope tempat dia DITULIS (lexical), bukan dari cara dia dipanggil.

### Tiga Cara Mendefinisikan Fungsi
```js
// Function declaration — di-hoisting, bisa dipanggil sebelum baris definisinya
function sapa(nama) {
  return `Halo, ${nama}`;
}

// Function expression — TIDAK di-hoisting seperti declaration
const sapa2 = function (nama) {
  return `Halo, ${nama}`;
};

// Arrow function — sintaks ringkas, this lexical
const sapa3 = (nama) => `Halo, ${nama}`;
```

### Masalah `this` yang Diselesaikan Arrow Function
```js
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
```

```mermaid
flowchart LR
  subgraph Regular["Function Biasa"]
    R1["this ditentukan SAAT dipanggil"] --> R2["Bisa berubah tergantung caller<br/>(rawan bug di callback)"]
  end
  subgraph Arrow["Arrow Function"]
    A1["this diwarisi dari scope penulisan"] --> A2["Selalu konsisten,<br/>tidak berubah tergantung caller"]
  end
```

| | Function Declaration | Function Expression | Arrow Function |
| --- | --- | --- | --- |
| Hoisting | Ya, bisa dipanggil sebelum definisi | Tidak | Tidak |
| `this` | Dynamic (tergantung cara dipanggil) | Dynamic | Lexical (dari scope penulisan) |
| Bisa jadi constructor (`new`)? | Ya | Ya | Tidak |

Poin penting:

- Arrow function TIDAK cocok dipakai sebagai method object yang butuh akses `this` ke object itu sendiri secara langsung (`this` di situ akan merujuk ke scope LUAR object, bukan object-nya) — tapi cocok untuk callback DI DALAM method seperti contoh di atas.
- `() => ekspresi` tanpa kurung kurawal otomatis me-return nilai ekspresinya (*implicit return*) — `() => { return ekspresi; }` kalau pakai kurung kurawal harus eksplisit `return`.
- Function declaration di-hoisting sepenuhnya (bisa dipanggil sebelum baris definisinya di kode), function expression dan arrow function tidak.', '[{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions","label":"Arrow function expressions — MDN Web Docs"},{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this","label":"this — MDN Web Docs"}]'::jsonb, '[]'::jsonb, 'Salin object `timer` di atas persis (dengan `mulai()` yang rusak dan `mulaiBenar()` yang benar). Panggil `timer.mulai()` dulu — perhatikan errornya (`this.detik` gagal karena `this` bukan `timer`). Lalu panggil `timer.mulaiBenar()` — buktikan `this.detik` bertambah dengan benar setelah 1 detik. Jelaskan dengan kata-katamu sendiri kenapa dua fungsi yang isinya mirip itu berperilaku beda.', 1, 'published', '2026-09-19 11:37:52.333648+00', '2026-09-19 11:37:52.333648+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('75351001-c5ee-4c99-a786-8ad8354733da', 'b403e972-3cb3-4605-a6b6-bb0f2774b0f6', 'Navigasi dengan Link dan useRouter', 'navigasi-link-dan-router', '**Masalah yang diselesaikan:** setelah tahu cara *membuat* route lewat struktur folder di catatan sebelumnya, pertanyaan berikutnya: bagaimana cara *pindah* antar route itu dari dalam aplikasi? Cara naif: pakai tag `<a href="...">` biasa seperti website statis — tapi ini memicu *full page reload*, membuang keuntungan performa React (semua state hilang, seluruh halaman di-fetch ulang dari server termasuk asset yang sebenarnya sama).

Next.js menyediakan navigasi sisi klien (*client-side navigation*) yang cepat menggunakan komponen `<Link>` dan hook programatik `useRouter`.

```mermaid
flowchart LR
    Browser["Klik &lt;Link href=''/about''&gt;"] --> Prefetch["Prefetch Route di Background"]
    Prefetch --> Render["Ganti Konten Halaman (SPA Transition)"]
    Render -.-> NoReload["Tanpa Full Page Reload!"]
```

### 1. Komponen `<Link>` (Direkomendasikan)
Gunakan tag `<Link>` untuk navigasi deklaratif. Next.js otomatis melakukan *prefetching* resource di background saat link muncul di viewport:

```tsx
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
```

### 2. Navigasi Programatik dengan `useRouter`
Untuk navigasi yang dipicu oleh suatu aksi logika (misal: setelah tombol simpan diklik atau selesai submit form):

```tsx
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
```

- **`<Link>` vs `<a>`**: Jangan gunakan tag `<a href="...">` biasa karena akan memicu *full page reload* yang lambat.
- **Import Path**: Di App Router, `useRouter` wajib di-import dari `next/navigation`, bukan `next/router` (Pages Router lama).', '[{"url":"https://nextjs.org/docs/app/building-your-application/routing/linking-and-navigating","label":"Next.js Docs — Linking and Navigating"}]'::jsonb, '[]'::jsonb, 'Di project latihan kamu, tambahkan komponen `<Navigasi>` (seperti contoh di atas) ke `app/layout.tsx` supaya muncul di semua halaman. Lalu:

1. Klik-klik antar link, buka DevTools tab Network, perhatikan request yang terjadi — apakah full HTML di-download ulang tiap klik, atau cuma data yang berubah?
2. Ganti salah satu `<Link>` jadi `<a>` biasa, ulangi langkah 1, bandingkan bedanya.
3. Tambahkan tombol yang memanggil `router.push(''/produk/99'')` (pakai dynamic route dari latihan sebelumnya) tanpa lewat `<Link>` sama sekali.', 3, 'published', '2026-09-18 09:12:02.218401+00', '2026-09-22 13:32:10.665+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('fe167a21-cc21-43b7-9184-f76286b9e065', 'b4e47208-8775-4a24-a2f3-1655745b90f1', 'Sintaks & Tipe Data Dasar', 'sintaks-dan-tipe-data-dasar', '**Masalah yang diselesaikan:** bahasa seperti Java/C# mewajibkan kamu mendeklarasikan tipe tiap variabel secara eksplisit (`int umur = 25;`) sebelum bisa dipakai — boilerplate ini menambah baris kode untuk hal yang sering kali sudah jelas dari nilainya sendiri. Python memakai *dynamic typing*: tipe ditentukan otomatis dari nilai yang diisikan, dan bisa berubah kapan saja variabelnya diisi ulang dengan nilai bertipe lain.

```mermaid
flowchart TD
  Val["Nilai Literal"] --> Type["Dynamic Typing Python (Otomatis Ditebak)"]
  Type --> T1["25 ➔ int (bilangan bulat)"]
  Type --> T2["1.75 ➔ float (desimal)"]
  Type --> T3["''Budi'' ➔ str (teks)"]
  Type --> T4["True / False ➔ bool (boolean)"]
```

```python
umur = 25        # int — otomatis dikenali sebagai angka bulat
tinggi = 1.75     # float — angka desimal
nama = "Budi"     # str — teks
aktif = True      # bool — True/False

print(type(umur))  # <class ''int''>

umur = "dua puluh lima"  # BOLEH — Python tidak melarang ganti tipe
print(type(umur))         # <class ''str''>
```

### Operator Dasar & f-string
```python
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
```

| Tipe | Contoh | Fungsi Konversi |
| --- | --- | --- |
| `int` | `25`, `-3` | `int("25")` |
| `float` | `1.75`, `-0.5` | `float("1.75")` |
| `str` | `"halo"` | `str(25)` |
| `bool` | `True`, `False` | `bool(1)` (hampir semua nilai selain `0`/kosong dianggap `True`) |

Poin penting:

- `type(nilai)` selalu bisa dipakai untuk mengecek tipe suatu nilai saat ini — berguna terutama karena tipe variabel Python bisa berubah.
- Indentasi (spasi di awal baris) di Python BUKAN sekadar gaya penulisan — ia bagian dari sintaks, menentukan blok kode mana yang termasuk bagian mana (akan terlihat jelas di catatan berikutnya soal struktur kontrol).
- Konversi tipe eksplisit (`int()`, `str()`, dst) diperlukan saat Python tidak bisa menebak otomatis, misalnya menggabungkan angka dengan teks: `"Umur: " + str(umur)` — `"Umur: " + umur` akan error kalau `umur` berupa `int`.', '[{"url":"https://docs.python.org/3/tutorial/introduction.html","label":"An Informal Introduction to Python — Python Docs"},{"url":"https://docs.python.org/3/library/stdtypes.html","label":"Built-in Types — Python Docs"}]'::jsonb, '[{"url":"https://www.python.org/downloads/","label":"Python 3 sudah terinstall (cek dengan `python --version` atau `python3 --version`)"}]'::jsonb, 'Buat empat variabel dengan masing-masing tipe (`int`, `float`, `str`, `bool`), cetak tipe masing-masing pakai `type()`. Buat variabel `umur = 25` (angka) dan coba `print("Umur saya: " + umur)` — catat error-nya (`TypeError`). Perbaiki dengan `str(umur)` atau f-string `f"Umur saya: {umur}"`. Terakhir, hitung luas persegi panjang dari `panjang = 8` dan `lebar = 3` lalu cetak hasilnya pakai f-string.', 0, 'published', '2026-09-19 12:13:10.509311+00', '2026-09-22 14:30:22.109+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('250fe04c-1ad6-4f91-9456-df1e8af14ed6', 'b4e47208-8775-4a24-a2f3-1655745b90f1', 'Package Manager pip & Konsumsi API dengan Requests', 'pip-dan-requests-dasar', 'Catatan sebelumnya membahas cara mengisolasi lingkungan proyek lewat virtual environment (`.venv`). **Masalah yang diselesaikan sekarang:** pustaka standar Python (`math`, `os`, `json`) sangat berguna, tetapi kekuatan terbesar Python ada pada ekosistem ribuan library pihak ketiga di **PyPI (Python Package Index)**. Bagaimana cara menginstal library eksternal dan memakainya untuk mengambil data dari REST API di internet?

Python menyertakan package manager bawaan bernama **`pip`**. Salah satu library paling populer di dunia Python adalah **`requests`**, yang dirancang agar pengiriman HTTP request terasa sederhana dan manusiawi (*HTTP for Humans*).

```mermaid
flowchart LR
  subgraph PyPI["PyPI (Python Package Index)"]
    Lib["requests library"]
  end
  subgraph LocalEnv["Proyek Lokal (.venv aktif)"]
    Pip["pip install requests"] --> Venv[".venv/lib/..."]
    Venv --> App["app.py (import requests)"]
  end
  subgraph WebAPI["Server Internet / REST API"]
    API["https://api.example.com"]
  end
  Lib -->|Diunduh oleh| Pip
  App -->|HTTP GET| API
  API -->|JSON Response| App
```

Perintah instalasi dan contoh kode mengambil data JSON:

```bash
# 1. Pastikan venv sudah aktif (muncul tanda (.venv) di terminal)
pip install requests

# 2. Simpan daftar library yang terinstall ke requirements.txt
pip freeze > requirements.txt
```

```python
# app.py
import requests

def ambil_data_pengguna():
    url = "https://jsonplaceholder.typicode.com/users/1"
    
    try:
        # Kirim request HTTP GET dengan timeout agar tidak menggantung jika server lambat
        response = requests.get(url, timeout=5)
        
        # raise_for_status() otomatis melempar exception jika status code 4xx atau 5xx
        response.raise_for_status()
        
        # Konversi body JSON ke dictionary Python
        user = response.json()
        
        print(f"Nama : {user[''name'']}")
        print(f"Email: {user[''email'']}")
        print(f"Kota : {user[''address''][''city'']}")
        
    except requests.exceptions.RequestException as err:
        print(f"Gagal mengambil data dari server: {err}")

if __name__ == "__main__":
    ambil_data_pengguna()
```

Poin penting:

- Selalu pastikan virtual environment sedang aktif sebelum menjalankan `pip install`, agar library tidak terpasang secara global di sistem operasi.
- Berkas `requirements.txt` adalah standar berbagi dependensi di proyek Python — orang lain (atau server produksi) cukup menjalankan `pip install -r requirements.txt`.
- Selalu tentukan parameter `timeout` pada `requests.get()` untuk mencegah aplikasi membeku tanpa batas saat jaringan bermasalah.
- Method `response.json()` langsung mengonversi format JSON menjadi tipe data bawaan Python (`dict` atau `list`).', '[{"url":"https://requests.readthedocs.io/en/latest/","label":"Requests: HTTP for Humans — Official Documentation"},{"url":"https://docs.python.org/3/installing/index.html","label":"Python Docs — Installing Python Modules"}]'::jsonb, '[{"url":"/notes/python/virtual-environment","label":"Python 3.8+ dan virtual environment yang sudah aktif"}]'::jsonb, 'Di dalam folder proyek dengan virtual environment aktif:
1. Jalankan `pip install requests`.
2. Buat file `cek_cuaca.py`.
3. Gunakan `requests.get("https://api.github.com/zen")` untuk mengambil kutipan filosofi acak dari GitHub API.
4. Cetak teks kutipannya menggunakan `response.text` dan periksa `response.status_code`.
5. Jalankan `pip freeze > requirements.txt` dan buka file yang dihasilkan untuk melihat versi library yang tercatat.', 9, 'published', '2026-09-22 14:02:46.631491+00', '2026-09-22 14:30:23.823+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('8dff1607-2207-46b5-9c6e-90f366ed9842', '45b3c3a2-5021-4fe0-a1d2-494440bb4ea8', 'Tipe Data, Match Expression, & Nullsafe Operator', 'tipe-data-dan-sintaks-modern', 'Catatan sebelumnya mengenalkan dasar PHP modern. **Masalah yang diselesaikan sekarang:** di PHP lama, percabangan `switch` sering menjadi sarang bug karena memakai perbandingan longgar (`==`) dan gampang terselip bug lupa menulis `break` (*fall-through*). Selain itu, mengakses properti objek bertingkat (`$user->alamat->kota`) rentan memicu crash *Fatal Error* jika salah satu objek di tengah rantai bernilai `null`.

PHP 8+ memperkenalkan dua fitur sintaks modern yang sangat revolusioner:
1. **Match Expression:** Pengganti `switch` yang mengembalikan nilai langsung, menggunakan perbandingan ketat (`===`), dan tidak membutuhkan `break`.
2. **Nullsafe Operator (`?->`):** Rantai pemanggilan objek yang otomatis mengembalikan `null` tanpa crash jika salah satu elemennya bernilai null.

```mermaid
flowchart TD
  subgraph SwitchLama["Switch Tradisional (Rawan Bug)"]
    S1["switch($status)"] --> S2["Perbandingan Longgar (==)"]
    S2 --> S3["Wajib tulis ''break;'' manual di tiap baris"]
  end
  subgraph MatchModern["PHP 8+: Match Expression (Ringkas & Aman)"]
    M1["$hasil = match($status)"] --> M2["Perbandingan Ketat (===)"]
    M2 --> M3["Mengembalikan nilai ekspresi langsung tanpa break!"]
  end
```

Contoh penggunaan Tipe Data, Match Expression, dan Nullsafe Operator:

```php
<?php
declare(strict_types=1);

// 1. Tipe data skalar dan Array modern
$umur = 25;              // int
$harga = 99000.50;        // float
$isMember = true;         // bool
$hobi = ["Coding", "Baca"]; // array (sintaks braket siku)

// 2. Modern Match Expression (PHP 8.0+)
$kodeStatus = "PAID";

$statusPesanan = match ($kodeStatus) {
    "PENDING" => "Menunggu Pembayaran",
    "PAID", "SETTLED" => "Pembayaran Berhasil, Siap Dikirim",
    "EXPIRED" => "Pembayaran Kedaluwarsa",
    default => "Status Tidak Dikenali",
};

echo "Status: $statusPesanan
";

// 3. Nullsafe Operator (?->)
class Profil {
    public ?string $kota = "Bandung";
}
class Pengguna {
    public ?Profil $profil = null; // Bisa bernilai null
}

$user = new Pengguna();

// Cara lama yang bertele-tele:
// $kota = ($user->profil !== null) ? $user->profil->kota : null;

// Cara modern dengan Nullsafe Operator: aman tanpa fatal error!
$kota = $user->profil?->kota;
echo "Kota domisili: " . ($kota ?? "Belum diisi") . "
";
```

Poin penting:

- `match` expression melakukan evaluasi ketat (`===`): angka `0` tidak akan pernah dianggap sama dengan string `"0"`.
- Jika tidak ada kondisi `match` yang cocok dan kamu lupa menulis cabang `default`, PHP akan melempar error `UnhandledMatchError` yang aman alih-alih mengeksekusi kode salah.
- Operator penggabung null **`??` (Null Coalescing Operator)** digunakan untuk menyediakan nilai bawaan jika variabel bernilai null atau belum didefinisikan.', '[{"url":"https://www.php.net/manual/en/control-structures.match.php","label":"PHP Official Manual — Match Expressions"},{"url":"https://www.php.net/manual/en/language.oop5.basic.php#language.oop5.basic.nullsafe","label":"PHP Official Manual — Nullsafe Operator"}]'::jsonb, '[]'::jsonb, 'Di file `index.php` kamu:
1. Buat variabel peran user: `$peran = "admin";`.
2. Gunakan `match` expression untuk menentukan hak akses: `"admin"` -> `"Akses Penuh"`, `"editor"` -> `"Akses Konten"`, `"tamu"` -> `"Akses Baca"`, dan default -> `"Akses Ditolak"`.
3. Cetak hasil hak akses ke terminal.
4. Uji dengan mengubah nilai `$peran` menjadi string yang tidak terdaftar untuk membuktikan cabang `default` bekerja dengan baik.', 1, 'published', '2026-09-22 14:30:05.151328+00', '2026-09-22 14:30:04.855+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('751fa8f0-5662-499c-83ac-d020316e3c53', 'c397eb64-1f60-4364-b6c2-ad628083b315', 'Tipe Data JSONB & Index GIN: NoSQL di dalam Relasional', 'jsonb-dan-semi-structured-data', 'Catatan sebelumnya membahas pengoptimalan query relasional. **Masalah yang diselesaikan sekarang:** tidak semua data memiliki struktur kolom yang seragam. Bayangkan katalog toko online: laptop memiliki spesifikasi `RAM` dan `Processor`, sementara pakaian memiliki `Ukuran` dan `Warna`, serta makanan memiliki `TanggalKedaluwarsa`. Menambahkan ratusan kolom kosong (*nullable*) untuk setiap variasi barang membuat tabel sangat kotor. Developer sering kali terpaksa beralih ke database NoSQL terpisah (seperti MongoDB) hanya untuk menyimpan dokumen dinamis ini.

PostgreSQL memecahkan masalah ini dengan menyediakan tipe data **JSONB (Binary JSON)**: format JSON yang disimpan dalam representasi biner terurai sehingga dapat di-query, di-filter, dan **di-index dengan GIN (Generalized Inverted Index)** secepat kolom relasional biasa!

```mermaid
flowchart LR
  Doc["{ ''spesifikasi'': { ''ram'': ''16GB'', ''layar'': 14 }, ''tags'': [''laptop'', ''kerja''] }"]
  Doc --> GIN["GIN Index (Generalized Inverted Index)"]
  GIN --> Query1["WHERE data @> ''{"tags": ["laptop"]}''"]
  GIN --> Query2["SELECT data->''spesifikasi''->>''ram''"]
  Query1 & Query2 --> Fast["Hasil Instan tanpa Full Table Scan!"]
```

Sintaks Operasi JSONB di PostgreSQL:

```sql
CREATE TABLE produk_katalog (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    -- Kolom JSONB untuk atribut dinamis
    metadata JSONB NOT NULL
);

-- Menyimpan dokumen JSON
INSERT INTO produk_katalog (nama, metadata) VALUES
(''ThinkPad X1'', ''{"kategori": "laptop", "ram_gb": 16, "garansi_tahun": 3, "tags": ["bisnis", "ringan"]}''),
(''Kemeja Flanel'', ''{"kategori": "pakaian", "ukuran": "L", "warna": "merah", "tags": ["casual"]}'');
```

Membaca dan Memfilter Kolom JSONB:

```sql
-- 1. Operator ''->>'' mengekstrak nilai sebagai teks biasa (text)
SELECT nama, metadata->>''kategori'' AS kategori, metadata->>''ram_gb'' AS ram
FROM produk_katalog;

-- 2. Operator ''@>'' (Containment): Apakah dokumen memuat JSON tertentu?
SELECT nama FROM produk_katalog
WHERE metadata @> ''{"kategori": "laptop"}'';

-- 3. Membuat GIN Index agar query JSON secepat kilat pada jutaan baris
CREATE INDEX idx_katalog_metadata ON produk_katalog USING GIN (metadata);
```

Poin penting:

- Selalu gunakan tipe **`JSONB`**, jangan gunakan `JSON` biasa: `JSON` biasa menyimpan teks mentah (harus di-parse ulang setiap kali query), sedangkan `JSONB` disimpan dalam biner terurai dan mendukung index GIN.
- Operator `->` mengembalikan objek JSON / elemen JSON, sedangkan `->>` mengembalikan nilai akhir sebagai tipe `text`.
- Kombinasi keandalan relasional ACID dan fleksibilitas dokumen NoSQL JSONB inilah yang menjadikan PostgreSQL pilihan utama arsitektur modern (termasuk Supabase).', '[{"url":"https://www.postgresql.org/docs/current/datatype-json.html","label":"PostgreSQL Documentation — JSON Types"},{"url":"https://www.postgresql.org/docs/current/gin.html","label":"PostgreSQL Documentation — GIN Indexes"}]'::jsonb, '[]'::jsonb, 'Di terminal psql kamu:
1. Buat tabel `produk_katalog` seperti contoh di atas dan masukkan kedua baris data.
2. Jalankan query containment `@>` untuk mencari produk yang memiliki tag `"bisnis"`.
3. Buat index GIN pada kolom metadata tersebut.
4. Coba tambahkan baris ketiga dengan struktur atribut yang sama sekali baru (misal buku dengan atribut `{"penulis": "Pramoedya", "halaman": 300}`).', 4, 'published', '2026-09-22 14:24:48.540413+00', '2026-09-22 14:30:08.314+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('5ea3c8d7-f066-40c8-bc7b-76bb0101970d', 'a6e9d866-c1b5-4e38-a511-d27a0fed6caa', 'Operasi SQL Dasar & Manajemen Tabel di MariaDB', 'dasar-sql-dan-manajemen-tabel', 'Catatan sebelumnya mengenalkan cara terhubung ke MariaDB. **Masalah yang diselesaikan sekarang:** bagaimana cara menyusun tabel data dengan kunci utama otomatis (*auto-increment*) dan menjalankan operasi CRUD (Create, Read, Update, Delete) sehari-hari?

Di MariaDB, pembuatan tabel dan manipulasi data mengikuti standar SQL yang sangat ramah pemula, dengan fitur auto-increment integer yang efisien untuk Primary Key.

```mermaid
flowchart TD
  Table["Tabel ''artikel''<br/>id INT AUTO_INCREMENT PRIMARY KEY<br/>judul VARCHAR(100)<br/>status ENUM(''draft'', ''published'')"]
  C["INSERT INTO artikel... ➔ ID otomatis 1, 2, 3..."] --> Table
  Table --> R["SELECT * WHERE status = ''published''"]
  Table --> U["UPDATE artikel SET judul = ''...'' WHERE id = 1"]
  Table --> D["DELETE FROM artikel WHERE id = 2"]
```

Sintaks pembuatan tabel dan operasi CRUD:

```sql
USE portal_berita;

-- 1. Membuat tabel dengan AUTO_INCREMENT dan ENUM
CREATE TABLE artikel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(150) NOT NULL,
    isi TEXT NOT NULL,
    status ENUM(''draft'', ''published'') NOT NULL DEFAULT ''draft'',
    dibuat_pada DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 2. CREATE (Insert data)
INSERT INTO artikel (judul, isi, status) VALUES
(''Mengenal MariaDB'', ''MariaDB adalah database performa tinggi...'', ''published''),
(''Tips Optimasi SQL'', ''Gunakan indexing pada kolom kunci...'', ''draft'');

-- 3. READ (Query dengan filter dan pengurutan)
SELECT id, judul, status, dibuat_pada 
FROM artikel 
WHERE status = ''published''
ORDER BY dibuat_pada DESC;

-- 4. UPDATE (Ubah status artikel)
UPDATE artikel 
SET status = ''published'' 
WHERE id = 2;

-- 5. DELETE (Hapus data tertentu)
DELETE FROM artikel 
WHERE id = 1;
```

Poin penting:

- Kata kunci `AUTO_INCREMENT` membuat database otomatis menghasilkan nomor urut berikutnya tanpa kamu perlu mengisi nilainya saat `INSERT`.
- Tipe data `ENUM(''nilai1'', ''nilai2'')` membatasi isi kolom secara ketat hanya pada pilihan teks yang didefinisikan, menghemat ruang disk dan mencegah typo.
- **Waspada saat UPDATE / DELETE:** Selalu sertakan klausa `WHERE` pada perintah `UPDATE` dan `DELETE`. Menjalankan `DELETE FROM artikel;` tanpa `WHERE` akan menghapus seluruh isi tabel seketika!', '[{"url":"https://mariadb.com/kb/en/create-table/","label":"MariaDB Knowledge Base — CREATE TABLE"},{"url":"https://mariadb.com/kb/en/auto_increment/","label":"MariaDB Knowledge Base — Auto_Increment"}]'::jsonb, '[]'::jsonb, 'Di terminal mariadb kamu:
1. Buat tabel `artikel` seperti contoh di atas.
2. Masukkan 3 baris artikel baru dengan status bervariasi.
3. Jalankan `SELECT * FROM artikel;` dan perhatikan bagaimana kolom `id` bertambah otomatis (1, 2, 3).
4. Update salah satu artikel menjadi `published`.
5. Hapus artikel pertama dan periksa isi akhir tabel.', 1, 'published', '2026-09-22 14:24:49.032501+00', '2026-09-22 14:30:08.863+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('6a194ce7-7aad-41ba-88a0-32dfbad77aeb', '651e63fd-70f5-4611-9727-7181eb577a4c', 'Pewarisan (Inheritance) & Polimorfisme', 'inheritance-dan-polymorphism', 'Catatan sebelumnya membahas cara membuat class dan objek. **Masalah yang diselesaikan sekarang:** bayangkan kamu membuat aplikasi game yang memiliki karakter `Prajurit`, `Penyihir`, dan `Pemanah`. Ketiganya sama-sama memiliki atribut `nama` dan `darah`, serta method `berjalan()`. Menuliskan kode ini berulang-ulang di setiap class memicu duplikasi besar (*DRY violation*).

Java menyediakan dua pilar utama OOP untuk ini:
1. **Inheritance (Pewarisan):** Class anak (*Subclass*) mewarisi atribut dan method dari class induk (*Superclass*) menggunakan kata kunci `extends`.
2. **Polymorphism (Banyak Bentuk):** Objek anak dapat diperlakukan sebagai objek induknya, namun tetap menjalankan perilaku spesifik miliknya lewat `@Override`.

```mermaid
classDiagram
  class Karakter {
    +String nama
    +int darah
    +serang()
  }
  class Prajurit {
    +serang() tebas pedang
  }
  class Penyihir {
    +serang() lempar sihir
  }
  Karakter <|-- Prajurit : extends
  Karakter <|-- Penyihir : extends
```

Contoh kode Inheritance dan Polimorfisme:

```java
// 1. Superclass (Class Induk)
class Karakter {
    protected String nama; // ''protected'' agar bisa diakses oleh subclass

    public Karakter(String nama) {
        this.nama = nama;
    }

    public void serang() {
        System.out.println(nama + " melakukan serangan biasa!");
    }
}

// 2. Subclass 1 (Prajurit)
class Prajurit extends Karakter {
    public Prajurit(String nama) {
        super(nama); // Memanggil constructor milik superclass
    }

    @Override
    public void serang() {
        System.out.println(nama + " menebas dengan pedang tajam!");
    }
}

// 3. Subclass 2 (Penyihir)
class Penyihir extends Karakter {
    public Penyihir(String nama) {
        super(nama);
    }

    @Override
    public void serang() {
        System.out.println(nama + " meluncurkan bola api sihir!");
    }
}

public class Main {
    public static void main(String[] args) {
        // Polimorfisme: tipe variabel Karakter, tetapi objek nyatanya Prajurit & Penyihir
        Karakter k1 = new Prajurit("Arthur");
        Karakter k2 = new Penyihir("Merlin");

        // Memanggil method yang sama, tetapi output berbeda sesuai bentuk aslinya
        k1.serang();
        k2.serang();
    }
}
```

Poin penting:

- Kata kunci `super(...)` wajib dipanggil di baris pertama constructor subclass untuk menginisialisasi superclass.
- Anotasi `@Override` memberi tahu compiler bahwa method ini sengaja menggantikan method milik class induk, mencegah kesalahan ketik nama method.
- Java **tidak mendukung** *Multiple Inheritance* untuk class (satu class hanya boleh `extends` tepat satu superclass) untuk menghindari kebingungan hierarki (*Diamond Problem*).', '[{"url":"https://docs.oracle.com/javase/tutorial/java/IandI/subclasses.html","label":"Oracle Java Tutorial — Inheritance"},{"url":"https://docs.oracle.com/javase/tutorial/java/IandI/polymorphism.html","label":"Oracle Java Tutorial — Polymorphism"}]'::jsonb, '[]'::jsonb, 'Di project kamu:
1. Buat class induk `Pegawai` dengan atribut `nama` dan method `hitungGaji()` yang mengembalikan `4000000`.
2. Buat subclass `Manager extends Pegawai` yang meng-override method `hitungGaji()` menjadi `8000000` (ditambah bonus).
3. Buat array polimorfis: `Pegawai[] daftar = { new Pegawai("Rudi"), new Manager("Siti") };`.
4. Buat perulangan untuk mencetak nama dan gaji masing-masing pegawai, dan buktikan bahwa method gaji Manager otomatis terhitung lebih besar.', 4, 'published', '2026-09-22 14:14:31.229347+00', '2026-09-22 14:30:11.291+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('eaee8034-bdcf-40ca-9e9c-e621eedc1bb4', '3a7e2da4-7876-4fe7-9cab-4d1e3dd1c902', 'Java Collections Framework: List, Set, dan Map', 'collections-framework', 'Catatan sebelumnya mengenalkan Generics. **Masalah yang diselesaikan sekarang:** array biasa di Java memiliki satu kelemahan fatal: **ukurannya paten** sejak pertama kali dibuat. Kalau kamu membuat `int[] data = new int[5];`, kamu tidak bisa menambah elemen ke-6 tanpa membuat array baru dan menyalin isinya manual. Selain itu, bagaimana kalau kamu butuh data yang otomatis menolak duplikasi atau pencarian data secepat kilat berdasarkan kunci?

Java menyediakan **Collections Framework**: kumpulan struktur data dinamis berstandar tinggi yang siap pakai, terbagi menjadi tiga jenis utama:
1. **List (`ArrayList`):** Koleksi berurutan (*ordered*), bisa bertambah ukurannya secara otomatis, dan mengizinkan duplikasi.
2. **Set (`HashSet`):** Koleksi yang **menolak duplikasi** (hanya menyimpan elemen unik).
3. **Map (`HashMap`):** Struktur pasangan kunci-nilai (*key-value*) untuk pencarian instan $O(1)$.

```mermaid
flowchart TD
  Iterable["<< Interface >> Iterable"] --> Collection["<< Interface >> Collection"]
  Collection --> List["<< Interface >> List (Berurutan, Duplikat)"]
  Collection --> Set["<< Interface >> Set (Unik, Tanpa Duplikat)"]
  List --> ArrayList["ArrayList"]
  Set --> HashSet["HashSet"]
  Map["<< Interface >> Map (Key-Value Lookup)"] --> HashMap["HashMap"]
```

Contoh penggunaan List, Set, dan Map:

```java
import java.util.ArrayList;
import java.util.HashSet;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.Map;

public class KoleksiDemo {
    public static void main(String[] args) {
        // 1. List: Ukuran dinamis, boleh duplikat
        List<String> daftarNama = new ArrayList<>();
        daftarNama.add("Budi");
        daftarNama.add("Ani");
        daftarNama.add("Budi"); // Boleh duplikat
        System.out.println("Total nama di List: " + daftarNama.size()); // 3

        // 2. Set: Otomatis membuang duplikat
        Set<String> emailUnik = new HashSet<>();
        emailUnik.add("budi@gmail.com");
        emailUnik.add("ani@gmail.com");
        emailUnik.add("budi@gmail.com"); // Duplikat diabaikan otomatis!
        System.out.println("Total email unik: " + emailUnik.size()); // 2

        // 3. Map: Pasangan Key-Value untuk lookup cepat
        Map<String, Integer> stokBarang = new HashMap<>();
        stokBarang.put("Buku", 15);
        stokBarang.put("Pensil", 50);

        System.out.println("Stok buku saat ini: " + stokBarang.get("Buku"));
        System.out.println("Apakah ada stok Penghapus? " + stokBarang.containsKey("Penghapus"));
    }
}
```

Poin penting:

- Praktik terbaik arsitektur adalah selalu menggunakan interface sebagai tipe variabelnya: `List<String> list = new ArrayList<>();` (bukan `ArrayList<String> list = ...`), agar mudah diganti implementasinya jika diperlukan.
- `HashMap` dan `HashSet` menggunakan fungsi hashing (`hashCode()` dan `equals()`) untuk mencapai kecepatan operasi rata-rata $O(1)$.
- Koleksi ini menjadi input utama bagi **Stream API** yang akan kita pelajari di bab berikutnya.', '[{"url":"https://docs.oracle.com/javase/tutorial/collections/intro/index.html","label":"Oracle Java Tutorial — Collections Framework Overview"},{"url":"https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/util/List.html","label":"Oracle Java Documentation — List Interface"}]'::jsonb, '[]'::jsonb, 'Di project latihan kamu:
1. Buat program inventaris belanjaan menggunakan `Map<String, Double> daftarHarga = new HashMap<>();`.
2. Masukkan 3 barang beserta harganya.
3. Buat perulangan membaca seluruh isi Map menggunakan `for (Map.Entry<String, Double> entry : daftarHarga.entrySet())`.
4. Cetak nama barang dan harganya ke terminal.
5. Coba buat `Set<String>` dari daftar kategori barang belanjaan tersebut.', 1, 'published', '2026-09-22 14:14:31.777111+00', '2026-09-22 14:30:11.946+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('17ec47c4-e277-4f50-b227-f754b1b66c7d', '3a7e2da4-7876-4fe7-9cab-4d1e3dd1c902', 'Null-Safety dengan Optional & Penanganan Exception Modern', 'optional-dan-modern-exception', 'Catatan sebelumnya membahas Stream API. **Masalah yang diselesaikan sekarang:** penemu konsep `null`, Sir Tony Hoare, menyebut `null reference` sebagai *"The Billion Dollar Mistake"* (kesalahan bernilai miliaran dolar). Di Java, memanggil method pada variabel yang ternyata bernilai `null` seketika memicu `NullPointerException` (NPE) yang sering meloloskan crash ke produksi.

Untuk mengatasi ini, Java modern menyediakan **`Optional<T>`** — wadah pembungkus yang secara eksplisit menyatakan bahwa sebuah nilai bisa saja "ada" atau "kosong", memaksa developer menangani kemungkinan ketiadaan data sebelum memakainya.

```mermaid
flowchart TD
  Find["Cari User di Database"] --> Check{"Apakah ada?"}
  Check -- Ditemukan --> Val["Optional.of(user)"]
  Check -- Tidak Ada --> Empty["Optional.empty()"]
  Val --> Unpack[".orElseThrow() atau .ifPresent()"]
  Empty --> Unpack
```

Contoh penggunaan `Optional` dan Modern Exception Handling:

```java
import java.util.Optional;

public class OptionalDemo {
    // Method mengembalikan Optional: tanda jelas bagi pemanggil bahwa data bisa saja kosong
    public static Optional<String> cariEmailPengguna(String id) {
        if ("user123".equals(id)) {
            return Optional.of("user@perusahaan.com");
        }
        return Optional.empty(); // Menggantikan return null yang berbahaya!
    }

    public static void main(String[] args) {
        // 1. Mengambil data dengan aman menggunakan orElse
        String email1 = cariEmailPengguna("user123").orElse("tidak-ada@domain.com");
        System.out.println("Email 1: " + email1);

        String email2 = cariEmailPengguna("user_salah").orElse("Email cadangan");
        System.out.println("Email 2: " + email2);

        // 2. Mengambil data atau melempar Exception jika kosong
        try {
            String emailValid = cariEmailPengguna("user_salah")
                    .orElseThrow(() -> new IllegalArgumentException("User ID tidak valid!"));
        } catch (IllegalArgumentException e) {
            System.out.println("Tertangkap error yang aman: " + e.getMessage());
        }

        // 3. Try-with-resources: resource otomatis ditutup tanpa blok finally manual
        // try (var reader = new BufferedReader(...)) { ... }
    }
}
```

Poin penting:

- Jangan gunakan `Optional` sebagai tipe atribut class atau parameter method; `Optional` didesain khusus sebagai **return type** method pencarian.
- Hindari pemanggilan `.get()` langsung pada Optional tanpa memeriksa `.isPresent()` terlebih dahulu (gunakan `.orElse()`, `.orElseGet()`, atau `.ifPresent()`).
- Fitur **Try-With-Resources** (Java 7+) otomatis menutup berkas/koneksi database yang mengimplementasikan `AutoCloseable` begitu blok try selesai, mencegah kebocoran memori (*memory leak*).', '[{"url":"https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/util/Optional.html","label":"Oracle Documentation — java.util.Optional Class"},{"url":"https://docs.oracle.com/javase/tutorial/essential/exceptions/tryResourceClose.html","label":"Oracle Java Tutorial — The try-with-resources Statement"}]'::jsonb, '[]'::jsonb, 'Di project latihan kamu:
1. Buat method `public static Optional<Integer> cariNilaiTertinggi(List<Integer> list)`.
2. Jika list kosong, kembalikan `Optional.empty()`. Jika ada isi, kembalikan nilai tertingginya dibungkus `Optional.of(...)`.
3. Panggil method tersebut dengan list kosong, lalu gunakan `.ifPresentOrElse(...)` untuk mencetak angka atau menampilkan pesan "Daftar masih kosong".', 4, 'published', '2026-09-22 14:14:32.353913+00', '2026-09-22 14:30:12.513+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('5aa2858a-ba05-4cd2-8119-608ded4f1b67', 'b4e47208-8775-4a24-a2f3-1655745b90f1', 'Struktur Kontrol: if, for, while', 'struktur-kontrol-dasar', 'Sekarang kamu paham variabel dan tipe data dasar (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** program yang cuma dijalankan baris demi baris secara linear tidak bisa membuat KEPUTUSAN (melakukan hal berbeda tergantung kondisi) atau MENGULANG pekerjaan yang sama tanpa menulis ulang kodenya berkali-kali.

### Percabangan: `if` / `elif` / `else`
```python
nilai = 75

if nilai >= 90:
    kategori = "A"
elif nilai >= 75:
    kategori = "B"
else:
    kategori = "C"

print(kategori)  # "B"
```

```mermaid
flowchart TD
  Start["nilai = 75"] --> Q1{"nilai >= 90?"}
  Q1 -->|Ya| A["kategori = A"]
  Q1 -->|Tidak| Q2{"nilai >= 75?"}
  Q2 -->|Ya| B["kategori = B"]
  Q2 -->|Tidak| C["kategori = C"]
```

### Perulangan: `for` dan `while`
```python
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
```

### `break` dan `continue`
```python
for n in range(10):
    if n == 5:
        break  # hentikan loop sepenuhnya
    if n % 2 == 0:
        continue  # lewati sisa kode, lanjut ke iterasi berikutnya
    print(n)  # cuma cetak angka ganjil sebelum 5: 1, 3
```

Poin penting:

- Python TIDAK pakai kurung kurawal `{ }` untuk menandai blok kode seperti banyak bahasa lain — blok ditandai lewat INDENTASI (biasanya 4 spasi) setelah tanda titik dua (`:`). Indentasi yang salah/tidak konsisten menyebabkan `IndentationError`.
- `range(5)` menghasilkan urutan `0, 1, 2, 3, 4` (5 ANGKA, tapi berhenti SEBELUM angka 5) — pola ini sering bikin bingung pemula (*off-by-one*).
- Pakai `for` kalau tahu persis berapa kali/apa yang mau diiterasi (list, range), pakai `while` kalau pengulangannya tergantung kondisi yang tidak diketahui jumlahnya di awal.', '[{"url":"https://docs.python.org/3/tutorial/controlflow.html","label":"More Control Flow Tools — Python Docs"}]'::jsonb, '[]'::jsonb, 'Tulis program yang mengecek satu angka: cetak "Fizz" kalau habis dibagi 3, "Buzz" kalau habis dibagi 5, "FizzBuzz" kalau habis dibagi KEDUANYA, atau angkanya sendiri kalau tidak keduanya — pakai `if`/`elif`/`else`. Bungkus dalam `for n in range(1, 21)` supaya jalan untuk angka 1 sampai 20. Lalu tulis `while` loop terpisah yang mencetak angka 10 turun ke 1 (hitung mundur), berhenti otomatis begitu mencapai 0.', 1, 'published', '2026-09-19 12:13:10.509311+00', '2026-09-19 12:13:10.509311+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('2c3c2da4-993d-4390-8b32-a03cc8a63534', '45b3c3a2-5021-4fe0-a1d2-494440bb4ea8', 'Fungsi, Type Hinting, & Arrow Functions', 'fungsi-dan-arrow-functions', 'Catatan sebelumnya membahas percabangan modern. **Masalah yang diselesaikan sekarang:** di PHP lama, fungsi tidak memiliki kejelasan tipe data — kamu bisa mengirim array ke fungsi yang mengharapkan angka tanpa peringatan awal. Selain itu, membuat fungsi *callback* sederhana (misal untuk menyaring array) memakan banyak baris dengan kata kunci `function() { return ...; }`.

PHP modern mendukung **Type Hinting** lengkap (parameter dan return type), **Union Types** (`int|float`), **Named Arguments**, dan **Arrow Functions** yang sangat ringkas (`fn($x) => $x * 2`).

```mermaid
flowchart LR
  Input["hitungDiskon(harga: 100000, persen: 10)"] --> TypeCheck{"Validasi Tipe Data Parameter<br/>harga: int|float<br/>persen: int"}
  TypeCheck -- Tipe Valid --> Calc["Hitung Diskon"]
  Calc --> ReturnCheck{"Validasi Return Type: float"}
  ReturnCheck --> Output["Kembalikan Nilai: 90000.0"]
```

Contoh pembuatan Fungsi Modern dan Arrow Function:

```php
<?php
declare(strict_types=1);

// 1. Fungsi dengan Type Hinting, Union Types, dan Return Type
function hitungTotal(int|float $harga, int $jumlah = 1): float 
{
    return (float) ($harga * $jumlah);
}

// 2. Named Arguments (PHP 8.0+) — Memanggil argumen berdasarkan nama parameter
// Urutan parameter boleh diacak dan lebih mudah dibaca!
$totalBelanja = hitungTotal(jumlah: 3, harga: 45000.0);
echo "Total: Rp$totalBelanja
";

// 3. Arrow Functions (fn() => ...) untuk operasi array deklaratif
$daftarAngka = [1, 2, 3, 4, 5, 6];

// Menyaring angka genap dengan array_filter
$angkaGenap = array_filter($daftarAngka, fn(int $n): bool => $n % 2 === 0);

// Mengalikan setiap angka dengan 10 menggunakan array_map
$dikalikanSepuluh = array_map(fn(int $n): int => $n * 10, $daftarAngka);

print_r($dikalikanSepuluh);
```

Poin penting:

- Sintaks tanda tanya sebelum tipe data (misal `?string`) menandakan bahwa parameter tersebut bersifat *nullable* (boleh bernilai string atau `null`).
- **Arrow functions (`fn`)** otomatis menangkap variabel dari scope luar (*by-value capture*) tanpa perlu menuliskan klausa `use ($var)` manual seperti anonymous function klasik.
- **Named Arguments** membuat kode sangat ekspresif (mirip Flutter atau Python) dan memungkinkan kamu melewati parameter opsional di tengah tanpa mengisi nilai default manual.', '[{"url":"https://www.php.net/manual/en/functions.arguments.php","label":"PHP Official Manual — Function Arguments & Type Declarations"},{"url":"https://www.php.net/manual/en/functions.arrow.php","label":"PHP Official Manual — Arrow Functions"}]'::jsonb, '[]'::jsonb, 'Di project latihan kamu:
1. Buat fungsi `formatRupiah(int|float $angka, string $simbol = "Rp"): string`.
2. Gunakan `number_format($angka, 0, '','', ''.'')` untuk memformat angkanya.
3. Panggil fungsi tersebut dengan *Named Arguments*: `formatRupiah(simbol: "IDR ", angka: 1500000);`.
4. Buat array harga barang dan gunakan `array_map` dengan arrow function `fn($h) => $h * 0.9` untuk memberikan diskon 10% pada seluruh harga.', 2, 'published', '2026-09-22 14:30:05.367275+00', '2026-09-22 14:30:05.057+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('eda9d5ab-bdfa-43b2-936d-5e89cf0aae0c', 'c397eb64-1f60-4364-b6c2-ad628083b315', 'Transaksi ACID & Tingkat Isolasi (Isolation Levels)', 'transaksi-acid-dan-lock', 'Catatan sebelumnya membahas fleksibilitas data JSONB. **Masalah yang diselesaikan sekarang (dan menutup roadmap PostgreSQL):** bayangkan operasi transfer bank: akun Budi dikurangi Rp 1.000.000, lalu server tiba-tiba mati listrik sebelum saldo akun Ani sempat ditambah. Uang satu juta tersebut hilang begitu saja! Masalah kedua: dua user membeli barang terakhir di tiket konser pada mikrodetik yang persis sama. Bagaimana database mencegah data tidak konsisten dalam situasi konkruensi tinggi?

PostgreSQL menjamin kepatuhan penuh terhadap prinsip **ACID**:
- **A (Atomicity):** Seluruh rangkaian operasi berhasil sepenuhnya, atau batal sama sekali (*all or nothing*).
- **C (Consistency):** Data selalu mematuhi semua batasan (*constraints*) sebelum dan sesudah transaksi.
- **I (Isolation):** Transaksi yang berjalan bersamaan tidak saling mengacaukan hasil sementara.
- **D (Durability):** Begitu transaksi sukses di-commit, data dijamin aman dan tidak akan hilang meski server mati mendadak.

```mermaid
flowchart TD
  Begin["BEGIN (Mulai Transaksi)"] --> Step1["1. UPDATE akun SET saldo = saldo - 1000 WHERE id = 1;"]
  Step1 --> Step2["2. UPDATE akun SET saldo = saldo + 1000 WHERE id = 2;"]
  Step2 --> Check{"Ada Gangguan / Error?"}
  Check -- Ada --> Rollback["ROLLBACK (Batalkan semua, saldo Budi kembali utuh!)"]
  Check -- Aman --> Commit["COMMIT (Simpan permanen ke WAL & Disk)"]
```

Contoh sintaks Transaksi Aman di PostgreSQL:

```sql
-- Memulai blok transaksi
BEGIN;

-- Langkah 1: Kurangi saldo pengirim
UPDATE pengguna 
SET saldo = saldo - 100000 
WHERE email = ''budi@gmail.com'';

-- Langkah 2: Tambah saldo penerima
UPDATE pengguna 
SET saldo = saldo + 100000 
WHERE email = ''ani@gmail.com'';

-- Jika semua langkah sukses tanpa error, simpan permanen:
COMMIT;

-- Atau jika terjadi kesalahan logika, batalkan semuanya seketika:
-- ROLLBACK;
```

Tingkat Isolasi (*Isolation Levels*) di PostgreSQL:
| Level | Masalah Dirty Read? | Masalah Non-Repeatable Read? | Masalah Phantom Read? |
| --- | --- | --- | --- |
| **Read Committed (Default)** | Tidak | Bisa Terjadi | Bisa Terjadi |
| **Repeatable Read** | Tidak | Tidak | Tidak (di Postgres) |
| **Serializable** | Tidak | Tidak | Tidak |

Poin penting:

- PostgreSQL menggunakan **MVCC (Multi-Version Concurrency Control)**: pembacaan (*SELECT*) tidak pernah memblokir penulisan (*UPDATE/INSERT*), dan penulisan tidak pernah memblokir pembacaan.
- Gunakan `SELECT ... FOR UPDATE` saat kamu perlu mengunci baris tertentu (pesimistic lock) agar tidak diubah oleh transaksi lain hingga transaksi saat ini selesai (sangat krusial untuk sistem inventaris stok/tiket).
- Jangan biarkan transaksi menggantung terbuka terlalu lama tanpa `COMMIT`/`ROLLBACK` karena akan menahan lock memori server.', '[{"url":"https://www.postgresql.org/docs/current/transaction-iso.html","label":"PostgreSQL Documentation — Transaction Isolation"},{"url":"https://www.postgresql.org/docs/current/mvcc.html","label":"PostgreSQL Documentation — Concurrency Control (MVCC)"}]'::jsonb, '[]'::jsonb, 'Di terminal psql:
1. Buka dua jendela terminal psql berbeda yang terhubung ke database yang sama (Terminal A dan Terminal B).
2. Di Terminal A, ketik `BEGIN; UPDATE pengguna SET saldo = 999999 WHERE email = ''budi@gmail.com'';` (JANGAN COMMIT DULU).
3. Di Terminal B, jalankan `SELECT saldo FROM pengguna WHERE email = ''budi@gmail.com'';` — amati bahwa Terminal B masih melihat saldo lama (karena transaksi A belum di-commit).
4. Di Terminal A, ketik `COMMIT;`.
5. Kembali ke Terminal B dan lakukan SELECT ulang — saksikan saldo baru kini terlihat. Ini menutup roadmap PostgreSQL!', 5, 'published', '2026-09-22 14:24:48.686672+00', '2026-09-22 14:30:08.505+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('4d71d35f-0a91-4d9d-91e1-90b588b8244e', 'a6e9d866-c1b5-4e38-a511-d27a0fed6caa', 'Memahami Storage Engines: InnoDB vs Aria vs MyISAM', 'storage-engines-innodb-vs-aria', 'Catatan sebelumnya membahas operasi SQL dasar. **Masalah yang diselesaikan sekarang:** database lain (seperti PostgreSQL) menggunakan satu mesin penyimpanan yang seragam untuk semua tabel. MariaDB memiliki keunikan berupa **Pluggable Storage Engine Architecture**: kamu bisa memilih mesin penyimpanan yang berbeda untuk tabel yang berbeda sesuai kebutuhan beban kerja aplikasi (apakah butuh transaksi keuangan yang ketat, atau butuh pembacaan analitik super cepat tanpa transaksi).

Dua engine paling penting di MariaDB:
1. **InnoDB (Default untuk Aplikasi Web Modern):** Mendukung penuh transaksi ACID, kunci baris (*row-level locking*), dan integritas Foreign Key.
2. **Aria (Fitur Eksklusif MariaDB):** Pengganti mesin lawas MyISAM yang dirancang aman dari crash (*crash-safe*), sangat efisien untuk data read-heavy dan tabel sementara (*temporary tables*).

```mermaid
flowchart TD
  Query["MariaDB SQL Layer (Parser & Optimizer)"]
  Query --> EngineCheck{"Pilih Storage Engine per Tabel"}
  EngineCheck -- ENGINE=InnoDB --> InnoDB["InnoDB Engine<br/>Transaksional ACID<br/>Row-level Lock<br/>Foreign Keys"]
  EngineCheck -- ENGINE=Aria --> Aria["Aria Engine<br/>Crash-safe<br/>Super Cepat Read-Only<br/>Table-level Lock"]
```

Menentukan Storage Engine pada Tabel:

```sql
-- 1. Tabel transaksional (misal order/pembayaran) WAJIB menggunakan InnoDB
CREATE TABLE pesanan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    total_bayar DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

-- 2. Tabel analitik / log baca-saja yang jarang di-update bisa menggunakan Aria
CREATE TABLE log_kunjungan (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    ip_address VARCHAR(45) NOT NULL,
    halaman VARCHAR(255) NOT NULL,
    waktu DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=Aria PAGE_CHECKSUM=1;

-- 3. Memeriksa storage engine seluruh tabel
SHOW TABLE STATUS FROM portal_berita;
```

Poin penting:

- Untuk 95% kasus aplikasi web modern (seperti Laravel, WordPress, Django, Node.js), **selalu gunakan InnoDB**.
- Jangan gunakan engine kuno `MyISAM` di proyek baru: MyISAM tidak tahan crash (tabel bisa rusak jika mati lampu) dan hanya mendukung *table-level locking* (satu update mengunci seluruh tabel).
- Engine `MEMORY` menyimpan seluruh tabel murni di RAM untuk data sementara berumur pendek.', '[{"url":"https://mariadb.com/kb/en/storage-engines/","label":"MariaDB Knowledge Base — Storage Engines"},{"url":"https://mariadb.com/kb/en/aria/","label":"MariaDB Knowledge Base — Aria Storage Engine"}]'::jsonb, '[]'::jsonb, 'Di terminal mariadb kamu:
1. Jalankan `SHOW ENGINES;` untuk melihat seluruh storage engine yang aktif di server MariaDB.
2. Buat satu tabel dengan `ENGINE=InnoDB` dan satu tabel log dengan `ENGINE=Aria`.
3. Jalankan `SHOW TABLE STATUSG` dan amati perbedaan kolom `Engine` pada kedua tabel tersebut.', 2, 'published', '2026-09-22 14:24:49.211488+00', '2026-09-22 14:30:09.07+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('4a0c242e-8f48-4777-8060-ad5d6073febd', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'useEffect Dasar (Sinkronisasi dengan Sistem Luar)', 'use-effect-dasar', '**Masalah yang diselesaikan:** semua yang dibahas roadmap ini sejauh ini terjadi murni di dalam React — render UI dari state dan props. Tapi aplikasi nyata sering perlu "keluar" dari dunia React: mengambil data dari API, mengatur judul tab browser, memasang timer, atau berlangganan event dari luar. Kalau kode semacam ini dijalankan langsung di badan component (waktu render), efeknya bisa terpicu berkali-kali secara tidak terduga setiap kali component render ulang.

`useEffect` adalah Hook yang menyelesaikan ini: menjalankan kode **setelah** render selesai, dan cuma dijalankan ulang kalau nilai yang kamu tentukan benar-benar berubah.

```mermaid
flowchart TD
    Render["Component selesai render"] --> Cek{"Dependency array berubah?"}
    Cek -->|Ya| Cleanup["Jalankan cleanup function (kalau ada) dari efek sebelumnya"]
    Cleanup --> Run["Jalankan efek baru"]
    Cek -->|Tidak| Skip["Lewati, tidak dijalankan ulang"]
```

### 1. Sintaks Dasar

```jsx
import { useEffect, useState } from ''react''

function JudulHalaman({ judul }) {
  useEffect(() => {
    document.title = judul
  }, [judul])

  return <h1>{judul}</h1>
}
```

- Argumen pertama: fungsi yang berisi efeknya (kode yang "keluar" dari React, di sini mengubah `document.title`).
- Argumen kedua (*dependency array*): daftar nilai yang, kalau berubah sejak render terakhir, memicu efek dijalankan ulang. `[judul]` berarti "jalankan ulang cuma kalau `judul` berubah".

### 2. Tiga Bentuk Dependency Array

| Dependency Array | Kapan Efek Jalan |
| --- | --- |
| `[]` (array kosong) | Cuma sekali, tepat setelah render pertama (mount). |
| `[judul]` | Tiap kali render pertama, DAN tiap kali `judul` berubah. |
| Tanpa argumen kedua sama sekali | Setiap kali component render ulang, apa pun penyebabnya — jarang ini yang diinginkan. |

### 3. Cleanup Function

Kalau efek membuat sesuatu yang perlu "dibereskan" sebelum efek berikutnya jalan (atau sebelum component hilang dari layar) — misalnya `setInterval` atau subscription — fungsi cleanup dikembalikan dari efeknya:

```jsx
function Timer() {
  const [detik, setDetik] = useState(0)

  useEffect(() => {
    const id = setInterval(() => setDetik((d) => d + 1), 1000)
    return () => clearInterval(id) // Cleanup: dipanggil sebelum efek berikutnya / saat unmount
  }, [])

  return <p>{detik} detik berlalu</p>
}
```

Tanpa `clearInterval` di cleanup, tiap kali component ini remount akan menumpuk interval baru yang jalan terus di background — kebocoran memori (*memory leak*) yang klasik.', '[{"url":"https://react.dev/learn/synchronizing-with-effects","label":"React – Synchronizing with Effects"}]'::jsonb, '[]'::jsonb, 'Buat component `Timer` seperti contoh di atas. Lalu sengaja hapus baris `return () => clearInterval(id)`, tampilkan/sembunyikan component itu berkali-kali lewat conditional rendering, dan tambahkan `console.log(''interval baru dipasang'')` di dalam efeknya untuk mengamati penumpukan timer akibat cleanup yang hilang.', 9, 'published', '2026-09-21 23:24:41.175314+00', '2026-09-22 13:32:06.454+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('450a660e-26e5-4470-9ac7-6db63edb259b', 'b403e972-3cb3-4605-a6b6-bb0f2774b0f6', 'Route Handlers Dasar (API Routes)', 'route-handlers-dasar', '**Masalah yang diselesaikan:** catatan sebelumnya fokus mengambil data DARI luar (API pihak ketiga). Tapi bagaimana kalau justru aplikasi Next.js kamu sendiri yang perlu jadi sumber data buat aplikasi lain (mobile app, atau frontend terpisah)? Kamu butuh bikin API endpoint sendiri.

Route Handlers memungkinkan kita membuat custom request handler untuk REST API publik menggunakan Web Standard `Request` dan `Response` API di dalam file `route.ts`.

```mermaid
flowchart LR
    Client["Client / External App"] -->|HTTP GET /api/users| GetHandler["GET(request)"]
    Client -->|HTTP POST /api/users| PostHandler["POST(request)"]

    GetHandler --> Res["NextResponse.json(...)"]
    PostHandler --> Res
```

### 1. Membuat Endpoint API (`app/api/users/route.ts`)
```ts
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
```

### 2. Dynamic Route Handler (`app/api/users/[id]/route.ts`)
```ts
export async function GET(
  request: Request,
  { params }: { params: { id: string } }
) {
  const userId = params.id;
  return NextResponse.json({ id: userId, nama: `User ${userId}` });
}
```

- File `route.ts` tidak boleh ditaruh di folder yang sama dengan `page.tsx`.
- Method HTTP yang didukung: `GET`, `POST`, `PUT`, `PATCH`, `DELETE`, `HEAD`, dan `OPTIONS`.', '[{"url":"https://nextjs.org/docs/app/building-your-application/routing/route-handlers","label":"Next.js Docs — Route Handlers"}]'::jsonb, '[]'::jsonb, 'Buat `app/api/produk/route.ts` yang punya handler `GET` mengembalikan daftar produk statis (array beberapa object). Lalu:

1. Buka `http://localhost:3000/api/produk` langsung di browser — harus muncul JSON-nya.
2. Tambahkan handler `POST` yang menerima body JSON dan validasi field wajib (seperti contoh error 400 di atas), lalu tes lewat `fetch` di console browser atau tool seperti Postman/curl.', 7, 'published', '2026-09-18 09:12:03.345176+00', '2026-09-22 13:32:11.67+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('533997b1-eb1d-4bd4-bf99-b0acfb72864d', 'b4e47208-8775-4a24-a2f3-1655745b90f1', 'Struktur Data Dasar: list, tuple, dict, set', 'struktur-data-dasar', 'Sekarang kamu bisa membuat keputusan dan mengulang (dari catatan sebelumnya) — biasanya dipakai BARENGAN dengan struktur data untuk mengolah kumpulan nilai. **Masalah yang diselesaikan sekarang:** satu variabel cuma menyimpan SATU nilai — bagaimana menyimpan banyak nilai sekaligus, dan bagaimana memilih struktur yang tepat tergantung kebutuhan (perlu urutan? boleh duplikat? perlu pasangan key-value? perlu nilai unik saja)?

```python
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
```

```mermaid
flowchart TD
  Q1{"Perlu urutan?"}
  Q1 -->|Tidak, cuma unik| Set["set"]
  Q1 -->|Ya| Q2{"Perlu key-value?"}
  Q2 -->|Ya| Dict["dict"]
  Q2 -->|Tidak| Q3{"Boleh berubah?"}
  Q3 -->|Ya| List["list"]
  Q3 -->|Tidak| Tuple["tuple"]
```

| Struktur | Urutan? | Bisa Diubah? | Boleh Duplikat? | Contoh Sintaks |
| --- | --- | --- | --- | --- |
| `list` | Ya | Ya | Ya | `[1, 2, 3]` |
| `tuple` | Ya | Tidak | Ya | `(1, 2, 3)` |
| `dict` | Ya (sejak Python 3.7+) | Ya | Key harus unik | `{"a": 1}` |
| `set` | Tidak | Ya (isi boleh ditambah/dibuang) | Tidak | `{1, 2, 3}` |

Poin penting:

- Pakai `tuple` untuk data yang secara konsep TIDAK BOLEH berubah (koordinat, RGB warna) — sifat immutable-nya jadi jaminan, bukan sekadar konvensi.
- Akses `dict` dengan key yang tidak ada melempar `KeyError` — pakai `profil.get("kota", "tidak ada")` untuk ambil dengan nilai default kalau key-nya mungkin tidak ada.
- `set` berguna untuk operasi seperti mengecek keberadaan nilai secara cepat, atau menghilangkan duplikat dari sebuah list: `list(set(list_dengan_duplikat))`.', '[{"url":"https://docs.python.org/3/tutorial/datastructures.html","label":"Data Structures — Python Docs"}]'::jsonb, '[]'::jsonb, 'Buat `list` berisi 5 nama buah, tambahkan satu buah lagi pakai `.append()`. Buat `tuple` berisi koordinat `(x, y)`, coba ubah salah satu elemennya dan catat error-nya. Buat `dict` profil diri sendiri (`nama`, `umur`, `kota`), akses satu key yang TIDAK ada pakai `.get()` dengan default value. Buat `set` dari sebuah list yang sengaja punya banyak duplikat, buktikan hasilnya cuma berisi nilai unik.', 2, 'published', '2026-09-19 12:13:10.509311+00', '2026-09-19 12:13:10.509311+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('325f8dde-35ce-4bbf-b50c-69f8b55d22c4', 'b4e47208-8775-4a24-a2f3-1655745b90f1', 'Error Handling: try, except, finally', 'error-handling-dasar', 'Sekarang kamu bisa menulis fungsi dan mengolah struktur data (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang:** kalau ada error runtime yang tidak ditangani (misalnya user mengetik teks padahal program mengharapkan angka), seluruh program berhenti total (*uncaught exception*) — bagaimana caranya program tetap jalan dan memberi respons yang masuk akal?

```python
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
```

```mermaid
flowchart TD
  Try["Kode di dalam try:"] -->|Berhasil, tanpa error| Skip["except DILEWATI"]
  Try -->|Error dilempar| Except["except ValueError: dijalankan"]
  Skip --> Finally["finally: — SELALU dijalankan"]
  Except --> Finally
```

### Menangani Beberapa Jenis Error & Melempar Error Sendiri
```python
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
```

Poin penting:

- Tangkap jenis exception SPESIFIK (`ValueError`, `KeyError`, dst) sebisa mungkin, bukan langsung `except:` tanpa jenis — supaya kamu tahu persis error apa yang sedang ditangani, dan tidak diam-diam menyembunyikan bug lain yang tidak terkait.
- `finally` dijalankan SELALU, baik `try`-nya berhasil maupun gagal — cocok untuk kode pembersihan (menutup file/koneksi) yang wajib jalan apa pun hasilnya.
- `raise` melempar exception secara manual — berguna untuk menandai kondisi yang secara logis salah meski tidak menyebabkan error Python secara langsung.', '[{"url":"https://docs.python.org/3/tutorial/errors.html","label":"Errors and Exceptions — Python Docs"}]'::jsonb, '[]'::jsonb, 'Tulis program yang minta input umur lewat `input()`, coba konversi ke `int()` di dalam `try/except ValueError` — kalau gagal, cetak pesan error yang jelas alih-alih program crash. Tambahkan `finally` yang selalu mencetak "Selesai". Tulis fungsi `bagi(a, b)` yang `raise ValueError` kalau `b == 0`, panggil dalam `try/except`, cetak pesan error-nya lewat `except ValueError as e: print(e)`.', 5, 'published', '2026-09-19 12:13:10.509311+00', '2026-09-19 12:13:10.509311+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('b4ce9eba-3ca3-44cc-b477-7d1d8b755665', '45b3c3a2-5021-4fe0-a1d2-494440bb4ea8', 'OOP Modern: Constructor Property Promotion & Readonly', 'oop-constructor-promotion-dan-readonly', 'Catatan sebelumnya membahas fungsi bertipe. **Masalah yang diselesaikan sekarang:** menulis class di PHP klasik membutuhkan penulisan nama variabel sebanyak 3 sampai 4 kali untuk satu properti saja (deklarasi properti, argumen constructor, penugasan `$this->nama = $nama;`, dan getter). Ini memakan puluhan baris boilerplate hanya untuk membuat data model sederhana.

PHP 8+ memperkenalkan **Constructor Property Promotion** dan **Readonly Properties**: kamu bisa mendeklarasikan properti class, visibilitas, dan tipe datanya langsung di dalam parameter constructor dalam satu baris saja!

```mermaid
flowchart TD
  subgraph CaraLama["PHP Klasik (15 Baris Boilerplate)"]
    L1["private string $judul;"]
    L2["private float $harga;"]
    L3["public function __construct($j, $h) {"]
    L4["  $this->judul = $j; $this->harga = $h;"]
    L5["}"]
  end
  subgraph Modern["PHP 8+: Constructor Promotion (3 Baris!)"]
    M1["public function __construct(<br/>  public readonly string $judul,<br/>  public float $harga<br/>) {}"]
  end
  CaraLama -->|Diringkas secara radikal| Modern
```

Contoh pembuatan Class Modern dan Enum di PHP:

```php
<?php
declare(strict_types=1);

// 1. Pure Enum (PHP 8.1+) — Pilihan terbatas yang aman dari typo
enum StatusOrder: string {
    case Pending = "menunggu_bayar";
    case Selesai = "selesai";
    case Batal = "dibatalkan";
}

// 2. Class Modern dengan Constructor Property Promotion & Readonly
class Produk {
    // Properti ''nama'' bersifat readonly (hanya bisa diisi sekali, tidak bisa diubah lagi)
    public function __construct(
        public readonly string $nama,
        public float $harga,
        public StatusOrder $status = StatusOrder::Pending
    ) {
        // Body constructor boleh kosong karena penugasan properti sudah otomatis!
    }

    public function tampilkanInfo(): void {
        echo "Produk: {$this->nama} | Harga: Rp{$this->harga} | Status: {$this->status->value}
";
    }
}

// Instansiasi objek
$laptop = new Produk(nama: "MacBook Air", harga: 18000000.0);
$laptop->tampilkanInfo();

// $laptop->nama = "Asus"; // Fatal Error: Cannot modify readonly property!
```

Poin penting:

- **Constructor Property Promotion**: Kata kunci visibilitas (`public`, `private`, `protected`) di depan parameter constructor secara otomatis mengubah parameter tersebut menjadi atribut class.
- **Readonly Property / Readonly Class**: Menjamin imutabilitas data (*immutable object*), mencegah bug tak terduga akibat mutasi state liar.
- **Backed Enums** (misal `enum Status: string`) memiliki properti `.value` untuk mengambil nilai skalar dasarnya (sangat berguna untuk disimpan ke database).
- Pola OOP modern ini adalah fondasi penulisan Controller dan Entity di **Laravel 11**.', '[{"url":"https://www.php.net/manual/en/language.oop5.decon.php#language.oop5.decon.constructor.promotion","label":"PHP Official Manual — Constructor Property Promotion"},{"url":"https://www.php.net/manual/en/language.oop5.properties.php#language.oop5.properties.readonly-properties","label":"PHP Official Manual — Readonly Properties"}]'::jsonb, '[]'::jsonb, 'Di file latihan kamu:
1. Buat enum `KategoriBuku: string` dengan kasus `Teknologi`, `Sains`, dan `Fiksi`.
2. Buat class `Buku` menggunakan Constructor Promotion dengan properti `public readonly string $judul`, `public string $penulis`, dan `public KategoriBuku $kategori`.
3. Buat objek buku baru dengan *Named Arguments*: `new Buku(judul: "Laskar Pelangi", penulis: "Andrea Hirata", kategori: KategoriBuku::Fiksi);`.
4. Cetak properti judul dan kategori dari objek tersebut.', 3, 'published', '2026-09-22 14:30:05.583553+00', '2026-09-22 14:30:05.283+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('b7e12e0b-d09c-43d9-bf12-f7247219e599', 'a6e9d866-c1b5-4e38-a511-d27a0fed6caa', 'Pengenalan MariaDB & CLI mariadb / mysql', 'pengenalan-mariadb-dan-mariadb-client', '**Masalah yang diselesaikan:** ketika Sun Microsystems (dan kemudian Oracle) mengakuisisi MySQL, komunitas open-source khawatir masa depan MySQL akan ditutup atau dibatasi fiturnya. Michael "Monty" Widenius (pencipta asli MySQL) membuat fork bernama **MariaDB** untuk menjamin bahwa teknologi database relasional populer ini akan selalu 100% gratis, open-source, dan dikembangkan secara transparan.

MariaDB adalah pengganti langsung (*drop-in replacement*) untuk MySQL: protokol jaringan, port koneksi (3306), dan sebagian besar sintaks SQL identik, namun MariaDB menawarkan performa query optimizer yang lebih agresif dan storage engine modern.

```mermaid
flowchart LR
  App["Aplikasi Web / Web Hosting (Port 3306)"] --> Socket["MariaDB Server Daemon (mariadbd)"]
  Socket --> Auth["Autentikasi User (mysql.user)"]
  Socket --> Engine["Default Storage Engine (InnoDB / Aria)"]
```

Menjalankan server MariaDB menggunakan Docker:

```bash
# 1. Jalankan container MariaDB terbaru
docker run --name mariadb-belajar -e MARIADB_ROOT_PASSWORD=rahasia -p 3306:3306 -d mariadb:latest

# 2. Masuk ke terminal client mariadb / mysql
docker exec -it mariadb-belajar mariadb -u root -prahasia
```

Perintah navigasi dasar:

```sql
-- Melihat daftar database
SHOW DATABASES;

-- Membuat database baru
CREATE DATABASE portal_berita;

-- Memilih database aktif
USE portal_berita;

-- Memeriksa versi server MariaDB yang sedang berjalan
SELECT VERSION();

-- Keluar
EXIT;
```

Poin penting:

- MariaDB menggunakan port default **3306**.
- Klien terminal MariaDB dapat dipanggil dengan perintah `mariadb` atau alias lama `mysql`.
- MariaDB menyertakan fitur modern seperti *system-versioned tables* (mencatat riwayat audit perubahan data otomatis) yang tidak dimiliki MySQL standar.', '[{"url":"https://mariadb.com/kb/en/about-mariadb/","label":"MariaDB Official Knowledge Base — About MariaDB"},{"url":"https://hub.docker.com/_/mariadb","label":"Docker Hub Official MariaDB Image"}]'::jsonb, '[{"url":"https://www.docker.com/","label":"Docker sudah terinstall di komputermu (atau MariaDB native server)"}]'::jsonb, 'Buka terminal:
1. Jalankan container MariaDB via Docker seperti contoh di atas.
2. Masuk ke terminal client `mariadb -u root -prahasia`.
3. Buat database baru bernama `blog_pribadi` dengan `CREATE DATABASE blog_pribadi;`.
4. Jalankan `SHOW DATABASES;` dan pastikan database barumu terdaftar.
5. Ketik `USE blog_pribadi;` lalu `EXIT;`.', 0, 'published', '2026-09-22 14:24:48.857103+00', '2026-09-22 14:30:08.67+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('cad40864-66e5-4387-8974-c04cdc104a41', 'a6e9d866-c1b5-4e38-a511-d27a0fed6caa', 'Manajemen User, Hak Akses (Privileges), & Keamanan', 'user-privileges-dan-keamanan', 'Catatan sebelumnya membahas storage engine. **Masalah yang diselesaikan sekarang:** kesalahan keamanan nomor satu bagi pemula adalah menghubungkan aplikasi web langsung menggunakan akun `root` tanpa batasan. Jika aplikasi web tersebut memiliki celah celah SQL Injection, penyerang dapat menghapus seluruh database, membaca berkas rahasia server, bahkan menguasai sistem operasi!

Prinsip keamanan standar industri adalah **Principle of Least Privilege**: buat user database khusus untuk aplikasi tersebut, dan hanya berikan hak akses pada database miliknya saja.

```mermaid
flowchart LR
  Hacker["Potensi SQL Injection di Web"] --> AppUser["Akun ''app_user''@''%''"]
  AppUser -->|Hanya boleh SELECT/INSERT/UPDATE di ''portal_berita''| Allowed["Operasi Normal Sukses"]
  AppUser -.->|Coba DROP DATABASE lain / akses sistem| Denied["Ditolak MariaDB:<br/>Access denied for user!"]
```

Perintah membuat User dan mengatur Hak Akses (*Privileges*):

```sql
-- 1. Membuat user baru dengan password yang kuat
-- ''%'' berarti user boleh terhubung dari IP mana saja (atau ganti ''localhost'')
CREATE USER ''app_user''@''%'' IDENTIFIED BY ''PasswordSangatKuat123!'';

-- 2. Memberikan hak akses CRUD spesifik HANYA pada database ''portal_berita''
GRANT SELECT, INSERT, UPDATE, DELETE ON portal_berita.* TO ''app_user''@''%'';

-- 3. Terapkan perubahan hak akses seketika
FLUSH PRIVILEGES;

-- 4. Memeriksa daftar izin yang dimiliki user tersebut
SHOW GRANTS FOR ''app_user''@''%'';
```

Jika suatu saat ingin mencabut hak akses atau menghapus user:

```sql
-- Mencabut hak DELETE (misal akun hanya boleh membaca dan menambah)
REVOKE DELETE ON portal_berita.* FROM ''app_user''@''%'';

-- Menghapus user sepenuhnya
DROP USER ''app_user''@''%'';
```

Poin penting:

- Akun `root` hanya boleh dipakai oleh administrator database untuk pemeliharaan server, jangan pernah disimpan di file konfigurasi `.env` aplikasi produksi.
- Selalu batasi hostname/IP jika memungkinkan: gunakan `''app_user''@''localhost''` jika backend web berjalan di mesin yang sama dengan database MariaDB.
- Perintah `FLUSH PRIVILEGES` memastikan tabel otentikasi internal server di-reload seketika.', '[{"url":"https://mariadb.com/kb/en/grant/","label":"MariaDB Knowledge Base — GRANT"},{"url":"https://mariadb.com/kb/en/user-account-management/","label":"MariaDB Knowledge Base — User Account Management"}]'::jsonb, '[]'::jsonb, 'Di terminal mariadb:
1. Buat user baru bernama `kasir_toko` dengan password unik.
2. Berikan izin hanya `SELECT` dan `INSERT` pada database latihanmu.
3. Buka terminal baru dan coba login menggunakan user baru tersebut: `mariadb -u kasir_toko -p`.
4. Coba jalankan perintah `DELETE FROM ...` dan buktikan bahwa MariaDB menolak eksekusi karena akun tersebut tidak memiliki hak hapus data.', 3, 'published', '2026-09-22 14:24:49.399504+00', '2026-09-22 14:30:09.236+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('5b25c713-0c3b-467d-9bd2-3f5002f12668', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'State & useState Dasar', 'state-dan-usestate-dasar', 'Catatan sebelumnya menunjukkan cara merespons interaksi user lewat event listener. **Masalah yang diselesaikan sekarang:** kalau kamu cuma mengubah variabel JavaScript biasa di dalam event handler (`let count = 0; count++`), tampilan layar **tidak akan berubah**. Variabel lokal tereset setiap kali fungsi component dijalankan, dan React tidak tahu kapan harus menggambar ulang layar. Component butuh cara untuk **mengingat** data antar-render dan memberi tahu React untuk memperbarui tampilan.

`useState` adalah *Hook* bawaan React yang menyelesaikan dua masalah itu sekaligus: menyimpan nilai yang tetap ada antar render, dan memberi tahu React untuk render ulang UI setiap nilainya berubah.

```mermaid
flowchart LR
    Klik["User klik tombol"] --> Set["setCount(count + 1)"]
    Set --> ReRender["React render ulang component"]
    ReRender --> UI["UI menampilkan angka baru"]
```

### 1. Menggunakan useState

```jsx
import { useState } from ''react''

function Counter() {
  const [count, setCount] = useState(0)

  return (
    <button onClick={() => setCount(count + 1)}>
      Diklik {count} kali
    </button>
  )
}
```

- `useState(0)` mengembalikan array berisi dua hal: nilai state saat ini (`count`) dan fungsi untuk mengubahnya (`setCount`). `0` adalah nilai awal.
- Memanggil `setCount(...)` **tidak langsung** mengubah `count` di tempat — itu memberi tahu React untuk menjadwalkan render ulang dengan nilai baru.
- **Jangan pernah** mengubah state secara langsung (`count = count + 1`) — React tidak akan tahu ada perubahan dan UI tidak ter-update.

### 2. State Bersifat Lokal per Component

Kalau `<Counter />` dipakai dua kali di halaman yang sama, masing-masing punya `count` sendiri-sendiri, terpisah total — mengklik yang satu tidak memengaruhi yang lain. State "milik" instance component tertentu, bukan dibagi otomatis ke component lain (untuk berbagi state antar component, biasanya state-nya dipindah ke parent bersama dan dikirim lewat props — topik lanjutan di luar roadmap dasar ini).', '[{"url":"https://react.dev/learn/state-a-components-memory","label":"React – State: A Component''s Memory"}]'::jsonb, '[]'::jsonb, 'Buat component counter interaktif di `src/App.jsx`:
1. Import `useState` dari `"react"`.
2. Deklarasikan state: `const [hitung, setHitung] = useState(0)`.
3. Buat dua tombol: tombol "+ Tambah" (`onClick={() => setHitung(hitung + 1)}`) dan tombol "- Kurang" (`onClick={() => setHitung(hitung - 1)}`).
4. Tambahkan tombol "Reset" yang mengembalikan nilai `setHitung(0)`.
5. Coba klik tombol di browser dan perhatikan bagaimana angka di layar langsung berubah seketika tanpa perlu reload halaman.', 4, 'published', '2026-09-21 23:24:41.175314+00', '2026-09-22 13:32:05.451+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('c357b844-d366-44d5-8d81-7377d8abd0d2', 'b403e972-3cb3-4605-a6b6-bb0f2774b0f6', 'Environment Variables Dasar di Next.js', 'environment-variables-dasar', '**Masalah yang diselesaikan:** Route Handler yang barusan kamu buat mungkin perlu terhubung ke database atau API eksternal yang butuh API key rahasia. Menaruh key itu langsung di kode (hardcode) berbahaya — apalagi kalau kode itu ter-commit ke Git repo publik.

Next.js memiliki dukungan bawaan untuk memuat environment variables dari file `.env.local` dengan pemisahan keamanan antara Server dan Browser.

```mermaid
flowchart TD
    subgraph EnvFile [".env.local"]
        Secret["DATABASE_SECRET_KEY=rahasia123"]
        Public["NEXT_PUBLIC_API_URL=https://api.com"]
    end

    Secret -->|Hanya Terbaca| Server["Server Environment (Node.js Runtime)"]
    Public -->|Terbaca & Di-bundle| Browser["Browser / Client Bundle (''use client'')"]

    Secret -.->|BLOCKED / undefined| Browser
```

### 1. Definisi Variabel di `.env.local`
```bash
# Variabel Rahasia (Server Only)
DATABASE_URL="postgresql://user:pass@localhost:5432/db"
SUPABASE_SERVICE_ROLE_KEY="eyJh..."

# Variabel Publik (Browser & Server)
NEXT_PUBLIC_SUPABASE_URL="https://example.supabase.co"
NEXT_PUBLIC_SITE_NAME="Catatan Belajar"
```

### 2. Mengakses Variabel di Kode

```tsx
// 1. Di Server Component atau Route Handler (Bisa akses keduanya)
export default function ServerPage() {
  const secret = process.env.DATABASE_URL; // Terbaca aman
  const site = process.env.NEXT_PUBLIC_SITE_NAME;
  return <div>{site}</div>;
}

// 2. Di Client Component (''use client'')
"use client";

export default function ClientButton() {
  // Hanya variabel dengan prefix NEXT_PUBLIC_ yang bisa diakses
  const site = process.env.NEXT_PUBLIC_SITE_NAME;
  // process.env.DATABASE_URL -> undefined (Mencegah kebocoran kunci rahasia)

  return <button>Kunjungi {site}</button>;
}
```

- **Prefix `NEXT_PUBLIC_`**: Wajib diberikan jika suatu variabel perlu dibaca di sisi klien/browser.
- **Keamanan**: Jangan pernah memberi prefix `NEXT_PUBLIC_` pada Private Key, Secret Token, atau Database Password.', '[{"url":"https://nextjs.org/docs/app/building-your-application/configuring/environment-variables","label":"Next.js Docs — Environment Variables"}]'::jsonb, '[]'::jsonb, 'Tambahkan `.env.local` di root project dengan dua variabel: satu tanpa prefix (`RAHASIA_TEST=abc123`) dan satu dengan prefix `NEXT_PUBLIC_` (`NEXT_PUBLIC_NAMA_APP=Belajar Next.js`). Restart dev server (`.env.local` cuma dibaca saat start), lalu:

1. Di Server Component manapun, `console.log(process.env.RAHASIA_TEST)` — muncul di terminal tempat `npm run dev` jalan.
2. Di Client Component, coba akses `process.env.RAHASIA_TEST` (harus `undefined`) vs `process.env.NEXT_PUBLIC_NAMA_APP` (harus muncul nilainya) — buktikan sendiri batas keamanannya.', 8, 'published', '2026-09-18 09:12:03.856045+00', '2026-09-22 13:32:11.899+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('de6ea69a-2b96-4586-800d-a2d8d1d0045c', 'b4e47208-8775-4a24-a2f3-1655745b90f1', 'Membaca & Menulis File Dasar', 'membaca-menulis-file-dasar', 'Sekarang kamu bisa menangani error dengan aman (dari catatan sebelumnya) — penting karena operasi file gampang gagal (file tidak ada, tidak ada izin akses, dst). **Masalah yang diselesaikan sekarang:** data yang cuma hidup di variabel HILANG begitu program selesai dijalankan — bagaimana caranya menyimpan data ke file supaya tetap ada (*persistent*) untuk dibaca lagi nanti, bahkan oleh program lain?

```python
# Menulis ke file — mode "w" (write, menimpa isi lama)
with open("catatan.txt", "w") as f:
    f.write("Baris pertama\n")
    f.write("Baris kedua\n")

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
    f.write("Baris tambahan\n")
```

```mermaid
flowchart LR
  Open["with open(''file'', mode) as f:"] --> Ops["Baca/tulis lewat f"]
  Ops --> Close["File OTOMATIS ditutup<br/>saat keluar blok with"]
```

| Mode | Fungsi |
| --- | --- |
| `"r"` | Baca (*read*) — error kalau file tidak ada |
| `"w"` | Tulis (*write*) — MENIMPA seluruh isi lama, atau buat file baru kalau belum ada |
| `"a"` | Tambah (*append*) — menambah di akhir file, isi lama tetap ada |

Poin penting:

- Pakai `with open(...) as f:` (*context manager*), BUKAN `f = open(...)` manual — `with` menjamin file otomatis ditutup begitu blok kodenya selesai, bahkan kalau terjadi error di tengah jalan. Lupa menutup file bisa menyebabkan kebocoran resource.
- Mode `"w"` MENGHAPUS seluruh isi file lama tanpa peringatan — pastikan memang itu yang diinginkan, kalau tidak pakai `"a"`.
- Kombinasikan dengan `try/except FileNotFoundError` (dari catatan sebelumnya) untuk menangani kasus file yang mau dibaca ternyata belum ada.', '[{"url":"https://docs.python.org/3/tutorial/inputoutput.html#reading-and-writing-files","label":"Reading and Writing Files — Python Docs"}]'::jsonb, '[]'::jsonb, 'Tulis program yang membuat file `tugas.txt` berisi 3 baris tugas (mode `"w"`). Baca ulang file itu dan cetak isinya baris per baris. Tambahkan satu baris tugas baru pakai mode `"a"`, baca lagi untuk buktikan baris lama TIDAK hilang. Terakhir, coba `open("tidak-ada.txt", "r")` pada file yang sengaja tidak ada, bungkus dengan `try/except FileNotFoundError` supaya program tidak crash, cetak pesan error yang jelas.', 6, 'published', '2026-09-19 12:13:10.509311+00', '2026-09-19 12:13:10.509311+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('b7fdf2d5-4091-406a-9485-69c07ea6e713', 'b4e47208-8775-4a24-a2f3-1655745b90f1', 'Import & Module Dasar', 'import-dan-module-dasar', 'Sekarang kamu sudah bisa membaca/menulis file (dari catatan sebelumnya) — kode kamu makin banyak melakukan hal berbeda-beda. **Masalah yang diselesaikan sekarang:** menaruh SEMUA kode di satu file besar makin lama makin susah dikelola — bagaimana caranya memecah kode jadi beberapa file terpisah dan memakai ulang fungsi dari file lain, atau dari library yang sudah ada (bukan menulis ulang dari nol)?

### Import dari Standard Library
Python punya banyak module bawaan (*standard library*) siap pakai tanpa install apa pun:

```python
import math
print(math.sqrt(16))  # 4.0

import random
print(random.randint(1, 10))  # angka acak 1-10

from datetime import datetime
print(datetime.now())  # waktu saat ini
```

### Membuat Module Sendiri
```python
# file: kalkulator.py
def tambah(a, b):
    return a + b

def kurang(a, b):
    return a - b
```

```python
# file: main.py — di folder yang sama dengan kalkulator.py
import kalkulator
print(kalkulator.tambah(2, 3))  # 5

# atau import fungsi tertentu langsung
from kalkulator import kurang
print(kurang(5, 2))  # 3
```

```mermaid
flowchart LR
  Std["Standard Library<br/>(bawaan Python: math, random, dst)"] -->|import| Code["Kode kamu"]
  Pip["Package pihak ketiga<br/>(diinstall lewat pip)"] -->|import| Code
  Own["Module buatan sendiri<br/>(file .py lain)"] -->|import| Code
```

Poin penting:

- `import module` mengharuskan pakai prefix `module.fungsi()`, sedangkan `from module import fungsi` bisa langsung panggil `fungsi()` tanpa prefix — tapi lebih rawan bentrok nama kalau banyak module diimpor sekaligus.
- Package pihak ketiga (yang tidak termasuk standard library, misalnya `requests`) harus di-`pip install` dulu sebelum bisa di-`import` — dibahas lebih lanjut di catatan berikutnya soal virtual environment.
- `import module as alias` (mis. `import numpy as np`) memberi nama pendek supaya tidak perlu mengetik nama module lengkap berulang kali — konvensi umum di banyak library populer.', '[{"url":"https://docs.python.org/3/tutorial/modules.html","label":"Modules — Python Docs"}]'::jsonb, '[]'::jsonb, 'Buat file `kalkulator.py` berisi minimal 3 fungsi (`tambah`, `kurang`, `kali`). Buat file `main.py` di folder yang sama, `import kalkulator` lalu panggil ketiga fungsinya. Coba juga `from kalkulator import tambah` dan panggil langsung tanpa prefix. Import module bawaan `random`, gunakan `random.choice()` untuk memilih satu nama secara acak dari sebuah list nama yang kamu buat.', 7, 'published', '2026-09-19 12:13:10.509311+00', '2026-09-19 12:13:10.509311+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('2b37c216-ac5e-497c-afd2-73a996993271', 'd68cb157-4b1f-4921-a71f-2d6c9b127e5f', 'State Management Sederhana dengan ValueNotifier', 'state-management-valuenotifier', 'Catatan sebelumnya membahas cara mengambil data dari REST API menggunakan HTTP request. **Masalah yang diselesaikan sekarang:** setelah data diambil di Halaman A, bagaimana cara menampilkan data itu di Halaman B atau memperbarui widget di sudut lain layar tanpa harus melempar variabel lewat parameter konstruktor secara berantai (*prop drilling*)?

Di ekosistem Flutter ada banyak pustaka state management pihak ketiga (seperti Provider, Bloc, atau Riverpod). Namun, untuk pemula dan aplikasi skala kecil-menengah, Flutter sudah memiliki solusi bawaan yang sangat ringan dan tanpa dependensi tambahan: **`ValueNotifier`** dan **`ValueListenableBuilder`**.

```mermaid
flowchart TD
  subgraph Model["State Global / Service"]
    VN["ValueNotifier<int> counter = ValueNotifier(0);"]
  end
  subgraph ScreenA["Halaman 1: Tombol Tambah"]
    Btn["ElevatedButton(onPressed: () => counter.value++)"]
  end
  subgraph ScreenB["Halaman 2: Layar Pratinjau"]
    VLB["ValueListenableBuilder<int>(<br/>  valueListenable: counter,<br/>  builder: (context, value, child) => Text(''$value'')<br/>)"]
  end
  Btn -->|Ubah nilai .value| VN
  VN -.->|Notifikasi otomatis hanya ke listener| VLB
```

Contoh implementasi berbagi state keranjang belanja sederhana:

```dart
import ''package:flutter/material.dart'';

// 1. Definisikan state yang dapat didengarkan di level global/service
class KeranjangService {
  static final ValueNotifier<int> totalItem = ValueNotifier<int>(0);

  static void tambahItem() {
    totalItem.value++;
  }

  static void reset() {
    totalItem.value = 0;
  }
}

// 2. Widget yang mendengarkan perubahan nilai (hanya bagian ini yang re-build!)
class BadgeKeranjang extends StatelessWidget {
  const BadgeKeranjang({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: KeranjangService.totalItem,
      builder: (context, total, child) {
        return Row(
          children: [
            const Icon(Icons.shopping_cart),
            const SizedBox(width: 4),
            Text(
              ''$total item'',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        );
      },
    );
  }
}

// 3. Tombol aksi yang mengubah nilai di widget terpisah
class TombolBeli extends StatelessWidget {
  const TombolBeli({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: KeranjangService.tambahItem,
      child: const Text(''Tambah ke Keranjang''),
    );
  }
}
```

Poin penting:

- `ValueNotifier<T>` menyimpan satu nilai dan otomatis memberitahu widget pendengar setiap kali properti `.value` diganti.
- `ValueListenableBuilder` hanya membangun ulang (*re-render*) widget di dalam callback `builder`-nya saat nilai berubah — seluruh halaman di luarnya tidak ikut re-build, membuat performa sangat efisien.
- Pola ini bawaan dari Flutter SDK (paket `flutter/foundation.dart` & `flutter/widgets.dart`), sehingga tidak memerlukan dependensi eksternal di `pubspec.yaml`.
- Pahami pola reaktif ini sebelum melangkah ke state management kompleks seperti Bloc atau Riverpod.', '[{"url":"https://api.flutter.dev/flutter/foundation/ValueNotifier-class.html","label":"Flutter API Reference — ValueNotifier<T> class"},{"url":"https://api.flutter.dev/flutter/widgets/ValueListenableBuilder-class.html","label":"Flutter API Reference — ValueListenableBuilder<T> class"}]'::jsonb, '[]'::jsonb, 'Di project Flutter latihan kamu:
1. Buat file `lib/state_counter.dart` dan buat objek `final ValueNotifier<int> skorApp = ValueNotifier<int>(0);`.
2. Di halaman utama, tampilkan nilai skor menggunakan widget `ValueListenableBuilder<int>`.
3. Di halaman kedua (buka lewat `Navigator.push`), buat tombol "Tambah Skor" yang menjalankan `skorApp.value += 10`.
4. Tekan tombol di halaman kedua, lalu kembali ke halaman utama (`Navigator.pop`), dan buktikan bahwa nilai skor langsung tersinkronisasi secara otomatis tanpa passing argumen balik.', 5, 'published', '2026-09-22 14:02:54.742136+00', '2026-09-22 14:30:33.26+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('ddbce733-94d6-4d63-ba11-b68a6082a44a', '45b3c3a2-5021-4fe0-a1d2-494440bb4ea8', 'Penanganan Error & Exceptions Modern', 'error-handling-dan-exceptions', 'Catatan sebelumnya membahas class dan enkapsulasi. **Masalah yang diselesaikan sekarang:** di PHP zaman dulu, fungsi sering mengembalikan nilai `false` saat gagal, dan developer harus menulis `if ($hasil === false)` di mana-mana. Jika terjadi kesalahan fatal (seperti pembagian dengan nol atau salah tipe), script langsung berhenti mati (*white screen of death*) tanpa pesan error yang terstruktur.

Di PHP modern, semua kesalahan fatal dan exception mengimplementasikan interface **`Throwable`**, memungkinkan kita menangkap dan menangani kesalahan secara anggun menggunakan blok **`try-catch-finally`** dan membuat Custom Exception sendiri.

```mermaid
flowchart TD
  Code["Operasi Berisiko (Transfer Saldo)"] --> Try["try { ... }"]
  Try --> Check{"Terjadi Masalah?"}
  Check -- Saldo Kurang --> Throw["throw new SaldoTidakCukupException()"]
  Throw --> Catch["catch (SaldoTidakCukupException $e)"]
  Catch --> Recovery["Tampilkan Pesan Ramah ke Pengguna<br/>(Aplikasi Tidak Crash!)"]
  Check -- Sukses --> Finally["finally { Tutup Koneksi Database }"]
  Recovery --> Finally
```

Contoh Exception Handling terstruktur:

```php
<?php
declare(strict_types=1);

// 1. Membuat Custom Exception Class sendiri
class SaldoTidakCukupException extends Exception {}

class AkunBank {
    public function __construct(
        private string $pemilik,
        private float $saldo
    ) {}

    public function tarikTunai(float $jumlah): float {
        if ($jumlah <= 0) {
            throw new InvalidArgumentException("Jumlah penarikan harus lebih dari 0!");
        }

        if ($jumlah > $this->saldo) {
            // Lempar kustom exception jika aturan bisnis dilanggar
            throw new SaldoTidakCukupException("Saldo {$this->pemilik} tidak mencukupi untuk tarik tunai Rp$jumlah.");
        }

        $this->saldo -= $jumlah;
        return $this->saldo;
    }
}

// 2. Menangkap exception dengan try-catch-finally
try {
    $akun = new AkunBank("Budi", 500000.0);
    $akun->tarikTunai(1000000.0); // Sengaja menarik melebihi saldo
} catch (SaldoTidakCukupException $e) {
    echo "Peringatan Bisnis: " . $e->getMessage() . "
";
} catch (InvalidArgumentException $e) {
    echo "Input Tidak Valid: " . $e->getMessage() . "
";
} catch (Throwable $e) {
    echo "Terjadi kesalahan sistem yang tidak terduga: " . $e->getMessage() . "
";
} finally {
    echo "Sesi transaksi perbankan selesai.
";
}
```

Poin penting:

- `Throwable` adalah interface puncak dari semua error di PHP (`Error` dan `Exception` keduanya mengimplementasikan `Throwable`).
- Blok `finally` dijamin **selalu dieksekusi**, baik terjadi error maupun tidak (sangat ideal untuk menutup koneksi database atau socket file).
- PHP mendukung *Multi-Catch* di satu blok: `catch (FirstException | SecondException $e)`.
- Jangan biarkan exception lolos tanpa penanganan di production, karena pesan error teknis berisiko membocorkan struktur kode dan password database kepada publik.', '[{"url":"https://www.php.net/manual/en/language.exceptions.php","label":"PHP Official Manual — Exceptions"},{"url":"https://www.php.net/manual/en/class.throwable.php","label":"PHP Official Manual — The Throwable Interface"}]'::jsonb, '[]'::jsonb, 'Di project latihan kamu:
1. Buat fungsi `bagiAngka(float $pembilang, float $penyebut): float`.
2. Jika `$penyebut == 0`, lempar `DivisionByZeroError("Penyebut tidak boleh bernilai nol!");`.
3. Bungkus pemanggilan fungsi tersebut dengan blok `try-catch`.
4. Uji dengan membagi `10` dengan `0`, lalu pastikan pesan error tertangkap dengan anggun dan aplikasi terus berjalan normal.', 4, 'published', '2026-09-22 14:30:05.78432+00', '2026-09-22 14:30:05.465+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('01843843-3c1b-4fb0-b5e0-edddfad9d38e', '8d1b066d-2a4b-429c-ab92-be5a7f37e392', 'Routing, Controller, & Route Model Binding', 'routing-dan-controller', 'Catatan sebelumnya mengenalkan struktur project Laravel 11. **Masalah yang diselesaikan sekarang:** bagaimana mengarahkan URL pengunjung (seperti `/artikel/5` atau `/kontak`) ke fungsi kode yang tepat tanpa menumpuk seluruh logika bisnis di dalam file routing?

Laravel menyediakan sistem routing yang ekspresif di `routes/web.php`. Untuk menjaga arsitektur kode tetap bersih dan terpisah (*Separation of Concerns*), logika penanganan request dipindahkan ke dalam **Controller**. Laravel juga memiliki fitur ajaib bernama **Route Model Binding**: Laravel otomatis mencari data model dari database berdasarkan ID di URL!

```mermaid
flowchart LR
  URL["User Request:<br/>GET /produk/12"] --> Route["routes/web.php"]
  Route --> RBM["Route Model Binding:<br/>Otomatis SELECT * WHERE id=12"]
  RBM --> Controller["ProdukController@show(Produk $produk)"]
  Controller --> View["Tampilkan View Blade / JSON"]
```

Mendefinisikan Route dan Controller di Laravel 11:

```bash
# Membuat Controller baru menggunakan Artisan CLI
php artisan make:controller ProdukController
```

Kode di `routes/web.php`:

```php
<?php

use IlluminateSupportFacadesRoute;
use AppHttpControllersProdukController;

// 1. Route dasar sederhana dengan closure
Route::get(''/'', function () {
    return view(''welcome'');
});

// 2. Route diarahkan ke Controller Method
Route::get(''/produk'', [ProdukController::class, ''index'']);

// 3. Route Model Binding otomatis (mencari objek Produk berdasarkan {produk} ID)
Route::get(''/produk/{produk}'', [ProdukController::class, ''show'']);
```

Kode di `app/Http/Controllers/ProdukController.php`:

```php
<?php

namespace AppHttpControllers;

use AppModelsProduk;
use IlluminateViewView;

class ProdukController extends Controller
{
    // Menampilkan daftar seluruh produk
    public function index(): View
    {
        $produkList = Produk::all();
        return view(''produk.index'', [''produkList'' => $produkList]);
    }

    // Route Model Binding: parameter bertipe ''Produk $produk'' otomatis diisi data dari DB!
    // Jika ID tidak ditemukan, Laravel otomatis mengembalikan respons 404 Not Found.
    public function show(Produk $produk): View
    {
        return view(''produk.show'', [''produk'' => $produk]);
    }
}
```

Poin penting:

- Nama parameter di URL (`{produk}`) harus cocok dengan nama variabel di method controller (`$produk`) agar fitur *Route Model Binding* aktif.
- Perintah `php artisan route:list` menampilkan seluruh daftar rute yang aktif di aplikasi beserta middleware dan controller pasangannya.
- Untuk membuat kumpulan route CRUD lengkap sekaligus, kamu bisa menggunakan `Route::resource(''produk'', ProdukController::class);`.', '[{"url":"https://laravel.com/docs/11.x/routing","label":"Laravel Documentation — Routing"},{"url":"https://laravel.com/docs/11.x/controllers","label":"Laravel Documentation — Controllers"}]'::jsonb, '[]'::jsonb, 'Di project Laravel kamu:
1. Buat controller baru: `php artisan make:controller HalamanController`.
2. Tambahkan method `public function tentang() { return "Ini halaman tentang kami"; }`.
3. Daftarkan di `routes/web.php`: `Route::get(''/tentang'', [HalamanController::class, ''tentang'']);`.
4. Buka `http://127.0.0.1:8000/tentang` di browser dan pastikan teks muncul.
5. Jalankan `php artisan route:list` di terminal untuk melihat daftar routemu tercatat rapi.', 1, 'published', '2026-09-22 14:30:06.475839+00', '2026-09-22 14:30:06.149+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('24869908-74c2-4880-a901-773f99394d4a', '8d1b066d-2a4b-429c-ab92-be5a7f37e392', 'Eloquent ORM: Query Builder & Relasi Antar-Model', 'eloquent-orm-dan-relasi', 'Catatan sebelumnya membahas skema database migration. **Masalah yang diselesaikan sekarang:** menulis perintah SQL manual (`SELECT * FROM produks WHERE harga > ...`) melelahkan dan rentan kesalahan ketik. Selain itu, masalah klasik performa **N+1 Query Problem** sering terjadi saat kita mencoba menampilkan daftar produk beserta nama kategorinya (1 query untuk mengambil 20 produk, diikuti 20 query tambahan hanya untuk mengambil nama kategori masing-masing!).

**Eloquent ORM** adalah implementasi Active Record bawaan Laravel yang sangat ekspresif: setiap tabel di database dipetakan ke sebuah **Model**, dan relasi antar-tabel didefinisikan secara deklaratif di dalam model tersebut.

```mermaid
flowchart LR
  subgraph Relasi["Relasi One-to-Many"]
    Cat["Model Kategori<br/>public function produks()<br/>return $this->hasMany(Produk::class)"]
    Prod["Model Produk<br/>public function kategori()<br/>return $this->belongsTo(Kategori::class)"]
  end
  Cat ---|1 Kategori Punya Banyak Produk| Prod
```

Mendefinisikan Model dan Relasi:

```bash
# Membuat Model sekaligus file Migration-nya
php artisan make:model Produk -m
php artisan make:model Kategori -m
```

Kode Model `app/Models/Kategori.php`:

```php
<?php

namespace AppModels;

use IlluminateDatabaseEloquentModel;
use IlluminateDatabaseEloquentRelationsHasMany;

class Kategori extends Model
{
    protected $fillable = [''nama'', ''slug''];

    // Relasi: Satu Kategori memiliki banyak Produk (One to Many)
    public function produks(): HasMany
    {
        return $this->hasMany(Produk::class);
    }
}
```

Kode Model `app/Models/Produk.php`:

```php
<?php

namespace AppModels;

use IlluminateDatabaseEloquentModel;
use IlluminateDatabaseEloquentRelationsBelongsTo;

class Produk extends Model
{
    // Mendaftarkan atribut yang diizinkan untuk mass-assignment (Create/Update)
    protected $fillable = [''kategori_id'', ''nama'', ''harga''];

    // Relasi balik: Produk terikat pada satu Kategori
    public function kategori(): BelongsTo
    {
        return $this->belongsTo(Kategori::class);
    }
}
```

Operasi CRUD Ekspresif & Pencegahan N+1 Query (Eager Loading):

```php
// 1. Create (Menambah data baru)
$produk = Produk::create([
    ''kategori_id'' => 1,
    ''nama'' => ''Mouse Wireless'',
    ''harga'' => 250000.00
]);

// 2. Read dengan Eager Loading (with) — Mencegah Masalah N+1 Query!
// Mengambil 50 produk HANYA dengan 2 query database gabungan, bukan 51 query!
$daftarProduk = Produk::with(''kategori'')->where(''harga'', ''>='', 100000)->get();

foreach ($daftarProduk as $p) {
    echo "{$p->nama} (Kategori: {$p->kategori->nama})
";
}
```

Poin penting:

- Properti `$fillable` wajib didefinisikan pada setiap Model untuk melindungi aplikasi dari celah keamanan *Mass Assignment Vulnerability*.
- **Eager Loading (`with(''relasi'')`)** wajib digunakan ketika ingin menampilkan relasi data di dalam perulangan loop untuk menjaga aplikasi tetap cepat.
- Uji coba interaktif logika Eloquent dapat dilakukan langsung lewat REPL terminal dengan mengetik `php artisan tinker`.', '[{"url":"https://laravel.com/docs/11.x/eloquent","label":"Laravel Documentation — Eloquent ORM Getting Started"},{"url":"https://laravel.com/docs/11.x/eloquent-relationships","label":"Laravel Documentation — Eloquent Relationships"}]'::jsonb, '[]'::jsonb, 'Di project Laravel kamu:
1. Buka terminal interaktif Tinker: `php artisan tinker`.
2. Buat kategori baru lewat Eloquent: `$k = AppModelsKategori::create([''nama'' => ''Elektronik'', ''slug'' => ''elektronik'']);`.
3. Query data yang baru dibuat: `AppModelsKategori::all();`.
4. Amati betapa mudahnya berinteraksi dengan database tanpa perlu menulis sintaks SQL mentah satu baris pun.', 4, 'published', '2026-09-22 14:30:07.366886+00', '2026-09-22 14:30:07.05+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('ea564c0d-b971-431c-809c-fc733bb7f737', '94331b9c-fe70-4f7c-be9b-742a1996b9e1', 'Struktur Data Kaya: Hash, List, dan Set', 'struktur-data-lanjutan-list-set-hash', 'Catatan sebelumnya membahas String dan masa aktif TTL. **Masalah yang diselesaikan sekarang:** Redis sering kali disalahpahami hanya sebagai "tempat menyimpan teks sederhana". Bagaimana jika kamu ingin menyimpan objek profil pengguna dengan banyak atribut, atau membuat antrean tugas (*job queue*) yang diproses berurutan, atau mengelola daftar tag unik tanpa duplikasi? Menyimpan semuanya sebagai string JSON mengharuskan kamu mengunduh dan mem-parse seluruh teks hanya untuk mengubah satu atribut kecil.

Redis menyediakan **struktur data kaya di tingkat mesin (*native data structures*)**:
1. **Hash:** Wadah pasangan field-nilai di dalam satu key (sempurna untuk representasi Objek / Record).
2. **List:** Antrean data berurutan (cocok untuk FIFO queue / activity feeds).
3. **Set:** Kumpulan elemen unik tanpa duplikasi dengan operasi himpunan (irisan, gabungan).

```mermaid
flowchart TD
  subgraph H["Hash: ''user:101''"]
    H1["nama: ''Budi''"]
    H2["email: ''budi@mail.com''"]
    H3["skor: 90"]
  end
  subgraph L["List (Queue): ''antrean_pesan''"]
    L1["[Pesan 1]"] --> L2["[Pesan 2]"] --> L3["[Pesan 3]"]
  end
  subgraph S["Set: ''tags:artikel''"]
    S1["''java'', ''backend'', ''database'' (Dijamin Unik)"]
  end
```

Contoh penggunaan Hash, List, dan Set:

```text
# 1. HASH: Mengelola objek pengguna
HSET user:101 nama "Budi" email "budi@mail.com" level 5
HGET user:101 nama
# Mengubah satu field secara atomik tanpa menyentuh field lain
HINCRBY user:101 level 1
# Mengambil seluruh field sekaligus
HGETALL user:101

# 2. LIST: Antrean Pesan / Jobs (Queue FIFO)
# Memasukkan antrean dari kiri (Left Push)
LPUSH antrean_email "email_user_A"
LPUSH antrean_email "email_user_B"
# Mengambil dan menghapus item dari kanan (Right Pop: elemen paling awal keluar duluan)
RPOP antrean_email

# 3. SET: Koleksi elemen unik
SADD tag_artikel "database" "backend" "redis"
# Duplikat otomatis diabaikan:
SADD tag_artikel "database"
# Melihat seluruh tag yang ada
SMEMBERS tag_artikel
# Memeriksa apakah suatu elemen ada di set (O(1))
SISMEMBER tag_artikel "backend"
```

Poin penting:

- Mengubah field di dalam `Hash` (misal `HSET` atau `HINCRBY`) sangat hemat bandwidth karena hanya mengirimkan field yang berubah, bukan seluruh objek.
- `List` di Redis diimplementasikan sebagai *Linked List*: operasi push dan pop di ujung antrean (`LPUSH`/`RPOP`) berkecepatan instan $O(1)$ bahkan jika list memuat jutaan item.
- `Set` sangat ideal untuk sistem rekomendasi dan pertemanan: Redis menyediakan operasi matematika himpunan super cepat seperti `SINTER` (irisan/teman bersama) dan `SDIFF` (selisih).', '[{"url":"https://redis.io/docs/latest/develop/data-types/hashes/","label":"Redis Documentation — Hashes"},{"url":"https://redis.io/docs/latest/develop/data-types/lists/","label":"Redis Documentation — Lists & Sets"}]'::jsonb, '[]'::jsonb, 'Di terminal redis-cli kamu:
1. Buat hash profil barang: `HSET produk:1 nama "Kopi" harga 25000 stok 10`.
2. Kurangi stoknya sebesar 1 menggunakan `HINCRBY produk:1 stok -1`.
3. Buat antrean tugas: masukkan 3 item dengan `LPUSH antrean "Tugas 1"` lalu `Tugas 2` dan `Tugas 3`.
4. Ambil item pertama yang harus diproses dengan `RPOP antrean` dan buktikan "Tugas 1" yang keluar pertama.
5. Buat set pengguna online dengan `SADD online "ani" "budi"`, lalu cek keanggotaannya dengan `SISMEMBER online "ani"`.', 2, 'published', '2026-09-22 14:24:50.113833+00', '2026-09-22 14:30:09.954+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('37c77516-48b1-411e-b857-4fd964666cd2', '651e63fd-70f5-4611-9727-7181eb577a4c', 'Pengenalan Java, JDK, dan Program Pertama', 'pengenalan-jdk-dan-program-pertama', '**Masalah yang diselesaikan:** bahasa seperti C/C++ dikompilasi langsung ke instruksi mesin spesifik untuk prosesor dan OS tertentu — program yang dicompile di Windows tidak bisa jalan di Linux tanpa dicompile ulang dari kode sumber. Java memecahkan masalah ini dengan konsep **Java Virtual Machine (JVM)**: kode Java dicompile menjadi berkas perantara (*bytecode* berekstensi `.class`), dan JVM di masing-masing sistem operasi yang akan menjalankannya.

Slogan legendaris Java adalah **"Write Once, Run Anywhere" (Tulis Sekali, Jalankan di Mana Saja)**.

```mermaid
flowchart LR
  Src["Kode Sumber (.java)<br/>Main.java"] --> Compiler["Java Compiler (javac)"]
  Compiler --> Bytecode["Bytecode (.class)<br/>Main.class"]
  Bytecode --> JVM_Win["JVM Windows ➔ Windows App"]
  Bytecode --> JVM_Linux["JVM Linux ➔ Linux App"]
  Bytecode --> JVM_Mac["JVM macOS ➔ Mac App"]
```

### 1. Struktur Program Pertama (`Main.java`)

Setiap baris kode yang dieksekusi di Java harus berada di dalam sebuah `class`, dan nama class harus sama persis dengan nama filenya:

```java
// Nama file: Main.java
public class Main {
    // Titik masuk utama eksekusi program (entry point)
    public static void main(String[] args) {
        System.out.println("Halo Dunia, selamat datang di Java!");
    }
}
```

Menjalankan program lewat terminal:

```bash
# 1. Kompilasi kode sumber .java menjadi bytecode .class
javac Main.java

# 2. Jalankan bytecode di atas JVM (tanpa ekstensi .class)
java Main

# Sejak Java 11+, kamu bisa langsung menjalankan file tunggal tanpa javac manual:
java Main.java
```

Poin penting:

- **JDK (Java Development Kit)** adalah paket lengkap untuk developer (compiler `javac`, debugger, dan runtime).
- **JVM (Java Virtual Machine)** adalah mesin virtual yang mengeksekusi bytecode di komputer target.
- Java bersifat *case-sensitive* (huruf besar dan kecil dibedakan) dan setiap perintah diakhiri tanda titik koma (`;`).
- `System.out.println()` digunakan untuk mencetak teks ke layar terminal diikuti baris baru.', '[{"url":"https://docs.oracle.com/en/java/javase/21/start/index.html","label":"Oracle Java Documentation — Getting Started with Java"},{"url":"https://adoptium.net/","label":"Adoptium (Eclipse Temurin) — Official OpenJDK Builds"}]'::jsonb, '[{"url":"https://adoptium.net/","label":"JDK (Java Development Kit) versi 17 atau 21 sudah terinstall (cek dengan `java -version` di terminal)"}]'::jsonb, 'Buka terminal di komputermu:
1. Pastikan JDK terpasang dengan mengetik `java -version` dan `javac -version`.
2. Buat folder baru `belajar-java` dan buat file `Main.java`.
3. Tulis kode program seperti contoh di atas, ubah teks salam menjadi namamu sendiri.
4. Kompilasi dengan `javac Main.java` dan amati munculnya file baru `Main.class`.
5. Jalankan dengan `java Main` dan lihat output teks muncul di layar terminal.', 0, 'published', '2026-09-22 14:14:30.287211+00', '2026-09-22 14:30:10.552+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('8b4931d3-f34b-4598-8e3f-f4c91df07c59', '651e63fd-70f5-4611-9727-7181eb577a4c', 'Interface & Abstract Class: Merancang Kontrak Kode', 'interface-dan-abstract-class', 'Catatan sebelumnya membahas bagaimana class anak mewarisi perilaku class induk. **Masalah yang diselesaikan sekarang (dan menutup roadmap Java Dasar):** kadang class induk terlalu abstrak untuk memiliki implementasi nyata — bayangkan class `Pembayaran`. Tidak ada pembayaran yang mengambang tanpa metode konkret; pembayaran *harus* berupa `TransferBank`, `KartuKredit`, atau `EWallet`. Selain itu, bagaimana jika sebuah class butuh mengadopsi banyak kemampuan sekaligus (misal: bisa disimpan DAN bisa dicetak)?

Java menyelesaikannya lewat dua konsep:
1. **Abstract Class:** Class setengah jadi yang tidak bisa di-instansiasi langsung (`new`) dan dapat memuat method abstrak tanpa body.
2. **Interface:** Kontrak murni yang mendefinisikan *apa* yang harus dilakukan suatu class, bukan *bagaimana* caranya. Satu class dapat mengimplementasikan **banyak interface** sekaligus (`implements A, B`).

```mermaid
flowchart TD
  Contract["<< Interface >> Pembayaran<br/>+bayar(jumlah)<br/>+batal()"]
  Bank["TransferBank<br/>implements Pembayaran"] -->|Patuhi Kontrak| Contract
  EWallet["EWalletOvo<br/>implements Pembayaran"] -->|Patuhi Kontrak| Contract
```

Contoh penggunaan Interface untuk sistem pembayaran:

```java
// 1. Definisi Kontrak Interface
interface Pembayaran {
    // Method di interface secara otomatis bersifat public dan abstract
    void bayar(double jumlah);
}

// 2. Implementasi 1: Transfer Bank
class TransferBank implements Pembayaran {
    private String nomorRekening;

    public TransferBank(String nomorRekening) {
        this.nomorRekening = nomorRekening;
    }

    @Override
    public void bayar(double jumlah) {
        System.out.println("Memproses transfer Rp" + jumlah + " ke rekening " + nomorRekening);
    }
}

// 3. Implementasi 2: E-Wallet
class EWallet implements Pembayaran {
    private String nomorHp;

    public EWallet(String nomorHp) {
        this.nomorHp = nomorHp;
    }

    @Override
    public void bayar(double jumlah) {
        System.out.println("Memotong saldo e-wallet Rp" + jumlah + " dari akun " + nomorHp);
    }
}

// 4. Penggunaan: Kode bergantung pada Interface, bukan class konkrit
public class KasirApp {
    public static void prosesCheckout(Pembayaran metode, double total) {
        // Bebas menerima metode apa pun asalkan mematuhi kontrak Pembayaran
        metode.bayar(total);
    }

    public static void main(String[] args) {
        Pembayaran metode1 = new TransferBank("123-456-789");
        Pembayaran metode2 = new EWallet("08123456789");

        prosesCheckout(metode1, 150000.0);
        prosesCheckout(metode2, 50000.0);
    }
}
```

Poin penting:

- Interface adalah fondasi arsitektur perangkat lunak modern (seperti pola *Dependency Injection* di Spring Boot): kode kita bergantung pada *abstraksi*, bukan implementasi konkret.
- Sebuah class bisa mengimplementasikan banyak interface sekaligus: `class User implements Serializable, Cloneable`.
- Perbedaan ringkas: gunakan `abstract class` jika ada kode dasar bersama yang ingin dibagikan ke anak; gunakan `interface` jika ingin mendefinisikan kontrak kemampuan umum lintas class yang tidak sekeluarga.', '[{"url":"https://docs.oracle.com/javase/tutorial/java/IandI/createinterface.html","label":"Oracle Java Tutorial — Interfaces"},{"url":"https://docs.oracle.com/javase/tutorial/java/IandI/abstract.html","label":"Oracle Java Tutorial — Abstract Methods and Classes"}]'::jsonb, '[]'::jsonb, 'Di project kamu:
1. Buat interface `Notifikasi` dengan method `void kirimPesan(String pesan);`.
2. Buat class `EmailNotifikasi` dan `SmsNotifikasi` yang mengimplementasikan interface tersebut.
3. Buat method statis `broadcast(Notifikasi layanan, String pesan)` yang memanggil `layanan.kirimPesan(pesan)`.
4. Uji panggil method `broadcast` menggunakan objek Email dan SMS bergantian di method `main`. Ini menutup roadmap Java Dasar: kamu siap melangkah ke Java Lanjutan!', 5, 'published', '2026-09-22 14:14:31.408147+00', '2026-09-22 14:30:11.579+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('9d60e834-1bd9-4efb-9491-e9bd050a04f0', '3a7e2da4-7876-4fe7-9cab-4d1e3dd1c902', 'Lambda Expressions & Functional Interface', 'lambda-dan-functional-interface', 'Catatan sebelumnya mengajarkan cara menyimpan data dalam Collections. **Masalah yang diselesaikan sekarang:** sebelum Java 8, jika kamu ingin mengoper sebuah fungsi/logika aksi ke method lain (misal: menyaring data atau merespons klik tombol), kamu terpaksa membuat *Anonymous Inner Class* yang panjang dan penuh boilerplate (bisa memakan 6-8 baris kode hanya untuk 1 baris logika).

Sejak Java 8, Java mendukung paradigma fungsional lewat **Lambda Expression** (sintaks `(param) -> { body }`) dan **Functional Interface** (interface yang hanya memiliki satu method abstrak).

```mermaid
flowchart LR
  subgraph CaraLama["Sebelum Java 8: Anonymous Class (Panjang)"]
    A1["new Predicate() {<br/>  public boolean test(int n) {<br/>    return n % 2 == 0;<br/>  }<br/>};"]
  end
  subgraph Lambda["Modern Java: Lambda Expression (Ringkas)"]
    L1["n -> n % 2 == 0"]
  end
  CaraLama -->|Disederhanakan menjadi| Lambda
```

Contoh penggunaan Lambda dan Functional Interface bawaan:

```java
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.function.Consumer;

public class LambdaDemo {
    public static void main(String[] args) {
        List<String> bahasa = new ArrayList<>(List.of("Java", "Kotlin", "Python", "JavaScript"));

        // 1. Consumer: Menerima satu parameter dan tidak mengembalikan nilai
        Consumer<String> cetakHurufBesar = teks -> System.out.println(teks.toUpperCase());
        bahasa.forEach(cetakHurufBesar);

        // Lebih singkat lagi dengan method reference:
        // bahasa.forEach(System.out::println);

        // 2. Predicate: Menerima satu parameter dan mengembalikan boolean (kondisi)
        Predicate<String> dimulaiDenganJ = teks -> teks.startsWith("J");

        // Menghapus elemen yang memenuhi kondisi Predicate
        bahasa.removeIf(dimulaiDenganJ);
        System.out.println("Setelah dihapus yang berawalan J: " + bahasa);
    }
}
```

Empat Functional Interface Bawaan yang Paling Sering Dipakai:
| Interface | Method Signature | Penggunaan Umum |
| --- | --- | --- |
| `Predicate<T>` | `boolean test(T t)` | Memeriksa kondisi filter |
| `Consumer<T>` | `void accept(T t)` | Menjalankan aksi (misal print / simpan) |
| `Function<T, R>` | `R apply(T t)` | Mengubah/transformasi tipe `T` ke `R` |
| `Supplier<T>` | `T get()` | Menyediakan / memproduksi data baru |

Poin penting:

- Anotasi `@FunctionalInterface` bersifat opsional tetapi sangat disarankan pada interface buatanmu untuk memastikan hanya ada satu method abstrak.
- **Method Reference (`::`)** adalah jalan pintas jika lambda hanya memanggil method yang sudah ada: `x -> System.out.println(x)` disingkat jadi `System.out::println`.
- Lambda adalah pondasi utama untuk memahami **Stream API** di bab berikutnya.', '[{"url":"https://docs.oracle.com/javase/tutorial/java/javaOO/lambdaexpressions.html","label":"Oracle Java Tutorial — Lambda Expressions"},{"url":"https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/util/function/package-summary.html","label":"Oracle Documentation — java.util.function package"}]'::jsonb, '[]'::jsonb, 'Di project latihan kamu:
1. Buat list angka: `List<Integer> angkaList = new ArrayList<>(List.of(12, 5, 8, 20, 3, 15));`.
2. Gunakan `angkaList.removeIf(n -> n < 10);` untuk menghapus semua angka di bawah 10 menggunakan Lambda Predicate.
3. Cetak elemen yang tersisa menggunakan `angkaList.forEach(System.out::println);`.
4. Amati betapa ringkasnya kode dibandingkan perulangan `for` konvensional.', 2, 'published', '2026-09-22 14:14:31.933971+00', '2026-09-22 14:30:12.142+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('925ecd75-7b79-409e-b372-642eafd5f496', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'Rendering List & Keys', 'rendering-list-dan-keys', '**Masalah yang diselesaikan:** data di aplikasi nyata jarang berupa satu nilai tunggal — biasanya array: daftar produk, daftar komentar, daftar to-do. Menulis JSX manual satu-satu untuk tiap item jelas tidak mungkin kalau datanya dinamis dari database. React menyelesaikan ini dengan memakai `Array.prototype.map()` biasa (bukan API baru) untuk mengubah array data jadi array elemen JSX.

```mermaid
flowchart LR
    Data["[''Roti'', ''Susu'', ''Telur'']"] -->|.map| JSXArr["tiga elemen &lt;li&gt;"]
    JSXArr --> DOM["Tiga &lt;li&gt; di layar"]
```

### 1. Me-render Array dengan `.map()`

```jsx
function DaftarBelanja({ items }) {
  return (
    <ul>
      {items.map((item) => (
        <li key={item.id}>{item.nama}</li>
      ))}
    </ul>
  )
}
```

### 2. Kenapa Prop `key` Wajib

React memakai `key` untuk mencocokkan elemen list antara render sebelum dan sesudah perubahan data — supaya tahu item mana yang ditambah, dihapus, atau digeser urutannya, tanpa harus membongkar-ulang seluruh DOM list dari nol. Tanpa `key` yang stabil dan unik, React bisa salah mencocokkan elemen, menyebabkan bug halus: state di komponen list (misalnya input yang sedang diketik) bisa "nempel" ke item yang salah setelah list berubah urutan.

- **Aman:** `id` unik dari data itu sendiri (dari database, misalnya) — `key={item.id}`.
- **Berisiko:** index array (`key={index}`) — cuma aman kalau list itu **tidak pernah** diurutkan ulang, ditambah di tengah, atau dihapus sebagian; kalau salah satu itu terjadi, index tiap item bisa berubah walau datanya sama, bikin React salah mencocokkan.
- `key` **bukan** props biasa — tidak bisa dibaca lewat `props.key` di dalam component, itu sinyal khusus buat React sendiri.

### 3. Filter Sebelum Map

Pola umum: gabungkan `.filter()` dan `.map()` biasa dari JavaScript untuk menampilkan sebagian data saja:

```jsx
function DaftarSelesai({ tugas }) {
  return (
    <ul>
      {tugas
        .filter((t) => t.selesai)
        .map((t) => (
          <li key={t.id}>{t.judul}</li>
        ))}
    </ul>
  )
}
```', '[{"url":"https://react.dev/learn/rendering-lists","label":"React – Rendering Lists"}]'::jsonb, '[]'::jsonb, 'Buat daftar tugas (to-do list) dinamis:
1. Buat array data di component kamu: `const tugas = [{ id: 1, teks: "Belajar JSX" }, { id: 2, teks: "Pahami Props" }, { id: 3, teks: "Eksplorasi State" }]`.
2. Render array tersebut ke dalam elemen `<ul>` menggunakan `tugas.map(item => <li key={item.id}>{item.teks}</li>)`.
3. Coba sengaja hapus atribut `key={item.id}`, buka Console DevTools browser, dan lihat pesan peringatan merah *"Each child in a list should have a unique key prop"*. Kembalikan prop `key` tersebut dan amati pesan peringatan hilang.', 6, 'published', '2026-09-21 23:24:41.175314+00', '2026-09-22 13:32:05.872+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('99c9a061-9934-411d-8022-e516e40b0839', '620410c3-ebfb-4e0b-a8a6-578aaa70d726', 'Pola DTO & Konfigurasi CORS di Spring Boot', 'dto-dan-cors-spring-boot', 'Catatan sebelumnya membahas validasi data request dan penanganan error terpusat. **Masalah yang diselesaikan sekarang:** saat aplikasi frontend (seperti React, Next.js, atau Flutter) memanggil API Spring Boot di browser, browser memblokir request tersebut dengan pesan error **CORS (Cross-Origin Resource Sharing)**. Masalah kedua: mengembalikan langsung class `@Entity` database ke client bisa membocorkan data sensitif (seperti password hash) dan memicu error perulangan tak terbatas (*circular reference*).

Solusinya terdiri dari dua best practice industri:
1. **DTO (Data Transfer Object):** Menggunakan Java `record` atau class terpisah untuk mendefinisikan secara presisi data apa saja yang boleh diterima (*Request DTO*) dan dikirim ke luar (*Response DTO*).
2. **Konfigurasi CORS:** Mengizinkan domain frontend mengakses resource backend Spring Boot.

```mermaid
flowchart LR
  subgraph Frontend["Frontend (http://localhost:3000)"]
    FE["React / Next.js / Flutter"]
  end
  subgraph SpringBoot["Backend Spring Boot (http://localhost:8080)"]
    CORS["@CrossOrigin / WebMvcConfigurer<br/>(Loloskan Origin Frontend)"]
    DTO["ProdukResponseDTO (record)<br/>Hanya id, nama, harga"]
    Ctrl["REST Controller"]
    Entity["@Entity Produk<br/>(id, nama, harga, stok, secretCost)"]
  end
  FE -->|HTTP Request| CORS
  CORS --> Ctrl
  Ctrl --> Entity
  Entity -->|Petakan hanya field publik| DTO
  DTO -->|Kirim JSON Aman| FE
```

Contoh implementasi DTO (Java Record) dan Konfigurasi CORS:

```java
// 1. DTO Respons: Ringkas, immutable, dan hanya memuat data publik
public record ProdukResponseDTO(
    Long id,
    String nama,
    Double harga
) {
    // Factory method untuk memetakan dari Entity ke DTO
    public static ProdukResponseDTO fromEntity(Produk produk) {
        return new ProdukResponseDTO(produk.getId(), produk.getNama(), produk.getHarga());
    }
}
```

```java
// 2. Konfigurasi Global CORS (WebMvcConfigurer)
package com.example.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CorsConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/api/**")
                .allowedOrigins("http://localhost:3000", "https://aplikasiku.com")
                .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS")
                .allowedHeaders("*")
                .allowCredentials(true);
    }
}
```

Poin penting:

- Jangan pernah mengembalikan class `@Entity` JPA langsung sebagai response JSON di API produksi. DTO memutus keterikatan antara skema database dan format kontrak API.
- Sejak Java 14+, `record` adalah pilihan paling bersih untuk DTO karena otomatis menyediakan constructor, getter, `equals()`, dan `hashCode()` tanpa boilerplate.
- Anotasi `@CrossOrigin(origins = "http://localhost:3000")` bisa dipasang per-controller, tetapi konfigurasi terpusat lewat `WebMvcConfigurer` jauh lebih mudah dipelihara.
- Kebijakan CORS ditegakkan oleh *browser*, bukan server — request dari curl atau mobile app tidak terpengaruh CORS.', '[{"url":"https://spring.io/guides/gs/rest-service-cors","label":"Spring Docs — Enabling Cross Origin Requests for a RESTful Web Service"},{"url":"https://www.baeldung.com/java-dto-pattern","label":"Baeldung — The DTO Pattern (Data Transfer Object)"}]'::jsonb, '[]'::jsonb, 'Di project Spring Boot kamu:
1. Buat record baru `UserResponseDTO(Long id, String username, String email)`.
2. Di controller `@GetMapping("/api/users")`, ubah return type dari `List<User>` menjadi `List<UserResponseDTO>`.
3. Buat file konfigurasi `CorsConfig.java` seperti contoh di atas untuk mengizinkan `http://localhost:3000`.
4. Jalankan aplikasi dan coba panggil endpoint lewat browser atau fetch JavaScript dari domain yang berbeda untuk memverifikasi bahwa header `Access-Control-Allow-Origin` terkirim dengan benar.', 5, 'published', '2026-09-22 14:02:56.024673+00', '2026-09-22 14:30:34.703+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('9444f46e-e2c2-4248-be69-dd09ea41a1c8', '45b3c3a2-5021-4fe0-a1d2-494440bb4ea8', 'Package Manager Composer & Autoloading PSR-4', 'composer-dan-autoloading-psr4', 'Catatan sebelumnya membahas exception handling. **Masalah yang diselesaikan sekarang (dan menutup roadmap PHP):** ketika proyek memiliki puluhan atau ratusan file class, cara lama mengharuskan kita menulis `require_once ''models/User.php'';` di setiap file. Selain itu, bagaimana jika kita ingin memakai library pihak ketiga yang dibuat komunitas (seperti library kirim email, manipulasi gambar, atau framework besar seperti Laravel)?

Dunia PHP modern disatukan oleh **Composer** (dependency manager resmi) dan standar **PSR-4 Autoloading**:
1. **Composer:** Mengunduh dan mengelola dependensi pihak ketiga dari repositori terpusat **Packagist**.
2. **PSR-4 Autoloading:** Cukup tulis `require ''vendor/autoload.php''` sekali di awal aplikasi, maka class apa pun yang kamu panggil akan otomatis di-load oleh PHP berdasarkan keselarasan namespace dan struktur foldernya!

```mermaid
flowchart TD
  subgraph Packagist["Packagist.org (Ekosistem Library PHP)"]
    Pkg["Guzzle / Carbon / Monolog"]
  end
  subgraph LocalProject["Proyek PHP Lokal"]
    JSON["composer.json<br/>(Daftar Kebutuhan)"]
    CLI["composer install / require"]
    Vendor["Folder vendor/ & vendor/autoload.php"]
    AppCode["Namespace AppModelsUser ➔ file src/Models/User.php"]
  end
  Pkg -->|Diunduh oleh Composer| Vendor
  JSON --> CLI --> Vendor
  Vendor -->|Autoload Otomatis| AppCode
```

Perintah dasar Composer di terminal:

```bash
# 1. Inisialisasi proyek baru dengan Composer
composer init

# 2. Menginstal library pihak ketiga (contoh: Carbon untuk manipulasi tanggal)
composer require nesbot/carbon

# 3. Menginstal seluruh dependensi dari composer.json
composer install
```

Konfigurasi `composer.json` dengan standar PSR-4 Autoloading:

```json
{
    "name": "belajar/proyek-php",
    "require": {
        "php": ">=8.2",
        "nesbot/carbon": "^3.0"
    },
    "autoload": {
        "psr-4": {
            "App\": "src/"
        }
    }
}
```

Memakai Class dan Library secara otomatis di `index.php`:

```php
<?php
declare(strict_types=1);

// Cukup panggil SATU baris ini di pintu masuk aplikasi:
require_once __DIR__ . ''/vendor/autoload.php'';

use CarbonCarbon;
use AppModelsUser; // Otomatis mencari berkas ''src/Models/User.php''

// Menggunakan library Carbon
$waktuSekarang = Carbon::now()->locale(''id'')->diffForHumans();
echo "Diperbarui: $waktuSekarang
";
```

Poin penting:

- Folder `vendor/` berisi ribuan berkas dependensi eksternal — **jangan pernah mengubah kode di dalam folder `vendor/`** dan selalu masukkan `vendor/` ke dalam file `.gitignore`.
- Berkas `composer.lock` mencatat versi exact dari setiap library yang terpasang agar lingkungan production dan staging memiliki versi yang 100% identik.
- Standar PSR-4: Namespace `AppServicesPaymentService` dipetakan langsung ke lokasi file `src/Services/PaymentService.php`.
- Pemahaman Composer dan PSR-4 ini adalah pintu gerbang mutlak untuk menguasai **Laravel 11**!', '[{"url":"https://getcomposer.org/doc/","label":"Composer Official Documentation"},{"url":"https://www.php-fig.org/psr/psr-4/","label":"PHP-FIG — PSR-4: Autoloader Standard"}]'::jsonb, '[{"url":"https://getcomposer.org/download/","label":"Composer sudah terinstall di komputermu (cek dengan `composer --version` di terminal)"}]'::jsonb, 'Buka terminal:
1. Buat folder proyek `belajar-composer` dan jalankan `composer init -n` (mode non-interaktif cepat).
2. Install library tanggal terpopuler: `composer require nesbot/carbon`.
3. Buat file `test.php`, panggil `require ''vendor/autoload.php'';`, lalu cetak hari ini dengan `echo CarbonCarbon::now()->isoFormat(''dddd, D MMMM Y'');`.
4. Jalankan `php test.php` dan amati betapa mudahnya mengintegrasikan ekosistem open-source PHP modern! Ini menutup roadmap PHP Dasar-Menengah!', 5, 'published', '2026-09-22 14:30:06.006739+00', '2026-09-22 14:30:05.679+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('7b7d43cb-9956-4cb7-8c41-9b92d19b4bfb', '8d1b066d-2a4b-429c-ab92-be5a7f37e392', 'Blade Templating Engine & Layout Components', 'blade-templating-dan-layout', 'Catatan sebelumnya membahas routing dan controller. **Masalah yang diselesaikan sekarang:** membuat halaman web HTML dengan PHP mentah sering kali membuka celah keamanan XSS (Cross-Site Scripting) jika kamu lupa menulis `htmlspecialchars()`. Selain itu, menyalin kerangka HTML yang sama (navbar, footer, tag `<head>`) ke belasan file tampilan sangat melelahkan dan sulit di-maintain.

Laravel menyertakan **Blade**, mesin templating yang cepat dan elegan:
1. **Otomatis Aman:** Sintaks `{{ $variabel }}` secara otomatis membersihkan input dari serangan XSS.
2. **Layout Component Modern (`<x-layout>`):** Membungkus halaman anak di dalam komponen tata letak induk menggunakan tag kustom dan slot konten.

```mermaid
flowchart TD
  subgraph ParentLayout["Komponen Induk: resources/views/components/layout.blade.php"]
    Nav["Navbar & Header Bersama"]
    Slot["{{ $slot }} ➔ Tempat Menyisipkan Konten Halaman Anak"]
    Foot["Footer Bersama"]
  end
  subgraph ChildPage["Halaman Anak: resources/views/beranda.blade.php"]
    Content["<x-layout><br/>  <h1>Selamat Datang!</h1><br/>  <p>Isi artikel...</p><br/></x-layout>"]
  end
  Content -->|Diinjeksi ke dalam| Slot
```

Membuat Komponen Layout Bersama (`resources/views/components/layout.blade.php`):

```html
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>{{ $title ?? ''Aplikasi Laravel'' }}</title>
    <style>body { font-family: sans-serif; padding: 20px; }</style>
</head>
<body>
    <nav>
        <a href="/">Beranda</a> | <a href="/produk">Katalog Produk</a>
    </nav>
    <hr>

    <!-- Seluruh konten halaman anak akan dirender di dalam $slot ini -->
    <main>
        {{ $slot }}
    </main>

    <hr>
    <footer>&copy; 2026 Catatan Belajar Laravel</footer>
</body>
</html>
```

Menggunakan Layout di Halaman (`resources/views/produk/index.blade.php`):

```html
<x-layout title="Daftar Produk">
    <h1>Katalog Belanja</h1>

    @if ($produkList->isEmpty())
        <p>Belum ada produk yang tersedia.</p>
    @else
        <ul>
            @foreach ($produkList as $item)
                <li>
                    <strong>{{ $item->nama }}</strong> — Rp{{ number_format($item->harga) }}
                </li>
            @endforeach
        </ul>
    @endif
</x-layout>
```

Poin penting:

- Ekstensi berkas tampilan Blade selalu `.blade.php`.
- Perintah logika Blade diawali tanda `@` (misal `@if`, `@else`, `@foreach`, `@auth`, `@guest`).
- Blade dikompilasi menjadi kode PHP mentah dan di-cache secara otomatis, sehingga performa renderingnya sama cepatnya dengan PHP murni tanpa beban tambahan.', '[{"url":"https://laravel.com/docs/11.x/blade","label":"Laravel Documentation — Blade Templates"},{"url":"https://laravel.com/docs/11.x/blade#components","label":"Laravel Documentation — Blade Components"}]'::jsonb, '[]'::jsonb, 'Di project latihan kamu:
1. Buat folder `resources/views/components/` dan buat file `layout.blade.php` seperti contoh di atas.
2. Buat file `resources/views/kontak.blade.php` yang dibungkus tag `<x-layout>`.
3. Tulis formulir kontak sederhana di dalam tag `<x-layout>`.
4. Buat route `Route::view(''/kontak'', ''kontak'');` di `routes/web.php`.
5. Buka `/kontak` di browser dan amati bagaimana navbar dan footer otomatis membungkus halaman barumu.', 2, 'published', '2026-09-22 14:30:06.942303+00', '2026-09-22 14:30:06.63+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('54fee974-980c-4e61-8949-4310210fe8fb', '94331b9c-fe70-4f7c-be9b-742a1996b9e1', 'Pola Caching di Aplikasi Web (Cache-Aside Pattern)', 'pola-caching-cache-aside', 'Catatan sebelumnya membahas struktur data kaya di Redis. **Masalah yang diselesaikan sekarang:** bagaimana cara mengintegrasikan Redis ke dalam aplikasi backend nyata (seperti Node.js, Spring Boot, atau Python) untuk melindungi database SQL utama dari kelebihan beban?

Pola arsitektur caching yang paling banyak dipakai di dunia industri adalah **Cache-Aside (Lazy Loading)**:
1. Aplikasi menerima permintaan data dari user.
2. Aplikasi pertama kali mengecek apakah data ada di cache Redis.
3. **Cache Hit:** Jika ada, data langsung dikembalikan seketika (< 1 ms). Database SQL sama sekali tidak disentuh!
4. **Cache Miss:** Jika belum ada, ambil data dari database SQL utama, simpan salinannya ke Redis dengan masa kedaluwarsa (TTL), lalu kembalikan hasilnya ke user.

```mermaid
flowchart TD
  User["Pengguna Web / Frontend"] --> App["Backend Aplikasi"]
  App --> CacheCheck{"Cek Redis Cache<br/>(GET produk:123)"}
  CacheCheck -- Cache Hit (Data Ada) --> ReturnFast["Kembalikan Data Instan (<1 ms)"]
  CacheCheck -- Cache Miss (Kosong) --> QueryDB["Ambil dari Database SQL (Postgres/MariaDB)"]
  QueryDB --> SaveCache["Simpan ke Redis dengan TTL<br/>(SET produk:123 ... EX 3600)"]
  SaveCache --> ReturnSlow["Kembalikan Data ke Pengguna"]
  ReturnFast & ReturnSlow --> User
```

Contoh kode implementasi Cache-Aside di Node.js (TypeScript):

```ts
import { createClient } from "redis";

const redis = createClient();
await redis.connect();

async function ambilDetailProduk(id: string) {
    const cacheKey = `produk:${id}`;

    // 1. Periksa Cache di Redis
    const cachedData = await redis.get(cacheKey);
    if (cachedData) {
        console.log("⚡ Cache Hit: Mengambil dari Redis!");
        return JSON.parse(cachedData);
    }

    // 2. Cache Miss: Jalankan query SQL berat ke Database
    console.log("🐢 Cache Miss: Query ke Database SQL...");
    const dataDariDb = await db.query("SELECT * FROM produk WHERE id = ?", [id]);

    if (dataDariDb) {
        // 3. Simpan ke Redis dengan masa kedaluwarsa 1 jam (3600 detik)
        await redis.set(cacheKey, JSON.stringify(dataDariDb), { EX: 3600 });
    }

    return dataDariDb;
}
```

Poin penting:

- **Wajib gunakan TTL (Expiration):** Jangan pernah menyimpan data cache tanpa batas waktu; TTL menjamin bahwa jika ada data yang diperbarui di database utama, cache otomatis disegarkan setelah waktunya habis.
- **Cache Invalidation:** Saat ada operasi `UPDATE` atau `DELETE` pada produk di database, backend sebaiknya langsung menghapus kuncinya di Redis (`DEL produk:123`) agar pengguna tidak membaca data basi (*stale data*).
- Dengan pola Cache-Aside, jika server Redis mengalami gangguan mendadak, aplikasi tetap dapat berjalan normal (hanya sedikit lebih lambat) karena aplikasi otomatis beralih membaca langsung dari database SQL.', '[{"url":"https://learn.microsoft.com/en-us/azure/architecture/patterns/cache-aside","label":"Microsoft Cloud Architecture Center — Cache-Aside Pattern"},{"url":"https://redis.io/docs/latest/develop/use-cases/caching/","label":"Redis Documentation — Redis as an LRU Cache"}]'::jsonb, '[]'::jsonb, 'Di terminal redis-cli kamu:
1. Simulasikan skenario Cache-Aside: simpan data hasil query berat ke Redis: `SET artikel:1 ''{"judul":"Belajar Redis","view":500}'' EX 60`.
2. Jalankan `GET artikel:1` untuk merasakan betapa instannya pengambilan data berformat JSON dari RAM.
3. Simulasikan skenario update data: hapus kuncinya dengan `DEL artikel:1`.
4. Jalankan `GET artikel:1` kembali dan pastikan nilainya `(nil)` (menandakan aplikasi harus mengambil ulang dari SQL).', 3, 'published', '2026-09-22 14:24:50.280516+00', '2026-09-22 14:30:10.139+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('235f1623-1f45-4b55-bd04-e56bfe0200b0', '651e63fd-70f5-4611-9727-7181eb577a4c', 'Tipe Data Primitif, Reference, dan Operator', 'tipe-data-dan-variabel', 'Catatan sebelumnya menunjukkan cara menjalankan program Java pertama. **Masalah yang diselesaikan sekarang:** komputer perlu menyimpan dan mengolah berbagai jenis informasi dalam memori — angka umur, desimal harga, huruf inisial, status kebenaran, atau teks panjang. Karena Java adalah bahasa yang *statically-typed*, setiap variabel wajib dideklarasikan tipe datanya secara jelas sebelum bisa diisi nilai.

Java membagi tipe data ke dalam dua kategori besar: **Tipe Data Primitif** (menyimpan nilai langsung di memori Stack) dan **Tipe Data Reference / Objek** (menyimpan alamat memori/pointer yang menunjuk ke objek di memori Heap).

```mermaid
flowchart TD
  subgraph Primitif["Tipe Primitif (Memori Stack Cepat)"]
    P1["int, long (bilangan bulat)"]
    P2["double, float (desimal)"]
    P3["boolean (true / false)"]
    P4["char (satu karakter: ''A'')"]
  end
  subgraph Reference["Tipe Reference / Objek (Memori Heap)"]
    R1["String (teks: ''Budi'')"]
    R2["Array (koleksi: int[])"]
    R3["Objek Class Kustom"]
  end
```

Contoh deklarasi variabel dan operasi dasar:

```java
public class VariabelDemo {
    public static void main(String[] args) {
        // 1. Tipe Data Primitif
        int umur = 20;
        double beratBadan = 65.5;
        boolean isAktif = true;
        char inisial = ''B'';

        // 2. Tipe Data Reference (String & Array)
        String namaLengkap = "Budi Santoso";
        int[] nilaiUjian = { 85, 90, 78 };

        // 3. Operator Aritmatika & Penggabungan Teks
        int tahunLahir = 2026 - umur;
        System.out.println("Nama: " + namaLengkap);
        System.out.println("Perkiraan tahun lahir: " + tahunLahir);
        System.out.println("Nilai pertama: " + nilaiUjian[0]);

        // Sejak Java 10, bisa menggunakan ''var'' untuk tipe lokal yang jelas nilainya (type inference)
        var kota = "Jakarta"; // Otomatis dikenali sebagai String
    }
}
```

Poin penting:

- Tipe data primitif memiliki ukuran tetap: `int` (4 byte), `long` (8 byte), `double` (8 byte), `boolean` (1 bit logis).
- Karakter tunggal ditulis dengan kutip satu (`''A''`), sedangkan teks (String) ditulis dengan kutip dua (`"Budi"`).
- Variabel primitif tidak bisa bernilai `null`, sedangkan variabel reference bisa bernilai `null` jika belum menunjuk ke objek mana pun.
- Kata kunci `var` hanya boleh dipakai untuk variabel lokal di dalam method yang langsung diberi nilai awal.', '[{"url":"https://docs.oracle.com/javase/tutorial/java/nutsandbolts/datatypes.html","label":"Oracle Java Tutorial — Primitive Data Types"},{"url":"https://docs.oracle.com/javase/tutorial/java/nutsandbolts/variables.html","label":"Oracle Java Tutorial — Variables"}]'::jsonb, '[]'::jsonb, 'Di file `Main.java` kamu:
1. Deklarasikan variabel primitif: `double harga = 50000.0;` dan `int jumlah = 3;`.
2. Hitung total bayar: `double total = harga * jumlah;`.
3. Terapkan diskon 10% jika total di atas 100.000 menggunakan operator perkalian `total = total * 0.9;`.
4. Cetak rincian nama barang, jumlah, dan total akhir bayar ke terminal.
5. Jalankan program dengan `java Main.java` dan periksa kebenaran hasil perhitungannya.', 1, 'published', '2026-09-22 14:14:30.624549+00', '2026-09-22 14:30:10.737+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('8872b2bf-9aea-4886-b457-6189d69ce719', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'Lifting State Up: Berbagi State Antar-Komponen', 'lifting-state-up', 'Catatan sebelumnya menunjukkan cara me-render daftar data dinamis dengan key. **Masalah yang diselesaikan sekarang:** di aplikasi nyata, data sering kali perlu diakses atau diubah oleh beberapa komponen yang bertetangga (*sibling*). Kalau state disimpan di dalam Component A, Component B tidak bisa membacanya karena props di React hanya mengalir ke bawah (*one-way data flow*).

Solusinya adalah **Lifting State Up (mengangkat state ke atas)**: pindahkan state dari komponen anak ke komponen induk (*parent*) terdekat yang menaungi kedua komponen tersebut. Komponen induk kemudian membagikan nilai state ke anak pertama lewat props biasa, dan membagikan fungsi pengubah state (*callback*) ke anak kedua.

```mermaid
flowchart TD
  subgraph Salah["Sebelum (State Terkunci di Komponen Anak)"]
    SA["ParentComponent"]
    SA --> SB1["ChildA<br/>(punya state: teks)"]
    SA --> SB2["ChildB<br/>(butuh baca teks, tapi tidak bisa!)"]
  end
  subgraph Benar["Setelah (Lifting State Up ke Parent)"]
    PA["ParentComponent<br/>const [teks, setTeks] = useState('''')"]
    PA -->|props: value=teks, onChange=setTeks| PB1["InputChild (mengubah state)"]
    PA -->|props: pesan=teks| PB2["DisplayChild (membaca state)"]
  end
```

Contoh kode konkret: sinkronisasi input suhu atau teks catatan dengan pratinjau live:

```jsx
// src/App.jsx
import { useState } from "react";

// Komponen 1: Mengatur input teks
function KotakInput({ nilai, onChangeNilai }) {
  return (
    <div>
      <label>Ketik catatan: </label>
      <input
        type="text"
        value={nilai}
        onChange={(e) => onChangeNilai(e.target.value)}
        placeholder="Tulis pesan..."
      />
    </div>
  );
}

// Komponen 2: Menampilkan hasil ketikan secara langsung
function PratinjauTeks({ nilai }) {
  return (
    <div style={{ marginTop: "12px", padding: "8px", border: "1px dashed #999" }}>
      <strong>Pratinjau Live:</strong> {nilai || "Belum ada tulisan"}
    </div>
  );
}

// Komponen Induk: Menyimpan state bersama
export default function App() {
  const [teksBersama, setTeksBersama] = useState("");

  return (
    <div style={{ padding: "16px" }}>
      <h2>Contoh Lifting State Up</h2>
      <KotakInput nilai={teksBersama} onChangeNilai={setTeksBersama} />
      <PratinjauTeks nilai={teksBersama} />
    </div>
  );
}
```

Poin penting:

- Data di React hanya mengalir satu arah (dari atas ke bawah). Untuk mengubah data ke atas, kirim fungsi handler (*callback*) dari parent ke child lewat props.
- Komponen anak yang menerima data dan callback menjadi *controlled component* murni — ia tidak menyimpan state sendiri, sehingga mudah diuji dan dipakai ulang.
- Jangan terburu-buru menggunakan state management global (seperti Redux atau Context API) jika masalah berbagi data bisa diselesaikan dengan mengangkat state ke parent terdekat.', '[{"url":"https://react.dev/learn/sharing-state-between-components","label":"React Docs — Sharing State Between Components"}]'::jsonb, '[]'::jsonb, 'Di project Vite latihan kamu:
1. Buat dua komponen anak: `TombolTambah` (berisi tombol "+1") dan `TampilanAngka` (hanya menampilkan teks `Jumlah: X`).
2. Angkat state `[hitung, setHitung]` ke komponen induk (`App`).
3. Oper `hitung` ke `TampilanAngka` sebagai prop pembaca.
4. Oper fungsi `() => setHitung(hitung + 1)` ke `TombolTambah` sebagai prop `onTambah`.
5. Klik tombol dan pastikan komponen tampilan angka ter-update secara harmonis meskipun keduanya adalah komponen terpisah.', 7, 'published', '2026-09-22 13:32:06.326239+00', '2026-09-22 14:30:15.605+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('c896fece-5931-4659-ae78-9e06e810527a', '3e71ad0e-b25a-4567-b43e-282574f1590a', 'Realtime Subscription Dasar', 'realtime-dasar', 'Sekarang kamu sudah bisa CRUD, auth, RLS, dan simpan file. **Masalah yang diselesaikan sekarang (dan menutup roadmap Supabase ini):** bagaimana kalau aplikasi kamu perlu tahu SAAT ITU JUGA ketika data berubah di database — tanpa user harus refresh halaman manual? Cara lama: *polling* (fetch ulang tiap beberapa detik), yang boros request dan tetap ada delay sampai beberapa detik.

**Supabase Realtime** memungkinkan client mendengarkan perubahan data (INSERT/UPDATE/DELETE) langsung dari database lewat WebSocket, tanpa polling.

```mermaid
sequenceDiagram
  autonumber
  participant DB as Database
  participant RT as Supabase Realtime
  participant C as Client (Browser)
  C->>RT: channel().on(''postgres_changes'').subscribe()
  Note over C,RT: Koneksi WebSocket terbuka
  DB->>DB: INSERT INTO produk (...)
  DB-->>RT: Perubahan terdeteksi
  RT-->>C: Event terkirim real-time
  Note over C: UI update tanpa reload
```

```ts
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
```

Bisa juga dipersempit cuma ke event atau baris tertentu:

```ts
supabase
  .channel("produk-baru-saja")
  .on(
    "postgres_changes",
    { event: "INSERT", schema: "public", table: "produk", filter: "kategori_id=eq.5" },
    (payload) => console.log("Produk baru di kategori 5:", payload.new)
  )
  .subscribe();
```

Poin penting:

- Realtime harus diaktifkan dulu per tabel lewat dashboard (Database → Replication) atau SQL `alter publication supabase_realtime add table produk;` — tabel yang belum diaktifkan tidak akan mengirim event apa pun.
- Payload event berisi `eventType` (`INSERT`/`UPDATE`/`DELETE`), `new` (data terbaru), dan `old` (data sebelumnya, untuk UPDATE/DELETE).
- RLS tetap berlaku untuk Realtime — user cuma menerima event untuk baris yang boleh dia `SELECT` menurut policy yang ada.', '[{"url":"https://supabase.com/docs/guides/realtime/postgres-changes","label":"Supabase Docs — Postgres Changes (Realtime)"}]'::jsonb, '[]'::jsonb, 'Aktifkan Realtime untuk tabel `produk` (Database → Replication di dashboard, atau lewat SQL). Buka dua tab browser di halaman yang sama, keduanya menjalankan kode `channel().on(...)` di atas. Di tab pertama, insert produk baru (lewat kode atau dashboard) — lihat tab KEDUA, data barunya harus muncul di console tanpa reload halaman sama sekali. Coba juga persempit filter-nya cuma ke event `INSERT`, lalu ke baris tertentu pakai `filter`, dan buktikan event UPDATE/DELETE tidak lagi memicu callback-nya. Ini menutup roadmap Supabase: dari setup client sampai data yang live ter-sinkron ke semua client yang terhubung.', 6, 'published', '2026-09-18 23:46:50.864953+00', '2026-09-22 13:53:08.255+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('f5222804-79ce-4166-8e63-bfa5f00f1d85', '8d1b066d-2a4b-429c-ab92-be5a7f37e392', 'Instalasi & Struktur Project Ramping Laravel 11', 'instalasi-dan-struktur-project-laravel-11', '**Masalah yang diselesaikan:** membangun aplikasi web dari nol menggunakan PHP murni membutuhkan perakitan manual untuk sistem routing, database migration, template engine, keamanan session, dan autentikasi. Di sisi lain, Laravel versi lawas (versi 10 ke bawah) memiliki struktur direktori yang gemuk dengan puluhan file konfigurasi di folder `config/` dan middleware boilerplate di `app/Http/Kernel.php` yang sering kali tidak pernah disentuh oleh developer pemula.

**Laravel 11** merombak arsitektur menjadi **sangat ramping dan minimalis**:
1. Menghilangkan `Http/Kernel.php` dan `Console/Kernel.php`.
2. Seluruh konfigurasi middleware, exception handling, dan routing disederhanakan dan dipusatkan di satu file utama: **`bootstrap/app.php`**.
3. Struktur controller dan model yang bersih tanpa folder boilerplate kosong.

```mermaid
flowchart TD
  subgraph Laravel11Structure["Struktur Ramping Laravel 11"]
    App["app/ (Models, Providers, Http Controllers)"]
    Bootstrap["bootstrap/app.php (Pusat Konfigurasi Tunggal)"]
    Routes["routes/web.php (Routing Aplikasi)"]
    Resources["resources/views/ (Tampilan Blade)"]
    Database["database/ (Migrations, Seeders, SQLite default)"]
  end
```

Perintah membuat project Laravel 11 via Composer:

```bash
# 1. Membuat project baru Laravel 11
composer create-project laravel/laravel belajar-laravel

# 2. Masuk ke direktori project
cd belajar-laravel

# 3. Menjalankan server development lokal
php artisan serve
```

Aplikasi langsung menyala di `http://127.0.0.1:8000`.

Struktur Pusat Konfigurasi Baru di `bootstrap/app.php`:

```php
<?php

use IlluminateFoundationApplication;
use IlluminateFoundationConfigurationExceptions;
use IlluminateFoundationConfigurationMiddleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.''/../routes/web.php'',
        commands: __DIR__.''/../routes/console.php'',
        health: ''/up'', // Endpoint health check bawaan untuk monitoring cloud
    )
    ->withMiddleware(function (Middleware $middleware) {
        // Daftarkan middleware global atau alias di sini (menggantikan Kernel.php)
    })
    ->withExceptions(function (Exceptions $exceptions) {
        // Konfigurasi penanganan error kustom terpusat di sini
    })->create();
```

Poin penting:

- Secara default, Laravel 11 menggunakan database file **SQLite** (`database/database.sqlite`), sehingga kamu bisa langsung membuat tabel dan migration tanpa perlu install server database terpisah saat awal belajar.
- Endpoint bawaan `/up` (health check) otomatis tersedia untuk kebutuhan container orchestration (seperti Docker/Kubernetes).
- Tool CLI **`php artisan`** adalah asisten pengembang serbaguna untuk membuat controller, migration, model, dan menjalankan task background.', '[{"url":"https://laravel.com/docs/11.x/installation","label":"Laravel Official Documentation — Installation"},{"url":"https://laravel.com/docs/11.x/releases","label":"Laravel 11 Release Notes & New Directory Structure"}]'::jsonb, '[{"url":"https://getcomposer.org/","label":"PHP versi 8.2+ dan Composer sudah terpasang"}]'::jsonb, 'Buka terminal:
1. Buat project Laravel 11 baru: `composer create-project laravel/laravel coba-laravel`.
2. Masuk ke folder `cd coba-laravel`.
3. Buka file `bootstrap/app.php` di editor teks dan perhatikan betapa rampingnya konfigurasi routing dan middleware.
4. Jalankan `php artisan serve`, buka browser di `http://127.0.0.1:8000`, dan saksikan halaman beranda default Laravel yang elegan.', 0, 'published', '2026-09-22 14:30:06.259447+00', '2026-09-22 14:30:05.952+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('a5fcc6c1-d176-4c9b-84e5-e531f0eec92d', '94331b9c-fe70-4f7c-be9b-742a1996b9e1', 'Pub/Sub: Komunikasi Realtime & Message Broker', 'pub-sub-dan-message-broker', 'Catatan sebelumnya membahas pola caching data. **Masalah yang diselesaikan sekarang (dan menutup roadmap Redis):** bayangkan kamu membangun fitur chat realtime, notifikasi siaran live, atau sistem pembaruan harga saham. Jika frontend harus terus-menerus bertanya ke server setiap 1 detik (*polling*), server akan cepat kehabisan bandwidth dan membebani database. Bagaimana cara mengirimkan pesan seketika ke ribuan pengguna begitu sebuah peristiwa terjadi?

Redis menyediakan fitur bawaan **Pub/Sub (Publish / Subscribe)**: pola komunikasi di mana pengirim (*Publisher*) mengirim pesan ke saluran (*Channel*) tanpa perlu tahu siapa penerimanya, dan semua pendengar (*Subscriber*) yang sedang terhubung ke saluran tersebut langsung menerima pesan dalam hitungan mikrodetik.

```mermaid
flowchart TD
  Publisher["Publisher (Backend Server)"]
  Publisher -->|PUBLISH notifikasi_channel ''Diskon 50%!''| RedisCore["Redis Channel: ''notifikasi_channel''"]
  RedisCore --> Sub1["Subscriber 1 (Client Web A)"]
  RedisCore --> Sub2["Subscriber 2 (Client Mobile B)"]
  RedisCore --> Sub3["Subscriber 3 (Dashboard Admin)"]
```

Sintaks Perintah Pub/Sub di `redis-cli`:

```text
# JENDELA TERMINAL 1 (Subscriber - Menunggu pesan masuk)
SUBSCRIBE saluran_berita

# Output: Berada dalam mode standby mendengarkan channel...
```

```text
# JENDELA TERMINAL 2 (Publisher - Mengirim pesan)
PUBLISH saluran_berita "Breaking News: Redis v8 Resmi Rilis!"

# Output: (integer) 1  (artinya ada 1 subscriber aktif yang menerima pesan)
```

Di Jendela Terminal 1 seketika muncul output:
```text
1) "message"
2) "saluran_berita"
3) "Breaking News: Redis v8 Resmi Rilis!"
```

Poin penting:

- Fitur Pub/Sub di Redis bekerja dengan prinsip **"Fire and Forget"**: jika tidak ada subscriber yang sedang mendengarkan saat pesan di-publish, pesan tersebut tidak akan disimpan dan hilang.
- Jika kamu membutuhkan antrean pesan yang terjamin tidak hilang dan memiliki riwayat pengiriman (*persistent stream*), Redis menyediakan fitur **Redis Streams** (`XADD`, `XREADGROUP`).
- Sangat ideal dikombinasikan dengan WebSocket di Node.js/Go/Java untuk menyiarkan pesan ke ribuan koneksi browser secara simultan.', '[{"url":"https://redis.io/docs/latest/develop/interact/pubsub/","label":"Redis Documentation — Pub/Sub"},{"url":"https://redis.io/docs/latest/develop/data-types/streams/","label":"Redis Documentation — Redis Streams"}]'::jsonb, '[]'::jsonb, 'Di komputer latihan kamu:
1. Buka dua tab terminal berbeda dan jalankan `docker exec -it redis-belajar redis-cli` di kedua tab.
2. Di Tab 1, ketik perintah `SUBSCRIBE ruang_obrolan`.
3. Di Tab 2, kirim pesan dengan `PUBLISH ruang_obrolan "Halo dari tab kedua!"`.
4. Lihat bagaimana pesan langsung muncul instan di Tab 1 tanpa jeda sama sekali. Ini menutup roadmap Redis!', 4, 'published', '2026-09-22 14:24:50.440475+00', '2026-09-22 14:30:10.369+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('10b51350-b4e0-4759-8d89-9fff7de41e83', '9edf40dd-0158-4e70-b0e6-1e64c4282cb0', 'Pengenalan Quarkus, CLI, & Live Coding Dev Mode', 'pengenalan-quarkus-dan-live-coding', '**Masalah yang diselesaikan:** framework Java enterprise tradisional (seperti Spring konvensional) dirancang puluhan tahun lalu ketika server fisik jarang di-restart. Masalahnya di era modern: saat kita men-deploy aplikasi ke container Kubernetes atau arsitektur serverless, startup lambat (3-10 detik) dan konsumsi memori tinggi (300MB - 1GB per pod) menjadi pemborosan biaya cloud yang sangat mahal. Selain itu, developer Java harus restart aplikasi manual setiap kali mengubah sebaris kode.

**Quarkus** memecahkan masalah ini dengan konsep **"Supersonic Subatomic Java"**:
1. **Build-time Processing:** Semua pemindaian anotasi (*reflection scanning*) diselesaikan saat kompilasi build, sehingga runtime JVM bersih dan instan.
2. **Live Coding (`quarkus dev`):** Setiap kali kamu menyimpan file kode (`Ctrl+S`), perubahan langsung aktif dalam hitungan milidetik tanpa restart manual!

```mermaid
flowchart LR
  subgraph Tradisional["Framework Java Lama"]
    C1["Ubah Kode"] --> C2["Kompilasi & Restart Penuh (10-30 detik)"]
    C2 --> C3["Test di Browser"]
  end
  subgraph Quarkus["Quarkus Live Coding (''quarkus dev'')"]
    Q1["Ubah Kode & Save"] --> Q2["Deteksi Perubahan Otomatis (<0.5 detik)"]
    Q2 --> Q3["Test di Browser Langsung Berubah!"]
  end
```

Perintah instalasi Quarkus CLI dan membuat project pertama:

```bash
# 1. Instalasi Quarkus CLI (macOS via Homebrew)
brew install quarkusio/tap/quarkus

# 2. Buat project baru dengan ekstensi REST
quarkus create app com.example:belajar-quarkus --extension=''resteasy-reactive-jackson''

# 3. Masuk ke folder project
cd belajar-quarkus

# 4. Jalankan Dev Mode dengan Live Coding aktif
quarkus dev
```

Saat Dev Mode berjalan, buka browser di `http://localhost:8080/hello` dan `http://localhost:8080/q/dev` (Quarkus Dev UI yang interaktif).

Poin penting:

- Quarkus mendukung standar terbuka **Jakarta EE** dan **MicroProfile**, sehingga kamu tidak terikat pada satu vendor proprietary.
- Mode `quarkus dev` juga menyediakan fitur **Dev Services**: jika aplikasimu butuh database PostgreSQL atau Kafka, Quarkus otomatis menjalankan container Docker lokal tanpa kamu perlu menulis docker-compose!
- Konsumsi memori Quarkus di mode JVM biasa hanya sekitar 50-75MB (separuh dari framework Java standar).', '[{"url":"https://quarkus.io/","label":"Quarkus Official Website & Documentation"},{"url":"https://quarkus.io/guides/getting-started","label":"Quarkus Guides — Creating Your First Application"}]'::jsonb, '[{"url":"https://adoptium.net/","label":"JDK 17 atau 21 sudah terpasang di komputer"}]'::jsonb, 'Buka terminal:
1. Pasang Quarkus CLI atau gunakan Maven: `mvn io.quarkus.platform:quarkus-maven-plugin:create -DprojectGroupId=org.acme -DprojectArtifactId=proyek-pertama`.
2. Jalankan `quarkus dev` (atau `./mvnw quarkus:dev`).
3. Buka browser di `http://localhost:8080/hello`.
4. Buka file `GreetingResource.java`, ubah teks return menjadi `"Halo dari Quarkus Live Coding!"`, lalu simpan file.
5. Refresh browser dan saksikan teksnya berubah instan tanpa kamu pernah me-restart server!', 0, 'published', '2026-09-22 14:14:32.785701+00', '2026-09-22 14:30:12.929+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('7d0300a2-99cd-4d8b-a214-08421f19f7ca', '9edf40dd-0158-4e70-b0e6-1e64c4282cb0', 'Akses Database Mudah dengan Hibernate ORM with Panache', 'panache-orm-database', 'Catatan sebelumnya membahas Dependency Injection. **Masalah yang diselesaikan sekarang:** berinteraksi dengan database lewat JPA/Hibernate murni membutuhkan banyak boilerplate: menulis *DAO / Repository*, menyusun EntityManager, dan mengelola transaksi secara manual.

Quarkus menyediakan **Hibernate ORM with Panache**: modul yang menyederhanakan akses database dengan dua pola elegan:
1. **Active Record Pattern (`extends PanacheEntity`):** Operasi database langsung menempel pada Entity (`User.listAll()`, `user.persist()`).
2. **Dev Services:** Saat kamu menambahkan ekstensi database (misal PostgreSQL), Quarkus **otomatis menyalakan container PostgreSQL lokal di background** tanpa konfigurasi `application.properties` apa pun!

```mermaid
flowchart TD
  Entity["@Entity Item extends PanacheEntity<br/>id (otomatis disediakan)<br/>nama, harga"]
  Query1["Item.listAll() ➔ SELECT *"]
  Query2["itemBaru.persist() ➔ INSERT"]
  Query3["Item.findById(1) ➔ SELECT WHERE id=1"]
  Entity --> Query1 & Query2 & Query3
  Query1 & Query2 & Query3 --> PostgreSQL["PostgreSQL (Auto-start via Dev Services)"]
```

Contoh Active Record Entity dengan Panache:

```bash
# Tambahkan ekstensi Panache dan driver PostgreSQL
quarkus extension add ''hibernate-orm-panache'' ''jdbc-postgresql''
```

```java
package com.example;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.Entity;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Response;
import java.util.List;

// 1. Entity mewarisi PanacheEntity (otomatis punya field ''id'' bertipe Long)
@Entity
public class Catatan extends PanacheEntity {
    public String judul;
    public String isi;
}

// 2. Resource REST
@Path("/api/catatan")
@Produces("application/json")
@Consumes("application/json")
public class CatatanResource {

    // SELECT ALL langsung dari class Entity
    @GET
    public List<Catatan> ambilSemua() {
        return Catatan.listAll();
    }

    // INSERT data baru (wajib diberi anotasi @Transactional)
    @POST
    @Transactional
    public Response buatBaru(Catatan data) {
        data.persist(); // Menyimpan objek ke database
        return Response.status(201).entity(data).build();
    }

    // DELETE data
    @DELETE
    @Path("/{id}")
    @Transactional
    public boolean hapus(@PathParam("id") Long id) {
        return Catatan.deleteById(id);
    }
}
```

Poin penting:

- `PanacheEntity` secara otomatis menyediakan kolom `id` (Primary Key sequence) dan method statis bawaan seperti `.listAll()`, `.findById()`, `.find("status", "aktif")`, dan `.deleteById()`.
- Anotasi `@Transactional` wajib dipasang pada method yang memodifikasi data (`persist`, `update`, `delete`) agar dikelola dalam satu transaksi database atomik.
- Berkat **Quarkus Dev Services**, kamu tidak perlu install PostgreSQL lokal atau menulis kredensial koneksi saat development — Quarkus menggunakan Testcontainers untuk mengelolanya secara transparan.', '[{"url":"https://quarkus.io/guides/hibernate-orm-panache","label":"Quarkus Guides — Simplified Hibernate ORM with Panache"},{"url":"https://quarkus.io/guides/databases-dev-services","label":"Quarkus Guides — Dev Services for PostgreSQL"}]'::jsonb, '[{"url":"https://www.docker.com/","label":"Docker desktop / Podman sudah berjalan untuk memanfaatkan fitur auto Dev Services"}]'::jsonb, 'Di project Quarkus latihan kamu:
1. Pasang ekstensi: `quarkus extension add hibernate-orm-panache jdbc-postgresql`.
2. Buat entity `Artikel extends PanacheEntity` dengan field publik `public String judul;`.
3. Buat endpoint `@GET` yang memanggil `Artikel.listAll()` dan endpoint `@POST @Transactional` yang memanggil `data.persist()`.
4. Jalankan `quarkus dev`, lalu coba kirim data lewat POST: `curl -X POST -H "Content-Type: application/json" -d ''{"judul":"Belajar Panache"}'' http://localhost:8080/api/catatan`.
5. Amati kemudahan query tanpa menulis repository manual satu pun!', 3, 'published', '2026-09-22 14:14:33.341064+00', '2026-09-22 14:30:13.588+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('d32cf121-3b02-42ce-bc5d-ea8577f5c39d', 'b403e972-3cb3-4605-a6b6-bb0f2774b0f6', 'Routing Dasar dengan App Router', 'routing-dasar', 'Project Next.js kamu dari catatan sebelumnya sudah jalan — pertanyaan berikutnya: bagaimana URL seperti `/blog/artikel-pertama` bisa menampilkan halaman yang tepat? **Masalah yang diselesaikan:** sebelum ada file-based routing, mengatur routing di aplikasi React itu kerja manual — install library router (React Router), lalu tulis config terpisah yang memetakan tiap URL ke komponennya: `<Route path="/blog/:slug" element={<BlogPost />} />`. Config ini gampang jadi tidak sinkron dengan struktur folder komponen aslinya, apalagi kalau aplikasinya sudah besar dan ditulis banyak orang.

Next.js (App Router) menyelesaikan ini dengan **memakai struktur folder itu sendiri sebagai definisi routing** — tidak ada file config routing terpisah untuk disinkronkan. Struktur folder di dalam `app/` menentukan URL, dan file `page.tsx` di dalam folder itu yang jadi halamannya.

```mermaid
graph TD
  A["app/"] --> B["page.tsx → /"]
  A --> C["about/"]
  C --> D["page.tsx → /about"]
  A --> E["blog/[slug]/"]
  E --> F["page.tsx → /blog/apa-saja (dynamic route)"]
```

Contoh halaman dasar:

```tsx
// app/about/page.tsx
export default function AboutPage() {
  return <h1>Tentang Kami</h1>;
}
```

Contoh dynamic route (segmen URL jadi parameter):

```tsx
// app/blog/[slug]/page.tsx
export default async function BlogPost({
  params,
}: {
  params: Promise<{ slug: string }>;
}) {
  const { slug } = await params;
  return <h1>Artikel: {slug}</h1>;
}
```

Poin penting:

- Hanya file bernama `page.tsx` (atau `.jsx`) yang membuat route bisa diakses publik; file lain di folder yang sama (komponen, util) tidak otomatis jadi halaman.
- Nama folder di dalam kurung siku `[slug]` berarti segmen URL dinamis, dan nilainya diterima lewat prop `params`.
- Sejak Next.js 15, `params` berupa `Promise` sehingga harus di-`await` dulu sebelum dipakai — bukan object biasa seperti versi Next.js 14 ke bawah.
- `layout.tsx` di level folder yang sama membungkus semua halaman di dalamnya (misalnya untuk header/footer bersama).', '[{"url":"https://nextjs.org/docs/app/api-reference/file-conventions/dynamic-routes","label":"Next.js Docs — Dynamic Route Segments"}]'::jsonb, '[]'::jsonb, 'Di project Next.js dari latihan catatan sebelumnya, tambahkan dua halaman baru:

1. `app/kontak/page.tsx` yang menampilkan teks "Hubungi Kami".
2. `app/produk/[id]/page.tsx` — dynamic route yang menerima `id` dari URL dan menampilkannya. Buka `/produk/42` di browser, harus muncul "Detail produk: 42".

Kalau sudah jalan, coba tambahkan satu level lagi: `app/produk/[id]/ulasan/page.tsx` (nested dynamic route), lalu perhatikan bagaimana struktur folder yang makin dalam otomatis jadi URL yang makin panjang. Latihan ini melatih kamu membaca struktur folder sebagai peta URL, bukan sekadar menghafal syntax-nya.', 1, 'published', '2026-09-18 06:20:59.380972+00', '2026-09-22 14:30:20.373+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('86b49caa-29d2-49ee-a8fa-9c60850f3654', 'b403e972-3cb3-4605-a6b6-bb0f2774b0f6', 'Server Actions Dasar: Mutasi Data Tanpa API Endpoint', 'server-actions-dasar', 'Catatan sebelumnya membahas cara mengambil data (*read*) di Server Component menggunakan `fetch()` langsung. **Masalah yang diselesaikan sekarang:** bagaimana cara mengirim data kembali ke server (*write / mutate*), misalnya saat user mengisi form pendaftaran atau mengklik tombol hapus?

Di React tradisional atau Next.js versi lama (Pages Router), kamu harus membuat API endpoint terpisah, memasang event handler manual, lalu memanggil `fetch(''/api/...'', { method: ''POST'' })`. Next.js App Router menyederhanakan ini lewat **Server Actions**: fungsi asinkron bertanda `"use server"` yang dieksekusi secara aman di server, dan dapat langsung dipasang ke atribut `action` tag `<form>` HTML biasa tanpa perlu membuat API route terpisah!

```mermaid
sequenceDiagram
  autonumber
  participant B as Browser (Form HTML)
  participant S as Next.js Server (Server Action)
  participant DB as Database
  B->>S: Submit Form via action={simpanData}
  Note over S: Fungsi "use server" dieksekusi di server
  S->>DB: Simpan data (INSERT / UPDATE)
  S->>S: revalidatePath(''/produk'') untuk refresh cache
  S-->>B: Kembalikan HTML halaman terbaru
```

Contoh implementasi Server Action di halaman Server Component:

```tsx
// app/tambah-tugas/page.tsx
import { revalidatePath } from "next/cache";

// Simulasi penyimpanan sederhana di server
const daftarTugas: string[] = ["Belajar App Router"];

export default async function TambahTugasPage() {
  // Server Action: fungsi server yang dipanggil saat form submit
  async function tambahTugas(formData: FormData) {
    "use server";

    const judul = formData.get("judul") as string;
    if (!judul || judul.trim() === "") return;

    // Simpan ke database / server state
    daftarTugas.push(judul);

    // Refresh cache halaman secara instan
    revalidatePath("/tambah-tugas");
  }

  return (
    <main style={{ padding: "20px" }}>
      <h1>Daftar Tugas</h1>
      <ul>
        {daftarTugas.map((t, idx) => (
          <li key={idx}>{t}</li>
        ))}
      </ul>

      {/* Form langsung memanggil Server Action */}
      <form action={tambahTugas} style={{ marginTop: "20px" }}>
        <input
          name="judul"
          placeholder="Tugas baru..."
          required
          style={{ padding: "8px", marginRight: "8px" }}
        />
        <button type="submit" style={{ padding: "8px 16px" }}>
          Simpan ke Server
        </button>
      </form>
    </main>
  );
}
```

Poin penting:

- Directive `"use server"` menandai bahwa seluruh kode di dalam fungsi tersebut **hanya** berjalan di environment server — kode ini tidak pernah dibundel atau dikirim ke browser.
- Server Action menerima objek standar browser `FormData`, sehingga membaca nilai input cukup memakai `formData.get("nama_input")`.
- `revalidatePath(''/path'')` membersihkan cache Server Component pada path tersebut sehingga data baru langsung tampil di UI seketika tanpa reload penuh.
- Server Action juga dapat ditaruh di file terpisah (misal `app/actions.ts`) dengan menuliskan `"use server"` di baris paling atas file, sehingga bisa dipakai bersama oleh Client Component.', '[{"url":"https://nextjs.org/docs/app/building-your-application/data-fetching/server-actions-and-mutations","label":"Next.js Docs — Server Actions and Mutations"}]'::jsonb, '[]'::jsonb, 'Di project Next.js latihan kamu:
1. Buat route baru `app/pesan/page.tsx`.
2. Deklarasikan array pesan di level server module.
3. Buat Server Action `kirimPesan(formData: FormData)` bertanda `"use server"`.
4. Ambil teks dari `formData.get("pesan")`, masukkan ke array, dan panggil `revalidatePath("/pesan")`.
5. Buka `http://localhost:3000/pesan` di browser, ketik pesan di form, klik submit, dan pastikan pesan baru langsung muncul di daftar tanpa ada reload halaman browser.', 6, 'published', '2026-09-22 13:32:11.759253+00', '2026-09-22 14:30:21.361+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('64ddb40a-29c5-476d-8146-6052ab96770c', '3e71ad0e-b25a-4567-b43e-282574f1590a', 'Autentikasi Dasar Pengguna', 'auth-dasar', 'Sekarang kamu bisa query data bebas (asalkan RLS belum aktif). **Masalah yang diselesaikan sekarang:** bagaimana tahu *siapa* yang sedang mengakses aplikasi, supaya nanti data bisa dibatasi per user — bukan semua orang melihat/mengubah data yang sama?

Supabase menyediakan modul autentikasi lengkap (**Supabase Auth**) untuk mengelola pendaftaran, login, sesi token JWT, dan verifikasi email pengguna.

```mermaid
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
```

Contoh kode alur autentikasi email dan kata sandi:

```ts
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
```

Poin penting:

- Data akun autentikasi disimpan terpisah secara aman di dalam skema `auth.users`, bukan di skema `public`.
- Untuk membaca identitas user di server atau client secara aman dan terverifikasi ke server auth, selalu utamakan pemanggilan `supabase.auth.getUser()`.
- Setelah login berhasil, token JWT sesi otomatis disimpan (di cookie atau localStorage) dan disertakan di setiap panggilan query database berikutnya, sehingga RLS mengenali `auth.uid()`.', '[{"url":"https://supabase.com/docs/guides/auth","label":"Supabase Docs — User Management & Authentication"},{"url":"https://supabase.com/docs/reference/javascript/auth-signup","label":"Supabase Docs — Auth Reference (JavaScript)"}]'::jsonb, '[]'::jsonb, 'Buat form sederhana (atau langsung panggil dari kode/console) untuk `daftarUser()` dengan email+password sungguhan, cek email konfirmasi yang masuk. Setelah konfirmasi, coba `masukUser()`, lalu `ambilUserAktif()` untuk memastikan sesinya tersimpan. Terakhir panggil `keluar()` dan `ambilUserAktif()` lagi — pastikan hasilnya `null`.', 3, 'published', '2026-09-18 08:42:41.475237+00', '2026-09-22 13:53:07.702+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('ce8f756e-8815-4301-a4bc-d7d3366075b2', '8d1b066d-2a4b-429c-ab92-be5a7f37e392', 'Database Migrations, Schema Builder, & Seeders', 'database-migrations-dan-seeder', 'Catatan sebelumnya membahas tampilan antarmuka Blade. **Masalah yang diselesaikan sekarang:** bagaimana tim developer berbagi dan menyelaraskan struktur tabel database? Cara lama dengan membagikan file `database.sql` lewat chat sangat kacau: tidak ada riwayat perubahan versi (*version control*) dan rawan menimpa kolom teman satu tim.

**Database Migrations** bertindak seperti *Version Control (Git)* khusus untuk skema database kamu: setiap perubahan struktur tabel dicatat dalam file migration bertanggal yang dapat dijalankan (*migrate*) atau dibatalkan (*rollback*) secara konsisten di seluruh komputer tim dan server produksi.

```mermaid
flowchart LR
  Dev["php artisan make:migration"] --> File["File Migration Berkas:<br/>database/migrations/2026_..._create_produks_table.php"]
  File --> Artisan["php artisan migrate"]
  Artisan --> DB["Tabel ''produks'' Dibuat di Database"]
  Artisan --> Log["Tercatat di tabel riwayat ''migrations''"]
```

Membuat Migration dan Menjalankannya:

```bash
# 1. Membuat migration untuk tabel baru ''produks''
php artisan make:migration create_produks_table
```

Kode di dalam berkas migration yang dihasilkan (`database/migrations/..._create_produks_table.php`):

```php
<?php

use IlluminateDatabaseMigrationsMigration;
use IlluminateDatabaseSchemaBlueprint;
use IlluminateSupportFacadesSchema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create(''produks'', function (Blueprint $table) {
            $table->id(); // BigIncrements Primary Key
            $table->string(''nama'', 100);
            $table->text(''deskripsi'')->nullable();
            $table->decimal(''harga'', 10, 2);
            $table->boolean(''is_tersedia'')->default(true);
            $table->timestamps(); // Otomatis membuat created_at dan updated_at!
        });
    }

    public function down(): void
    {
        Schema::dropIfExists(''produks'');
    }
};
```

Perintah eksekusi di terminal:

```bash
# Menjalankan seluruh migration yang belum pernah dieksekusi
php artisan migrate

# Membatalkan batch migration paling terakhir (undo)
php artisan migrate:rollback

# Mereset dan menjalankan ulang seluruh migration dari nol (hati-hati: menghapus data!)
php artisan migrate:fresh
```

Membuat Seeder untuk Mengisi Data Awal (`database/seeders/DatabaseSeeder.php`):

```php
// Menjalankan seeder untuk mengisi data dummy otomatis
php artisan db:seed
```

Poin penting:

- Konvensi nama tabel di Laravel selalu dalam bentuk **jamak bahasa Inggris (*plural*)**, misalnya model `Produk` berpasangan dengan tabel `produks`, model `User` dengan tabel `users`.
- Kolom `$table->timestamps()` secara otomatis mengelola pencatatan waktu kapan baris dibuat dan terakhir diubah.
- Perintah `php artisan migrate:status` menampilkan daftar file migration mana saja yang sudah atau belum dijalankan di database.', '[{"url":"https://laravel.com/docs/11.x/migrations","label":"Laravel Documentation — Database: Migrations"},{"url":"https://laravel.com/docs/11.x/seeding","label":"Laravel Documentation — Database: Seeding"}]'::jsonb, '[]'::jsonb, 'Di project Laravel kamu:
1. Buat migration baru: `php artisan make:migration create_kategoris_table`.
2. Buka file migration tersebut dan tambahkan kolom `$table->string(''nama'');` dan `$table->string(''slug'')->unique();`.
3. Jalankan `php artisan migrate` di terminal.
4. Buka database (misal via SQLite viewer atau `php artisan tinker`) dan pastikan tabel `kategoris` telah terbentuk sempurna.', 3, 'published', '2026-09-22 14:30:07.176663+00', '2026-09-22 14:30:06.857+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('19459386-eb59-4398-9111-0bff06aa4a7e', '3a7e2da4-7876-4fe7-9cab-4d1e3dd1c902', 'Concurrency Dasar hingga Virtual Threads (Java 21)', 'concurrency-dan-virtual-threads', 'Catatan sebelumnya melengkapi teknik null-safety dan exception modern. **Masalah yang diselesaikan sekarang (dan menutup roadmap Java Advance):** aplikasi web modern harus melayani ribuan request pengguna secara bersamaan. Di Java konvensional, satu thread Java dipetakan 1-ke-1 ke **Platform Thread (OS Thread)**. Masalahnya: OS thread sangat mahal (memakan memori ~1MB per thread dan terbatas beberapa ribu thread sebelum server kehabisan memori). Saat thread menunggu respon database (*blocking I/O*), OS thread itu menganggur dan terbuang sia-sia.

Java 21 merevolusi ini lewat **Virtual Threads** (Project Loom): thread super ringan yang dikelola langsung oleh JVM (bukan kernel OS). Satu aplikasi Java kini bisa menjalankan **jutaan virtual thread** secara bersamaan dengan memori hanya beberapa kilobyte!

```mermaid
flowchart TD
  subgraph Tradisional["Platform Thread Lama (1-to-1 OS Kernel)"]
    T1["Java Thread 1"] --- OS1["OS Kernel Thread (~1MB RAM)"]
    T2["Java Thread 2"] --- OS2["OS Kernel Thread (~1MB RAM)"]
    Note1["Maksimal ribuan thread sebelum server OOM!"]
  end
  subgraph VirtualThread["Java 21: Virtual Threads (M-to-N)"]
    V1["Virtual Thread 1"]
    V2["Virtual Thread 2"]
    V3["Virtual Thread ... 1.000.000"]
    V1 & V2 & V3 --> JVM_Carrier["Sedikit Carrier OS Thread (Sesuai Core CPU)"]
    Note2["Ringan, hemat memori, I/O non-blocking otomatis!"]
  end
```

Contoh menjalankan Concurrency dengan Virtual Threads (Java 21):

```java
import java.util.concurrent.Executors;
import java.time.Duration;

public class VirtualThreadDemo {
    public static void main(String[] args) throws InterruptedException {
        // Membuat ExecutorService yang otomatis memakai Virtual Thread per-task
        try (var executor = Executors.newVirtualThreadPerTaskExecutor()) {
            for (int i = 1; i <= 10_000; i++) {
                final int taskId = i;
                executor.submit(() -> {
                    // Simulasi I/O blocking (misal request API / query database)
                    Thread.sleep(Duration.ofMillis(500));
                    if (taskId % 2000 == 0) {
                        System.out.println("Task selesai: " + taskId + " di " + Thread.currentThread());
                    }
                    return taskId;
                });
            }
        } // Blok try-with-resources otomatis menunggu semua 10.000 task selesai

        System.out.println("Seluruh 10.000 virtual threads berhasil diselesaikan dalam sekejap!");
    }
}
```

Poin penting:

- Virtual Thread dirancang khusus untuk pekerjaan yang didominasi oleh **I/O blocking** (seperti web server, panggilan REST API, dan query database), bukan untuk komputasi CPU intensif (seperti video rendering/kriptografi).
- Kamu tidak perlu mengubah gaya koding menjadi reaktif (*reactive programming* yang rumit dengan Mono/Flux) — kamu bisa tetap menulis kode sinkron yang mudah dibaca (`blocking`), namun JVM menjalankannya secara non-blocking di belakang layar.
- Fitur ini menjadi senjata utama framework cloud-native modern seperti **Quarkus** dan Spring Boot 3.2+.', '[{"url":"https://docs.oracle.com/en/java/javase/21/core/virtual-threads.html","label":"Oracle Documentation — Virtual Threads (Java 21)"},{"url":"https://openjdk.org/projects/loom/","label":"OpenJDK Project Loom — Fibers and Continuations for the Java Platform"}]'::jsonb, '[{"url":"https://adoptium.net/","label":"JDK 21 LTS sudah terpasang untuk mencoba fitur Virtual Threads"}]'::jsonb, 'Di file latihan kamu (jalankan dengan Java 21):
1. Buat program yang menjalankan 1.000 task menggunakan `Executors.newVirtualThreadPerTaskExecutor()`.
2. Di dalam setiap task, cetak nama thread dan lakukan simulasi jeda `Thread.sleep(Duration.ofMillis(200))`.
3. Hitung waktu total eksekusi menggunakan `System.currentTimeMillis()`.
4. Amati bahwa 1.000 task tersebut selesai dalam waktu kurang dari 1 detik. Ini menutup roadmap Java Lanjutan!', 5, 'published', '2026-09-22 14:14:32.518507+00', '2026-09-22 14:30:12.68+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('a776f033-d9c1-4a09-8f23-bf42e21b52fe', '9edf40dd-0158-4e70-b0e6-1e64c4282cb0', 'Dependency Injection dengan ArC (Jakarta CDI)', 'dependency-injection-arc', 'Catatan sebelumnya membahas pembuatan endpoint REST. **Masalah yang diselesaikan sekarang:** logika bisnis tidak boleh ditumpuk langsung di dalam class Resource/Controller. Menulis `new ProdukService()` di dalam controller membuat kode terikat mati (*tightly coupled*) dan sulit diuji (*mocking unit test*).

Quarkus menggunakan **ArC**: implementasi standar **Jakarta CDI (Contexts and Dependency Injection)** berbasis *build-time*:
- Di framework lama, container dependency injection memindai class lewat refleksi runtime saat aplikasi baru booting (bikin startup lambat).
- Di Quarkus ArC, dependensi dipetakan dan dianalisis **saat kompilasi**, menghasilkan startup instan dan konsumsi memori yang sangat minim.

```mermaid
flowchart TD
  subgraph ServiceLayer["Lapisan Bisnis (Service)"]
    Service["@ApplicationScoped<br/>class DiskonService"]
  end
  subgraph ControllerLayer["Lapisan Web (Resource)"]
    Controller["@Path(''/api/hitung'')<br/>class HitungResource<br/>@Inject DiskonService diskonService;"]
  end
  Service -->|Di-inject otomatis oleh ArC| Controller
```

Contoh implementasi Service dan Injection:

```java
package com.example.service;

import jakarta.enterprise.context.ApplicationScoped;

// 1. Definisikan Service sebagai Bean dengan scope ApplicationScoped (Singleton)
@ApplicationScoped
public class KalkulatorPajakService {

    public double hitungTotalDenganPajak(double hargaAwal) {
        double tarifPajak = 0.11; // PPN 11%
        return hargaAwal + (hargaAwal * tarifPajak);
    }
}
```

```java
package com.example;

import com.example.service.KalkulatorPajakService;
import jakarta.inject.Inject;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.QueryParam;

@Path("/api/pajak")
public class PajakResource {

    // 2. Inject service ke dalam controller
    @Inject
    KalkulatorPajakService pajakService;

    @GET
    public String cekTotal(@QueryParam("harga") double harga) {
        double total = pajakService.hitungTotalDenganPajak(harga);
        return "Total setelah pajak: Rp" + total;
    }
}
```

Poin penting:

- `@ApplicationScoped`: Bean dibuat sekali dan dipakai bersama sepanjang aplikasi hidup (setara *Singleton*).
- `@RequestScoped`: Bean dibuat baru untuk setiap request HTTP yang masuk, lalu dihancurkan setelah respons dikirim.
- `@Inject`: Anotasi standar Jakarta untuk meminta container ArC menyuntikkan dependensi instance yang sesuai.
- Jika ada kesalahan dependensi yang tidak ditemukan, Quarkus akan menolaknya langsung saat *build/compile time* — kamu tidak akan pernah mengalami crash *NoClassDefFoundError* di production!', '[{"url":"https://quarkus.io/guides/cdi-reference","label":"Quarkus Guides — Introduction to Contexts and Dependency Injection (CDI)"},{"url":"https://jakarta.ee/specifications/cdi/","label":"Jakarta Contexts and Dependency Injection Specification"}]'::jsonb, '[]'::jsonb, 'Di project Quarkus kamu:
1. Buat class `@ApplicationScoped public class SalamService`.
2. Tambahkan method `public String sapa(String nama) { return "Halo, " + nama + "! Selamat belajar Quarkus."; }`.
3. Di dalam `GreetingResource.java`, gunakan `@Inject SalamService salamService;`.
4. Panggil `salamService.sapa(nama)` dari endpoint REST dan uji hasilnya di browser.', 2, 'published', '2026-09-22 14:14:33.132101+00', '2026-09-22 14:30:13.384+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('d2e61558-75c1-4704-87ef-ef56220afdb8', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'Instalasi & Membuat Project React (Vite)', 'instalasi-dan-membuat-project', '**Masalah yang diselesaikan:** dulu, memulai project React dari nol berarti setup manual: install Babel buat transpile JSX, konfigurasi Webpack buat bundling, atur dev server sendiri — semua sebelum baris kode UI pertama ditulis. Create React App (CRA) sempat jadi solusi standar, tapi sekarang sudah tidak direkomendasikan lagi oleh tim React sendiri karena lambat dan tidak lagi dikembangkan aktif. **Vite** jadi pilihan modern: scaffold project React siap pakai dalam hitungan detik, dev server sangat cepat (pakai native ES modules, bukan bundling penuh tiap kali save).

React sendiri adalah library JavaScript untuk membangun antarmuka (UI) berbasis komponen — potongan UI yang bisa dipakai ulang dan disusun jadi halaman lengkap.

```mermaid
flowchart TD
    A[npm create vite@latest] --> B[Pilih nama project]
    B --> C[Pilih framework: React]
    C --> D[Pilih varian: JavaScript / TypeScript]
    D --> E[npm install]
    E --> F[npm run dev]
    F --> G[Server jalan di localhost, hot reload aktif]
```

### 1. Membuat Project Baru dengan Vite

```bash
npm create vite@latest nama-app -- --template react
cd nama-app
npm install
npm run dev
```

Buka `http://localhost:5173` — perubahan di kode langsung terlihat di browser tanpa reload manual (Hot Module Replacement).

### 2. Struktur Folder Penting

| File/Folder | Peran |
| --- | --- |
| `index.html` | Entry point HTML, punya `<div id="root">` tempat React di-mount. |
| `src/main.jsx` | Entry point JavaScript — me-render komponen `<App />` ke `#root`. |
| `src/App.jsx` | Komponen utama aplikasi, biasanya titik awal menyusun UI. |
| `package.json` | Dependensi & script (`dev`, `build`, `preview`). |

```jsx
// src/main.jsx
import { StrictMode } from ''react''
import { createRoot } from ''react-dom/client''
import App from ''./App.jsx''

createRoot(document.getElementById(''root'')).render(
  <StrictMode>
    <App />
  </StrictMode>,
)
```

- `createRoot` menghubungkan aplikasi React ke elemen DOM nyata (`#root`) — titik pertemuan antara HTML biasa dan dunia React.
- `<StrictMode>` bukan komponen UI, tapi alat bantu development: menjalankan beberapa fungsi dua kali secara sengaja untuk membantu menemukan bug (side effect yang tidak bersih), tidak berpengaruh di production.', '[{"url":"https://react.dev/learn/start-a-new-react-project","label":"React – Start a New React Project"},{"url":"https://vite.dev/guide/","label":"Vite – Getting Started"}]'::jsonb, '[{"url":"https://nodejs.org","label":"Node.js versi 18.17 atau lebih baru sudah terinstall (cek dengan `node --version` di terminal)"},{"label":"Familiar dengan perintah dasar terminal/command line (masuk folder, jalankan perintah)"}]'::jsonb, 'Buat project baru dengan Vite seperti contoh di atas, ubah teks di `src/App.jsx`, simpan filenya, dan amati perubahan langsung muncul di browser tanpa reload manual (Hot Module Replacement).', 0, 'published', '2026-09-21 23:24:41.175314+00', '2026-09-21 23:36:14.414004+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('eb9e7936-95b5-42b9-9396-12637e884505', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'Event Handling Dasar', 'event-handling-dasar', 'Catatan sebelumnya membahas cara memecah UI dan mengirim data ke component lewat props. **Masalah yang diselesaikan sekarang:** web bukan cuma dokumen statis yang dibaca — user mengklik tombol, mengetik di form, atau menggeser kursor. Di JavaScript murni kita memakai `addEventListener`, tapi bagaimana cara React menangani aksi user secara deklaratif langsung di elemen JSX?

```mermaid
flowchart LR
  User["Aksi User<br/>(Klik, Ketik, Hover)"] --> Event["React SyntheticEvent"]
  Event --> Handler["Fungsi Handler Dijalankan<br/>onClick={handleClick}"]
  Handler --> State["Bisa memicu pembaruan state<br/>atau aksi lanjutan"]
```

### 1. Menangani Event Dasar

```jsx
function Tombol() {
  function handleClick() {
    alert(''Tombol diklik!'')
  }

  return <button onClick={handleClick}>Klik Saya</button>
}
```

Poin krusial: `onClick={handleClick}` — mengirim **referensi fungsi**, bukan memanggilnya (`onClick={handleClick()}` salah, itu akan langsung terpanggil sekali waktu render, bukan waktu diklik).

### 2. Event Handler dengan Parameter

Kalau handler butuh argumen tambahan (misalnya id item yang diklik dari sebuah list), bungkus dengan arrow function supaya pemanggilannya ditunda sampai event benar-benar terjadi:

```jsx
function DaftarItem({ items, onHapus }) {
  return (
    <ul>
      {items.map((item) => (
        <li key={item.id}>
          {item.nama}
          <button onClick={() => onHapus(item.id)}>Hapus</button>
        </li>
      ))}
    </ul>
  )
}
```

### 3. Event Object

Sama seperti JavaScript biasa, handler otomatis menerima event object sebagai argumen pertama — berguna untuk baca nilai input atau mencegah perilaku default browser:

```jsx
function Form() {
  function handleSubmit(e) {
    e.preventDefault() // Mencegah reload halaman (default HTML form)
    console.log(''Form dikirim'')
  }

  return (
    <form onSubmit={handleSubmit}>
      <button type="submit">Kirim</button>
    </form>
  )
}
```

- Event di React disebut *Synthetic Event* — dibungkus React supaya perilakunya konsisten di semua browser, tapi API-nya (`e.target`, `e.preventDefault()`, dst) terasa sama seperti event DOM native.', '[{"url":"https://react.dev/learn/responding-to-events","label":"React – Responding to Events"}]'::jsonb, '[]'::jsonb, 'Di component latihan kamu (`src/App.jsx`):
1. Buat tombol "Klik Saya" dengan prop `onClick={handleClick}` yang memunculkan `alert("Tombol diklik!")`.
2. Buat tombol kedua yang mengirim argumen ke handler menggunakan inline arrow function: `onClick={() => handlePilih("React")}`.
3. Tambahkan tag `<input placeholder="Ketik sesuatu..." />` dan pasang event listener `onChange={(e) => console.log(e.target.value)}`. Buka tab Console di DevTools browser dan lihat nilainya tercetak setiap kali kamu mengetik karakter baru.', 3, 'published', '2026-09-21 23:24:41.175314+00', '2026-09-22 13:32:05.279+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('bdf935e3-96ea-405e-a2b7-5a5491531515', '3e71ad0e-b25a-4567-b43e-282574f1590a', 'Dasar Row Level Security (RLS)', 'rls-dasar', 'Sekarang kamu punya cara mengenali user yang login (`auth.uid()`, dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** bagaimana memastikan user A tidak bisa membaca/mengubah data milik user B, padahal keduanya memakai publishable key yang sama dan bisa langsung memanggil database dari browser?

**Row Level Security (RLS)** adalah fitur keamanan bawaan PostgreSQL yang membatasi baris data mana saja yang boleh dibaca (*SELECT*), ditambah (*INSERT*), diubah (*UPDATE*), atau dihapus (*DELETE*) oleh pengguna tertentu.

Di Supabase, karena client browser memanggil database langsung menggunakan Publishable Key, RLS adalah lapisan pertahanan utama agar pengguna tidak bisa membaca atau memanipulasi data milik orang lain.

```mermaid
flowchart TD
  Req["Client Request<br/>SELECT dari browser"] --> CheckRLS{"Apakah RLS Aktif?"}
  CheckRLS -->|Tidak| AllowAll["Izinkan Akses Semua Baris (Bahaya)"]
  CheckRLS -->|Ya| EvalPolicy{"Evaluasi Policy per Baris"}
  EvalPolicy -->|Lolos Policy: Sesuai User ID| ReturnRow["Baris Dikembalikan ke Client"]
  EvalPolicy -->|Gagal: Bukan Pemilik Data| DropRow["Baris Diabaikan atau Ditolak"]
```

Mengaktifkan RLS dan membuat policy melalui SQL:

```sql
-- 1. Selalu aktifkan RLS pada tabel yang dibuat
ALTER TABLE catatan ENABLE ROW LEVEL SECURITY;

-- 2. Policy: Siapa saja (publik) boleh membaca catatan yang berstatus published
CREATE POLICY "Catatan published dapat dibaca publik"
ON catatan
FOR SELECT
USING (status = ''published'');

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
```

Poin penting:

- Saat RLS diaktifkan pada suatu tabel tanpa policy apa pun, perilakunya adalah **default deny** (semua query dari client anon/authenticated akan menghasilkan data kosong atau error).
- Klausa `USING` digunakan untuk memeriksa baris yang sudah ada di database (cocok untuk `SELECT`, `UPDATE`, `DELETE`).
- Klausa `WITH CHECK` digunakan untuk memvalidasi baris data baru yang akan ditulis ke database (cocok untuk `INSERT`, `UPDATE`).
- Fungsi pembantu `auth.uid()` mengembalikan UUID pengguna yang sedang login berdasarkan token JWT sesi saat ini.', '[{"url":"https://supabase.com/docs/guides/database/postgres/row-level-security","label":"Supabase Docs — Row Level Security"},{"url":"https://www.postgresql.org/docs/current/ddl-rowsecurity.html","label":"PostgreSQL Docs — Row Security Policies"}]'::jsonb, '[]'::jsonb, 'Di tabel `produk` dari latihan sebelumnya, aktifkan RLS (`ALTER TABLE produk ENABLE ROW LEVEL SECURITY`) TANPA membuat policy apa pun dulu — coba `select` dari client, harus mendapat data kosong (default deny). Lalu tambahkan kolom `user_id uuid` ke tabel itu, buat policy SELECT & INSERT seperti contoh di atas berdasarkan `auth.uid()`. Terakhir, tes dengan dua akun berbeda: pastikan tiap akun cuma bisa melihat produk yang dia insert sendiri. Ini menutup roadmap Supabase: dari setup client sampai data yang benar-benar aman per user.', 4, 'published', '2026-09-18 08:42:41.475237+00', '2026-09-22 13:53:07.908+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('df2bcedf-f129-48a5-9251-5979524e34be', '8d1b066d-2a4b-429c-ab92-be5a7f37e392', 'Request Validation & Middleware di Laravel 11', 'form-request-validation-dan-middleware', 'Catatan sebelumnya melengkapi operasi database dengan Eloquent. **Masalah yang diselesaikan sekarang (dan menutup roadmap Laravel 11):** jangan pernah percaya data yang dikirimkan oleh pengguna (user input). Pengguna bisa saja mengosongkan form, mengirim email berformat salah, atau mencoba menyusupkan skrip berbahaya. Selain itu, bagaimana cara membatasi agar halaman admin hanya bisa dibuka oleh pengguna yang sudah login?

Laravel menyediakan dua lapisan pertahanan utama:
1. **Form Request Validation:** Memisahkan aturan validasi input ke dalam class terpisah yang otomatis menghentikan request dan mengembalikan pesan error ramah jika data tidak valid.
2. **Middleware:** Lapisan penyaring (*HTTP filter*) yang memeriksa setiap request yang masuk sebelum diizinkan mencapai Controller.

```mermaid
flowchart LR
  Request["Request Form HTTP POST"] --> Middleware["Middleware: auth<br/>(Cek Status Login)"]
  Middleware -- Belum Login --> Redirect["Redirect ke Halaman /login"]
  Middleware -- Sudah Login --> Validator["Form Request Validation<br/>(nama: required, harga: numeric)"]
  Validator -- Data Gagal --> Back["Kembali ke Form + Pesan Error Merah"]
  Validator -- Lolos Validasi --> Controller["Controller Eksekusi Logika Simpan"]
```

Membuat Form Request Validation Khusus:

```bash
php artisan make:request SimpanProdukRequest
```

Kode di `app/Http/Requests/SimpanProdukRequest.php`:

```php
<?php

namespace AppHttpRequests;

use IlluminateFoundationHttpFormRequest;

class SimpanProdukRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true; // Set true agar diizinkan dieksekusi
    }

    public function rules(): array
    {
        return [
            ''nama'' => ''required|string|min:3|max:100'',
            ''harga'' => ''required|numeric|min:1000'',
            ''kategori_id'' => ''required|exists:kategoris,id'',
        ];
    }
}
```

Memakai Form Request di Controller dan Menampilkan Error di Blade:

```php
// app/Http/Controllers/ProdukController.php
use AppHttpRequestsSimpanProdukRequest;
use AppModelsProduk;

public function store(SimpanProdukRequest $request)
{
    // Hanya data yang sudah lolos validasi yang diambil (sangat aman!)
    $dataValid = $request->validated();
    Produk::create($dataValid);

    return redirect(''/produk'')->with(''sukses'', ''Produk berhasil ditambahkan!'');
}
```

Menampilkan Error di Form Blade (`create.blade.php`):

```html
<form action="/produk" method="POST">
    @csrf <!-- Token proteksi Cross-Site Request Forgery WAJIB ada di setiap form POST -->

    <div>
        <label>Nama Produk:</label>
        <input type="text" name="nama" value="{{ old(''nama'') }}">
        @error(''nama'')
            <p style="color: red;">{{ $message }}</p>
        @enderror
    </div>

    <button type="submit">Simpan</button>
</form>
```

Pendaftaran Middleware di Laravel 11 (`bootstrap/app.php`):

```php
// Mendaftarkan alias middleware di bootstrap/app.php
->withMiddleware(function (Middleware $middleware) {
    $middleware->alias([
        ''admin'' => AppHttpMiddlewarePastikanUserAdmin::class,
    ]);
})
```

Poin penting:

- Directive `@csrf` wajib disertakan pada setiap formulir HTML berbasis `POST`, `PUT`, atau `DELETE` di Laravel untuk mencegah serangan penipuan request lintas situs.
- Method `$request->validated()` hanya mengembalikan data yang terdaftar di `rules()`, melindungi aplikasi dari field ilegal yang disusupkan pihak luar.
- Fungsi helper `old(''field'')` mempertahankan teks yang sudah diketik user di form jika validasi gagal, sehingga user tidak perlu mengetik ulang dari awal. Ini menutup roadmap Laravel 11!', '[{"url":"https://laravel.com/docs/11.x/validation","label":"Laravel Documentation — Validation"},{"url":"https://laravel.com/docs/11.x/middleware","label":"Laravel Documentation — Middleware"}]'::jsonb, '[]'::jsonb, 'Di project Laravel kamu:
1. Buat form request baru: `php artisan make:request KontakRequest`.
2. Tentukan aturan: `''email'' => ''required|email''`, `''pesan'' => ''required|min:10''`.
3. Buat form di Blade dengan tag `@csrf` dan masukkan input email dan pesan.
4. Coba submit form dengan format email yang salah dan kosongkan pesan.
5. Amati bagaimana Laravel secara otomatis menolak request dan menampilkan pesan error merah tanpa menulis satu baris pun logika `if/else` manual di controller!', 5, 'published', '2026-09-22 14:30:07.582001+00', '2026-09-22 14:30:07.272+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('5555bed3-f021-4ed5-9544-5da0aeb1d4c5', 'c397eb64-1f60-4364-b6c2-ad628083b315', 'Relasi Tabel, Foreign Keys, & Ragam JOIN', 'relasi-foreign-key-dan-join', 'Catatan sebelumnya membahas pembuatan satu tabel terisolasi. **Masalah yang diselesaikan sekarang:** di aplikasi nyata, entitas selalu saling terhubung — satu kategori memayungi banyak produk (*one-to-many*). Jika kita menyimpan nama kategori langsung di setiap baris produk, ketika nama kategori diganti kita harus mengupdate ribuan baris, dan risiko inkonsistensi data sangat tinggi (*data redundancy*).

Solusinya adalah **Normalisasi Database**: memisahkan data ke tabel berbeda dan menghubungkannya menggunakan **Foreign Key (Kunci Asing)**. Saat data ingin dibaca bersamaan, kita menggabungkannya kembali lewat operasi **JOIN**.

```mermaid
flowchart LR
  subgraph Kategori["Tabel Kategori"]
    K1["id: 1, nama: ''Elektronik''"]
    K2["id: 2, nama: ''Buku''"]
  end
  subgraph Produk["Tabel Produk"]
    P1["Laptop (kategori_id: 1)"]
    P2["Mouse (kategori_id: 1)"]
    P3["Novel (kategori_id: 2)"]
  end
  K1 --- P1 & P2
  K2 --- P3
```

Skema Foreign Key dan Ragam Operasi JOIN:

```sql
-- 1. Tabel Induk (Parent)
CREATE TABLE kategori (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(50) NOT NULL
);

-- 2. Tabel Anak (Child) dengan Foreign Key
CREATE TABLE produk (
    id SERIAL PRIMARY KEY,
    kategori_id INT NOT NULL REFERENCES kategori(id) ON DELETE CASCADE,
    nama VARCHAR(100) NOT NULL,
    harga INT NOT NULL
);

-- Mengisi data contoh
INSERT INTO kategori (nama) VALUES (''Elektronik''), (''Pakaian'');
INSERT INTO produk (kategori_id, nama, harga) VALUES
(1, ''Laptop Gaming'', 15000000),
(1, ''Keyboard Mekanikal'', 800000);
```

Membaca data terhubung dengan JOIN:

```sql
-- INNER JOIN: Hanya mengambil baris yang memiliki pasangan cocok di kedua tabel
SELECT 
    p.nama AS nama_produk,
    p.harga,
    k.nama AS nama_kategori
FROM produk p
INNER JOIN kategori k ON p.kategori_id = k.id;

-- LEFT JOIN: Mengambil SEMUA kategori, meskipun belum ada produknya
SELECT 
    k.nama AS nama_kategori,
    COUNT(p.id) AS total_produk
FROM kategori k
LEFT JOIN produk p ON k.id = p.kategori_id
GROUP BY k.id, k.nama;
```

Poin penting:

- `ON DELETE CASCADE`: Jika baris kategori dihapus, seluruh produk di bawah kategori tersebut otomatis terhapus, mencegah data yatim piatu (*orphaned records*).
- `ON DELETE RESTRICT` / `NO ACTION`: Menolak penghapusan kategori jika masih ada produk yang merujuk kepadanya.
- `INNER JOIN` menghasilkan irisan dua tabel; `LEFT JOIN` menjamin seluruh baris dari tabel kiri selalu tampil (kolom tabel kanan akan bernilai `NULL` jika belum ada pasangannya).', '[{"url":"https://www.postgresql.org/docs/current/ddl-constraints.html#DDL-CONSTRAINTS-FK","label":"PostgreSQL Documentation — Foreign Keys"},{"url":"https://www.postgresql.org/docs/current/queries-table-expressions.html#QUERIES-FROM","label":"PostgreSQL Documentation — Table Expressions (Joins)"}]'::jsonb, '[]'::jsonb, 'Di terminal psql kamu:
1. Buat tabel `kategori` dan `produk` seperti contoh di atas.
2. Tambahkan kategori baru ke-3: `INSERT INTO kategori (nama) VALUES (''Otomotif'');` (tanpa membuat produknya).
3. Jalankan query `INNER JOIN` dan perhatikan bahwa kategori ''Otomotif'' tidak muncul.
4. Jalankan query `LEFT JOIN` dan amati bagaimana kategori ''Otomotif'' tetap muncul dengan kolom produk bernilai `NULL` (atau count 0).', 2, 'published', '2026-09-22 14:24:48.107643+00', '2026-09-22 14:30:07.899+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('1dc3a453-b286-4ad1-84f3-37af9ce54c5f', '94331b9c-fe70-4f7c-be9b-742a1996b9e1', 'Pengenalan Redis, In-Memory Storage, & redis-cli', 'pengenalan-redis-dan-redis-cli', '**Masalah yang diselesaikan:** database relasional tradisional (seperti PostgreSQL atau MariaDB) menyimpan datanya di piringan disk (HDD/SSD). Mengambil data dari disk membutuhkan latensi milidetik. Ketika jutaan pengunjung mengakses halaman yang sama secara serentak (misal: halaman flash sale produk populer), jutaan query SQL membanjiri disk server, membuat response time melonjak dari 50 ms menjadi 10 detik, bahkan menumbangkan server database.

**Redis (Remote Dictionary Server)** memecahkan masalah ini dengan menyimpan seluruh datanya langsung di **RAM (Random Access Memory)**. Mengambil data dari memori RAM hanya membutuhkan latensi **sub-milidetik (< 1 ms)**, ratusan kali lebih cepat dibanding disk!

```mermaid
flowchart TD
  subgraph Tradisional["Database Disk (Postgres / MariaDB)"]
    D1["Query SQL"] --> D2["Baca Disk I/O (HDD/SSD)"]
    D2 --> D3["Latensi: 10 - 50 milidetik"]
  end
  subgraph InMem["In-Memory Redis"]
    R1["Perintah Key-Value"] --> R2["Baca RAM Langsung (Memory Bus)"]
    R2 --> R3["Latensi: < 0.5 milidetik (Kilat!)"]
  end
```

Menjalankan Redis menggunakan Docker:

```bash
# 1. Jalankan container Redis di background (port 6379)
docker run --name redis-belajar -p 6379:6379 -d redis:7-alpine

# 2. Masuk ke terminal interaktif redis-cli
docker exec -it redis-belajar redis-cli
```

Perintah dasar paling penting di `redis-cli`:

```text
# 1. Menguji koneksi server (merespon PONG jika sehat)
PING

# 2. Menyimpan data string sederhana (Key-Value)
SET nama "Budi Santoso"

# 3. Mengambil data berdasarkan kunci
GET nama

# 4. Memeriksa apakah suatu kunci ada di memori (mengembalikan 1 jika ada, 0 jika tidak)
EXISTS nama

# 5. Menghapus kunci
DEL nama
```

Poin penting:

- Redis menggunakan port default **6379**.
- Arsitektur inti Redis dirancang dengan *single-threaded event loop* yang sangat teroptimasi, menghindari overhead penguncian thread (*lock contention*) dan mampu menangani lebih dari 100.000 operasi per detik pada perangkat keras standar.
- Meskipun berbasis RAM, Redis memiliki mekanisme persistensi berkala ke disk (RDB snapshot & Append-Only File / AOF) sehingga data tidak hilang saat server di-restart.', '[{"url":"https://redis.io/docs/latest/get-started/","label":"Redis Official Documentation — Introduction to Redis"},{"url":"https://hub.docker.com/_/redis","label":"Docker Hub Official Redis Image"}]'::jsonb, '[{"url":"https://www.docker.com/","label":"Docker sudah terpasang di komputermu (atau Redis native CLI)"}]'::jsonb, 'Buka terminal:
1. Jalankan container Redis via Docker seperti contoh di atas.
2. Masuk ke terminal `redis-cli`.
3. Ketik `PING` dan pastikan server membalas `PONG`.
4. Simpan kunci baru: `SET situs "Catatan Belajar"`.
5. Ambil nilainya dengan `GET situs`.
6. Keluar dari redis-cli dengan mengetik `exit`.', 0, 'published', '2026-09-22 14:24:49.784274+00', '2026-09-22 14:30:09.589+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('56c3d5ea-8918-4190-815b-4ba6202386ba', '9edf40dd-0158-4e70-b0e6-1e64c4282cb0', 'Kompilasi Native Image dengan GraalVM', 'graalvm-native-image', 'Catatan sebelumnya melengkapi operasi REST dan database di Quarkus. **Masalah yang diselesaikan sekarang (dan menjadi puncak kekuatan Quarkus):** aplikasi Java biasa membutuhkan JVM untuk berjalan. Saat aplikasi dikemas ke dalam container Docker, ukuran image menjadi ratusan megabyte dan butuh waktu 1-5 detik untuk mulai melayani request. Di arsitektur Serverless (seperti AWS Lambda atau Google Cloud Run), keterlambatan ini disebut **Cold Start** dan membuat pengguna harus menunggu.

Quarkus terintegrasi mendalam dengan **GraalVM Native Image**: aplikasi Java dikompilasi langsung menjadi **file binary biner native OS** (seperti file executable C/Go). Hasilnya: tidak butuh JVM lagi saat dijalankan di server!

```mermaid
flowchart LR
  subgraph Tradisional["Java Tradisional (JVM)"]
    J1[".jar file"] --> J2["JVM Warmup & JIT Compile"]
    J2 --> J3["Startup: 2-5 detik<br/>RAM: 250MB+"]
  end
  subgraph Native["Quarkus + GraalVM Native Binary"]
    N1["Ahead-Of-Time (AOT) Build"] --> N2["Standalone Executable Binary"]
    N2 --> N3["Startup: 0.015 detik (15 ms!)<br/>RAM: ~25MB"]
  end
```

Perbandingan Performa Drastis:
| Metrik | Mode JVM Standar | Mode GraalVM Native |
| --- | --- | --- |
| **Waktu Startup** | 1.800 ms (1,8 detik) | **14 ms (0,014 detik!)** |
| **Penggunaan Memori (RSS)** | ~180 MB RAM | **~28 MB RAM** |
| **Kebutuhan JVM di Server** | Wajib install JDK/JRE | **Tidak butuh sama sekali!** |

Perintah membuat Native Image:

```bash
# 1. Build native executable menggunakan container builder (tidak perlu install GraalVM lokal!)
quarkus build --native -Dquarkus.native.container-build=true

# 2. File binary siap dieksekusi langsung tanpa ''java -jar'' di target/
./target/belajar-quarkus-1.0.0-SNAPSHOT-runner
```

Output terminal saat dijalankan:
```text
__  ____  __  _____   ___  __ ____  ______ 
 --/ __ / / / / _ | / _ / //_/ / / / __/ 
 -/ /_/ / /_/ / __ |/ , _/ ,< / /_/ /    
--________/_/ |_/_/|_/_/|_|____/___/   
2026-09-22 10:00:00,014 INFO  [io.quarkus] (main) belajar-quarkus 1.0.0-SNAPSHOT native (powered by Quarkus) started in 0.015s. Listening on: http://0.0.0.0:8080
```

Poin penting:

- **Ahead-Of-Time (AOT) Compilation**: GraalVM menganalisis seluruh jalur kode yang bisa dijangkau (*reachability analysis*) dan membuang kode yang tidak terpakai, menghasilkan binary yang sangat ramping.
- Parameter `-Dquarkus.native.container-build=true` memungkinkan Quarkus menjalankan compiler GraalVM di dalam container Docker, sehingga kamu tidak wajib memasang SDK GraalVM lokal di komputermu.
- Ini adalah standar tertinggi cloud-native Java masa kini: efisiensi biaya infrastruktur cloud yang setara dengan bahasa Go dan Rust.', '[{"url":"https://quarkus.io/guides/building-native-image","label":"Quarkus Guides — Building a Native Executable"},{"url":"https://www.graalvm.org/latest/reference-manual/native-image/","label":"GraalVM Official Documentation"}]'::jsonb, '[{"url":"https://www.docker.com/","label":"Docker terpasang untuk menjalankan proses containerized native compilation"}]'::jsonb, 'Di project Quarkus kamu:
1. Jalankan perintah kompilasi native container: `./mvnw package -Dnative -Dquarkus.native.container-build=true`.
2. Tunggu proses AOT compilation selesai (memerlukan waktu beberapa menit).
3. Buka folder `target/` dan temukan file executable binary bernama `*-runner`.
4. Jalankan binary tersebut secara langsung di terminal: `./target/*-runner`.
5. Perhatikan log banner startup Quarkus: kamu akan melihat aplikasi menyala dalam 10-30 milidetik! Ini menutup roadmap Quarkus.', 4, 'published', '2026-09-22 14:14:33.61627+00', '2026-09-22 14:30:13.76+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('97bae629-d766-42d8-b52f-72403968fe7e', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'Conditional Rendering Dasar', 'conditional-rendering-dasar', 'Catatan sebelumnya membahas state untuk menyimpan memori dan merender ulang tampilan. **Masalah yang diselesaikan sekarang:** UI jarang statis — kadang perlu tampil beda tergantung kondisi: pesan error cuma muncul kalau ada error, tombol "Login" berubah jadi "Logout" kalau user sudah masuk. Karena JSX cuma ekspresi (tidak bisa langsung menulis `if`/`else` di tengah markup seperti template engine lain), React memakai fitur JavaScript biasa yang **menghasilkan nilai** — ekspresi ternary dan operator `&&` — bukan sintaks khusus baru.

```mermaid
flowchart TD
  Kondisi{"Evaluasi Kondisi<br/>(isLoggedIn?)"}
  Kondisi -->|true| UI_A["Tampilkan <Dashboard />"]
  Kondisi -->|false| UI_B["Tampilkan <TombolLogin />"]
```

### 1. If/Else di Luar JSX (Paling Jelas)

```jsx
function Status({ sudahLogin }) {
  if (sudahLogin) {
    return <p>Selamat datang kembali!</p>
  }
  return <p>Silakan login dulu.</p>
}
```

Cara ini paling gampang dibaca untuk percabangan besar — return lebih awal sebelum JSX utama.

### 2. Ternary di Dalam JSX

Untuk percabangan kecil yang menyatu dengan markup lain, ternary (`kondisi ? A : B`) lebih ringkas:

```jsx
function TombolAuth({ sudahLogin }) {
  return (
    <button>{sudahLogin ? ''Logout'' : ''Login''}</button>
  )
}
```

### 3. Operator `&&` untuk "Tampilkan Kalau..."

Kalau cuma butuh tampil-atau-tidak (tanpa alternatif), `&&` lebih ringkas daripada ternary dengan `: null`:

```jsx
function Notifikasi({ jumlahPesan }) {
  return (
    <div>
      {jumlahPesan > 0 && <span className="badge">{jumlahPesan} pesan baru</span>}
    </div>
  )
}
```

⚠️ **Jebakan umum:** `{jumlahPesan && <span>...</span>}` (tanpa `> 0`) berbahaya kalau `jumlahPesan` bisa `0` — JavaScript menganggap `0` falsy, tapi `&&` tetap me-render angka `0` itu sendiri ke layar (karena `0` bukan `null`/`undefined`/`false`, React tetap menampilkannya sebagai teks "0"). Selalu ubah jadi boolean eksplisit (`jumlahPesan > 0 && ...`) untuk menghindari ini.', '[{"url":"https://react.dev/learn/conditional-rendering","label":"React – Conditional Rendering"}]'::jsonb, '[]'::jsonb, 'Buat tombol toggle status login di component kamu:
1. Buat state `const [isLoggedIn, setIsLoggedIn] = useState(false)`.
2. Gunakan operator ternary untuk menentukan teks tombol: `{isLoggedIn ? "Keluar (Logout)" : "Masuk (Login)"}` dengan event `onClick={() => setIsLoggedIn(!isLoggedIn)}`.
3. Di bawah tombol, gunakan operator `&&` untuk menampilkan pesan sambutan hanya jika user login: `{isLoggedIn && <p>Selamat datang, Member!</p>}`.
4. Klik tombol bolak-balik di browser dan amati elemen muncul dan hilang sesuai kondisi state.', 5, 'published', '2026-09-21 23:24:41.175314+00', '2026-09-22 13:32:05.676+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('11f0f0f0-1b41-47d3-b761-a46fdd0abda4', 'df6694f2-8cc1-47da-b697-e5c0f0f2cf89', 'Mengabaikan File dengan .gitignore', 'gitignore-dasar', 'Sekarang project kamu sudah bisa di-push ke remote dan dibagikan ke orang lain (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** tidak semua file di folder project seharusnya ikut dilacak Git — file dependency yang bisa di-generate ulang (`node_modules/`), hasil build (`dist/`, `.next/`), atau file berisi rahasia (`.env` yang isinya API key/password). Kalau ikut ter-`push` ke remote publik, itu bisa membengkakkan ukuran repo atau — lebih parah — membocorkan kredensial ke siapa saja yang bisa lihat repo-nya.
`.gitignore` adalah file konfigurasi berisi daftar pola nama file/folder yang sengaja Git abaikan — tidak akan pernah muncul sebagai *untracked* di `git status`, dan tidak bisa ikut ke-`git add` secara tidak sengaja (termasuk lewat `git add .`).

```mermaid
flowchart LR
  Edit["File diubah/dibuat"] --> Check{"Cocok pola<br/>di .gitignore?"}
  Check -->|Ya| Ignored["Diabaikan Git<br/>(tidak muncul di git status)"]
  Check -->|Tidak| Tracked["Muncul sebagai untracked/modified<br/>bisa di-git add"]
```

### Contoh Isi `.gitignore` (Project Node.js/Next.js)
```bash
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
```

Poin penting:

- Bikin `.gitignore` **sedini mungkin**, idealnya sebelum `git add` pertama kali — mencegah lebih mudah daripada membersihkan riwayat commit yang sudah terlanjur berisi secret.
- Kalau sebuah file **sudah kadung ter-commit** sebelum ditambahkan ke `.gitignore`, menambahkannya ke `.gitignore` saja tidak cukup — Git akan tetap melacaknya. Perlu `git rm --cached <file>` untuk berhenti melacaknya (filenya tetap ada di disk, cuma dihapus dari index Git).
- Pola `folder/` (dengan garis miring di akhir) cuma cocok untuk folder, sedangkan `*.log` cocok untuk semua file berekstensi `.log` di folder mana pun.
- GitHub menyediakan koleksi template `.gitignore` siap pakai per bahasa/framework (Node, Python, dll.) yang bisa jadi titik awal.', '[{"url":"https://git-scm.com/docs/gitignore","label":"Git Documentation — gitignore"},{"url":"https://docs.github.com/en/get-started/getting-started-with-git/ignoring-files","label":"GitHub Docs — Ignoring Files"}]'::jsonb, '[]'::jsonb, 'Di repository latihan kamu, buat file `rahasia.env` berisi teks apa saja, dan buat folder `node_modules/` kosong (isi dengan satu file dummy). Jalankan `git status` — keduanya muncul sebagai *untracked*. Buat file `.gitignore` berisi `rahasia.env` dan `node_modules/`, jalankan `git status` lagi — keduanya harus HILANG dari daftar. Sekarang simulasikan kasus "sudah kadung ter-commit": hapus baris `rahasia.env` dari `.gitignore` sebentar, `git add` + commit filenya, lalu kembalikan baris itu ke `.gitignore` dan jalankan `git rm --cached rahasia.env` — buktikan filenya tetap ada di disk tapi sudah tidak dilacak Git lagi (`git status` menampilkannya sebagai untracked, bukan lagi tracked).', 1, 'published', '2026-09-19 10:05:15.317547+00', '2026-09-22 13:48:35.612+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('5b6e95b1-c7a8-49b4-b4fd-c2fa4eb4f970', '3e71ad0e-b25a-4567-b43e-282574f1590a', 'Storage Dasar: Upload & Ambil URL File', 'storage-dasar', 'Sekarang kamu bisa autentikasi user dan proteksi data lewat RLS. **Masalah yang diselesaikan sekarang:** bagaimana kalau aplikasi kamu perlu menyimpan *file* — foto profil, dokumen, gambar produk — bukan cuma data terstruktur di tabel? Menyimpan file sebagai base64 di kolom database itu boros dan lambat; kamu butuh tempat penyimpanan file terpisah yang tetap terintegrasi dengan sistem auth & RLS yang sama.

**Supabase Storage** menyediakan penyimpanan file berbasis *bucket* (semacam folder besar), dengan kontrol akses yang bisa diatur sama seperti RLS di database.

```mermaid
flowchart LR
  File["File dari input user"] -->|upload| Bucket["Bucket (mis. ''avatars'')"]
  Bucket -->|"getPublicUrl()"| URL["URL publik file"]
  Bucket -->|"createSignedUrl()"| SignedURL["URL sementara (bucket privat)"]
```

```ts
import { supabase } from "./lib/supabase";

// Upload file ke bucket "avatars"
async function uploadAvatar(userId: string, file: File) {
  const path = `${userId}/${file.name}`;
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
```

| Jenis Bucket | Siapa yang bisa akses URL | Cara ambil URL |
| --- | --- | --- |
| Public | Siapa saja yang punya URL-nya | `getPublicUrl()` — URL permanen |
| Private | Cuma yang lolos RLS storage | `createSignedUrl()` — URL sementara, kedaluwarsa |

Poin penting:

- Bucket dibuat lewat dashboard (Storage → New bucket) atau API, dan bisa ditandai *public* atau *private* saat pembuatan.
- Penamaan path yang menyertakan `userId/` (seperti contoh di atas) memudahkan penulisan RLS policy storage berdasarkan pemilik file.
- Storage juga punya RLS sendiri (tabel `storage.objects`) — bucket private tanpa policy akan menolak semua akses, sama seperti tabel biasa tanpa policy.', '[{"url":"https://supabase.com/docs/guides/storage","label":"Supabase Docs — Storage"},{"url":"https://supabase.com/docs/reference/javascript/storage-from-upload","label":"Supabase Docs — Storage Upload Reference"}]'::jsonb, '[]'::jsonb, 'Buat bucket baru bernama `avatars` lewat dashboard Supabase (Storage → New bucket), tandai sebagai *public*. Di project kamu, buat form upload sederhana (`<input type="file">`), upload file yang dipilih user ke bucket itu memakai `uploadAvatar()` di atas, lalu tampilkan hasilnya lewat tag `<img src={url} />` memakai `ambilUrlAvatar()`. Setelah berhasil, buat bucket KEDUA yang privat, upload file yang sama ke sana, dan buktikan `getPublicUrl()`-nya tidak bisa diakses langsung (403) sementara `createSignedUrl()` bisa.', 5, 'published', '2026-09-18 23:46:50.864953+00', '2026-09-22 13:53:08.099+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('9eb21fa5-b6a3-49c8-9c17-1f53393c22a7', 'c397eb64-1f60-4364-b6c2-ad628083b315', 'Pengenalan PostgreSQL, Arsitektur, & psql CLI', 'pengenalan-postgresql-dan-instalasi', '**Masalah yang diselesaikan:** menyimpan data aplikasi di dalam file teks mentah (seperti CSV atau JSON) rentan terhadap kerusakan data saat crash (*data corruption*), tidak mendukung banyak pengguna yang menulis bersamaan (*concurrent write*), dan pencarian data menjadi lambat saat ukuran file membesar. PostgreSQL adalah sistem manajemen database relasional (**RDBMS**) open-source tingkat enterprise yang menjamin integritas data secara mutlak.

PostgreSQL beroperasi dengan model proses client-server: setiap koneksi dari aplikasi dilayani oleh proses terpisah di server yang berkomunikasi dengan memori bersama (*shared memory*) dan mencatat perubahan ke berkas **Write-Ahead Log (WAL)** sebelum ditulis permanen ke disk.

```mermaid
flowchart LR
  Client["Klien (psql CLI / Backend App)"] -->|Koneksi Port 5432| Postmaster["Postgres Server Process"]
  Postmaster --> SharedBuffer["Shared Memory Buffer (RAM)"]
  SharedBuffer --> WAL["Write-Ahead Log (WAL) Disk"]
  SharedBuffer --> DataFiles["Tabel & Data Disk (Permanen)"]
```

Cara paling cepat menjalankan PostgreSQL menggunakan Docker:

```bash
# 1. Jalankan container PostgreSQL 16 di background
docker run --name postgres-belajar -e POSTGRES_PASSWORD=rahasia -p 5432:5432 -d postgres:16

# 2. Masuk ke terminal interaktif psql di dalam container
docker exec -it postgres-belajar psql -U postgres
```

Perintah navigasi paling penting di dalam `psql`:

```sql
-- Melihat daftar database yang ada
l

-- Membuat database baru
CREATE DATABASE belajar_db;

-- Pindah koneksi ke database tertentu
c belajar_db

-- Melihat daftar tabel di database saat ini
dt

-- Keluar dari psql
q
```

Poin penting:

- PostgreSQL menggunakan port default **5432**.
- Format perintah SQL selalu diakhiri dengan titik koma (`;`), sedangkan perintah internal `psql` diawali garis miring terbalik (misal `l`, `dt`, `q`).
- Menjalankan PostgreSQL via Docker adalah standar industri untuk lingkungan pengembangan karena menjaga sistem operasi host tetap bersih tanpa instalasi service latar belakang.', '[{"url":"https://www.postgresql.org/docs/current/intro-whatis.html","label":"PostgreSQL Official Documentation — What is PostgreSQL?"},{"url":"https://hub.docker.com/_/postgres","label":"Docker Hub Official PostgreSQL Image"}]'::jsonb, '[{"url":"https://www.docker.com/","label":"Docker sudah terinstall di komputermu (atau PostgreSQL native)"}]'::jsonb, 'Buka terminal komputermu:
1. Jalankan PostgreSQL lewat Docker seperti contoh perintah di atas.
2. Masuk ke terminal `psql -U postgres`.
3. Buat database baru: `CREATE DATABASE toko_online;`.
4. Hubungkan ke database tersebut dengan perintah `c toko_online`.
5. Keluar dari psql dengan `q` dan coba jalankan kembali untuk membuktikan database `toko_online` tetap tersimpan.', 0, 'published', '2026-09-22 14:24:47.745107+00', '2026-09-22 14:30:07.473+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('7aebd158-43a3-4d15-af68-f248654d812d', 'c397eb64-1f60-4364-b6c2-ad628083b315', 'Indexing & Optimasi Query dengan EXPLAIN ANALYZE', 'indexing-dan-query-performance', 'Catatan sebelumnya membahas relasi dan join. **Masalah yang diselesaikan sekarang:** saat tabel hanya berisi 100 baris, semua query terasa instan. Namun ketika tabel berkembang menjadi 1 juta baris, query `SELECT * FROM transaksi WHERE nomor_resi = ''XYZ''` bisa memakan waktu 3 hingga 10 detik dan membuat CPU server 100% karena database harus membaca seluruh baris dari awal sampai akhir (**Sequential Scan / Full Table Scan**).

**Index** adalah struktur data khusus (paling umum berupa **B-Tree**) yang bertindak seperti indeks di buku belakang: alih-alih membaca seluruh halaman buku, database langsung melompat ke lokasi nomor baris yang dituju dalam kompleksitas waktu $O(log N)$.

```mermaid
flowchart TD
  subgraph TanpaIndex["Tanpa Index: Sequential Scan (Lambat)"]
    S["Cari resi ''RESI-999''"] --> B1["Baris 1"] --> B2["Baris 2"] --> B3["... Scan 1.000.000 baris ..."] --> Found1["Ditemukan setelah 3 detik"]
  end
  subgraph DenganIndex["Dengan B-Tree Index (Sangat Cepat)"]
    I["Cari resi ''RESI-999''"] --> Root["Root B-Tree Node"]
    Root --> Branch["Branch Node"]
    Branch --> Leaf["Leaf Node (Langsung dapat pointer memori)"]
    Leaf --> Found2["Ditemukan dalam 0.5 milidetik!"]
  end
```

Membuat Index dan Menganalisis Performa:

```sql
-- 1. Membuat index B-Tree pada kolom yang sering dicari / difilter
CREATE INDEX idx_pengguna_email ON pengguna (email);

-- 2. Index komposit (dua kolom yang sering dicari bersamaan)
CREATE INDEX idx_produk_kategori_harga ON produk (kategori_id, harga);

-- 3. Menguji rencana eksekusi query sebelum dan sesudah index
EXPLAIN ANALYZE 
SELECT * FROM pengguna WHERE email = ''budi@gmail.com'';
```

Hasil analisis dari `EXPLAIN ANALYZE`:
```text
Index Scan using idx_pengguna_email on pengguna  (cost=0.28..8.29 rows=1 width=128) (actual time=0.042..0.044 rows=1 loops=1)
  Index Cond: ((email)::text = ''budi@gmail.com''::text)
Planning Time: 0.112 ms
Execution Time: 0.065 ms
```

Poin penting:

- Kolom yang memiliki constraint `PRIMARY KEY` dan `UNIQUE` secara otomatis dibuatkan index B-Tree oleh PostgreSQL di belakang layar.
- Perintah `EXPLAIN ANALYZE` wajib dipelajari setiap developer: perintah ini benar-benar mengeksekusi query dan menampilkan waktu eksekusi riil (*actual execution time*) serta metode pencarian yang dipilih database.
- **Jangan mengindeks semua kolom:** setiap index mempercepat operasi `SELECT`, tetapi sedikit memperlambat operasi `INSERT`, `UPDATE`, dan `DELETE` karena pohon index harus diatur ulang setiap kali data berubah.', '[{"url":"https://www.postgresql.org/docs/current/indexes.html","label":"PostgreSQL Documentation — Indexes"},{"url":"https://www.postgresql.org/docs/current/using-explain.html","label":"PostgreSQL Documentation — Using EXPLAIN"}]'::jsonb, '[]'::jsonb, 'Di terminal psql kamu:
1. Buat tabel uji berisi angka acak: `CREATE TABLE angka_test AS SELECT generate_series(1, 100000) AS angka;`.
2. Jalankan `EXPLAIN ANALYZE SELECT * FROM angka_test WHERE angka = 75432;` dan catat metode (`Seq Scan`) serta waktu eksekusinya.
3. Buat index: `CREATE INDEX idx_angka ON angka_test (angka);`.
4. Jalankan kembali `EXPLAIN ANALYZE` yang sama dan amati perubahan metode menjadi `Index Scan` dengan waktu eksekusi yang turun drastis.', 3, 'published', '2026-09-22 14:24:48.289256+00', '2026-09-22 14:30:08.104+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('79793930-5234-4da9-9a55-6aa81e54911f', '94331b9c-fe70-4f7c-be9b-742a1996b9e1', 'Struktur Data String & Key Expiration (TTL)', 'struktur-data-string-dan-key-expiration', 'Catatan sebelumnya mengenalkan dasar Redis. **Masalah yang diselesaikan sekarang:** bagaimana cara mengelola data yang hanya boleh hidup sementara — seperti kode OTP SMS yang kedaluwarsa dalam 5 menit, sesi login token pengguna yang hangus setelah 24 jam, atau pembatas jumlah request API (*rate limiter*)? Di database SQL biasa, kamu harus membuat kolom `expired_at` dan menjalankan cronjob pembersihan data basi secara berkala yang membebani server.

Redis memiliki fitur bawaan **Key Expiration (TTL - Time To Live)**: kamu bisa menyetel masa aktif kunci, dan Redis akan menghapus data tersebut secara otomatis dari RAM begitu waktunya habis! Selain itu, tipe String di Redis mendukung operasi aritmatika atomik (`INCR`).

```mermaid
flowchart LR
  Set["SET otp:user123 ''88421'' EX 300<br/>(Masa hidup 300 detik)"] --> Wait["Waktu Berjalan (Countdown TTL)"]
  Wait -->|Setelah 5 Menit Habis| Expired["Otomatis Dihapus dari RAM!<br/>GET mengembalikan (nil)"]
```

Sintaks TTL dan Operasi Hitungan Atomik:

```text
# 1. Menyimpan kunci dengan masa kedaluwarsa otomatis (EX = detik)
# Contoh: Token sesi login user aktif selama 60 detik
SET sesi:token_abc "user_id_42" EX 60

# 2. Memeriksa sisa masa aktif suatu kunci (dalam satuan detik)
TTL sesi:token_abc
# Mengembalikan angka sisa detik (misal: 45)
# Mengembalikan -2 jika kunci sudah hangus/tidak ada
# Mengembalikan -1 jika kunci bersifat permanen (tanpa batas waktu)

# 3. Menambahkan TTL ke kunci yang sudah terlanjur dibuat
SET kupon_diskon "HEMAT10"
EXPIRE kupon_diskon 120

# 4. Operator Penambah Atomik (Sangat berguna untuk Counter / Hit / Rate Limiting)
SET jumlah_kunjungan 100
INCR jumlah_kunjungan
# Mengembalikan 101 secara instan dan aman dari race-condition!
```

Poin penting:

- Operasi `INCR` dan `DECR` bersifat **atomic**: bahkan jika ada 10.000 request bersamaan menaikkan counter counter, tidak akan pernah ada nilai yang hilang (*zero race-condition*).
- Manfaatkan konvensi penamaan kunci dengan titik dua (`:`) sebagai pemisah namespace logis: `user:1001:profile`, `session:token_xyz`.
- Jika memori RAM server penuh, Redis menerapkan algoritma penggusuran (*eviction policy*) seperti LRU (Least Recently Used) untuk menghapus data lama yang jarang diakses.', '[{"url":"https://redis.io/docs/latest/develop/data-types/strings/","label":"Redis Documentation — Strings"},{"url":"https://redis.io/docs/latest/commands/expire/","label":"Redis Documentation — EXPIRE Command"}]'::jsonb, '[]'::jsonb, 'Di terminal redis-cli kamu:
1. Simpan kode OTP sementara dengan masa aktif 10 detik: `SET kode_otp 123456 EX 10`.
2. Periksa sisa waktunya dengan mengetik `TTL kode_otp` berulang kali dan perhatikan hitungan mundurnya.
3. Tunggu hingga 10 detik, lalu jalankan `GET kode_otp` dan pastikan nilainya berubah menjadi `(nil)` (kosong).
4. Buat counter hitung: `SET counter 0`, lalu jalankan `INCR counter` tiga kali.', 1, 'published', '2026-09-22 14:24:49.951467+00', '2026-09-22 14:30:09.784+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('9a92a461-d749-4162-b5ad-f9006c18b600', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'React dengan TypeScript Dasar', 'react-dengan-typescript', 'Catatan sebelumnya melengkapi semua fitur dasar React: dari JSX, interaksi, state, sampai efek samping. **Masalah yang diselesaikan sekarang:** saat aplikasi React berkembang besar, komponen menerima belasan props. Di JavaScript murni, salah mengetik nama prop (`onClick` vs `onclick`, atau `user.name` vs `user.nama`) baru ketahuan saat halaman error di browser.

Menggunakan TypeScript bersama React memberikan *autocomplete* dan pemeriksaan tipe instan: TypeScript memastikan bahwa komponen menerima props dengan tipe yang tepat, dan hooks (`useState`, `useRef`) terjaga tipe nilainya.

```mermaid
flowchart TD
  subgraph JS["React JS Murni (.jsx)"]
    J1["Kirim props: <Kartu nama={123} />"] --> J2["Tidak ada peringatan di editor"]
    J2 --> J3["Error runtime saat browser coba render .toUpperCase()"]
  end
  subgraph TS["React + TypeScript (.tsx)"]
    T1["interface KartuProps { nama: string; }"] --> T2["Kirim props: <Kartu nama={123} />"]
    T2 --> T3["Editor langsung garis bawahi merah:<br/>Type ''number'' is not assignable to type ''string''"]
  end
```

Contoh mendefinisikan tipe Props dan State di file `.tsx`:

```tsx
// src/components/TombolAksi.tsx
import { useState } from "react";

// 1. Tipe untuk Props komponen
interface TombolAksiProps {
  label: string;
  varian?: "primer" | "sekunder"; // opsional dengan literal union
  onKlik: () => void;
}

export function TombolAksi({ label, varian = "primer", onKlik }: TombolAksiProps) {
  return (
    <button
      onClick={onKlik}
      style={{
        padding: "8px 16px",
        backgroundColor: varian === "primer" ? "#2563eb" : "#6b7280",
        color: "white",
        borderRadius: "4px",
        border: "none",
      }}
    >
      {label}
    </button>
  );
}

// 2. Tipe pada useState
interface Pengguna {
  id: number;
  nama: string;
}

export default function ProfilApp() {
  // Memberi tipe generic pada state yang awalnya null
  const [pengguna, setPengguna] = useState<Pengguna | null>(null);

  return (
    <div>
      <TombolAksi
        label="Muat Pengguna"
        onKlik={() => setPengguna({ id: 1, nama: "Budi Santoso" })}
      />
      {pengguna && <p>Halo, {pengguna.nama}!</p>}
    </div>
  );
}
```

Poin penting:

- File komponen React yang menggunakan TypeScript memakai ekstensi `.tsx` (bukan `.ts` biasa) agar compiler bisa membedakan tag JSX dari generic.
- Mengetik props menggunakan `interface` atau `type` langsung mendokumentasikan apa saja yang dibutuhkan komponen tersebut bagi developer lain.
- Untuk state yang nilainya bisa bertransisi dari kosong ke ada (seperti hasil fetch API), gunakan generic: `useState<TipeData | null>(null)`.
- Pemahaman ini adalah jembatan langsung menuju framework fullstack modern seperti **Next.js App Router**, di mana TypeScript digunakan secara default.', '[{"url":"https://react.dev/learn/typescript","label":"React Docs — Using TypeScript with React"},{"url":"https://www.typescriptlang.org/docs/handbook/2/jsx.html","label":"TypeScript Handbook — JSX"}]'::jsonb, '[{"url":"/kategori/typescript","label":"Familiar dengan sintaks dasar TypeScript (interface & type alias) dari roadmap TypeScript"}]'::jsonb, 'Di project latihan kamu:
1. Buat file baru `src/Kartu.tsx`.
2. Tulis interface `interface KartuProps { judul: string; harga: number; aktif?: boolean; }`.
3. Buat komponen `Kartu` yang menerima props tersebut dan menampilkannya.
4. Coba panggil komponen tersebut di `App.tsx` dengan sengaja memberikan string pada harga (`harga="gratis"`).
5. Amati error kompilasi yang muncul di terminal dan garis merah di editor kode sebelum kode dijalankan.', 10, 'published', '2026-09-22 13:32:06.890242+00', '2026-09-22 14:30:16.227+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('2dfd1c5a-2b5b-4cab-a63d-01afaeec9ab2', '3e71ad0e-b25a-4567-b43e-282574f1590a', 'Setup Supabase Client', 'setup-client', '**Masalah yang diselesaikan:** membangun backend sendiri dari nol — server, database, sistem auth, storage — butuh waktu berminggu-minggu sebelum sempat menulis fitur aplikasi yang sebenarnya.

Supabase adalah backend siap pakai (database Postgres, auth, storage, dst) yang diakses lewat library `@supabase/supabase-js` di sisi aplikasi.

```mermaid
graph LR
  App["App (kode kamu)"] -- "createClient(url, key)" --> Client["Supabase Client"]
  Client --> DB["Postgres (database)"]
  Client --> Auth["Auth"]
  Client --> Storage["Storage"]
```

```bash
npm install @supabase/supabase-js
```

```ts
// lib/supabase.ts
import { createClient } from "@supabase/supabase-js";

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!;

export const supabase = createClient(supabaseUrl, supabaseKey);
```

```
# .env.local
NEXT_PUBLIC_SUPABASE_URL=https://xxxxx.supabase.co
NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY=sb_publishable_xxxxxxxxxxxxxxxx
```

Poin penting:

- `supabaseUrl` dan `supabaseKey` didapat dari dashboard project Supabase (Project Settings → API Keys).
- Key ini disebut **publishable key** (`sb_publishable_...`) — pengganti "anon key" lama, karena Supabase sedang memensiunkan anon/service_role key. Kedua jenis key masih berfungsi untuk sementara, tapi project baru sebaiknya pakai publishable key.
- Publishable key aman dipakai di sisi client/browser karena akses datanya tetap dibatasi oleh Row Level Security (RLS) di database, bukan oleh key itu sendiri.
- Client (`supabase`) yang dibuat sekali ini dipakai ulang di seluruh aplikasi untuk query, auth, dan storage.', '[{"url":"https://supabase.com/docs/reference/javascript/introduction","label":"Supabase Docs — JavaScript Client Reference"},{"url":"https://supabase.com/docs/guides/getting-started/migrating-to-new-api-keys","label":"Supabase Docs — Migrating to publishable and secret API keys"}]'::jsonb, '[{"url":"https://supabase.com/dashboard","label":"Akun & project Supabase sudah dibuat (gratis)"},{"url":"https://nodejs.org","label":"Node.js & npm sudah terinstall"}]'::jsonb, 'Buat project baru di dashboard Supabase (kalau belum ada), install `@supabase/supabase-js`, lalu buat file `lib/supabase.ts` seperti contoh di atas dengan URL & key project kamu sendiri (dari Project Settings → API Keys). Panggil `await supabase.auth.getSession()` dari mana saja di project untuk memastikan client-nya berhasil terhubung — harus return object tanpa error, walau sesinya masih `null` karena belum ada yang login.', 0, 'published', '2026-09-18 06:20:59.380972+00', '2026-09-22 14:30:24.005+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('0769c792-0dde-47ba-bc93-f4e5da16e884', 'ea6a08d0-0af9-435b-88f7-ff6e196be052', 'Tipe Dasar & Type Annotation', 'tipe-dasar', '**Masalah yang diselesaikan:** JavaScript murni tidak mendeteksi kesalahan tipe data sampai program benar-benar dijalankan — kirim string ke tempat yang harusnya angka baru ketahuan saat aplikasi sudah jalan (bahkan mungkin sudah di production), bukan saat menulis kode.

TypeScript menambahkan sistem tipe di atas JavaScript, dicek SEBELUM kode dijalankan (compile time). Tipe bisa ditulis manual (annotation) atau otomatis ditebak oleh compiler (inference).

```mermaid
flowchart LR
  subgraph Dev["Saat Menulis Kode & Compile Time"]
    TS["Kode TypeScript (.ts)<br/>let umur: number = ''dua puluh''"] --> Checker["TypeScript Compiler (Type Check)"]
    Checker -->|Deteksi Error Tipe| Alert["Build Gagal & Garis Merah di Editor<br/>Bug tertangkap sebelum aplikasi jalan!"]
  end
  subgraph Prod["Saat Program Berjalan (Runtime)"]
    Checker -->|Tipe Valid| JS["JavaScript Bersih (.js)"] --> Run["Browser / Node.js<br/>Berjalan aman tanpa type mismatch"]
  end
```

| Tipe | Contoh nilai |
| --- | --- |
| `string` | `"Budi"` |
| `number` | `20` |
| `boolean` | `true` |
| `string[]` | `["baca", "coding"]` |
| `[number, number]` | `[10, 20]` (tuple: jumlah & urutan elemen tetap) |

```ts
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
// tambah("1", 2); // Error: Argument of type ''string'' is not assignable...
```

Poin penting:

- Tipe dicek saat kompilasi (compile time), bukan saat program berjalan.
- Kalau tidak ditulis, TypeScript tetap mencoba menebak tipe lewat inference — tetap disarankan menulis annotation di parameter fungsi agar jelas.
- File TypeScript berekstensi `.ts` (atau `.tsx` untuk JSX/React).', '[{"url":"https://www.typescriptlang.org/docs/handbook/2/everyday-types.html","label":"TypeScript Handbook — Everyday Types"}]'::jsonb, '[{"url":"https://nodejs.org","label":"Node.js & npm sudah terinstall"},{"label":"TypeScript compiler tersedia (`npm install -g typescript`, atau lewat project yang sudah menyertakannya seperti Next.js)"}]'::jsonb, 'Buat file `coba.ts`, isi dengan variabel beranotasi tipe (`string`, `number`, `boolean`) dan satu function bertipe seperti contoh di atas. Jalankan `npx tsc coba.ts --noEmit` di terminal — perintah ini cuma mengecek tipe tanpa menghasilkan file `.js`. Lalu:

1. Ubah salah satu nilai supaya tipenya salah (mis. `let umur: number = "dua puluh";`), jalankan lagi `npx tsc` — baca pesan error yang muncul.
2. Kembalikan ke benar, lalu coba panggil `tambah("1", 2)` seperti komentar di atas — pastikan compiler menolaknya sebelum kode itu sempat dijalankan.', 0, 'published', '2026-09-18 06:20:59.380972+00', '2026-09-22 14:30:25.365+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('a713b2f2-d7be-439b-b97f-178a455a3416', 'ea6a08d0-0af9-435b-88f7-ff6e196be052', 'Interface & Type Alias', 'interface-dan-type-alias', 'Catatan sebelumnya membahas tipe untuk nilai tunggal (`string`, `number`, dst). **Masalah yang diselesaikan sekarang:** bagaimana kalau yang perlu diberi tipe adalah *object* dengan banyak properti — misalnya data user dengan `id`, `nama`, `email`? Menuliskan ulang bentuk object yang sama di setiap fungsi yang memakainya itu berulang dan gampang tidak konsisten kalau salah satu lupa di-update.

`interface` dan `type` sama-sama dipakai untuk mendefinisikan bentuk (shape) sebuah object, supaya TypeScript bisa memeriksa strukturnya.

```mermaid
flowchart TD
  Contract["Kontrak Interface User<br/>id: number<br/>nama: string<br/>email?: string (opsional)"]
  ObjA["Objek Valid:<br/>{ id: 1, nama: ''Budi'' }"] -->|Memenuhi Kontrak Shape| Contract
  ObjB["Objek Error:<br/>{ id: ''1'', nama: ''Budi'' }"] -.->|Ditolak: id bukan number| Contract
```

```ts
// pakai interface
interface User {
  id: number;
  nama: string;
  email?: string; // tanda "?" = properti opsional
}

function tampilkanUser(user: User): void {
  console.log(`${user.id} - ${user.nama}`);
}

tampilkanUser({ id: 1, nama: "Budi" }); // email opsional, boleh tidak diisi

// pakai type alias
type Produk = {
  nama: string;
  harga: number;
};

const produk: Produk = { nama: "Buku", harga: 50000 };
```

| | `interface` | `type` |
| --- | --- | --- |
| extend | `interface Admin extends User {}` | `type Admin = User & { ... }` |
| declaration merging | bisa (dua deklarasi nama sama digabung) | tidak bisa |
| union type | tidak bisa | bisa: `"aktif" \| "nonaktif"` |
| bentuk object biasa | bisa | bisa |

Perbedaan singkat:

- `interface` bisa di-*extend* (`interface Admin extends User {}`) dan bisa digabung otomatis kalau dideklarasikan dua kali (declaration merging).
- `type` lebih fleksibel: bisa dipakai untuk union (`type Status = "aktif" | "nonaktif"`), bukan hanya bentuk object.
- Untuk mendefinisikan bentuk object biasa, keduanya bisa dipakai — pilih salah satu dan konsisten dalam satu project.', '[{"url":"https://www.typescriptlang.org/docs/handbook/2/objects.html","label":"TypeScript Handbook — Object Types (Interfaces)"}]'::jsonb, '[]'::jsonb, 'Buat `interface Buku { judul: string; penulis: string; tahun?: number }`. Tulis fungsi `cetakInfo(buku: Buku)` yang menampilkan info buku (tahun opsional, tampilkan "Tahun tidak diketahui" kalau tidak diisi). Lalu buat ULANG hal yang sama pakai `type` alih-alih `interface` — bandingkan, apa bedanya secara sintaks? Terakhir, coba `interface Buku { penerbit: string }` sekali lagi dengan nama yang sama — perhatikan declaration merging (TypeScript menggabungkan otomatis), lalu coba hal yang sama dengan `type` — harus muncul error "duplicate identifier".', 1, 'published', '2026-09-18 06:20:59.380972+00', '2026-09-22 14:30:25.611+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('63c78c0f-8d29-4212-bc3e-e0e9b4615465', 'c397eb64-1f60-4364-b6c2-ad628083b315', 'DDL, Tipe Data Modern, & Constraints', 'ddl-dan-tipe-data-lanjutan', 'Catatan sebelumnya mengenalkan cara terhubung ke PostgreSQL lewat psql. **Masalah yang diselesaikan sekarang:** bagaimana cara merancang wadah penyimpanan tabel yang menjamin data tidak mungkin salah format — misal mencegah harga bernilai negatif, memastikan email tidak kosong dan tidak duplikat, serta menghasilkan ID unik secara otomatis?

**DDL (Data Definition Language)** digunakan untuk membuat dan mengubah struktur tabel. PostgreSQL menyediakan sistem tipe data dan batasan (*constraints*) yang sangat ketat untuk memvalidasi data di tingkat database sebelum baris data disimpan.

```mermaid
flowchart TD
  Input["Input Data Baru:<br/>{ id: uuid, email: ''budi@mail.com'', harga: -5000 }"]
  Input --> CheckNull{"NOT NULL?<br/>Email terisi?"}
  CheckNull -- Ya --> CheckUnique{"UNIQUE?<br/>Email belum terdaftar?"}
  CheckUnique -- Ya --> CheckValidation{"CHECK constraint:<br/>harga > 0?"}
  CheckValidation -- Gagal (harga minus) --> Reject["Ditolak Database:<br/>CHECK constraint violation!"]
  CheckValidation -- Lolos --> Save["Data Disimpan Aman"]
```

Contoh pembuatan tabel dengan tipe data modern dan constraints:

```sql
-- Mengaktifkan ekstensi pgcrypto untuk fungsi generate UUID bawaan
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE pengguna (
    -- ID unik berbasis UUID (sangat aman untuk sistem terdistribusi)
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    
    -- Teks nama dengan batas karakter yang wajib diisi
    nama VARCHAR(100) NOT NULL,
    
    -- Email wajib unik, ditolak jika duplikat
    email VARCHAR(255) UNIQUE NOT NULL,
    
    -- Angka saldo desimal presisi tinggi dengan validasi nilai tidak boleh minus
    saldo NUMERIC(12, 2) NOT NULL DEFAULT 0.00 CHECK (saldo >= 0),
    
    -- Status aktif
    is_aktif BOOLEAN NOT NULL DEFAULT true,
    
    -- Timestamp otomatis mencatat waktu zona waktu lengkap
    dibuat_pada TIMESTAMPTZ NOT NULL DEFAULT now()
);
```

Perintah manipulasi data dasar:

```sql
-- Memasukkan data valid
INSERT INTO pengguna (nama, email, saldo)
VALUES (''Budi Santoso'', ''budi@gmail.com'', 500000.00);

-- Query membaca data
SELECT id, nama, email, saldo, dibuat_pada FROM pengguna;
```

Poin penting:

- Gunakan `UUID` (Universally Unique Identifier) sebagai Primary Key jika tidak ingin ID berurutan yang mudah ditebak oleh pihak luar (`1, 2, 3...`).
- Gunakan `NUMERIC` atau `DECIMAL` untuk nilai uang, **jangan pernah gunakan `FLOAT` atau `DOUBLE`** karena floating-point memiliki masalah pembulatan biner.
- Gunakan `TIMESTAMPTZ` (Timestamp with time zone) alih-alih `TIMESTAMP` biasa agar waktu akurat lintas zona waktu internasional.
- Batasan `CHECK (kondisi)` adalah filter pertahanan terakhir di database: bila backend aplikasi memiliki celah bug, database tetap menolak data yang tidak valid.', '[{"url":"https://www.postgresql.org/docs/current/datatype.html","label":"PostgreSQL Documentation — Data Types"},{"url":"https://www.postgresql.org/docs/current/ddl-constraints.html","label":"PostgreSQL Documentation — Constraints"}]'::jsonb, '[]'::jsonb, 'Di database latihan kamu (`psql`):
1. Salin dan jalankan skrip `CREATE TABLE pengguna` di atas.
2. Coba masukkan satu baris data valid.
3. Coba sengaja masukkan data dengan saldo minus: `INSERT INTO pengguna (nama, email, saldo) VALUES (''Hacker'', ''hack@mail.com'', -100);`.
4. Amati pesan error penolakan dari constraint: `violates check constraint "pengguna_saldo_check"`.
5. Periksa struktur tabel dengan mengetik `d pengguna`.', 1, 'published', '2026-09-22 14:24:47.929868+00', '2026-09-22 14:30:07.692+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('1831001a-c2c3-4404-8572-f972ee9f7df0', 'a6e9d866-c1b5-4e38-a511-d27a0fed6caa', 'Backup & Restore Database dengan mariadb-dump', 'backup-dan-restore-mariadb-dump', 'Catatan sebelumnya melengkapi konfigurasi hak akses user. **Masalah yang diselesaikan sekarang (dan menutup roadmap MariaDB):** perangkat keras server bisa rusak, disk bisa penuh, atau ada rekan tim yang tidak sengaja menghapus tabel produksi. Tanpa salinan cadangan (*backup*) otomatis, perusahaan bisa kehilangan seluruh data bisnisnya secara permanen. Bagaimana cara mencadangkan database secara konsisten tanpa mematikan aplikasi yang sedang berjalan?

MariaDB menyertakan tool CLI resmi bernama **`mariadb-dump`** (sebelumnya dikenal sebagai `mysqldump`). Tool ini membaca struktur skema dan baris data, lalu mengubahnya menjadi berkas teks SQL yang dapat dieksekusi ulang di server mana pun.

```mermaid
flowchart LR
  DB["Database Aktif (MariaDB)"] -->|mariadb-dump --single-transaction| Dump["File Backup (.sql.gz)<br/>CREATE TABLE...<br/>INSERT INTO..."]
  Dump -->|Kirim ke Server Baru / Disaster Recovery| Restore["mariadb -u root target_db < backup.sql"]
  Restore --> TargetDB["Database Pulih 100%!"]
```

Perintah Backup dan Restore di Terminal OS:

```bash
# 1. Melakukan Backup satu database secara konsisten tanpa mengunci tabel (InnoDB)
mariadb-dump -u root -prahasia --single-transaction portal_berita > backup_portal.sql

# 2. Backup dengan kompresi gzip langsung (menghemat ukuran disk hingga 80%)
mariadb-dump -u root -prahasia --single-transaction portal_berita | gzip > backup_portal.sql.gz

# 3. Restore / Memulihkan data dari file backup SQL
# Pastikan database target sudah dibuat terlebih dahulu:
mariadb -u root -prahasia -e "CREATE DATABASE IF NOT EXISTS portal_pulih;"
mariadb -u root -prahasia portal_pulih < backup_portal.sql
```

Poin penting:

- **Flag `--single-transaction` WAJIB disertakan:** opsi ini memanfaatkan sifat transaksional InnoDB untuk membuat snapshot data yang konsisten pada satu titik waktu tanpa mengunci (*lock*) pembacaan dan penulisan aplikasi web.
- Berkas dump berisi perintah DDL (`CREATE TABLE`) dan DML (`INSERT INTO`), sehingga mudah dibaca manusia dan kompatibel lintas versi MariaDB/MySQL.
- Di lingkungan produksi, proses backup ini biasanya dijadwalkan otomatis setiap malam menggunakan Cronjob dan diunggah ke penyimpanan cloud aman (seperti AWS S3).', '[{"url":"https://mariadb.com/kb/en/mariadb-dump/","label":"MariaDB Knowledge Base — mariadb-dump / mysqldump"},{"url":"https://mariadb.com/kb/en/backup-and-restore-overview/","label":"MariaDB Knowledge Base — Backup and Restore Overview"}]'::jsonb, '[]'::jsonb, 'Buka terminal komputermu:
1. Jalankan `mariadb-dump` untuk mencadangkan database latihanmu ke file `backup.sql`.
2. Buka file `backup.sql` di editor teks dan lihat bagaimana tabel dan datamu dituliskan sebagai kumpulan query SQL.
3. Buat database baru `mariadb -u root -p -e "CREATE DATABASE db_kembar;"`.
4. Restore data tersebut ke database baru dengan `mariadb -u root -p db_kembar < backup.sql`.
5. Masuk ke `db_kembar` dan pastikan seluruh tabel dan data telah berhasil disalin sempurna. Ini menutup roadmap MariaDB!', 4, 'published', '2026-09-22 14:24:49.581025+00', '2026-09-22 14:30:09.414+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('4b52e187-cf67-48d5-bf4f-4cd16715acb3', '3a7e2da4-7876-4fe7-9cab-4d1e3dd1c902', 'Generics: Type Safety Tanpa Type Casting Manual', 'generics-dasar', 'Catatan di roadmap Java Dasar mengajarkan cara membuat class dan interface. **Masalah yang diselesaikan sekarang:** sebelum Java 5, untuk membuat wadah penampung serbaguna (seperti kotak penyimpanan), developer harus menggunakan tipe `Object` (`class Kotak { Object isi; }`). Masalahnya: semua tipe data bisa masuk, tapi saat mengambilnya kamu harus melakukan *type casting* manual `(String) kotak.getIsi()`. Jika tipe aslinya salah, aplikasi akan crash seketika di runtime dengan error `ClassCastException`!

**Generics** memungkinkan kita membuat class, interface, dan method dengan parameter tipe placeholder (`<T>`). Pemeriksaan tipe dilakukan saat kompilasi (*compile-time type safety*), menghilangkan kebutuhan casting manual.

```mermaid
flowchart LR
  subgraph NonGeneric["Sebelum Generics (Raw Object)"]
    O1["Kotak.set(''Teks'')"] --> O2["(Integer) Kotak.get()"]
    O2 --> Crash["Runtime CRASH: ClassCastException!"]
  end
  subgraph Generic["Dengan Generics (<T>)"]
    G1["Kotak<String> k = new Kotak<>()"] --> G2["k.set(123)"]
    G2 --> Alert["Compiler Langsung Tolak saat Ngetik:<br/>Tipe tidak cocok!"]
  end
```

Contoh Generic Class dan Method:

```java
// 1. Generic Class: ''T'' adalah placeholder tipe (Type Parameter)
public class Kotak<T> {
    private T isi;

    public void simpan(T isi) {
        this.isi = isi;
    }

    public T ambil() {
        return this.isi;
    }
}

// 2. Penggunaan di Main
public class Main {
    public static void main(String[] args) {
        // Kotak yang secara ketat hanya menampung String
        Kotak<String> kotakTeks = new Kotak<>();
        kotakTeks.simpan("Dokumen Rahasia");
        String hasilTeks = kotakTeks.ambil(); // Tidak butuh casting (String) lagi!
        System.out.println("Isi kotak: " + hasilTeks);

        // Kotak yang khusus menampung Integer
        Kotak<Integer> kotakAngka = new Kotak<>();
        kotakAngka.simpan(100);
        // kotakAngka.simpan("Salah"); // Error kompilasi langsung tertangkap!
        System.out.println("Nilai angka: " + kotakAngka.ambil());
    }
}
```

Poin penting:

- Konvensi penamaan type parameter umum: `T` (Type), `E` (Element koleksi), `K` (Key), `V` (Value).
- Generics di Java hanya bekerja dengan tipe Object (Reference), bukan tipe primitif langsung — gunakan wrapper class seperti `Integer` alih-alih `int`, `Double` alih-alih `double`.
- Java menerapkan **Type Erasure**: informasi tipe generic diperiksa ketat oleh compiler, lalu dihapus saat kompilasi ke bytecode agar kompatibel dengan versi JVM terdahulu.', '[{"url":"https://docs.oracle.com/javase/tutorial/java/generics/index.html","label":"Oracle Java Tutorial — Generics"},{"url":"https://docs.oracle.com/javase/tutorial/java/generics/methods.html","label":"Oracle Java Tutorial — Generic Methods"}]'::jsonb, '[{"url":"/kategori/java-dasar","label":"Familiar dengan konsep Class dan Object dari roadmap Java Dasar"}]'::jsonb, 'Di project latihan kamu:
1. Buat generic class `Pasangan<K, V>` dengan dua atribut: `K kunci` dan `V nilai`.
2. Buat constructor dan method getter untuk kedua atribut tersebut.
3. Di method `main`, buat objek `Pasangan<String, Integer> skor = new Pasangan<>("Budi", 95);`.
4. Cetak kunci dan nilainya: `System.out.println(skor.getKunci() + ": " + skor.getNilai());`.
5. Coba buat pasangan lain dengan tipe data berbeda, misal `Pasangan<Integer, String> idUser`.', 0, 'published', '2026-09-22 14:14:31.595637+00', '2026-09-22 14:30:11.765+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('84cd2ce8-0875-4959-8c6c-a5ff5079b9d1', 'df6694f2-8cc1-47da-b697-e5c0f0f2cf89', 'Membatalkan Perubahan: restore, reset, dan revert', 'membatalkan-perubahan-dasar', 'Sekarang kamu paham tiga area Git — Working Directory, Staging Area, dan Local Repository (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** kadang perubahan yang kamu buat ternyata salah atau tidak jadi dipakai — tapi cara membatalkannya BEDA-BEDA tergantung perubahan itu sudah sejauh mana: baru diedit, sudah di-`add`, atau sudah di-`commit`. Pakai command yang salah bisa kehilangan pekerjaan yang sebenarnya masih ingin disimpan.

```mermaid
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
```

### 1. Belum `git add`: `git restore`
```bash
# Buang perubahan di file tertentu, kembalikan ke versi commit terakhir
git restore catatan.txt

# Buang SEMUA perubahan yang belum di-add
git restore .
```

### 2. Sudah `git add`, belum commit: `git restore --staged`
```bash
# Keluarkan file dari staging area — perubahannya TIDAK hilang,
# cuma balik jadi "belum di-add" lagi
git restore --staged catatan.txt
```

### 3. Sudah commit, BELUM di-push: `git reset`
```bash
# --soft: batalkan commit, tapi perubahannya tetap staged
git reset --soft HEAD~1

# --mixed (default): batalkan commit, perubahan balik ke working directory
git reset HEAD~1

# --hard: batalkan commit, perubahan HILANG SEPENUHNYA (hati-hati!)
git reset --hard HEAD~1
```

### 4. Sudah commit DAN sudah di-push: `git revert`
```bash
# Buat commit BARU yang isinya kebalikan dari commit tertentu
git revert <hash-commit>
```

Poin penting:

- `git reset` MENGUBAH riwayat commit lokal — aman dipakai selama commit itu belum di-`push`/dibagikan ke orang lain. Kalau sudah di-`push`, `reset` lalu `push --force` bisa membuat riwayat rekan tim jadi tidak sinkron.
- `git revert` TIDAK mengubah riwayat lama — dia menambah commit baru di atasnya. Ini kenapa `revert` yang dipakai untuk commit yang sudah dibagikan: aman untuk branch bersama.
- `git reset --hard` bersifat destruktif dan permanen (kecuali kamu tahu cara memakai `git reflog` untuk pemulihan darurat) — selalu pastikan dulu perubahan itu memang tidak dibutuhkan lagi.
- `HEAD~1` berarti "satu commit sebelum HEAD saat ini" — ganti angkanya untuk mundur lebih jauh (`HEAD~2`, dst).', '[{"url":"https://git-scm.com/docs/git-restore","label":"Git Documentation — git-restore"},{"url":"https://git-scm.com/docs/git-reset","label":"Git Documentation — git-reset"},{"url":"https://git-scm.com/docs/git-revert","label":"Git Documentation — git-revert"}]'::jsonb, '[]'::jsonb, 'Di repository latihan kamu: (1) edit `catatan.txt` tapi JANGAN di-`add`, jalankan `git restore catatan.txt` — buktikan perubahannya hilang, kembali ke versi commit terakhir. (2) Edit lagi, kali ini `git add`-kan, lalu `git restore --staged catatan.txt` — cek `git status`, perubahannya masih ada tapi statusnya balik jadi belum di-`add`. (3) Commit perubahan itu, lalu `git reset --soft HEAD~1` — buktikan commit-nya hilang dari `git log` tapi perubahannya masih staged, siap di-commit ulang. (4) Terakhir, buat satu commit lagi, anggap itu sudah "dibagikan ke tim", lalu jalankan `git revert <hash-commitnya>` — perhatikan Git membuat commit BARU yang membatalkan perubahan itu, bukan menghapus commit lamanya dari riwayat.', 6, 'published', '2026-09-19 11:37:52.333648+00', '2026-09-22 13:48:34.885+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('5c3fa180-4dc4-43bb-9795-794788a4cba5', 'df6694f2-8cc1-47da-b697-e5c0f0f2cf89', 'git stash: Menyimpan Perubahan Sementara', 'git-stash-dasar', 'Sekarang kamu bisa bercabang lewat branch (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** kamu sedang di tengah mengerjakan sesuatu (file sudah diedit, belum siap di-commit), tapi tiba-tiba HARUS pindah branch cepat — misalnya ada bug mendesak di branch lain. Git menolak pindah branch kalau perubahan yang belum di-commit itu berisiko tertimpa. Commit "setengah jadi" cuma supaya bisa pindah branch juga bukan solusi bagus — riwayat jadi kotor berisi commit "WIP" yang tidak berarti.

`git stash` menyimpan perubahan di working directory & staging area sementara TANPA commit, mengembalikan working directory ke kondisi bersih (seperti commit terakhir) — siap dikembalikan lagi kapan pun.

```mermaid
flowchart LR
  A["Working directory kotor<br/>(ada perubahan belum commit)"] -->|git stash| B["Working directory bersih<br/>perubahan disimpan di stash"]
  B -->|git checkout branch-lain| C["Kerjakan hal lain<br/>di branch berbeda"]
  C -->|git checkout branch-asal| D["Balik ke branch semula<br/>(masih bersih)"]
  D -->|git stash pop| E["Perubahan kembali<br/>seperti sebelum di-stash"]
```

```bash
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
```

| Command | Perubahan Dikembalikan? | Tetap di Daftar Stash? |
| --- | --- | --- |
| `git stash pop` | Ya | Tidak (dihapus setelah dikembalikan) |
| `git stash apply` | Ya | Ya (bisa di-`apply` lagi ke branch lain) |
| `git stash drop` | Tidak | Tidak (langsung dihapus) |

Poin penting:

- Stash bersifat lokal per repository — tidak ikut ter-`push` ke remote, jadi bukan cara mem-backup perubahan penting.
- Bisa ada lebih dari satu stash tersimpan sekaligus (`stash@{0}`, `stash@{1}`, dst) — `pop`/`apply` tanpa argumen selalu mengambil yang PALING BARU.
- `git stash apply` berguna kalau kamu mau menerapkan perubahan yang sama ke lebih dari satu branch, tanpa harus stash ulang tiap kali.', '[{"url":"https://git-scm.com/docs/git-stash","label":"Git Documentation — git-stash"}]'::jsonb, '[]'::jsonb, 'Di branch `fitur-baru` dari latihan sebelumnya, edit `catatan.txt` TAPI JANGAN commit. Jalankan `git stash push -m "belum selesai"` — buktikan `git status` kembali bersih (perubahan hilang dari working directory). Pindah ke `main` (`git checkout main`), lihat isi `catatan.txt` tidak terpengaruh sama sekali. Pindah balik ke `fitur-baru`, jalankan `git stash list` untuk lihat stash tersimpan, lalu `git stash pop` — buktikan perubahan yang tadi kamu buat kembali persis seperti sebelum di-stash.', 4, 'published', '2026-09-19 11:37:52.333648+00', '2026-09-22 13:48:35.203+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('673045d6-1066-4ae4-945f-28a590ae5bff', 'df6694f2-8cc1-47da-b697-e5c0f0f2cf89', 'Git Remote: Push, Pull, dan Fetch', 'remote-dasar', 'Sekarang kamu bisa commit dan bercabang di komputer sendiri. **Masalah yang diselesaikan sekarang:** bagaimana kalau kode itu perlu dibagikan ke orang lain, atau di-backup di luar komputer kamu? Riwayat commit yang cuma ada di satu komputer rentan hilang (laptop rusak/hilang) dan tidak bisa diakses tim lain.

Repository remote adalah salinan proyek yang disimpan di server internet atau jaringan (seperti GitHub atau GitLab), memungkinkan kolaborasi tim dan backup kode.

```mermaid
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
```

Perintah umum bekerja dengan remote:

```bash
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
```

Poin penting:

- `origin` adalah nama alias standar untuk URL repository remote utama.
- `git fetch` hanya mengunduh data riwayat baru dari remote; file lokalmu belum berubah sebelum kamu menjalankan `git merge`.
- `git pull` merupakan kombinasi otomatis dari `git fetch` diikuti dengan `git merge`.
- Sebelum melakukan `git push`, pastikan branch lokal sudah sinkron dengan versi remote untuk menghindari penolakan (non-fast-forward reject).', '[{"url":"https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes","label":"Git Basics - Working with Remotes — Pro Git Book"}]'::jsonb, '[{"url":"https://github.com/signup","label":"Akun GitHub (atau GitLab/Bitbucket) sudah dibuat"}]'::jsonb, 'Buat repository baru di GitHub (kosong, tanpa README). Di project lokal dari latihan sebelumnya, jalankan `git remote add origin <url-repo-kamu>`, lalu `git push origin main` (atau `master`, tergantung nama branch default-nya). Refresh halaman GitHub — pastikan commit-commit kamu muncul di sana. Coba juga `git clone <url-yang-sama>` ke folder lain untuk simulasi "komputer lain" yang mengambil kode itu.', 2, 'published', '2026-09-18 08:42:41.475237+00', '2026-09-22 14:30:17.263+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('fe513fea-0ef9-4593-84f9-9185358f940a', '9deddb76-862f-4fce-83e4-57a0202df83b', 'Variabel & Scope: let, const, dan var', 'variabel-dan-scope', '**Masalah yang diselesaikan:** `var` (satu-satunya cara deklarasi variabel sebelum ES6) punya scope di level FUNGSI, bukan di level BLOK (`if`, `for`, `{}`) — variabel yang harusnya cuma dipakai sementara di dalam satu blok malah "bocor" ke luar dan bisa tertimpa nilai lain tanpa sadar. `var` juga boleh di-deklarasi ulang dengan nama sama tanpa error, membuat bug penimpaan variabel susah dilacak.

```js
if (true) {
  var a = "bocor";
}
console.log(a); // "bocor" — var BOCOR keluar dari blok if!

if (true) {
  let b = "aman";
}
console.log(b); // ReferenceError: b is not defined — let terkurung di blok
```

```mermaid
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
```

### `let` vs `const`
`const` mengunci BINDING-nya (nama variabel itu tidak bisa diarahkan ke nilai lain), bukan mengunci isinya — kalau isinya object/array, propertinya masih bisa diubah:

```js
const user = { nama: "Budi" };
user.nama = "Ani"; // BOLEH — mengubah properti, bukan mengganti binding
console.log(user.nama); // "Ani"

user = { nama: "Lain" }; // TypeError — tidak boleh, ini mengganti binding const
```

| | `var` | `let` | `const` |
| --- | --- | --- | --- |
| Scope | Function | Block | Block |
| Boleh di-redeclare? | Ya | Tidak (error) | Tidak (error) |
| Boleh di-reassign? | Ya | Ya | Tidak (error) |
| Diakses sebelum deklarasi? | `undefined` (hoisted) | Error (*temporal dead zone*) | Error (*temporal dead zone*) |

Poin penting:

- Aturan praktis modern: pakai `const` secara default, pakai `let` cuma kalau variabelnya memang perlu diubah nilainya nanti (misal counter di loop), dan hindari `var` sepenuhnya di kode baru.
- *Temporal dead zone* adalah rentang kode antara awal blok sampai baris deklarasi `let`/`const` — mengakses variabelnya di rentang itu melempar error, beda dengan `var` yang diam-diam bernilai `undefined`.
- Scope block berarti `{ }` di mana pun — bukan cuma `if`/`for`, tapi blok kurung kurawal biasa juga membuat scope baru untuk `let`/`const`.', '[{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let","label":"let — MDN Web Docs"},{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/const","label":"const — MDN Web Docs"}]'::jsonb, '[]'::jsonb, 'Tulis loop `for (var i = 0; i < 3; i++) { ... }` lalu `console.log(i)` SETELAH loop-nya selesai — buktikan `i` masih bisa diakses (bocor). Ganti `var` jadi `let`, jalankan lagi — buktikan sekarang muncul `ReferenceError`. Buat `const angka = 5`, coba `angka = 10` — catat error-nya. Buat `const arr = [1, 2, 3]`, coba `arr.push(4)` — buktikan ini BERHASIL (karena mengubah isi, bukan mengganti binding-nya).', 0, 'published', '2026-09-19 11:37:52.333648+00', '2026-09-19 11:37:52.333648+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('baab1811-b1aa-4eba-863f-5c566e0d3f07', 'ea6a08d0-0af9-435b-88f7-ff6e196be052', 'Utility Types Dasar', 'utility-types-dasar', 'Sekarang kamu paham generics — parameter tipe yang bisa diisi apa saja. TypeScript sendiri memakai generics secara internal untuk menyediakan **Utility Types**: tipe siap pakai yang memanipulasi tipe lain tanpa kamu perlu menulis ulang strukturnya dari nol. **Masalah yang diselesaikan:** sering kali kamu butuh VARIASI dari satu tipe yang sudah ada — misalnya tipe yang sama tapi semua propertinya opsional (untuk form update parsial), atau cuma sebagian properti saja (untuk preview card) — menulis interface baru dari nol untuk tiap variasi itu duplikatif dan gampang tidak sinkron kalau tipe aslinya berubah.

```mermaid
flowchart TD
  Produk["interface Produk<br/>{ id, nama, harga, deskripsi }"] --> Partial["Partial&lt;Produk&gt;<br/>semua opsional"]
  Produk --> Pick["Pick&lt;Produk, ''id''|''nama''&gt;<br/>cuma sebagian"]
  Produk --> Omit["Omit&lt;Produk, ''id''&gt;<br/>tanpa sebagian"]
  Produk --> Record["Record&lt;string, number&gt;<br/>key-value custom"]
```

```ts
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
```

| Utility Type | Fungsi | Contoh Use Case |
| --- | --- | --- |
| `Partial<T>` | Semua properti opsional | Body request `PATCH` (update parsial) |
| `Required<T>` | Semua properti wajib (kebalikan `Partial`) | Validasi sebelum data disimpan ke database |
| `Pick<T, K>` | Ambil sebagian properti | Data preview/card ringkas |
| `Omit<T, K>` | Buang sebagian properti | Hilangkan field sensitif dari response API |
| `Record<K, T>` | Object dengan key & value tertentu | Mapping/lookup table |

Poin penting:

- Semua utility type ini bawaan TypeScript (*global*), tidak perlu di-`import` dari mana pun.
- `Pick`/`Omit` tidak membuat properti yang tersisa jadi opsional — kalau properti itu wajib di tipe asli, tetap wajib di hasil `Pick`/`Omit`.
- Utility type bisa dikombinasikan, mis. `Partial<Pick<Produk, "harga" | "deskripsi">>` untuk "sebagian properti, dan itu pun opsional".', '[{"url":"https://www.typescriptlang.org/docs/handbook/utility-types.html","label":"TypeScript Handbook — Utility Types"}]'::jsonb, '[]'::jsonb, 'Dari `interface Produk` di atas (atau buat versi kamu sendiri), buat 4 variasi tipe: `ProdukUpdate` (`Partial`), `ProdukPreview` (`Pick` id+nama), `ProdukTanpaHarga` (`Omit`), dan `DaftarStok` (`Record<string, number>` memetakan nama produk ke jumlah stoknya). Isi masing-masing dengan data valid. Lalu SENGAJA hilangkan satu field wajib di `ProdukPreview` — pastikan compiler menolaknya, membuktikan `Pick` tidak membuat field jadi opsional, cuma memilih subset dari tipe aslinya.', 6, 'published', '2026-09-18 23:46:50.864953+00', '2026-09-18 23:46:50.864953+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('634ff80b-2f11-4e95-a49e-03dcc6a6f2b8', '651e63fd-70f5-4611-9727-7181eb577a4c', 'Struktur Kontrol: Percabangan & Perulangan', 'struktur-kontrol-percabangan-perulangan', 'Catatan sebelumnya membahas tipe data dan variabel. **Masalah yang diselesaikan sekarang:** program tidak selalu berjalan lurus dari baris atas ke bawah. Kamu perlu membuat keputusan (misal: jika nilai >= 75 lulus, jika tidak maka remidi) dan mengulang pekerjaan tanpa menyalin baris kode yang sama berulang-ulang.

Java menyediakan dua struktur kontrol utama: **Percabangan** (`if-else`, modern `switch`) dan **Perulangan** (`for`, enhanced `for-each`, `while`).

```mermaid
flowchart TD
  Start["Input Nilai Ujian"] --> Cond{"nilai >= 75 ?"}
  Cond -- Ya --> Lulus["Status: LULUS"]
  Cond -- Tidak --> Remidi["Status: REMIDI"]
  Lulus --> Loop["Loop for-each cetak daftar siswa"]
  Remidi --> Loop
```

Contoh percabangan modern dan perulangan:

```java
public class KontrolDemo {
    public static void main(String[] args) {
        int skor = 85;

        // 1. Percabangan if - else if - else
        if (skor >= 90) {
            System.out.println("Grade: A");
        } else if (skor >= 75) {
            System.out.println("Grade: B");
        } else {
            System.out.println("Grade: C");
        }

        // 2. Modern Switch Expression (Java 14+) — mengembalikan nilai langsung
        String peran = "ADMIN";
        String hakAkses = switch (peran) {
            case "ADMIN" -> "Akses Penuh";
            case "EDITOR" -> "Akses Tulis";
            default -> "Akses Baca Saja";
        };
        System.out.println("Hak akses: " + hakAkses);

        // 3. Enhanced for-each loop (cara paling elegan membaca isi array)
        String[] daftarHobi = { "Membaca", "Coding", "Bermain Musik" };
        System.out.println("
Daftar Hobi:");
        for (String hobi : daftarHobi) {
            System.out.println("- " + hobi);
        }
    }
}
```

Poin penting:

- Operator pembanding di Java: `==` (sama dengan), `!=` (tidak sama), `>`, `<`, `>=`, `<=`.
- Perhatian khusus: untuk membandingkan isi teks `String`, **selalu gunakan `.equals()`** (`teks.equals("ADMIN")`), JANGAN gunakan `==` karena `==` membandingkan alamat memori objek, bukan isi teksnya.
- Switch expression modern dengan operator panah (`->`) tidak memerlukan kata kunci `break` manual dan tidak memiliki celah bug *fall-through*.
- Gunakan perulangan `for-each` ketika hanya ingin membaca semua elemen array tanpa membutuhkan nomor indeksnya.', '[{"url":"https://docs.oracle.com/javase/tutorial/java/nutsandbolts/flow.html","label":"Oracle Java Tutorial — Control Flow Statements"},{"url":"https://docs.oracle.com/en/java/javase/21/language/switch-expressions.html","label":"Oracle Documentation — Switch Expressions"}]'::jsonb, '[]'::jsonb, 'Di file latihan kamu:
1. Buat array angka: `int[] nilaiList = { 65, 80, 92, 55, 78 };`.
2. Gunakan perulangan `for-each` untuk memeriksa setiap angka.
3. Di dalam perulangan, gunakan `if-else` untuk mencetak apakah angka tersebut lulus (>= 75) atau tidak.
4. Hitung total nilai yang lulus menggunakan variabel counter `int jumlahLulus = 0;`.
5. Cetak jumlah siswa yang lulus di akhir program.', 2, 'published', '2026-09-22 14:14:30.823971+00', '2026-09-22 14:30:10.931+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('1b98495b-e72f-45a2-8f71-85c8abc53bad', 'df6694f2-8cc1-47da-b697-e5c0f0f2cf89', 'Dasar Commit & Staging di Git', 'commit-dan-staging', '**Masalah yang diselesaikan:** sebelum version control, melacak perubahan kode berarti menyimpan salinan file manual (`script_v2_final.js`, `script_v2_REVISI.js`) — tidak ada riwayat yang jelas, dan susah tahu apa saja yang sebenarnya berubah antar versi.

Git bekerja dengan melacak perubahan file melalui tiga area utama: **Working Directory** (tempat kita mengedit file), **Staging Area** (area persiapan sebelum disimpan permanen), dan **Local Repository** (tempat riwayat commit tersimpan).

```mermaid
flowchart LR
  WD["Working Directory<br/>(file diubah)"] -->|git add| SA["Staging Area<br/>(file siap dicommit)"]
  SA -->|git commit| LR["Local Repository<br/>(riwayat tersimpan)"]
  LR -.->|git restore| WD
```

Alur kerja dasar untuk menyimpan perubahan:

```bash
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
```

Poin penting:

- Memisahkan `git add` dan `git commit` memberi kontrol penuh: kita bisa memilih file mana saja yang ingin digabungkan dalam satu commit logis, tanpa harus mencampur semua file yang sedang kita edit.
- Pesan commit sebaiknya ringkas, jelas, dan menjelaskan *mengapa* atau *apa* perubahan yang dilakukan.
- File baru yang belum pernah di-`git add` berstatus *untracked* (belum dilacak oleh Git).', '[{"url":"https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository","label":"Git Basics - Recording Changes to the Repository — Pro Git Book"}]'::jsonb, '[{"url":"https://git-scm.com/downloads","label":"Git sudah terinstall (cek dengan `git --version`)"},{"label":"Familiar dengan perintah dasar terminal/command line"}]'::jsonb, 'Buat folder baru, jalankan `git init` di dalamnya. Buat file `catatan.txt` berisi satu baris teks, jalankan `git status` — harus muncul sebagai *untracked*. Jalankan `git add catatan.txt`, cek `git status` lagi (sekarang *staged*). Commit dengan `git commit -m "..."`. Ubah lagi isi file itu dan jalankan `git status` sekali lagi — perhatikan Git membedakan status "modified" dari "untracked". Lihat riwayatnya dengan `git log --oneline`.', 0, 'published', '2026-09-18 08:42:41.475237+00', '2026-09-22 14:30:16.391+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('fdfb1012-c109-44b1-8610-142b51d9fed2', '9deddb76-862f-4fce-83e4-57a0202df83b', 'Destructuring Object & Array', 'destructuring-dasar', 'Sekarang kamu bisa mendefinisikan fungsi, termasuk arrow function (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** mengambil beberapa nilai dari object atau array biasanya berarti menulis `obj.properti` berulang kali baris demi baris — repetitif, apalagi kalau properti itu langsung mau dipakai sebagai variabel terpisah.

**Destructuring** membongkar object/array langsung jadi variabel-variabel terpisah dalam satu baris.

```mermaid
flowchart TD
  subgraph Obj["Objek Asal"]
    O["user = { nama: ''Budi'', umur: 25 }"]
  end
  subgraph Unpack["Pola Destructuring: const { nama, umur } = user"]
    O -->|Ekstrak properti nama| V1["Variabel nama = ''Budi''"]
    O -->|Ekstrak properti umur| V2["Variabel umur = 25"]
  end
```

```js
// SEBELUM destructuring — repetitif
const user = { nama: "Budi", umur: 25, kota: "Jakarta" };
const nama = user.nama;
const umur = user.umur;

// SESUDAH destructuring — satu baris
const { nama, umur } = user;
```

### Object Destructuring: Rename & Default Value
```js
const user = { nama: "Budi", umur: 25 };

// Rename: "nama" diambil tapi disimpan sebagai variabel "namaUser"
const { nama: namaUser } = user;

// Default value: dipakai kalau propertinya tidak ada di object
const { kota = "Tidak diketahui" } = user;
console.log(kota); // "Tidak diketahui" — karena user.kota memang tidak ada
```

### Array Destructuring
```js
const koordinat = [10, 20];
const [x, y] = koordinat;

// Lewati elemen dengan koma kosong
const [pertama, , ketiga] = [1, 2, 3];

// Trik menukar dua variabel tanpa variabel sementara
let a = 1, b = 2;
[a, b] = [b, a];
console.log(a, b); // 2 1
```

### Destructuring di Parameter Fungsi
Ini kombinasi paling umum dipakai — menyambung langsung dari catatan sebelumnya soal fungsi:

```js
function tampilkanProfil({ nama, umur }) {
  console.log(`${nama}, ${umur} tahun`);
}
tampilkanProfil({ nama: "Ani", umur: 30 }); // langsung destructure dari argumen
```

Poin penting:

- Nested destructuring bisa dipakai untuk object bersarang: `const { alamat: { kota } } = user;` langsung ambil `kota` dari `user.alamat.kota`.
- Destructuring array mengandalkan URUTAN (posisi index), destructuring object mengandalkan NAMA properti — beda cara kerja meski sintaksnya mirip.
- Kombinasi destructuring parameter + default value sangat umum dipakai untuk "opsi" fungsi: `function buat({ warna = "biru", ukuran = "M" } = {}) {...}`.', '[{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment","label":"Destructuring assignment — MDN Web Docs"}]'::jsonb, '[]'::jsonb, 'Buat object `produk = { nama: "Laptop", harga: 15000000, spesifikasi: { ram: "16GB", storage: "512GB" } }`. Destructure `nama` dan `harga` langsung ke variabel, lalu destructure `ram` dari `spesifikasi` yang bersarang (nested). Buat array `[a, b, c] = [1, 2, 3]`, praktikkan trik tukar nilai `a` dan `c` dalam satu baris tanpa variabel sementara. Terakhir, tulis fungsi `cetakProduk({ nama, harga })` yang langsung destructure dari parameter, panggil dengan object `produk` di atas.', 2, 'published', '2026-09-19 11:37:52.333648+00', '2026-09-22 13:48:36.321+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('95ceb255-d313-4311-843b-8239c08a7643', '9deddb76-862f-4fce-83e4-57a0202df83b', 'Array Method Dasar: map, filter, reduce', 'array-method-dasar', 'Sekarang kamu bisa pakai arrow function dan destructuring (dari catatan-catatan sebelumnya) — dua hal itu sering dipakai BARENGAN dengan topik catatan ini. **Masalah yang diselesaikan sekarang:** mengubah atau menyaring isi array dengan `for` loop manual itu verbose — harus bikin array kosong dulu, manual `push` satu-satu, gampang salah index atau lupa inisialisasi.

```js
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
```

```mermaid
flowchart LR
  Arr["Array awal"] -->|"filter(fn)"| Filtered["Array baru, cuma<br/>elemen yang lolos kondisi"]
  Filtered -->|"map(fn)"| Mapped["Array baru,<br/>setiap elemen ditransformasi"]
  Arr -->|"reduce(fn, awal)"| Reduced["SATU nilai akhir<br/>(bukan array)"]
```

### `reduce`: Menggabungkan Array Jadi Satu Nilai
```js
const total = produk.reduce((akumulator, p) => akumulator + p.harga, 0);
console.log(total); // 205000
```

### `forEach`: Cuma Menjalankan Efek Samping, Bukan Mengembalikan Array Baru
```js
produk.forEach((p) => console.log(p.nama)); // cuma print, tidak menghasilkan array baru
```

| Method | Mengembalikan | Kegunaan |
| --- | --- | --- |
| `map` | Array baru, panjang SAMA | Transformasi tiap elemen |
| `filter` | Array baru, panjang bisa lebih pendek | Menyaring elemen berdasarkan kondisi |
| `reduce` | Satu nilai apa saja (angka, object, dll) | Menggabungkan/mengakumulasi array jadi satu hasil |
| `forEach` | `undefined` (tidak mengembalikan apa-apa) | Efek samping saja (mis. `console.log` tiap elemen) |

Poin penting:

- Semua method ini TIDAK mengubah array aslinya (kecuali `forEach` yang memang tidak menghasilkan array baru sama sekali) — `produk` tetap utuh setelah `.filter()`/`.map()` dipanggil.
- `map`/`filter` bisa di-*chain* (disambung) karena masing-masing mengembalikan array baru yang siap dipanggil method array lagi.
- `reduce` adalah yang paling fleksibel — `map` dan `filter` sebenarnya bisa ditulis ulang pakai `reduce`, tapi kebalikannya tidak selalu semudah itu.', '[{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map","label":"Array.prototype.map() — MDN Web Docs"},{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce","label":"Array.prototype.reduce() — MDN Web Docs"}]'::jsonb, '[]'::jsonb, 'Dari array `produk` di atas (atau buat versi kamu sendiri dengan minimal 5 item), pakai `.filter()` + `.map()` di-chain untuk mendapatkan nama-nama produk dengan harga di atas 50000. Pakai `.reduce()` untuk menjumlahkan total harga SEMUA produk. Pakai `.reduce()` lagi untuk menghitung berapa banyak produk yang harganya di atas 50000 (harus dapat angka yang sama dengan panjang hasil `.filter()` sebelumnya) — buktikan `reduce` bisa menggantikan `filter`+hitung panjang array.', 3, 'published', '2026-09-19 11:37:52.333648+00', '2026-09-19 11:37:52.333648+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('747b8f3c-fdcc-4e7f-97c2-3c1111d291e6', '9deddb76-862f-4fce-83e4-57a0202df83b', 'Error Handling: try, catch, finally', 'error-handling-dasar', 'Sekarang kamu paham fungsi dan closure (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang:** kalau ada error runtime yang tidak ditangani (misalnya `JSON.parse()` gagal karena string-nya tidak valid), SELURUH script berhenti jalan di situ juga (*uncaught exception*) — bagaimana caranya program tetap jalan dan memberi respons yang masuk akal, walau satu bagian kecil gagal?

```js
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
```

```mermaid
flowchart TD
  Try["Kode di dalam try { }"] -->|Berhasil, tanpa error| Skip["catch DILEWATI"]
  Try -->|Error dilempar| Catch["catch (error) { } dijalankan"]
  Skip --> Finally["finally { } — SELALU dijalankan"]
  Catch --> Finally
```

### Melempar Error Sendiri (`throw`)
```js
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
```

Poin penting:

- `finally` dijalankan SELALU — baik `try`-nya berhasil maupun gagal — cocok untuk kode pembersihan (*cleanup*) yang wajib jalan apa pun hasilnya (mis. menutup koneksi, menyembunyikan loading spinner).
- `error.message` berisi pesan error yang bisa dibaca manusia, `error.name` berisi jenis error-nya (`TypeError`, `SyntaxError`, `Error` kustom, dst) — berguna kalau perlu menangani jenis error yang berbeda dengan cara berbeda.
- Jangan `catch` error TANPA melakukan apa-apa (`catch (e) {}` kosong) — itu menyembunyikan bug alih-alih menyelesaikannya. Minimal log error-nya supaya masih terlihat saat debugging.', '[{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/try...catch","label":"try...catch — MDN Web Docs"},{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/throw","label":"throw — MDN Web Docs"}]'::jsonb, '[]'::jsonb, 'Tulis fungsi `parseAman(teks)` yang membungkus `JSON.parse(teks)` dalam `try/catch` — kalau gagal, kembalikan `null` dan `console.error` pesan errornya, bukan sampai program crash. Tes dengan JSON valid dan JSON rusak (mis. `"{tidak valid"`). Tambahkan `finally` yang selalu mencetak "Percobaan parse selesai" — buktikan baris itu tetap muncul di KEDUA kasus (berhasil maupun gagal). Terakhir, buat fungsi `bagi(a, b)` yang melempar `Error` kustom kalau `b === 0`, panggil dalam `try/catch`, cetak `error.message`-nya.', 6, 'published', '2026-09-19 11:37:52.333648+00', '2026-09-22 13:53:03.015+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('927a4efc-a94a-4260-a899-a38068b8d06c', '9deddb76-862f-4fce-83e4-57a0202df83b', 'Promise Dasar', 'promise-dasar', '`try/catch` dari catatan sebelumnya menangani error di kode SINKRON. **Masalah yang diselesaikan sekarang:** kode ASINKRON (timer, request ke server) yang ditulis pakai callback bersarang berkali-kali cepat jadi sulit dibaca begitu ada beberapa langkah berurutan ("*callback hell*"), dan tiap callback butuh error handling-nya sendiri-sendiri, tidak konsisten satu jalur.

**Promise** adalah object yang merepresentasikan hasil operasi asinkron yang BELUM tentu selesai sekarang, tapi akan selesai (atau gagal) di masa depan.

```mermaid
stateDiagram-v2
  [*] --> Pending: Promise dibuat
  Pending --> Fulfilled: resolve(nilai) dipanggil
  Pending --> Rejected: reject(error) dipanggil
  Fulfilled --> [*]: .then() dijalankan
  Rejected --> [*]: .catch() dijalankan
```

### Membuat & Memakai Promise
```js
function tunggu(ms) {
  return new Promise((resolve, reject) => {
    if (ms < 0) {
      reject(new Error("Durasi tidak boleh negatif"));
      return;
    }
    setTimeout(() => resolve(`Selesai menunggu ${ms}ms`), ms);
  });
}

tunggu(1000)
  .then((pesan) => console.log(pesan)) // dijalankan kalau resolve()
  .catch((error) => console.error(error.message)) // dijalankan kalau reject()
  .finally(() => console.log("Promise selesai diproses")); // selalu jalan
```

### Menyambung Beberapa Promise (Chaining)
```js
tunggu(500)
  .then((pesan) => {
    console.log(pesan);
    return tunggu(500); // return Promise lain, lanjut ke .then() berikutnya
  })
  .then((pesan) => console.log("Langkah kedua:", pesan));
```

Poin penting:

- Promise cuma punya TIGA state: `pending` (belum selesai), `fulfilled` (berhasil, sudah `resolve`), `rejected` (gagal, sudah `reject`) — begitu pindah dari `pending` ke salah satu state lain, state-nya PERMANEN, tidak bisa berubah lagi.
- `.then()` yang me-`return` Promise lain memungkinkan chaining berurutan tanpa nesting callback — inilah yang menyelesaikan masalah "callback hell".
- `.catch()` menangkap error dari SEMUA `.then()` sebelumnya di rantai yang sama, tidak perlu `.catch()` di tiap langkah.', '[{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises","label":"Using Promises — MDN Web Docs"},{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise","label":"Promise — MDN Web Docs"}]'::jsonb, '[]'::jsonb, 'Tulis fungsi `tunggu(ms)` persis seperti contoh di atas. Panggil `tunggu(1000).then(console.log)` — buktikan pesannya muncul setelah kira-kira 1 detik. Panggil `tunggu(-100).catch(console.error)` — buktikan `.catch()` menangkap error dari `reject()`. Buat CHAIN tiga `tunggu()` berurutan (masing-masing 500ms) memakai `.then()` bersambung — bandingkan keterbacaannya dengan kalau itu ditulis pakai callback `setTimeout` bersarang tiga level.', 7, 'published', '2026-09-19 11:37:52.333648+00', '2026-09-22 13:53:03.195+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('25f62e53-78ac-42fe-b8ad-f5d2fc696266', 'b4e47208-8775-4a24-a2f3-1655745b90f1', 'Fungsi Dasar: def, Parameter, dan Return', 'fungsi-dasar', 'Sekarang kamu bisa membuat keputusan, mengulang, dan menyimpan koleksi data (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang:** logic yang sama (misalnya menghitung diskon) sering dibutuhkan di banyak tempat berbeda dalam program — menyalin-tempel kode yang sama berkali-kali bikin susah dipelihara (kalau ada bug, harus diperbaiki di SEMUA tempat yang menyalinnya).

```python
def hitung_diskon(harga, persen=10):
    """Menghitung harga setelah diskon. Default diskon 10%."""
    potongan = harga * (persen / 100)
    return harga - potongan

print(hitung_diskon(100000))       # pakai default 10%: 90000.0
print(hitung_diskon(100000, 25))   # override jadi 25%: 75000.0
```

```mermaid
flowchart LR
  Call["hitung_diskon(100000, 25)"] --> Fn["def hitung_diskon(harga, persen=10)"]
  Fn --> Body["potongan = harga * (persen / 100)"]
  Body --> Return["return harga - potongan"]
  Return --> Result["75000.0 dikembalikan ke pemanggil"]
```

Poin penting:

- Parameter dengan nilai default (`persen=10`) bersifat OPSIONAL saat memanggil fungsi — kalau tidak diisi, nilai default itu yang dipakai.
- Fungsi TANPA `return` eksplisit otomatis mengembalikan `None` — beda dengan fungsi yang memang sengaja `return None`.
- Argumen bisa dikirim berdasarkan POSISI (`hitung_diskon(100000, 25)`) atau berdasarkan NAMA (`hitung_diskon(harga=100000, persen=25)`) — cara kedua lebih jelas dibaca kalau parameternya banyak.', '[{"url":"https://docs.python.org/3/tutorial/controlflow.html#defining-functions","label":"Defining Functions — Python Docs"}]'::jsonb, '[]'::jsonb, 'Tulis fungsi `cek_kelulusan(nilai, batas=60)` yang mengembalikan `"Lulus"` kalau `nilai >= batas`, atau `"Tidak Lulus"` kalau tidak — dengan `batas` bernilai default 60. Panggil tanpa argumen kedua (pakai default), lalu panggil lagi dengan `batas=75` untuk kasus yang lebih ketat. Tulis fungsi kedua `rata_rata(daftar_nilai)` yang menerima sebuah `list` angka dan mengembalikan rata-ratanya — gunakan bersama fungsi `cek_kelulusan` untuk mengecek apakah rata-rata itu lulus atau tidak.', 3, 'published', '2026-09-19 12:13:10.509311+00', '2026-09-19 12:13:10.509311+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('48451c66-e6fb-4d18-8ffe-92db70b69ad6', '3a7e2da4-7876-4fe7-9cab-4d1e3dd1c902', 'Stream API: Pemrosesan Data Deklaratif', 'stream-api', 'Catatan sebelumnya membahas Lambda Expressions. **Masalah yang diselesaikan sekarang:** memanipulasi koleksi data secara imperatif membutuhkan perulangan `for` bersarang dan variabel penampung sementara di mana-mana — misal: *"ambil daftar user, filter yang usianya > 18 tahun, ubah namanya jadi huruf kapital, lalu urutkan berdasarkan nama"*. Menulis ini secara imperatif memakan belasan baris kode dan gampang terselip bug mutasi state.

**Stream API** menyediakan cara deklaratif untuk memproses koleksi data seperti saluran pipa (*pipeline*): kamu menentukan *apa* yang ingin dicapai, bukan mendikte langkah *bagaimana* perulangannya.

```mermaid
flowchart LR
  Source["List Asli: [1, 2, 3, 4, 5, 6]"] --> Filter[".filter(n -> n % 2 == 0)"]
  Filter --> Map[".map(n -> n * 10)"]
  Map --> Collect[".toList()"]
  Collect --> Result["Hasil Baru: [20, 40, 60]"]
```

Contoh pemrosesan data dengan Stream API:

```java
import java.util.List;

public class StreamDemo {
    public static void main(String[] args) {
        List<String> daftarNama = List.of("Budi", "Ani", "Bambang", "Joko", "Bayu");

        // Pipeline Stream: Source -> Intermediate Operations -> Terminal Operation
        List<String> hasilFilter = daftarNama.stream()
                // 1. Filter: Hanya ambil nama yang berawalan ''B''
                .filter(nama -> nama.startsWith("B"))
                // 2. Map: Transformasi setiap nama menjadi huruf kapital
                .map(String::toUpperCase)
                // 3. Sorted: Urutkan secara alfabetis
                .sorted()
                // 4. Terminal: Kumpulkan hasil akhirnya menjadi List baru (Java 16+)
                .toList();

        System.out.println("Hasil akhir: " + hasilFilter);
        // Output: [BAMBANG, BAYU, BUDI]
    }
}
```

Poin penting:

- **Stream tidak mengubah data sumber aslinya**: data `daftarNama` tetap utuh; operasi stream menghasilkan list baru.
- **Lazy Evaluation (Evaluasi Tertunda)**: Operasi perantara (*intermediate operations* seperti `filter`, `map`) tidak akan dieksekusi sebelum ada *terminal operation* (seperti `toList()`, `count()`, `findFirst()`).
- Terdapat fungsi reduksi matematika siap pakai: `.mapToInt(...).sum()`, `.average()`, `.max()`.
- Untuk pemrosesan data sangat besar, kamu bisa mengubah `.stream()` menjadi `.parallelStream()` untuk membagi komputasi ke banyak core CPU secara otomatis.', '[{"url":"https://docs.oracle.com/javase/tutorial/collections/streams/index.html","label":"Oracle Java Tutorial — Aggregate Operations (Streams)"},{"url":"https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/util/stream/package-summary.html","label":"Oracle Documentation — java.util.stream Package"}]'::jsonb, '[]'::jsonb, 'Di project latihan kamu:
1. Buat record produk: `record Produk(String nama, double harga) {}`.
2. Buat `List<Produk> katalog` berisi 5 produk dengan harga bervariasi.
3. Buat pipeline stream untuk menyaring produk dengan harga > 50.000, ambil namanya saja (`.map(Produk::nama)`), lalu cetak dengan `.forEach(System.out::println)`.
4. Hitung rata-rata harga seluruh produk menggunakan `.mapToDouble(Produk::harga).average().orElse(0.0)`.', 3, 'published', '2026-09-22 14:14:32.142175+00', '2026-09-22 14:30:12.321+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('ef237ccd-12be-46e1-af47-198a937b5a2a', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'JSX Dasar', 'jsx-dasar', '**Masalah yang diselesaikan:** catatan sebelumnya bikin project React jalan, tapi belum menyentuh cara nulis UI-nya. Sebelum JSX, membangun UI di JavaScript murni berarti manggil `React.createElement()` berulang-ulang — untuk UI sederhana pun kodenya jadi panjang dan susah dibayangkan bentuk akhirnya:

```js
React.createElement(''h1'', null, ''Halo, Dunia'')
```

JSX menyelesaikan ini dengan sintaks mirip HTML langsung di dalam JavaScript, yang di-compile Vite/Babel jadi `createElement()` di balik layar — kamu tulis yang mirip HTML, hasilnya tetap JavaScript biasa.

```mermaid
flowchart LR
    JSX["&lt;h1&gt;Halo&lt;/h1&gt;"] -->|dikompilasi Babel/Vite| CE["React.createElement(''h1'', null, ''Halo'')"]
    CE --> DOM["Elemen DOM nyata di browser"]
```

### 1. Menulis JSX

```jsx
function Sapaan() {
  const nama = ''Budi''
  return <h1>Halo, {nama}!</h1>
}
```

- Kurung kurawal `{}` membungkus ekspresi JavaScript apa pun (variabel, pemanggilan fungsi, operasi matematika) di dalam JSX.
- JSX **wajib** punya satu root element pembungkus. Kalau butuh banyak elemen tanpa tag pembungkus tambahan di DOM, pakai Fragment (`<>...</>`):

```jsx
function Profil() {
  return (
    <>
      <h1>Budi</h1>
      <p>Software Engineer</p>
    </>
  )
}
```

### 2. Perbedaan dari HTML Biasa

| HTML | JSX | Alasan |
| --- | --- | --- |
| `class="btn"` | `className="btn"` | `class` adalah keyword reserved di JavaScript. |
| `<input>` (self-closing opsional) | `<input />` | Tag tanpa children wajib ditutup sendiri. |
| `onclick="..."` (string) | `onClick={fungsi}` | Event handler JSX menerima fungsi JavaScript, bukan string; nama event pakai camelCase. |

- JSX bukan HTML — ekspresi `{kondisi ? <A/> : <B/>}` valid, tapi kontrol alur penuh (`if`/`for` langsung di dalam markup) tidak, karena JSX cuma ekspresi, bukan statement.', '[{"url":"https://react.dev/learn/writing-markup-with-jsx","label":"React – Writing Markup with JSX"}]'::jsonb, '[]'::jsonb, 'Di project Vite yang dibuat di langkah sebelumnya:
1. Buka `src/App.jsx`.
2. Tambahkan variabel `const judul = "Belajar React"` dan `const tahun = 2026`.
3. Tampilkan kedua nilai tersebut di dalam elemen JSX menggunakan kurung kurawal `{judul}` dan `{tahun}`.
4. Tambahkan atribut `className="container"` dan inline style `style={{ padding: "16px", backgroundColor: "#f3f4f6" }}` pada elemen pembungkus utama.
5. Jalankan `npm run dev`, buka browser, dan amati bahwa teks serta gaya tampilan muncul sesuai kode JSX yang kamu tulis.', 1, 'published', '2026-09-21 23:24:41.175314+00', '2026-09-22 13:32:04.843+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('098092c7-34cf-4366-9ae8-9b3167714015', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'Forms & Controlled Input Dasar', 'forms-dan-controlled-input-dasar', '**Masalah yang diselesaikan:** di HTML biasa, elemen form (`<input>`, `<textarea>`, `<select>`) menyimpan nilainya sendiri secara internal di DOM — JavaScript cuma "membaca" nilai itu saat dibutuhkan (misalnya waktu submit). Ini bertentangan dengan cara React bekerja, yang idealnya punya satu sumber kebenaran (*single source of truth*) untuk tiap data, supaya UI selalu konsisten dengan state. Kalau tidak terkontrol, sulit misalnya memvalidasi input secara real-time atau me-reset form dari kode.

React menyelesaikan ini lewat pola **controlled component**: nilai input disimpan di state (`useState`), bukan di DOM, dan tiap perubahan disinkronkan lewat `onChange`.

```mermaid
flowchart LR
    Ketik["User mengetik"] -->|onChange| Set["setNama(e.target.value)"]
    Set --> State["state ''nama'' diperbarui"]
    State -->|value=nama| Input["Input menampilkan nilai dari state"]
```

### 1. Controlled Input Dasar

```jsx
import { useState } from ''react''

function FormNama() {
  const [nama, setNama] = useState('''')

  function handleSubmit(e) {
    e.preventDefault()
    alert(`Halo, ${nama}!`)
  }

  return (
    <form onSubmit={handleSubmit}>
      <input
        type="text"
        value={nama}
        onChange={(e) => setNama(e.target.value)}
      />
      <button type="submit">Kirim</button>
    </form>
  )
}
```

- `value={nama}` mengunci nilai input supaya selalu sama dengan state — inilah yang membuatnya "controlled" (dikontrol React, bukan DOM).
- `onChange` wajib ada kalau `value` di-set — tanpa `onChange`, input jadi read-only (tidak bisa diketik) karena state-nya tidak pernah diperbarui.

### 2. Beberapa Input Sekaligus

Untuk form dengan banyak field, satu objek state dengan satu handler generik lebih ringkas daripada satu `useState` per field:

```jsx
function FormRegistrasi() {
  const [data, setData] = useState({ nama: '''', email: '''' })

  function handleChange(e) {
    setData({ ...data, [e.target.name]: e.target.value })
  }

  return (
    <form>
      <input name="nama" value={data.nama} onChange={handleChange} />
      <input name="email" value={data.email} onChange={handleChange} />
    </form>
  )
}
```

`{...data, [e.target.name]: e.target.value}` men-spread state lama lalu menimpa satu key sesuai `name` input yang berubah — pola umum update state objek tanpa memutasi objek lamanya langsung.', '[{"url":"https://react.dev/reference/react-dom/components/input","label":"React – Reference: <input>"}]'::jsonb, '[]'::jsonb, 'Buat form registrasi dengan 2 field (nama, email) pakai pola objek state di atas, lalu tambahkan tampilan pratinjau live di bawah form yang menampilkan nilai form saat diketik (tanpa perlu submit).', 8, 'published', '2026-09-21 23:24:41.175314+00', '2026-09-22 13:32:06.233+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('479d2b80-51c8-4203-b114-7e0c45cd24ff', 'df6694f2-8cc1-47da-b697-e5c0f0f2cf89', 'Dasar Branching di Git', 'branching', 'Sekarang kamu bisa commit perubahan secara berurutan di satu garis riwayat (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** bagaimana kalau kamu mau coba-coba fitur baru atau perbaikan, tapi tidak mau kode `main` yang sudah stabil ikut berubah/rusak selama proses coba-coba itu?

Branch memungkinkan kita bekerja pada fitur/perbaikan tanpa mengganggu kode di branch utama.

```mermaid
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
```

Branch `fitur-baru` bercabang dari commit `B` di `main`, berkembang sendiri lewat commit `C` dan `D`, lalu digabungkan (merge) kembali jadi commit `E` di `main` — sepanjang itu, isi `main` (`A`, `B`) tidak berubah sama sekali.

```bash
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
```

Praktik yang baik: buat satu branch untuk satu fitur/perbaikan, beri nama yang jelas, dan gabungkan (merge) setelah selesai direview.', '[{"url":"https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell","label":"Git Branching - Branches in a Nutshell — Pro Git Book"}]'::jsonb, '[]'::jsonb, 'Di repository dari latihan sebelumnya, buat branch baru `git checkout -b fitur-baru`, edit `catatan.txt`, commit perubahannya. Pindah balik ke `main` (`git checkout main`) — perhatikan isi `catatan.txt` kembali ke versi sebelum diedit di branch `fitur-baru`. Jalankan `git merge fitur-baru` dari `main`, cek isinya lagi (sekarang harus dapat perubahan dari branch itu). Terakhir hapus branch-nya: `git branch -d fitur-baru`.', 3, 'published', '2026-09-18 06:20:59.380972+00', '2026-09-22 14:30:16.906+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('cb292ff3-aed8-4f22-86b6-7683cbb957ed', '9deddb76-862f-4fce-83e4-57a0202df83b', 'Modules Dasar: import dan export', 'modules-dasar', 'Sekarang kamu sudah menguasai variabel, fungsi, closure, error handling, sampai async/await (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** sebelum module, semua kode JS di satu file besar — atau digabung lewat banyak tag `<script>` di HTML — berbagi SATU scope global yang sama. Variabel/fungsi dengan nama sama di file berbeda saling menimpa (*naming collision*), dan urutan `<script>` di HTML harus manual diatur sesuai dependency-nya.

**ES Modules** membuat tiap file JS punya scope-nya SENDIRI — variabel/fungsi cuma bisa diakses file lain kalau di-`export` secara eksplisit, dan dipakai lewat `import`.

```mermaid
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
```

### `export` (di `math.js`)
```js
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
```

### `import` (di `main.js`)
```js
// Named import — nama HARUS sama persis dengan yang di-export (bisa di-rename pakai "as")
import { tambah, kurang } from "./math.js";

// Default import — boleh dikasih nama apa saja
import kali from "./math.js";

console.log(tambah(2, 3)); // 5
console.log(kali(2, 3)); // 6
```

### Menjalankan Module
```html
<!-- Di browser: wajib type="module" -->
<script type="module" src="main.js"></script>
```

```bash
# Di Node.js: pakai ekstensi .mjs, ATAU tambahkan "type": "module" di package.json
node main.mjs
```

Poin penting:

- Variabel/fungsi di dalam module TIDAK otomatis jadi global — kalau tidak di-`export`, dia betul-betul privat ke file itu, tidak bisa diakses file lain sama sekali.
- Named export bisa banyak per file, default export maksimal SATU — pilih named kalau file punya beberapa hal yang mau di-export sekaligus (seperti `math.js` di atas).
- Module HANYA dieksekusi SEKALI meski di-`import` dari banyak file berbeda — hasilnya di-cache dan dipakai bersama, bukan dijalankan ulang tiap `import`.', '[{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules","label":"JavaScript modules — MDN Web Docs"}]'::jsonb, '[]'::jsonb, 'Buat dua file: `math.js` berisi dua named export (`tambah`, `kurang`) dan satu default export (`kali`), lalu `main.js` yang meng-`import` ketiganya dan memanggilnya, cetak hasilnya ke console. Jalankan lewat `<script type="module" src="main.js"></script>` di file HTML kosong, buka di browser, cek hasilnya di DevTools console. Coba HAPUS `type="module"` dari tag script-nya — perhatikan muncul error `Cannot use import statement outside a module`, membuktikan `type="module"` memang wajib. Ini menutup roadmap JavaScript: dari variabel dasar sampai memecah kode jadi file-file yang terorganisir.', 10, 'published', '2026-09-19 11:37:52.333648+00', '2026-09-22 13:53:03.666+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('8ad90324-94ac-45f4-a651-ec784b0f3e95', 'b8ecce90-6cfa-42bd-bd17-b76f0aa0569d', 'MCP: Menghubungkan Tool Eksternal', 'mcp-menghubungkan-tool-eksternal', 'Sekarang agent bisa eksekusi tool bawaan, ingat konteks, dan pakai ulang skill (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** bagaimana kalau kamu butuh agent bisa akses tool yang TIDAK dibawa bawaan Hermes — API internal perusahaan, database tertentu, atau service pihak ketiga seperti GitHub/Linear?

**MCP (Model Context Protocol)** adalah protokol standar yang menghubungkan Hermes Agent ke *tool server* eksternal, tanpa perlu membangun integrasi native satu-satu untuk tiap service.

```mermaid
flowchart LR
  Hermes["Hermes Agent"] --> Client["MCP Client"]
  Client -->|"stdio (subprocess lokal)"| Local["MCP Server Lokal<br/>(mis. filesystem)"]
  Client -->|"HTTP (remote)"| Remote["MCP Server Remote<br/>(mis. API internal)"]
  Local --> Tools["Tool tersedia untuk agent"]
  Remote --> Tools
```

### Konfigurasi (`~/.hermes/config.yaml`)
Ada dua tipe transport: **stdio** (subprocess lokal) dan **HTTP** (endpoint remote):

```yaml
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
```

Contoh menghubungkan GitHub dengan filter tool tertentu saja:
```yaml
mcp_servers:
  github:
    command: "npx"
    args: ["-y", "@modelcontextprotocol/server-github"]
    env:
      GITHUB_PERSONAL_ACCESS_TOKEN: "***"
    tools:
      include: [create_issue, list_issues]
```

### Cara Cepat Lewat CLI
```bash
# Pilih interaktif dari katalog server yang sudah direkomendasikan Nous
hermes mcp

# Install langsung by name
hermes mcp install linear

# Lihat semua entri katalog
hermes mcp catalog
```

Setelah terhubung, cukup minta secara natural — agent otomatis menemukan tool dari MCP server itu dan memakainya:
```text
List open bugs dan draft issue baru untuk masalah reconnection yang flaky.
```

| Transport | Kapan Dipakai |
| --- | --- |
| `stdio` | Tool server jalan sebagai proses lokal di komputer/server yang sama dengan Hermes |
| `HTTP` | Tool server sudah di-deploy sebagai endpoint terpisah (internal API, service pihak ketiga) |

Poin penting:

- `tools.include` (atau `exclude`) membatasi tool mana saja dari satu MCP server yang boleh dipakai agent — berguna untuk membatasi akses (misalnya cuma boleh baca issue, tidak boleh hapus repo).
- `hermes mcp catalog` berisi server yang sudah direkomendasikan/diverifikasi Nous — titik awal paling aman dibanding menulis config MCP server pihak ketiga secara manual.
- MCP membuat Hermes Agent bisa terus diperluas kapabilitasnya tanpa update aplikasi Hermes itu sendiri — cukup tambah entri di `mcp_servers`.', '[{"url":"https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp","label":"Hermes Agent Docs — MCP Integration"}]'::jsonb, '[]'::jsonb, 'Jalankan `hermes mcp catalog` untuk lihat server yang tersedia, lalu `hermes mcp install <salah satu nama dari katalog>` (atau tambahkan server `filesystem` secara manual ke `~/.hermes/config.yaml` seperti contoh di atas kalau mau coba tanpa akun pihak ketiga). Mulai sesi baru, minta agent melakukan sesuatu yang HANYA bisa dikerjakan lewat tool dari MCP server itu (bukan tool bawaan) — verifikasi dari responsnya bahwa dia benar-benar memanggil tool eksternal itu, bukan tool bawaan Hermes. Ini menutup roadmap Agentic AI: dari instalasi dasar sampai agent yang bisa diperluas kapabilitasnya ke sistem eksternal apa pun.', 4, 'published', '2026-09-19 10:23:25.989758+00', '2026-09-19 10:23:25.989758+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('4b0e3151-1091-4399-806d-0312b94d7f6d', '9edf40dd-0158-4e70-b0e6-1e64c4282cb0', 'Membangun REST API dengan RESTEasy Reactive', 'rest-api-resteasy-reactive', 'Catatan sebelumnya mengenalkan Quarkus dan Dev Mode. **Masalah yang diselesaikan sekarang:** bagaimana cara membangun REST API endpoint yang mampu menangani ribuan request secara bersamaan tanpa menghabiskan thread server?

Quarkus menyediakan **RESTEasy Reactive**: implementasi standar Jakarta REST yang berjalan di atas arsitektur non-blocking Netty. Hebatnya, kamu bisa menulis kode bergaya imperatif biasa yang mudah dipahami, tetapi Quarkus mengeksekusinya secara reaktif di belakang layar dengan serialisasi JSON otomatis (Jackson).

```mermaid
sequenceDiagram
  autonumber
  participant C as Client (Frontend / Curl)
  participant R as RESTEasy Reactive Endpoint
  participant S as Jackson JSON Serializer
  C->>R: GET /api/produk
  R->>R: Ambil daftar data Produk
  R->>S: Konversi List<Produk> ke JSON
  S-->>C: HTTP 200 OK + JSON Payload
```

Contoh pembuatan REST Controller endpoint lengkap:

```java
package com.example;

import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import java.util.ArrayList;
import java.util.List;

// Record model data DTO
record Produk(int id, String nama, double harga) {}

@Path("/api/produk")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class ProdukResource {

    private static List<Produk> database = new ArrayList<>(List.of(
        new Produk(1, "Kopi Arabika", 35000.0),
        new Produk(2, "Teh Hijau", 20000.0)
    ));

    // 1. GET: Ambil semua produk
    @GET
    public List<Produk> ambilSemua() {
        return database;
    }

    // 2. GET by ID dengan PathParam
    @GET
    @Path("/{id}")
    public Response ambilById(@PathParam("id") int id) {
        return database.stream()
                .filter(p -> p.id() == id)
                .findFirst()
                .map(p -> Response.ok(p).build())
                .orElse(Response.status(Response.Status.NOT_FOUND).build());
    }

    // 3. POST: Tambah produk baru
    @POST
    public Response tambahProduk(Produk input) {
        database.add(input);
        return Response.status(Response.Status.CREATED).entity(input).build();
    }
}
```

Poin penting:

- Anotasi `@Path("/api/produk")` menentukan rute URL dasar resource ini.
- `@Produces(MediaType.APPLICATION_JSON)` otomatis mengonversi return type Java (seperti `List<Produk>`) menjadi respons JSON valid.
- Objek `Response` dari `jakarta.ws.rs.core` memberi kontrol penuh atas HTTP Status Code (`200 OK`, `201 Created`, `404 Not Found`).
- RESTEasy Reactive jauh lebih cepat dan hemat memori dibanding RESTEasy klasik karena routing dipetakan saat *build-time*.', '[{"url":"https://quarkus.io/guides/resteasy-reactive","label":"Quarkus Guides — Writing REST Services with RESTEasy Reactive"},{"url":"https://jakarta.ee/specifications/restful-ws/","label":"Jakarta RESTful Web Services Specification"}]'::jsonb, '[]'::jsonb, 'Di project Quarkus latihan kamu:
1. Buat class `TugasResource.java` di dalam folder `src/main/java/com/example/`.
2. Pasang anotasi `@Path("/api/tugas")`.
3. Buat endpoint `@GET` yang mengembalikan daftar to-do sederhana dalam bentuk list string.
4. Buat endpoint `@GET @Path("/{index}")` yang mengembalikan satu item berdasarkan indeks.
5. Uji kedua endpoint tersebut lewat browser atau `curl http://localhost:8080/api/tugas`.', 1, 'published', '2026-09-22 14:14:32.931334+00', '2026-09-22 14:30:13.194+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('b38b67fc-0349-4842-a63d-3ea5cf6cdd1a', 'b403e972-3cb3-4605-a6b6-bb0f2774b0f6', 'Server Component vs Client Component', 'server-client-components', 'Sekarang kamu sudah bisa bikin routing, navigasi antar halaman, dan berbagi layout UI. Pertanyaan berikutnya: **kode apa saja yang sebenarnya dikirim ke browser** waktu halaman itu diakses? Sebelum React Server Components, jawabannya selalu sama — semua kode komponennya, bahkan kalau komponen itu cuma menampilkan teks statis dari database dan tidak butuh interaktivitas sama sekali. Ini boros: bundle JavaScript makin besar, waktu render pertama makin lambat, terutama di HP dengan koneksi lambat.

Di App Router, semua komponen di dalam folder `app/` adalah **Server Component** secara default — dirender di server, tidak mengirim JavaScript komponennya ke browser. Untuk komponen yang butuh interaktivitas (state, event handler, hooks), harus ditandai sebagai **Client Component**.

```mermaid
graph LR
  A["Server Component<br/>fetch data, render HTML"] -- "kirim HTML saja" --> B["Browser<br/>render statis"]
  C["Client Component<br/>''use client''"] -- "kirim HTML + JS" --> D["Browser<br/>di-hydrate, jadi interaktif"]
```

```tsx
// app/page.tsx — Server Component (default, tanpa directive apa pun)
async function getData() {
  const res = await fetch("https://api.example.com/produk");
  return res.json();
}

export default async function HomePage() {
  const produk = await getData(); // boleh langsung await, tanpa useEffect
  return <p>Jumlah produk: {produk.length}</p>;
}
```

```tsx
// app/components/Counter.tsx — Client Component
"use client";

import { useState } from "react";

export default function Counter() {
  const [count, setCount] = useState(0);
  return <button onClick={() => setCount(count + 1)}>Klik: {count}</button>;
}
```

Poin penting:

- Directive `"use client"` wajib ditulis paling atas file, sebelum import lain, supaya komponen (dan semua yang di-import olehnya) dikirim juga ke browser sebagai JavaScript.
- Server Component tidak bisa memakai `useState`, `useEffect`, atau event handler (`onClick`, dst) — kalau butuh itu, pindahkan bagian interaktifnya ke Client Component terpisah.
- Server Component boleh langsung `async`/`await` untuk fetch data, tanpa perlu `useEffect`.', '[{"url":"https://nextjs.org/docs/app/getting-started/server-and-client-components","label":"Next.js Docs — Server and Client Components"}]'::jsonb, '[]'::jsonb, 'Buka DevTools browser (tab Network) di salah satu halaman yang kamu buat di latihan catatan sebelumnya, lalu:

1. Tambahkan komponen counter interaktif (`"use client"` + `useState`, seperti contoh di atas) ke halaman `app/kontak/page.tsx`.
2. Reload halaman, filter Network berdasarkan JS, lalu bandingkan ukuran JS yang di-download sebelum dan sesudah kamu tambahkan counter itu.
3. Coba hapus baris `"use client"` dari komponen counter itu — Next.js akan menolak build karena kamu masih pakai `useState` di Server Component. Baca pesan errornya sampai habis; itu cara Next.js memaksa kamu sadar batas antara Server dan Client Component.', 2, 'published', '2026-09-18 06:20:59.380972+00', '2026-09-22 14:30:20.978+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('0bd6b9e8-c329-4078-a066-f00213688aee', 'b403e972-3cb3-4605-a6b6-bb0f2774b0f6', 'Metadata Dasar untuk SEO di Next.js', 'metadata-seo-dasar', '**Masalah yang diselesaikan:** semua yang sudah kamu bangun sejauh ini fungsional, tapi bagaimana orang lain (dan mesin pencari seperti Google) tahu halaman kamu ini tentang apa sebelum mereka klik? Tanpa metadata yang benar, link yang dibagikan ke sosial media cuma menampilkan URL polos, dan Google kesulitan mengindeks halaman dengan judul yang relevan.

Next.js App Router menyediakan API Metadata untuk mendefinisikan informasi `<head>` HTML (seperti title, description, favicon, dan OpenGraph tag untuk media sosial) baik secara statis maupun dinamis.

```mermaid
flowchart LR
    Meta["export const metadata = {...}"] --> Gen["Next.js HTML Engine"]
    Gen --> Head["&lt;head&gt;<br/>&lt;title&gt;...&lt;/title&gt;<br/>&lt;meta name=''description'' .../&gt;<br/>&lt;meta property=''og:image'' .../&gt;<br/>&lt;/head&gt;"]
```

### 1. Static Metadata (`app/about/page.tsx`)
Untuk halaman dengan data judul dan deskripsi yang tetap:

```tsx
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
```

### 2. Dynamic Metadata dengan `generateMetadata`
Untuk halaman dinamis seperti artikel blog (`app/notes/[slug]/page.tsx`):

```tsx
import type { Metadata } from "next";

type Props = {
  params: { slug: string };
};

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  // Ambil data catatan dari API / Database
  const note = await getNoteBySlug(params.slug);

  return {
    title: `${note.title} | Catatan Belajar`,
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
```

- **Title Template**: Di `app/layout.tsx`, kita bisa membuat format title konsisten:
  ```ts
  export const metadata: Metadata = {
    title: {
      template: "%s | Catatan Belajar",
      default: "Catatan Belajar",
    },
  };
  ```', '[{"url":"https://nextjs.org/docs/app/building-your-application/optimizing/metadata","label":"Next.js Docs — Metadata"}]'::jsonb, '[]'::jsonb, 'Tambahkan `export const metadata` ke salah satu halaman project latihan kamu (mis. `app/produk/page.tsx`), isi title dan description yang relevan. Lalu:

1. Lihat tab browser — judulnya harus berubah sesuai `metadata.title`.
2. View page source (Ctrl+U / klik kanan → View Page Source), cari tag `<meta name="description">` di `<head>` — pastikan isinya sesuai yang kamu tulis.
3. Kalau sempat, coba `generateMetadata` dinamis untuk halaman `app/produk/[id]/page.tsx` yang title-nya berbeda tergantung `id`-nya — ini menutup roadmap Next.js: dari struktur project sampai halaman yang siap ditemukan orang lain.', 9, 'published', '2026-09-18 09:12:04.314568+00', '2026-09-22 13:32:12.088+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('e80af964-92d0-41ad-84eb-56d9b247f9cb', '3e71ad0e-b25a-4567-b43e-282574f1590a', 'Relasi Antar-Tabel & Relational Queries', 'relasi-dan-foreign-key', 'Catatan sebelumnya membahas cara melakukan operasi CRUD pada satu tabel mandiri. **Masalah yang diselesaikan sekarang:** data di dunia nyata hampir tidak pernah berdiri sendiri dalam satu tabel datar. Sebuah artikel blog terikat ke satu kategori (*one-to-many*), dan satu catatan bisa memiliki banyak komentar. Di SQL tradisional, kita harus menulis query `JOIN` yang panjang. Bagaimana cara Supabase mengambil data relasional secara efisien dalam satu panggilan API?

Karena Supabase dibangun di atas PostgreSQL, hubungan antar-tabel didefinisikan menggunakan **Foreign Key (kunci asing)**. Hebatnya, PostgREST secara otomatis mendeteksi relasi ini, memungkinkan kita mengambil data dari beberapa tabel sekaligus hanya dengan menyebutkan nama tabel relasinya di dalam method `.select()`.

```mermaid
erDiagram
  CATEGORIES ||--o{ NOTES : "memiliki banyak"
  CATEGORIES {
    uuid id PK
    text name
    text slug
  }
  NOTES {
    uuid id PK
    uuid category_id FK
    text title
    text slug
  }
```

Mendefinisikan Foreign Key di SQL dan mengambil datanya lewat JavaScript:

```sql
-- 1. Definisi relasi di database lewat Foreign Key
CREATE TABLE categories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL
);

CREATE TABLE notes (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  category_id uuid NOT NULL REFERENCES categories(id) ON DELETE CASCADE,
  title text NOT NULL
);
```

```ts
import { supabase } from "./lib/supabase";

// 2. Query 1-ke-1 atau N-ke-1: Ambil catatan beserta info kategorinya (JOIN otomatis)
const { data: catatanDenganKategori, error: err1 } = await supabase
  .from("notes")
  .select(`
    id,
    title,
    categories (
      id,
      name
    )
  `);

// 3. Query 1-ke-N: Ambil kategori beserta daftar semua catatan di dalamnya (Nested Array)
const { data: kategoriDenganNotes, error: err2 } = await supabase
  .from("categories")
  .select(`
    name,
    notes (
      id,
      title
    )
  `)
  .eq("name", "TypeScript");
```

Poin penting:

- Relasi otomatis di Supabase **wajib** memiliki constraint `REFERENCES tabel_tujuan(id)` di tingkat database PostgreSQL agar PostgREST dapat mendeteksinya.
- Mengambil relasi induk (*parent*) mengembalikan objek tunggal (misal `categories: { id, name }`).
- Mengambil relasi anak (*children*) mengembalikan array objek (misal `notes: [{ id, title }, ...]`).
- Dengan nested select ini, kamu tidak perlu melakukan query bertingkat (*waterfall fetch*), menghemat round-trip jaringan dan meningkatkan performa aplikasi secara drastis.', '[{"url":"https://supabase.com/docs/guides/database/joins-and-nesting","label":"Supabase Docs — Querying Joins and Nested Tables"},{"url":"https://www.postgresql.org/docs/current/ddl-constraints.html#DDL-CONSTRAINTS-FK","label":"PostgreSQL Docs — Foreign Keys"}]'::jsonb, '[]'::jsonb, 'Di project Supabase kamu (atau SQL Editor dashboard):
1. Periksa skema tabel `categories` dan `notes` yang ada di database proyek ini.
2. Buat skrip node sederhana atau coba query: ambil 3 baris dari tabel `notes` dengan menyertakan nama kategorinya: `.from("notes").select("title, categories(name)").limit(3)`.
3. Cetak hasilnya ke console dan perhatikan bagaimana Supabase otomatis menyusun objek kategori di dalam tiap objek catatan tanpa kamu perlu menulis perintah SQL `INNER JOIN` manual.', 2, 'published', '2026-09-22 13:53:07.758005+00', '2026-09-22 14:30:24.438+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('f630317b-981e-41b2-b3fb-b80b1cc345d7', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'Component & Props Dasar', 'component-dan-props-dasar', '**Masalah yang diselesaikan:** setelah tahu cara menulis markup dengan JSX di catatan sebelumnya, masalah berikutnya adalah duplikasi. Bayangkan halaman yang menampilkan 20 kartu produk — copy-paste blok JSX yang sama 20 kali bikin kode panjang dan susah di-maintain (ubah satu style, harus ubah di 20 tempat). Component menyelesaikan ini: definisikan struktur UI SEKALI sebagai fungsi, lalu pakai berkali-kali dengan data berbeda-beda lewat **props**.

```mermaid
flowchart TD
    App["App"] --> Kartu1["KartuProduk nama=''Sepatu'' harga=200000"]
    App --> Kartu2["KartuProduk nama=''Tas'' harga=350000"]
    App --> Kartu3["KartuProduk nama=''Topi'' harga=75000"]
```

### 1. Component adalah Fungsi

```jsx
function KartuProduk({ nama, harga }) {
  return (
    <div className="kartu">
      <h2>{nama}</h2>
      <p>Rp {harga.toLocaleString(''id-ID'')}</p>
    </div>
  )
}
```

- Nama component **wajib** diawali huruf kapital (`KartuProduk`, bukan `kartuProduk`) — React memakai ini untuk membedakan component (`<KartuProduk />`) dari tag HTML biasa (`<div />`).
- `{ nama, harga }` adalah destructuring dari objek `props` yang dikirim parent — sama dengan menulis `function KartuProduk(props) { const { nama, harga } = props; ... }`.

### 2. Mengirim Props dari Parent

```jsx
function App() {
  return (
    <div>
      <KartuProduk nama="Sepatu" harga={200000} />
      <KartuProduk nama="Tas" harga={350000} />
    </div>
  )
}
```

Tiap atribut di JSX (`nama="Sepatu"`) jadi satu key di objek `props` yang diterima component. Nilai non-string (angka, boolean, objek, fungsi) ditulis di dalam `{}`.

### 3. Props Bersifat Read-Only

Component **tidak boleh** mengubah props yang diterimanya sendiri — data mengalir satu arah, dari parent ke child (disebut *one-way data flow*). Kalau child perlu mengubah sesuatu, parent yang menyediakan fungsi lewat props (dibahas lebih detail waktu masuk ke state).', '[{"url":"https://react.dev/learn/your-first-component","label":"React – Your First Component"},{"url":"https://react.dev/learn/passing-props-to-a-component","label":"React – Passing Props to a Component"}]'::jsonb, '[]'::jsonb, 'Buat component `KartuProduk` seperti contoh di atas, pakai 3x dengan data produk berbeda-beda. Lalu coba tambahkan baris yang mengubah `nama` di dalam component itu sendiri (`nama = ''lainnya''`) dan amati warning yang muncul di console browser.', 2, 'published', '2026-09-21 23:24:41.175314+00', '2026-09-21 23:36:14.414004+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('4f1eb8ba-21ab-47ba-945e-6c99edce2bb3', 'ea6a08d0-0af9-435b-88f7-ff6e196be052', 'Union Type & Literal Type', 'union-dan-literal-type', 'Sekarang kamu bisa mendefinisikan bentuk object lewat interface/type alias di catatan sebelumnya. **Masalah yang diselesaikan sekarang:** bagaimana kalau sebuah nilai cuma boleh salah satu dari beberapa pilihan spesifik — misalnya status pesanan yang cuma boleh `"pending"`, `"success"`, atau `"failed"`? Kalau cuma dianotasi `string` biasa, TypeScript tidak akan komplain kalau ada yang salah ketik `"pendign"` atau mengirim status yang sama sekali tidak valid.

Union type memungkinkan suatu variabel atau parameter memiliki lebih dari satu kemungkinan tipe data (menggunakan operator `|`). Literal type mempersempit tipe data ke nilai eksak tertentu (bukan sekadar `string` atau `number` umum).

```mermaid
flowchart TD
    subgraph UnionType ["type Status = ''pending'' | ''success'' | ''failed''"]
        A["''pending''"]
        B["''success''"]
        C["''failed''"]
    end
    Val["Input Nilai: ''success''"] -->|Valid| B
    ValInvalid["Input Nilai: ''cancelled''"] -->|Type Error| UnionType
```

### 1. Union Type Sederhana
Mengizinkan nilai berupa salah satu dari tipe yang didefinisikan:

```ts
function formatID(id: string | number): string {
  return `ID: ${id}`;
}

console.log(formatID(101));       // Output: ID: 101
console.log(formatID("USR-001")); // Output: ID: USR-001
```

### 2. Literal Type (String & Number Literal)
Mengunci nilai agar hanya menerima teks atau angka tertentu:

```ts
type Role = "admin" | "member" | "guest";
type DiceRoll = 1 | 2 | 3 | 4 | 5 | 6;

let userRole: Role = "admin";
// userRole = "superadmin"; // Error: Type ''"superadmin"'' is not assignable to type ''Role''.

let roll: DiceRoll = 6;
// let invalidRoll: DiceRoll = 7; // Error: Type ''7'' is not assignable to type ''DiceRoll''.
```

### 3. Discriminated Union (Tagged Union)
Teknik menggabungkan beberapa object type yang memiliki properti penanda (*discriminant property*) yang sama untuk membedakan struktur datanya:

```ts
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
```

- **Union (`|`)** = nilai bisa bertipe A **atau** B.
- **Literal Type** = nilai harus persis teks/angka tertentu, sangat berguna menggantikan magic string/number.
- **Discriminated Union** = pola standar di TypeScript untuk menangani state kompleks (misal: state API, aksi Redux, dll).', '[{"url":"https://www.typescriptlang.org/docs/handbook/2/everyday-types.html#union-types","label":"TypeScript Handbook — Everyday Types (Unions)"},{"url":"https://www.typescriptlang.org/docs/handbook/2/everyday-types.html#literal-types","label":"TypeScript Handbook — Literal Types"}]'::jsonb, '[]'::jsonb, 'Definisikan `type Pembayaran = "transfer" | "kartu" | "cod"`. Buat fungsi `prosesPembayaran(metode: Pembayaran)` yang mencetak pesan berbeda per metode. Coba panggil dengan nilai yang salah ketik (`"trasfer"`) — pastikan TypeScript langsung menolak sebelum kode dijalankan. Lalu buat discriminated union `type Notifikasi = { tipe: "email"; alamat: string } | { tipe: "sms"; nomor: string }` dan fungsi yang menangani keduanya seperti contoh `renderResponse` di atas.', 2, 'published', '2026-09-18 09:02:38.493011+00', '2026-09-18 14:08:58.550479+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('f4acfa70-7427-4189-9374-db4b27e7e59d', 'ea6a08d0-0af9-435b-88f7-ff6e196be052', 'Type Narrowing Dasar', 'type-narrowing', 'Union type dan literal type dari catatan sebelumnya menyelesaikan masalah "nilai apa saja yang valid". **Masalah yang diselesaikan sekarang:** begitu kamu punya variabel bertipe union (misalnya `string | number`), compiler tidak tahu persis tipe konkretnya di titik tertentu dalam kode — jadi method yang spesifik ke satu tipe (`.toUpperCase()` untuk string, `.toFixed()` untuk number) tidak bisa langsung dipanggil tanpa pengecekan dulu.

Type Narrowing adalah proses di mana TypeScript mempersempit tipe variabel yang luas menjadi tipe yang lebih spesifik berdasarkan pemeriksaan kondisi logika di kode (*control flow analysis*).

```mermaid
flowchart TD
    Input["Input: string | number"] --> Check{"typeof value === ''string''?"}
    Check -- Yes --> BranchStr["Tipe menyempit ke: string<br/>(Bisa akses .toUpperCase(), .slice())"]
    Check -- No --> BranchNum["Tipe menyempit ke: number<br/>(Bisa akses .toFixed(), operasi hitung)"]
```

### 1. `typeof` Guard
Digunakan untuk tipe primitif (`string`, `number`, `boolean`, `symbol`, `bigint`):

```ts
function padLeft(padding: number | string, input: string): string {
  if (typeof padding === "number") {
    // Di dalam blok ini, padding pasti bertipe `number`
    return " ".repeat(padding) + input;
  }
  // Di luar blok if, TypeScript tahu padding pasti bertipe `string`
  return padding + input;
}
```

### 2. Equality Guard (`===`, `!==`)
Pemeriksaan kesamaan nilai literal mempersempit tipe union:

```ts
function prosesStatus(state: "idle" | "loading" | "success") {
  if (state === "loading") {
    console.log("Animasi spinner...");
  } else if (state === "success") {
    console.log("Tampilkan konten!");
  } else {
    console.log("Menunggu aksi user.");
  }
}
```

### 3. Operator `in`
Memeriksa keberadaan sebuah property pada object:

```ts
type Burung = { terbang: () => void };
type Ikan = { berenang: () => void };

function gerak(hewan: Burung | Ikan) {
  if ("terbang" in hewan) {
    hewan.terbang(); // TypeScript tahu ini Burung
  } else {
    hewan.berenang(); // TypeScript tahu ini Ikan
  }
}
```

### 4. `instanceof` Guard
Memeriksa apakah object merupakan instance dari suatu `class`:

```ts
function logDateOrString(x: Date | string) {
  if (x instanceof Date) {
    console.log(x.toUTCString()); // x bertipe Date
  } else {
    console.log(x.toUpperCase()); // x bertipe string
  }
}
```

TypeScript secara pintar memotong kemungkinan tipe (*type narrowing*) di setiap cabang `if/else`, sehingga method yang dipanggil dijamin aman tanpa perlu casting manual (`as`).', '[{"url":"https://www.typescriptlang.org/docs/handbook/2/narrowing.html","label":"TypeScript Handbook — Narrowing"}]'::jsonb, '[]'::jsonb, 'Tulis fungsi `formatNilai(value: string | number | boolean)` yang mengembalikan versi string dari `value` dengan format berbeda per tipe (uppercase untuk string, 2 angka desimal untuk number, "Ya"/"Tidak" untuk boolean). Pakai `typeof` guard untuk tiap cabang. Lalu coba hapus salah satu pengecekan `typeof`-nya dan lihat error yang muncul saat memanggil method yang tidak sesuai tipe di cabang itu.', 3, 'published', '2026-09-18 09:02:39.128372+00', '2026-09-18 14:08:58.550479+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('f58bc200-37ce-4df2-b238-49353da2397c', 'ea6a08d0-0af9-435b-88f7-ff6e196be052', 'Generics Dasar', 'generics-dasar', 'Semua fungsi yang kamu tulis sejauh ini punya tipe parameter yang spesifik. **Masalah yang diselesaikan sekarang:** bagaimana kalau kamu mau bikin fungsi yang bekerja untuk banyak tipe data sekaligus (angka, teks, object apa pun) tanpa menulis versi terpisah untuk masing-masing, dan tanpa kehilangan informasi tipe seperti yang terjadi kalau pakai `any`?

Generics memungkinkan kita membuat fungsi, interface, atau class yang dapat bekerja dengan berbagai tipe data tanpa kehilangan informasi tipe aslinya (*type safety*), bertindak seperti variabel penampung tipe (*type placeholder*).

```mermaid
flowchart LR
    subgraph Function ["Fungsi Generic: identitas&lt;T&gt;(arg: T): T"]
        T["T (Type Placeholder)"]
    end
    Call1["identitas&lt;number&gt;(42)"] -->|T = number| Result1["Return: 42 (number)"]
    Call2["identitas&lt;string&gt;(''halo'')"] -->|T = string| Result2["Return: ''halo'' (string)"]
```

### 1. Masalah Tanpa Generics vs Dengan Generics
Jika menggunakan `any`, tipe return akan hilang. Dengan generics (`<T>`), tipe input dan output tetap terjaga:

```ts
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
```

### 2. Generic pada Interface & Type Alias
Sangat umum digunakan untuk response API:

```ts
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
```

### 3. Generic Constraints (`extends`)
Membatasi tipe yang boleh masuk ke dalam parameter generic:

```ts
interface MemilikiPanjang {
  length: number;
}

function hitungPanjang<T extends MemilikiPanjang>(item: T): number {
  return item.length;
}

console.log(hitungPanjang("Halo Dunia")); // valid (string punya .length)
console.log(hitungPanjang([1, 2, 3]));     // valid (array punya .length)
// hitungPanjang(123); // Error: Argument of type ''number'' is not assignable to ''MemilikiPanjang''
```

Generics membuat kode bersifat *reusable* (dapat dipakai ulang) untuk berbagai jenis data namun tetap 100% *type-safe*.', '[{"url":"https://www.typescriptlang.org/docs/handbook/2/generics.html","label":"TypeScript Handbook — Generics"}]'::jsonb, '[]'::jsonb, 'Buat fungsi generic `ambilElemenPertama<T>(arr: T[]): T` yang mengembalikan elemen pertama array apa pun. Panggil dengan array number, array string, dan array object — pastikan tipe hasil return-nya ikut menyesuaikan tanpa perlu casting manual. Lalu buat `interface Kotak<T> { isi: T }` dan buat dua instance kotak dengan tipe isi yang berbeda.', 5, 'published', '2026-09-18 09:02:39.77688+00', '2026-09-18 23:46:50.864953+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('39bae655-e3ea-4921-85a9-c90ebead7963', 'ea6a08d0-0af9-435b-88f7-ff6e196be052', 'Enum Dasar', 'enum-dasar', 'Catatan-catatan sebelumnya (generics, utility types, union & literal type) sama-sama cara merepresentasikan "pilihan terbatas" atau bentuk tipe yang fleksibel dengan cara yang berbeda-beda. **Masalah yang diselesaikan sekarang:** enum adalah alternatif lain — sekumpulan konstanta bernama yang dikelompokkan dalam satu namespace, umum dipakai di code base yang lebih bergaya OOP.

Enum (*enumerations*) adalah fitur TypeScript yang memungkinkan pendefinisian sekumpulan konstanta bernama. Enum memudahkan representasi pilihan opsi yang terbatas dan tetap.

```mermaid
flowchart TD
    subgraph NumericEnum ["Numeric Enum (Auto Increment)"]
        D0["Direction.Up = 0"]
        D1["Direction.Right = 1"]
        D2["Direction.Down = 2"]
        D3["Direction.Left = 3"]
    end
    subgraph StringEnum ["String Enum (Eksplisit)"]
        S1["StatusPesanan.Pending = ''PENDING''"]
        S2["StatusPesanan.Proses = ''PROSES''"]
        S3["StatusPesanan.Selesai = ''SELESAI''"]
    end
```

### 1. Numeric Enum (Enum Angka)
Secara default, nilai enum dimulai dari `0` dan otomatis bertambah 1:

```ts
enum Arah {
  Atas,    // 0
  Kanan,   // 1
  Bawah,   // 2
  Kiri     // 3
}

let gerakan: Arah = Arah.Atas;
console.log(gerakan); // Output: 0
```

Kita juga bisa menentukan nilai awal:
```ts
enum HttpStatus {
  OK = 200,
  BadRequest = 400,
  NotFound = 404,
  InternalServerError = 500
}
```

### 2. String Enum (Direkomendasikan)
String enum lebih mudah di-debug karena nilainya langsung terbaca saat di-log atau disimpan ke database:

```ts
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
```

### Enum vs String Literal Union
Dalam ekosistem TypeScript modern, ada perbandingan umum antara `enum` dan `union literal`:

| Fitur | `enum` | `type Status = "a" \| "b"` |
| --- | --- | --- |
| Transpile Output | Menghasilkan kode JavaScript (object IIFE) | Hilang setelah transpile (0 runtime overhead) |
| Import | Harus import nama enum-nya | Cukup gunakan string literal langsung |
| Keterbacaan | Terkapsulasi rapi di namespace | Sangat ringkas dan idiomatis di React/Next.js |

Gunakan **String Enum** saat membutuhkan namespace konstanta yang terstruktur, atau gunakan **Union Literal** untuk tipe opsi yang ringan dan sering dioper langsung.', '[{"url":"https://www.typescriptlang.org/docs/handbook/2/enums.html","label":"TypeScript Handbook — Enums"}]'::jsonb, '[]'::jsonb, 'Buat `enum StatusTugas { Belum, Proses, Selesai }`, tulis fungsi yang menerima parameter bertipe `StatusTugas` dan mencetak pesan berbeda per status. Lalu tulis ULANG hal yang sama pakai union literal (`type StatusTugas = "belum" | "proses" | "selesai"`). Bandingkan: mana yang menurutmu lebih enak dibaca saat hover ke variabelnya di editor?', 7, 'published', '2026-09-18 09:02:40.232866+00', '2026-09-18 23:46:50.864953+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('60dad8ac-549b-43dc-a673-78afd8cfe886', 'ea6a08d0-0af9-435b-88f7-ff6e196be052', 'Konfigurasi Penting tsconfig.json', 'tsconfig-dasar', 'Sepanjang roadmap ini, TypeScript sudah menjaga banyak kesalahan lewat compiler. **Masalah yang diselesaikan sekarang:** seberapa ketat pengecekannya, versi JavaScript apa yang dihasilkan, dan bagaimana `import` di-resolve — semua diatur di satu file: `tsconfig.json`. Ini catatan penutup roadmap, tentang mengonfigurasi compiler-nya sendiri, bukan lagi soal sintaks tipe.

File `tsconfig.json` adalah file konfigurasi utama proyek TypeScript yang menentukan aturan kompilasi, target JavaScript, sistem modul, dan tingkat ketatnya pemeriksaan tipe (*type-checking*).

```mermaid
flowchart TD
    Config["tsconfig.json"]
    Config --> Comp["compilerOptions (Aturan Compiler)"]
    Config --> Inc["include / exclude (Target File)"]

    Comp --> C1["target: ''ES2022'' (Versi output JS)"]
    Comp --> C2["module: ''ESNext'' (Sistem import/export)"]
    Comp --> C3["strict: true (Keamanan tipe maksimal)"]
    Comp --> C4["noEmit: true (Hanya cek tipe, tanpa build file .js)"]
```

### Contoh Konfigurasi Standar untuk Web Modern / Next.js
```json
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
```

### Opsi Compiler Paling Penting untuk Pemula

| Opsi | Nilai Populer | Fungsi |
| --- | --- | --- |
| `strict` | `true` | Menyalakan semua aturan ketat TypeScript (termasuk `noImplicitAny`, `strictNullChecks`). Sangat direkomendasikan selalu `true`. |
| `target` | `ES2020` / `ES2022` | Menentukan versi JavaScript hasil output kompilasi. |
| `moduleResolution` | `node` / `bundler` | Menentukan bagaimana TypeScript mencari path module saat `import`. `bundler` standar untuk Vite/Next.js modern. |
| `paths` | `{"@/*": ["./*"]}` | Alias path import agar tidak perlu menulis `../../components`. |
| `noEmit` | `true` | Memberitahu TypeScript hanya melakukan *type checking* (biasanya bundler lain seperti Vite/Webpack/Next.js yang menghasilkan file JS-nya). |
| `skipLibCheck` | `true` | Melewati pemeriksaan tipe di file `.d.ts` pihak ketiga (`node_modules`) agar proses kompilasi jauh lebih cepat. |

Menjaga `strict: true` sejak awal proyek membantu mencegah bug seperti `null pointer exception` sebelum kode sampai ke produksi.', '[{"url":"https://www.typescriptlang.org/docs/handbook/tsconfig-json.html","label":"TypeScript Handbook — What is a tsconfig.json"},{"url":"https://www.typescriptlang.org/tsconfig","label":"TSConfig Reference Guide"}]'::jsonb, '[]'::jsonb, 'Buka `tsconfig.json` di sebuah project TypeScript/Next.js yang sudah kamu punya (dari roadmap Next.js kalau sudah dikerjakan). Cek apakah `strict` bernilai `true`. Kalau belum, set jadi `true`, lalu jalankan ulang type-check (`npx tsc --noEmit` atau `npm run build`) — lihat apakah muncul error baru yang sebelumnya lolos karena strict mode belum aktif. Ini menutup roadmap TypeScript: dari sintaks tipe sampai konfigurasi compiler-nya sendiri.', 8, 'published', '2026-09-18 09:02:40.632265+00', '2026-09-18 23:46:50.864953+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('e7e76a81-a52f-4d08-9a86-dfc74fb4fe1d', '9deddb76-862f-4fce-83e4-57a0202df83b', 'DOM & Event Listener Dasar: Membuat Halaman Web Interaktif', 'dom-dan-event-listener-dasar', 'Catatan sebelumnya membahas cara memproses dan mentransformasi data array di memori. **Masalah yang diselesaikan sekarang:** semua kode yang kamu pelajari sejauh ini hanya berjalan dan mencetak teks di terminal console. Bagaimana cara JavaScript mengubah teks, warna, atau struktur halaman web di browser, serta merespons saat pengunjung mengklik tombol?

Browser merepresentasikan dokumen HTML sebagai pohon objek yang disebut **DOM (Document Object Model)**. Lewat JavaScript, kita bisa memilih elemen HTML (*query*), membaca atau mengubah isinya, dan memasang pendengar aksi (*event listener*).

```mermaid
flowchart TD
  subgraph Browser["Halaman Web di Browser"]
    Btn["<button id=''tombol''>Klik Saya</button>"]
    P["<p id=''pesan''>Teks Awal</p>"]
  end
  subgraph JS["JavaScript DOM API"]
    Sel["const btn = document.querySelector(''#tombol'');<br/>const pesan = document.querySelector(''#pesan'');"]
    Ev["btn.addEventListener(''click'', () => {<br/>  pesan.textContent = ''Halo dari JavaScript!'';<br/>});"]
  end
  Btn -.->|Dipilih oleh| Sel
  P -.->|Dipilih oleh| Sel
  Sel --> Ev
  Ev -->|Memperbarui DOM saat diklik| P
```

Contoh kode dasar manipulasi DOM dan Event:

```html
<!-- index.html -->
<button id="btn-ubah">Ganti Salam</button>
<p id="teks-salam">Selamat pagi!</p>

<script>
  // 1. Memilih elemen dari dokumen HTML berdasarkan selector CSS
  const tombol = document.querySelector("#btn-ubah");
  const teksSalam = document.querySelector("#teks-salam");

  // 2. Memasang Event Listener: fungsi yang otomatis dipanggil saat aksi terjadi
  tombol.addEventListener("click", function () {
    // 3. Mengubah teks dan styling elemen secara dinamis
    teksSalam.textContent = "Halo, selamat datang di dunia web!";
    teksSalam.style.color = "#2563eb";
    teksSalam.style.fontWeight = "bold";
  });
</script>
```

Poin penting:

- `document.querySelector(''selector'')` memilih elemen pertama yang cocok dengan selector CSS (misal `#id`, `.class`, atau nama tag seperti `button`).
- `addEventListener(''event'', callback)` mendengarkan event tertentu seperti `''click''`, `''input''`, `''submit''`, atau `''keydown''` tanpa menimpa event listener lain.
- Gunakan `textContent` (bukan `innerHTML`) untuk mengubah teks biasa agar aman dari celah keamanan Cross-Site Scripting (XSS).
- Memahami manipulasi DOM langsung ini adalah fondasi penting sebelum beralih ke React, di mana manipulasi DOM diotomatisasi secara deklaratif.', '[{"url":"https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction","label":"MDN Web Docs — Introduction to the DOM"},{"url":"https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener","label":"MDN Web Docs — EventTarget.addEventListener()"}]'::jsonb, '[{"url":"https://developer.mozilla.org","label":"Browser web modern (Chrome/Firefox/Edge) dan editor teks"}]'::jsonb, 'Buat file `index.html` sederhana di komputermu dan buka di browser:
1. Buat tag `<input type="text" id="input-nama" placeholder="Ketik namamu..." />`.
2. Buat tag `<h2 id="salam">Halo, Pengunjung!</h2>`.
3. Di tag `<script>`, pilih input dan h2 tersebut dengan `document.querySelector`.
4. Pasang event listener `''input''` pada tag input: setiap kali user mengetik, ubah teks h2 menjadi `Halo, ${input.value || "Pengunjung"}!`.
5. Amati bagaimana tampilan halaman berubah secara live di browser tanpa reload setiap kali kamu menekan tuts keyboard.', 4, 'published', '2026-09-22 13:53:02.884132+00', '2026-09-22 14:30:18.752+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('5dacd9a7-113a-4bbb-ac1c-73077beec662', 'b403e972-3cb3-4605-a6b6-bb0f2774b0f6', 'Instalasi & Struktur Project Next.js Dasar', 'instalasi-dan-struktur-project', '**Masalah yang diselesaikan:** dulu, memulai project React dari nol berarti setup manual — bundler, transpiler, routing, semua dikonfigurasi sendiri sebelum baris kode aplikasi pertama ditulis. `create-next-app` menyelesaikan ini dengan scaffold project siap pakai dalam satu perintah, lengkap dengan konvensi struktur folder yang dipakai di seluruh roadmap ini — terutama folder `app/` yang jadi topik utama catatan-catatan berikutnya.

Membuat proyek Next.js baru paling mudah menggunakan CLI resmi `create-next-app` dengan konfigurasi standar TypeScript dan Tailwind CSS.

```mermaid
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
```

### 1. Inisialisasi Proyek Baru
Jalankan perintah berikut di terminal:

```bash
npx create-next-app@latest my-app --typescript --tailwind --eslint --app
cd my-app
npm run dev
```

### 2. File Khusus di Dalam Folder `app/`

| Nama File | Peran / Fungsi |
| --- | --- |
| `layout.tsx` | Kerangka layout UI bersama (navbar, footer, tag `<html>` dan `<body>`). |
| `page.tsx` | Konten halaman yang unik untuk route tersebut (menjadi rute publik). |
| `loading.tsx` | Tampilan loading skeleton otomatis menggunakan React Suspense. |
| `not-found.tsx` | Tampilan khusus halaman 404 ketika data atau URL tidak ditemukan. |
| `error.tsx` | Error boundary untuk menangkap crash runtime tanpa merusak seluruh web. |

Struktur berbasis folder di `app/` secara otomatis memetakan folder menjadi rute URL di browser — topik ini dibahas lengkap di catatan berikutnya.', '[{"url":"https://nextjs.org/docs/app/getting-started/installation","label":"Next.js Docs — Installation"},{"url":"https://nextjs.org/docs/app/getting-started/project-structure","label":"Next.js Docs — Project Structure"}]'::jsonb, '[{"url":"https://nodejs.org","label":"Node.js versi 18.17 atau lebih baru sudah terinstall (cek dengan `node --version` di terminal)"},{"label":"Familiar dengan perintah dasar terminal/command line (masuk folder, jalankan perintah)"}]'::jsonb, 'Jalankan `npx create-next-app@latest belajar-nextjs --typescript --tailwind --eslint --app` di terminal, lalu `cd belajar-nextjs && npm run dev`. Buka `http://localhost:3000`, lalu:

1. Buka `app/page.tsx`, ubah teksnya, simpan, lihat halaman otomatis reload (Fast Refresh).
2. Hapus file `app/page.tsx` sementara dan reload — perhatikan pesan error yang muncul, itu petunjuk kenapa `page.tsx` wajib ada di tiap folder route.
3. Kembalikan filenya. Project ini akan dipakai untuk semua latihan di catatan-catatan Next.js berikutnya.', 0, 'published', '2026-09-18 09:12:01.180176+00', '2026-09-22 14:30:20.18+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('406e1717-fd7c-4e5d-a4ed-5af477abe8fc', '5f927683-b6aa-425e-9b06-82fe47703e2f', 'Pola DTO & Konfigurasi CORS di ASP.NET Core', 'dto-dan-cors-dotnet', 'Catatan sebelumnya membahas cara mengakses database menggunakan Entity Framework Core. **Masalah yang diselesaikan sekarang:** saat API ASP.NET Core dipanggil oleh aplikasi frontend (seperti React, Vue, atau mobile app), browser memblokir request karena kebijakan keamanan **CORS**. Selain itu, mengembalikan class model EF Core langsung ke JSON rentan terhadap *over-posting attack* (user memasukkan field yang tidak seharusnya) dan dapat memicu crash *cyclic references*.

Penyelesaiannya adalah menerapkan pola **DTO (Data Transfer Object)** menggunakan C# `record` serta mengaktifkan middleware **CORS** bawaan ASP.NET Core.

```mermaid
flowchart LR
  subgraph Frontend["Frontend Browser (Port 3000)"]
    FE["Aplikasi Frontend"]
  end
  subgraph ASPNET["ASP.NET Core Backend (Port 5000)"]
    CorsMiddleware["app.UseCors(''FrontendPolicy'')"]
    Endpoint["app.MapGet(''/api/produk'', ...)"]
    DTO["ProdukDto (C# record)<br/>id, nama, harga"]
    DBModel["Model EF Core Produk<br/>(id, nama, harga, biayaRahasia, user_id)"]
  end
  FE -->|CORS Preflight / Request| CorsMiddleware
  CorsMiddleware --> Endpoint
  Endpoint --> DBModel
  DBModel -->|Select projection| DTO
  DTO -->|Kirim JSON Bersih| FE
```

Contoh implementasi DTO dan Middleware CORS di `Program.cs`:

```csharp
// 1. DTO Didefinisikan sebagai C# record yang ringkas dan immutable
public record ProdukDto(int Id, string Nama, decimal Harga);
public record BuatProdukDto(string Nama, decimal Harga);

// 2. Konfigurasi di Program.cs
var builder = WebApplication.CreateBuilder(args);

// Daftarkan service CORS
var corsPolicy = "IzinkanFrontend";
builder.Services.AddCors(options =>
{
    options.AddPolicy(name: corsPolicy, policy =>
    {
        policy.WithOrigins("http://localhost:3000")
              .AllowAnyHeader()
              .AllowAnyMethod();
    });
});

var app = builder.Build();

// Aktifkan middleware CORS (wajib ditaruh sebelum endpoint mapping)
app.UseCors(corsPolicy);

// Endpoint menggunakan DTO untuk input dan output
app.MapGet("/api/produk", async (AppDbContext db) =>
    await db.Produk
            .Select(p => new ProdukDto(p.Id, p.Nama, p.Harga))
            .ToListAsync());

app.MapPost("/api/produk", async (BuatProdukDto input, AppDbContext db) =>
{
    var produkBaru = new Produk { Nama = input.Nama, Harga = input.Harga };
    db.Produk.Add(produkBaru);
    await db.SaveChangesAsync();

    return Results.Created($"/api/produk/{produkBaru.Id}", new ProdukDto(produkBaru.Id, produkBaru.Nama, produkBaru.Harga));
});

app.Run();
```

Poin penting:

- Penggunaan `.Select(p => new ProdukDto(...))` pada query LINQ EF Core melakukan *projection* langsung di query SQL (`SELECT Id, Nama, Harga FROM Produk`), bukan mengambil semua kolom baru difilter di memori.
- `record` di C# secara bawaan memiliki *value equality* dan sintaks yang sangat ringkas, menjadikannya standar baku untuk DTO di .NET modern.
- Selalu pastikan pemanggilan `app.UseCors()` diletakkan pada posisi pipeline middleware yang tepat (sebelum definisi routing endpoint).', '[{"url":"https://learn.microsoft.com/en-us/aspnet/core/security/cors","label":"Microsoft Learn — Enable Cross-Origin Requests (CORS) in ASP.NET Core"},{"url":"https://learn.microsoft.com/en-us/aspnet/web-api/overview/data/using-web-api-with-entity-framework/part-5","label":"Microsoft Learn — Create Data Transfer Objects (DTOs)"}]'::jsonb, '[]'::jsonb, 'Di project ASP.NET Core Minimal API kamu:
1. Buat record `UserDto(int Id, string Username, string Email)`.
2. Di `Program.cs`, tambahkan service `builder.Services.AddCors(...)` untuk mengizinkan `http://localhost:3000`.
3. Pasang `app.UseCors(...)` sebelum endpoint.
4. Ubah endpoint `GET /api/users` agar mengembalikan `UserDto` menggunakan proyeksi LINQ `.Select()`.
5. Jalankan aplikasi (`dotnet run`) dan verifikasi melalui tab Network browser bahwa header respons `Access-Control-Allow-Origin: http://localhost:3000` berhasil disertakan.', 6, 'published', '2026-09-22 14:02:51.088271+00', '2026-09-22 14:30:28.524+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('634b3e76-a834-4d44-b13a-c1b91de1ab25', 'd68cb157-4b1f-4921-a71f-2d6c9b127e5f', 'Pengenalan Flutter & Instalasi', 'pengenalan-flutter-dan-instalasi', '**Masalah yang diselesaikan:** membangun aplikasi mobile yang jalan di Android DAN iOS secara tradisional berarti menulis DUA codebase terpisah dengan bahasa berbeda (Kotlin/Java untuk Android, Swift untuk iOS) — fitur yang sama harus diimplementasikan dua kali, dan bug yang diperbaiki di satu platform harus diperbaiki lagi manual di platform lainnya.

**Flutter** adalah UI toolkit open-source dari Google — satu codebase Dart dikompilasi langsung jadi kode NATIVE (bukan berjalan di dalam WebView) untuk Android, iOS, web, dan desktop sekaligus.

```mermaid
flowchart TD
  subgraph Tradisional["Native Terpisah"]
    K["Kotlin/Java"] --> APK1["Android App"]
    S["Swift"] --> IPA1["iOS App"]
  end
  subgraph Flutter["Dengan Flutter"]
    D["Satu Codebase Dart"] --> APK2["Android App"]
    D --> IPA2["iOS App"]
  end
```

### Instalasi
Cara paling mudah: install lewat editor (VS Code dengan ekstensi Flutter, atau Android Studio) yang otomatis mengurus SDK Flutter — atau instalasi manual lewat `flutter doctor`:

```bash
# Setelah Flutter SDK ter-extract/terinstall, cek kelengkapan environment
flutter doctor
# Menampilkan checklist: Flutter SDK, Android toolchain, Android Studio,
# emulator/device terhubung — tandai bagian mana yang masih perlu dilengkapi
```

### Membuat & Menjalankan App Pertama
```bash
flutter create nama_app
cd nama_app
flutter run
```

`flutter create` menghasilkan project starter berisi *counter app* sederhana (tombol `+` menambah angka) — bukti bahwa environment kamu sudah siap sebelum masuk ke konsep widget di catatan berikutnya.

Poin penting:

- `flutter doctor` WAJIB dijalankan sebelum mulai — ini yang paling sering menyelesaikan masalah "kenapa app tidak bisa di-build" di awal setup.
- Perlu minimal SATU target untuk menjalankan app: emulator Android (dibuat lewat Android Studio → Device Manager) atau device fisik dengan USB debugging aktif.
- *Hot reload* (tekan `r` di terminal saat `flutter run` jalan, atau tombol petir di editor) menerapkan perubahan kode ke app yang sedang jalan dalam hitungan detik, TANPA restart aplikasi dari awal — ini yang bikin iterasi UI di Flutter terasa sangat cepat.', '[{"url":"https://docs.flutter.dev/get-started/install","label":"Flutter Docs — Install"},{"url":"https://docs.flutter.dev/platform-integration/android/setup","label":"Flutter Docs — Android Setup"}]'::jsonb, '[{"url":"https://developer.android.com/studio","label":"Android Studio terinstall (untuk Android SDK & emulator)"},{"url":"https://code.visualstudio.com/","label":"Editor kode — VS Code dengan ekstensi Flutter direkomendasikan"}]'::jsonb, 'Install Flutter SDK sesuai OS kamu, jalankan `flutter doctor` dan selesaikan semua item yang masih bertanda silang/peringatan. Buat emulator Android lewat Android Studio (Device Manager → Create Device). Jalankan `flutter create app_pertama`, masuk ke foldernya, jalankan `flutter run` — pastikan counter app default muncul di emulator. Ubah teks `''You have pushed the button this many times:''` di `lib/main.dart` jadi kalimat lain, simpan file, dan buktikan hot reload menerapkan perubahan itu TANPA restart app.', 0, 'published', '2026-09-19 12:19:14.593871+00', '2026-09-22 14:30:31.693+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('92683cfb-e250-4858-86dd-91aa7995d6e5', '9deddb76-862f-4fce-83e4-57a0202df83b', 'Fetch API: Mengambil Data dari REST API', 'fetch-api-dasar', 'Catatan sebelumnya membahas sintaks `async` dan `await` untuk menangani Promise dengan gaya kode sinkron. **Masalah yang diselesaikan sekarang:** sebagian besar aplikasi modern tidak menyimpan seluruh datanya di dalam kode frontend — data produk, profil user, atau postingan blog disimpan di server database dan diambil lewat jaringan internet (*HTTP request*). Bagaimana cara JavaScript meminta dan menerima data dari server eksternal?

Browser menyediakan fungsi bawaan **`fetch()`** berbasis Promise untuk mengirim HTTP request (GET, POST, PUT, DELETE) ke server dan menerima responsnya (biasanya dalam format JSON).

```mermaid
sequenceDiagram
  autonumber
  participant B as Browser (JavaScript)
  participant S as Web Server / REST API
  B->>S: fetch(''https://api.example.com/produk'')
  Note over S: Server memproses & mengambil data
  S-->>B: HTTP Response (Status 200 OK + Header)
  B->>B: await response.json() untuk parse data
  Note over B: Data JSON siap dipakai di UI web
```

Contoh kode mengambil data produk publik:

```js
// Mengambil data dengan async/await dan penanganan error
async function muatDaftarPengguna() {
  try {
    // 1. Kirim request HTTP GET ke endpoint API
    const response = await fetch("https://jsonplaceholder.typicode.com/users");

    // 2. Selalu periksa apakah response berstatus sukses (HTTP 200-299)
    if (!response.ok) {
      throw new Error(`Gagal memuat data (HTTP ${response.status})`);
    }

    // 3. Ekstrak data JSON dari body response
    const data = await response.json();

    // 4. Olah data yang didapat
    console.log(`Ditemukan ${data.length} pengguna:`);
    data.slice(0, 3).forEach((user) => {
      console.log(`- ${user.name} (${user.email})`);
    });
  } catch (error) {
    console.error("Terjadi kesalahan jaringan:", error.message);
  }
}

muatDaftarPengguna();
```

Poin penting:

- `fetch()` mengembalikan Promise yang me-resolve ke objek `Response`. Promise ini **tidak** otomatis me-reject jika server mengembalikan status error seperti 404 atau 500 — selalu cek properti `response.ok` (boolean).
- Parsing body seperti `response.json()` atau `response.text()` juga bersifat asinkron dan harus di-`await`.
- Untuk mengirim data baru (*create*), tambahkan opsi object `{ method: ''POST'', headers: { ''Content-Type'': ''application/json'' }, body: JSON.stringify(data) }`.
- Ini adalah pola komunikasi klien-ke-server yang akan kamu temui berulang kali di React, Next.js, dan Supabase.', '[{"url":"https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch","label":"MDN Web Docs — Using the Fetch API"},{"url":"https://developer.mozilla.org/en-US/docs/Web/API/Response/ok","label":"MDN Web Docs — Response.ok"}]'::jsonb, '[]'::jsonb, 'Coba jalankan di Node.js (v18+) atau di Console DevTools browser:
1. Panggil `fetch("https://jsonplaceholder.typicode.com/posts/1")`.
2. Tunggu responsnya dan konversi dengan `.json()`.
3. Cetak judul postingan (`data.title`) dan isinya (`data.body`) ke console.
4. Coba sengaja ubah URL menjadi endpoint yang salah (`.../posts/999999`) dan amati bagaimana pengecekan `if (!response.ok)` mendeteksi status 404 Not Found secara anggun.', 9, 'published', '2026-09-22 13:53:03.724106+00', '2026-09-22 14:30:19.752+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('efbe7383-7963-47f3-b4fa-e29208d058d7', '5f927683-b6aa-425e-9b06-82fe47703e2f', 'Pengenalan Ekosistem .NET & CLI Dasar', 'pengenalan-dotnet-dan-cli', '**Masalah yang diselesaikan:** sebelum .NET Core (2016 ke atas), .NET Framework hanya berjalan di Windows — sulit dipakai untuk deployment modern yang mengandalkan server Linux dan container Docker, yang jadi standar industri sekarang.

.NET adalah platform pengembangan perangkat lunak open-source dan cross-platform dari Microsoft untuk membangun berbagai jenis aplikasi (web, mobile, desktop, cloud, hingga IoT).

```mermaid
flowchart TD
    subgraph Ecosystem [".NET Ecosystem"]
        Lang["Bahasa: C# / F# / VB.NET"]
        Comp["Roslyn Compiler"]
        IL["Intermediate Language (IL)"]
        CLR["Common Language Runtime (CLR / CoreCLR)"]
        OS["Sistem Operasi: Linux / Windows / macOS"]

        Lang --> Comp --> IL --> CLR --> OS
    end
```

### Perintah Dasar .NET CLI (`dotnet`)
Untuk mengelola proyek berbasis .NET, kita menggunakan command-line tool `dotnet`:

```bash
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
```

### Struktur File Proyek .NET
File `.csproj` (C# Project) berisi informasi SDK, target framework (.NET 8/9), dan dependensi:

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net8.0</TargetFramework>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
  </PropertyGroup>
</Project>
```

- **Runtime & SDK**: SDK digunakan untuk membangun dan menjalankan proyek, Runtime hanya untuk menjalankan aplikasi yang sudah di-compile.
- **Cross-Platform**: Kode yang ditulis di C# dapat berjalan di Linux, macOS, dan Windows tanpa perubahan.', '[{"url":"https://learn.microsoft.com/en-us/dotnet/core/introduction","label":"Microsoft Learn — What is .NET?"},{"url":"https://learn.microsoft.com/en-us/dotnet/core/tools/","label":"Microsoft Learn — .NET CLI Overview"}]'::jsonb, '[{"url":"https://dotnet.microsoft.com/download","label":".NET SDK versi 8 atau lebih baru sudah terinstall (cek dengan `dotnet --version`)"},{"label":"Familiar dengan perintah dasar terminal/command line"}]'::jsonb, 'Jalankan `dotnet --version` untuk cek SDK yang terpasang. Buat console app baru (`dotnet new console -n HaloDunia`), masuk ke foldernya, jalankan (`dotnet run`) — harus muncul "Hello, World!". Lalu:

1. Edit `Program.cs` supaya mencetak nama kamu sendiri, jalankan ulang.
2. Jalankan `dotnet add package Newtonsoft.Json`, buka file `.csproj` — perhatikan baris `<PackageReference>` baru yang otomatis ditambahkan.', 0, 'published', '2026-09-18 09:10:06.40053+00', '2026-09-22 14:30:27.072+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('6a0f63e4-abff-4062-8fd4-0ec910e37b84', '5f927683-b6aa-425e-9b06-82fe47703e2f', 'Struktur Program C# & Tipe Data Dasar', 'csharp-dasar-dan-tipe-data', 'Project .NET kamu dari catatan sebelumnya sudah bisa jalan. **Masalah yang diselesaikan sekarang:** bagaimana menulis kode C# yang sebenarnya? Dulu, C# selalu butuh boilerplate `class Program` dan method `Main` sebelum baris kode aplikasi pertama ditulis — sejak C# 9/10, *Top-Level Statements* menghilangkan boilerplate itu.

C# adalah bahasa pemrograman berorientasi objek yang bertipe statis (*statically typed*) dan *type-safe*. Sejak C# 9/10, kita bisa menggunakan *Top-Level Statements* untuk menulis kode yang sangat ringkas tanpa boilerplate class `Program`.

```mermaid
flowchart TD
    subgraph DataStructures ["Tipe Data di C#"]
        V["Value Types (Disimpan di Stack)<br/>int, double, bool, char, struct"]
        R["Reference Types (Disimpan di Heap)<br/>string, object, class, record, array"]
    end
```

### 1. Contoh Program C# Sederhana (Top-Level Statements)
```csharp
// Program.cs
string nama = "Budi";
int umur = 25;
double tinggiBadan = 172.5;
bool isActive = true;

Console.WriteLine($"Halo, nama saya {nama}, umur {umur} tahun.");
```

### 2. Tipe Data Primitif Populer

| Tipe Data | Ukuran | Contoh Nilai | Keterangan |
| --- | --- | --- | --- |
| `int` | 32-bit | `42` | Bilangan bulat standar |
| `long` | 64-bit | `3000000000L` | Bilangan bulat besar |
| `double` | 64-bit | `3.14159` | Bilangan desimal presisi ganda |
| `decimal` | 128-bit | `199.99m` | Sangat akurat untuk perhitungan uang / finansial |
| `bool` | 8-bit | `true` / `false` | Nilai kebenaran boolean |
| `string` | Variabel | `"Belajar .NET"` | Teks / karakter berurutan |

### 3. Nullable Reference Types (`?`)
Secara default pada .NET modern, compiler memperingatkan potensi nilai null (*null safety*):

```csharp
string? namaOpsional = null; // Boleh null karena ada tanda ''?''
string namaWajib = "Ibnu";    // Tidak boleh null

if (namaOpsional is not null)
{
    Console.WriteLine(namaOpsional.ToUpper());
}
```', '[{"url":"https://learn.microsoft.com/en-us/dotnet/csharp/tour-of-csharp/types","label":"Microsoft Learn — C# Types & Variables"}]'::jsonb, '[]'::jsonb, 'Buat variabel bertipe `int`, `double`, `bool`, `string` seperti contoh di atas, cetak semuanya dalam satu baris pakai string interpolation (`$"..."`). Lalu coba deklarasikan `string? namaOpsional = null;` dan `string namaWajib = null;` — perhatikan warning/error yang muncul dari compiler soal nullable reference types pada baris kedua.', 1, 'published', '2026-09-18 09:10:07.031007+00', '2026-09-18 14:15:10.545682+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('24cf8200-890e-4c4e-9ff0-7c6b413bc514', '5f927683-b6aa-425e-9b06-82fe47703e2f', 'Class, Record, dan Objek di C#', 'csharp-class-dan-record', 'Catatan sebelumnya membahas tipe data untuk nilai tunggal. **Masalah yang diselesaikan sekarang:** bagaimana merepresentasikan data yang punya banyak properti terkait sekaligus (misalnya data mahasiswa: id, nama, jurusan) dan punya perilaku (method) yang menyertainya?

C# mendukung Pemrograman Berorientasi Objek (OOP) dengan `class`, serta tipe data *immutable* modern yang ringkas menggunakan `record`.

```mermaid
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
```

### 1. Membuat Class Biasa
```csharp
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
```

### 2. Menggunakan `record` (Immutable Data Transfer Object)
`record` sangat berguna untuk DTO (Data Transfer Object) karena otomatis memiliki *value-based equality* dan bersifat *immutable*:

```csharp
// Definisi ringkas satu baris (Positional Record)
public record Produk(string Nama, decimal Harga);

var p1 = new Produk("Laptop", 12000000m);
var p2 = new Produk("Laptop", 12000000m);

// Value Equality: membandingkan isi nilai, bukan alamat memori
Console.WriteLine(p1 == p2); // Output: True

// Non-destructive Mutation dengan keyword ''with''
var p3 = p1 with { Harga = 11500000m };
Console.WriteLine($"Harga diskon: {p3.Harga}");
```

- Gunakan **`class`** saat object memiliki *state* yang sering berubah (mutable) dan memiliki logika bisnis yang kompleks.
- Gunakan **`record`** untuk model data murni / DTO / response API yang tidak berubah.', '[{"url":"https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/types/classes","label":"Microsoft Learn — Classes and Records in C#"}]'::jsonb, '[]'::jsonb, 'Buat `class Produk` dengan properti `Nama` & `Harga` plus method `TampilkanInfo()`. Lalu buat versi `record` untuk data yang sama. Buat dua instance `record` dengan nilai identik, bandingkan dengan `==` (harus `True` karena value equality) — lalu coba hal yang sama dengan dua instance `class` biasa yang nilainya identik (harus `False`, karena class memakai reference equality secara default).', 2, 'published', '2026-09-18 09:10:07.854175+00', '2026-09-18 14:15:10.545682+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('b2db3207-3f34-46e9-873f-e4e0043d8e86', '5f927683-b6aa-425e-9b06-82fe47703e2f', 'Dependency Injection (DI) Dasar di .NET', 'dotnet-dependency-injection', 'Sekarang kamu bisa bikin class dan object di C#. **Masalah yang diselesaikan sekarang:** kalau satu class butuh instance dari class lain (misalnya `NotifikasiManager` butuh `EmailService` untuk mengirim email), cara paling naif adalah `new EmailService()` langsung di dalam `NotifikasiManager`. Ini membuat kedua class jadi kaku (*tightly coupled*) — susah dites (tidak bisa diganti versi palsu/mock saat testing) dan susah diganti implementasinya (misal ganti dari email ke SMS).

Dependency Injection (DI) adalah pola desain (*design pattern*) bawaan di .NET untuk mencapai *Inversion of Control* (IoC), di mana ketergantungan antar kelas diatur oleh framework (*Service Container*) alih-alih di-instansiasi manual (`new`).

```mermaid
flowchart TD
    subgraph Container ["IoC Service Container"]
        Reg["Daftarkan: builder.Services.AddScoped&lt;IPembayaran, TransferBank&gt;()"]
    end

    Req["Request Masuk / Controller"] --> Inject["Injeksi otomatis lewat Constructor"]
    Container -.->|Menyediakan instance| Inject
    Inject --> App["PesananService(IPembayaran pembayaran)"]
```

### 3 Macam Service Lifetime di .NET

| Lifetime | Method Registrasi | Karakteristik Siklus Hidup |
| --- | --- | --- |
| **Transient** | `AddTransient<T>()` | Instance baru dibuat **setiap kali** diminta (cocok untuk service ringan tanpa state). |
| **Scoped** | `AddScoped<T>()` | Satu instance dibuat **per HTTP Request** (standar untuk database context seperti Entity Framework). |
| **Singleton** | `AddSingleton<T>()` | Hanya ada **satu instance** selama aplikasi berjalan (cocok untuk caching global / configuration). |

### Contoh Penggunaan Constructor Injection
```csharp
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
```

### Registrasi di `Program.cs`:
```csharp
var builder = WebApplication.CreateBuilder(args);

// Mendaftarkan service ke IoC container
builder.Services.AddScoped<IEmailService, EmailService>();
builder.Services.AddScoped<NotifikasiManager>();

var app = builder.Build();
```', '[{"url":"https://learn.microsoft.com/en-us/dotnet/core/extensions/dependency-injection","label":"Microsoft Learn — Dependency Injection in .NET"}]'::jsonb, '[]'::jsonb, 'Ikuti contoh `IEmailService`/`EmailService`/`NotifikasiManager` di atas dalam satu console app (tambahkan package `Microsoft.Extensions.DependencyInjection` kalau bukan project web). Daftarkan service-nya, lalu ambil `NotifikasiManager` dari container dan panggil `BeritahuUser`. Setelah jalan, buat implementasi KEDUA dari `IEmailService` (misal `ConsoleLogEmailService` yang cuma print ke console), ganti registrasinya ke implementasi baru itu — perhatikan kode `NotifikasiManager` tidak perlu diubah sama sekali.', 3, 'published', '2026-09-18 09:10:08.401481+00', '2026-09-18 14:15:10.545682+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('9df8efbe-fb1d-491b-a3ca-621be4df2d94', '5f927683-b6aa-425e-9b06-82fe47703e2f', 'Membangun REST API dengan ASP.NET Core Minimal API', 'aspnet-core-minimal-api', 'Sekarang kamu paham Dependency Injection, yang jadi tulang punggung ASP.NET Core. **Masalah yang diselesaikan sekarang:** bagaimana mengekspos logic yang sudah kamu bangun jadi HTTP endpoint yang bisa diakses aplikasi lain (mobile app, frontend web)? Sebelum Minimal API, ASP.NET Core butuh struktur controller yang cukup verbose untuk API sederhana.

Minimal API adalah pendekatan modern dan efisien di ASP.NET Core untuk membangun endpoint HTTP / REST API dengan kode yang sangat ringkas tanpa membutuhkan controller yang kompleks.

```mermaid
flowchart LR
    Client["Client / Frontend"] -->|GET /api/todos| Route["app.MapGet()"]
    Client -->|POST /api/todos| PostRoute["app.MapPost()"]

    Route --> JSON["Return JSON Response"]
    PostRoute --> Status["Return Results.Created()"]
```

### Contoh Lengkap CRUD Minimal API di `Program.cs`
```csharp
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
```

### Keunggulan Minimal API
- **Performa Tinggi**: Mengurangi *overhead* refleksi controller tradisional.
- **Sintaks Ringkas**: Struktur file tunggal memudahkan pembuatan microservice atau service kecil.
- **Dukungan OpenAPI / Swagger**: Cukup tambahkan `app.UseSwagger()` untuk dokumentasi interaktif otomatis.', '[{"url":"https://learn.microsoft.com/en-us/aspnet/core/fundamentals/minimal-apis","label":"Microsoft Learn — Minimal APIs Overview"}]'::jsonb, '[]'::jsonb, 'Buat project baru dengan `dotnet new web -n TodoApi`. Salin contoh CRUD Minimal API di atas ke `Program.cs`. Jalankan (`dotnet run`), lalu tes tiap endpoint (GET semua, GET by id, POST tambah baru, DELETE) lewat browser (untuk GET) atau tool seperti curl/Postman (untuk POST/DELETE). Simpan project ini — catatan berikutnya akan menyambungkannya ke database beneran lewat Entity Framework Core.', 4, 'published', '2026-09-18 09:10:09.064478+00', '2026-09-19 00:43:19.702546+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('64bbc713-65a6-4437-88a6-c932db08af4d', '5f927683-b6aa-425e-9b06-82fe47703e2f', 'Entity Framework Core Dasar: Akses Database', 'efcore-dasar', 'Minimal API dari catatan sebelumnya sudah bisa menerima request dan balas response, tapi datanya cuma `List<TodoItem>` di memori — hilang total tiap aplikasi di-restart. **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** bagaimana menyimpan data ke database beneran yang bertahan lintas restart, tanpa menulis SQL mentah satu per satu untuk tiap operasi CRUD?

**Entity Framework Core (EF Core)** adalah ORM (*Object-Relational Mapper*) resmi dari Microsoft — class C# biasa dipetakan otomatis jadi tabel database, query ditulis pakai LINQ (C#) bukan string SQL.

```mermaid
flowchart TD
    Model["Class C# (Entity)<br/>public class Todo { ... }"] --> Ctx["DbContext<br/>DbSet&lt;Todo&gt; Todos"]
    Ctx -->|"dotnet ef migrations add"| Migration["File Migration (C#)"]
    Migration -->|"dotnet ef database update"| DB[("Database (SQLite/Postgres/dst)")]
    Ctx -->|"LINQ: ToListAsync(), Add(), SaveChangesAsync()"| DB
```

### 1. Definisikan Entity & DbContext
EF Core butuh dua hal: class yang merepresentasikan tabel (*entity*), dan `DbContext` yang jadi jembatan ke database. Karena EF Core perlu melacak perubahan nilai propertinya, di sini kita pakai `class` biasa (bukan `record` seperti `TodoItem` di catatan sebelumnya):

```csharp
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
```

### 2. Registrasi & Migration
```bash
# Install package (SQLite dipilih karena tidak butuh server database terpisah)
dotnet add package Microsoft.EntityFrameworkCore.Sqlite
dotnet tool install --global dotnet-ef

# Buat migration pertama dari model di atas
dotnet ef migrations add InitialCreate

# Terapkan migration ke database (bikin file todos.db)
dotnet ef database update
```

```csharp
var builder = WebApplication.CreateBuilder(args);

// Daftarkan DbContext ke DI container (Scoped secara default — 1 instance per request)
builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlite("Data Source=todos.db"));

var app = builder.Build();
```

### 3. CRUD Lewat EF Core (Ganti List In-Memory)
Endpoint dari catatan sebelumnya sekarang menerima `AppDbContext` lewat DI, bukan lagi baca/tulis ke `List` statis:

```csharp
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
```

| Operasi | Method EF Core | Catatan |
| --- | --- | --- |
| Baca semua | `ToListAsync()` | Query dieksekusi ke database saat method ini dipanggil, bukan saat `db.Todos` ditulis (*deferred execution*). |
| Baca satu by key | `FindAsync(id)` | Cek dulu di memori (*change tracker*) sebelum query ke database. |
| Tambah | `Add()` + `SaveChangesAsync()` | `Add()` cuma menandai di memori — perubahan baru benar-benar ditulis ke database saat `SaveChangesAsync()` dipanggil. |
| Hapus | `Remove()` + `SaveChangesAsync()` | Sama seperti `Add()` — perlu `SaveChangesAsync()` untuk commit. |

Poin penting:

- `SaveChangesAsync()` membungkus semua perubahan (`Add`/`Remove`/edit properti) dalam satu transaksi — kalau ada yang gagal, semuanya di-rollback.
- Migration adalah riwayat perubahan skema (file C# yang di-generate otomatis) — tiap kali entity berubah (nambah properti baru, dst), jalankan `dotnet ef migrations add <NamaPerubahan>` lagi lalu `dotnet ef database update`.
- SQLite dipakai di sini karena paling sederhana untuk belajar (satu file `.db`, tanpa install server) — provider lain (`Npgsql.EntityFrameworkCore.PostgreSQL` untuk Postgres, dst) dipakai dengan pola yang sama persis, cuma beda `UseSqlite` jadi `UseNpgsql`.', '[{"url":"https://learn.microsoft.com/en-us/ef/core/","label":"Microsoft Learn — Entity Framework Core"},{"url":"https://learn.microsoft.com/en-us/ef/core/get-started/overview/first-app?tabs=netcore-cli","label":"Microsoft Learn — EF Core Get Started"}]'::jsonb, '[]'::jsonb, 'Lanjutkan project `TodoApi` dari catatan sebelumnya. Ganti `List<TodoItem>` in-memory dengan `AppDbContext` + SQLite seperti contoh di atas (termasuk jalankan migration-nya). Jalankan API, tambah beberapa todo lewat POST, lalu STOP aplikasinya (Ctrl+C) dan jalankan ulang (`dotnet run`) — panggil GET /api/todos lagi dan buktikan data yang kamu tambahkan sebelumnya masih ada (tidak hilang seperti versi in-memory yang direset tiap restart). Ini menutup roadmap .NET: dari CLI dasar sampai REST API yang datanya beneran tersimpan permanen.', 5, 'published', '2026-09-19 00:43:19.702546+00', '2026-09-19 00:43:19.702546+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('51f1d96f-9451-41b9-a550-5eff238ea4af', 'ea6a08d0-0af9-435b-88f7-ff6e196be052', 'Type Assertion Dasar', 'type-assertion-dasar', 'Type narrowing di catatan sebelumnya membiarkan TypeScript menyimpulkan tipe lewat pengecekan runtime (`typeof`, `instanceof`, dst). **Masalah yang diselesaikan sekarang:** kadang KAMU tahu tipe sebenarnya dari sebuah nilai lebih pasti daripada yang bisa disimpulkan compiler — misalnya hasil `document.getElementById()` yang TypeScript anggap `HTMLElement | null`, padahal kamu yakin elemen itu selalu ada dan bertipe `HTMLInputElement` spesifik.

**Type assertion** membiarkan kamu memberi tahu compiler tentang tipe suatu nilai secara manual — TANPA pengecekan runtime seperti narrowing. Ini paradigma yang sepenuhnya berbeda: narrowing itu compiler *memverifikasi*, assertion itu kamu yang *berjanji* (dan compiler percaya begitu saja).

```mermaid
flowchart LR
  subgraph Narrowing["Type Narrowing (aman)"]
    N1["if (typeof x === ''string'')"] --> N2["Compiler VERIFIKASI saat runtime"]
  end
  subgraph Assertion["Type Assertion (janji developer)"]
    A1["x as string"] --> A2["Compiler PERCAYA tanpa verifikasi"]
    A2 -.->|"Kalau salah"| A3["Runtime Error!"]
  end
```

```ts
// Syntax "as" (direkomendasikan, wajib di file .tsx karena <> bentrok dengan JSX)
const input = document.getElementById("username") as HTMLInputElement;
input.value = "Budi"; // valid — TypeScript percaya ini HTMLInputElement

// Non-null assertion (!) — bilang "aku yakin ini bukan null/undefined"
const app = document.getElementById("app")!;
app.innerHTML = "Halo"; // tanpa "!", TypeScript akan komplain "app mungkin null"

// Assertion yang SALAH tetap lolos compile — bahaya baru terasa saat runtime
const angka = "123" as unknown as number;
console.log(angka.toFixed(2)); // compile OK, tapi runtime ERROR (angka aslinya string)
```

Poin penting:

- Assertion cuma memengaruhi apa yang compiler *percaya*, bukan mengubah nilai aslinya saat runtime — kalau assertion-nya salah, error baru muncul belakangan saat kode itu benar-benar dijalankan.
- Pakai assertion secukupnya, di tempat yang benar-benar kamu yakin (DOM, hasil `JSON.parse()`, atau data dari API yang sudah divalidasi) — bukan sebagai jalan pintas untuk mengabaikan error tipe yang sebenarnya valid.
- `as unknown as T` (double assertion) dipakai kalau dua tipe dianggap TypeScript "tidak cukup mirip" untuk di-assert langsung — tanda bahwa perlu dipikir ulang, bukan dipakai sembarangan.', '[{"url":"https://www.typescriptlang.org/docs/handbook/2/everyday-types.html#type-assertions","label":"TypeScript Handbook — Type Assertions"}]'::jsonb, '[]'::jsonb, 'Di kode yang berinteraksi dengan DOM (`document.getElementById(...)`), gunakan `as HTMLInputElement` untuk memberi tahu compiler elemen itu pasti input, lalu akses `.value`-nya. Setelah itu, SENGAJA buat assertion yang salah — misalnya `const x = "halo" as unknown as number` — lalu panggil `x.toFixed(2)`. Perhatikan: TypeScript TIDAK menangkap errornya saat compile (tidak seperti kalau kamu pakai narrowing), tapi kalau kode itu dijalankan sungguhan akan error runtime. Ini membuktikan bedanya "compiler percaya" (assertion) vs "compiler memverifikasi" (narrowing).', 4, 'published', '2026-09-18 23:46:50.864953+00', '2026-09-18 23:46:50.864953+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('74c8b4b2-9b99-4bd6-a4cd-aa30d30961dc', 'b403e972-3cb3-4605-a6b6-bb0f2774b0f6', 'Data Fetching di Server Component', 'data-fetching-server-component', '**Masalah yang diselesaikan:** sekarang kamu tahu bedanya Server Component dan Client Component dari catatan sebelumnya — tapi bagaimana caranya Server Component itu benar-benar *mengambil* data (dari database atau API) sebelum dikirim jadi HTML? Cara lama di React murni: pakai `useEffect` + `useState`, yang berarti komponen dirender dulu dalam keadaan kosong/loading, baru data menyusul dan komponen dirender ulang — dan semua ini terjadi di browser (Client Component), bukan di server.

Di Next.js App Router, Server Component dapat langsung mengambil data secara *asynchronous* (`async/await`) langsung di badan fungsi komponen tanpa perlu `useEffect` atau `useState`.

```mermaid
flowchart TD
    Req["Request Halaman Masuk"] --> SC["Server Component: async function Page()"]
    SC --> DB["Query Database / fetch() API Langsung"]
    DB --> Render["Render HTML di Server"]
    Render --> Client["Kirim HTML Ringan ke Browser"]
```

### 1. Mengambil Data Langsung dengan `fetch()`
```tsx
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
```

### 2. Opsi Caching pada `fetch()`

| Konfigurasi | Perilaku Caching |
| --- | --- |
| `cache: ''force-cache''` | Data di-cache secara statis (default di versi Next.js sebelumnya). |
| `cache: ''no-store''` | Dynamic data: selalu fetch data segar setiap request masuk. |
| `next: { revalidate: 3600 }` | ISR: cache data selama 1 jam, lalu perbarui di background. |

### Keuntungan Data Fetching di Server
- **Keamanan:** Kredensial API key dan query database tetap berada di server, tidak bocor ke browser.
- **Performa:** Mengurangi ukuran JavaScript bundle yang dikirimkan ke user.', '[{"url":"https://nextjs.org/docs/app/building-your-application/data-fetching/fetching","label":"Next.js Docs — Data Fetching and Caching"}]'::jsonb, '[]'::jsonb, 'Di halaman `app/produk/page.tsx` (buat baru kalau belum ada), praktikkan pola di atas dengan fetch data dari API publik gratis, misalnya `https://fakestoreapi.com/products`. Lalu:

1. Buka DevTools tab Network dan cari request ke `fakestoreapi.com` — perhatikan request itu TIDAK muncul di sana. Itu karena fetch-nya terjadi di server, bukan di browser.
2. Ubah komponennya jadi Client Component (`"use client"` + `useEffect`/`fetch`), lalu ulangi langkah 1 — sekarang request-nya baru muncul di Network tab browser. Bandingkan bedanya.', 5, 'published', '2026-09-18 09:12:02.691558+00', '2026-09-18 10:09:56.018828+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('58917e0f-5f5b-414a-828f-48ee18a15c3f', '4e1efab5-9672-4b24-bdd9-5951a9a18a9d', 'Inventory & Ad-Hoc Command', 'inventory-dan-ad-hoc-command', 'Ansible sekarang sudah terinstall dan bisa connect ke `localhost` (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** kalau server yang dikelola ada belasan atau ratusan, menulis alamat IP/hostname-nya satu-satu di command itu tidak praktis — dan gimana caranya mengelompokkan server berdasarkan perannya (web server vs database server) supaya bisa ditarget terpisah?

**Inventory** adalah daftar server yang dikelola Ansible, dikelompokkan jadi *groups*. Bentuk paling sederhana adalah file teks format INI:

```ini
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
```

```mermaid
flowchart TD
  Inv["inventory.ini"] --> WS["Group: webservers<br/>(web1, web2)"]
  Inv --> DB["Group: dbservers<br/>(db1)"]
  WS --> Cmd["ansible webservers -m ..."]
  DB --> Cmd2["ansible dbservers -m ..."]
```

### Ad-Hoc Command
Command satu-baris untuk menjalankan satu task cepat ke sekelompok server, tanpa perlu menulis playbook dulu — cocok untuk pengecekan cepat, bukan otomasi berulang (untuk itu, lihat catatan berikutnya soal playbook):

```bash
# Ping semua server di grup webservers
ansible webservers -i inventory.ini -m ping

# Install nginx di semua webservers (--become = jalankan sebagai sudo)
ansible webservers -i inventory.ini -m apt -a "name=nginx state=present" --become

# Jalankan command shell mentah di semua server
ansible semua_server -i inventory.ini -m shell -a "df -h"

# Lihat daftar modul yang tersedia
ansible-doc -l
```

| Modul | Fungsi |
| --- | --- |
| `ping` | Tes koneksi & Python di target |
| `command` / `shell` | Jalankan command mentah (`shell` mendukung pipe `|`/redirect, `command` tidak — lebih aman) |
| `apt` / `yum` | Install/hapus package (tergantung distro Linux) |
| `copy` | Salin file dari control node ke managed node |
| `service` | Start/stop/restart service |

Poin penting:

- `-i inventory.ini` menunjuk file inventory yang dipakai — bisa juga di-skip kalau sudah dikonfigurasi sebagai default di `ansible.cfg`.
- Ad-hoc command bagus untuk tugas sekali-jalan/pengecekan cepat, tapi tidak tersimpan sebagai kode yang bisa di-review atau dijalankan ulang secara konsisten — untuk itu perlu playbook.
- `--become` diperlukan kalau task butuh privilege root (setara `sudo`) di managed node.', '[{"url":"https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html","label":"Ansible Docs — How to Build Your Inventory"}]'::jsonb, '[]'::jsonb, 'Buat file `inventory.ini` dengan satu grup berisi `localhost ansible_connection=local` (supaya tidak perlu SSH ke server lain dulu). Jalankan `ansible <nama_grup> -i inventory.ini -m ping` — harus berhasil. Coba modul lain: `ansible <nama_grup> -i inventory.ini -m shell -a "uname -a"` untuk lihat info sistem. Kalau kamu punya server lain, tambahkan sebagai grup kedua dan coba target masing-masing grup secara terpisah.', 1, 'published', '2026-09-19 10:15:28.833636+00', '2026-09-19 10:15:28.833636+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('60ef703d-df1c-40a7-99df-b64e8f32bd33', '4e1efab5-9672-4b24-bdd9-5951a9a18a9d', 'Playbook Dasar', 'playbook-dasar', 'Ad-hoc command dari catatan sebelumnya bagus untuk tugas sekali-jalan, tapi tidak tersimpan sebagai kode. **Masalah yang diselesaikan sekarang:** bagaimana menyimpan serangkaian langkah konfigurasi (install package, copy config, restart service) supaya bisa di-*review*, disimpan di Git, dan dijalankan ulang secara konsisten kapan saja — persis seperti *Infrastructure as Code*?

**Playbook** adalah file YAML berisi daftar *task* yang dijalankan berurutan ke host/grup target.

```mermaid
flowchart TD
  PB["Playbook (site.yml)"] --> H["hosts: webservers"]
  H --> T1["Task 1: Install nginx"]
  T1 --> T2["Task 2: Copy file konfigurasi"]
  T2 --> T3["Task 3: Pastikan service running"]
```

```yaml
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
```

```bash
# Menjalankan playbook
ansible-playbook -i inventory.ini site.yml
```

### Idempotency: Jalankan Dua Kali
Ini yang membedakan playbook dari sekadar script shell — jalankan `ansible-playbook` yang sama dua kali:

- **Run pertama**: task menunjukkan status `changed` (nginx baru diinstall, service baru distart).
- **Run kedua**: task menunjukkan status `ok` (bukan `changed`) — karena nginx sudah ter-install dan sudah running, Ansible tidak melakukan apa-apa lagi. Tidak ada efek samping dari menjalankannya berulang.

Poin penting:

- `hosts:` menentukan grup/host mana dari inventory yang jadi target playbook ini.
- `become: true` setara `--become` di ad-hoc command — jalankan task sebagai root/sudo.
- Setiap task idealnya punya `name:` deskriptif — ini yang muncul di output saat playbook dijalankan, memudahkan membaca log.
- `state: present`/`started` mendeklarasikan *state* yang diinginkan, bukan perintah imperatif — inilah yang membuat Ansible idempotent.', '[{"url":"https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_intro.html","label":"Ansible Docs — Playbooks Intro"}]'::jsonb, '[]'::jsonb, 'Tulis `site.yml` seperti contoh di atas (ganti `nginx` dengan package lain kalau perlu, mis. `apache2`). Jalankan `ansible-playbook -i inventory.ini site.yml` — perhatikan tiap task berstatus `changed` di run pertama. Jalankan PERSIS command yang sama sekali lagi tanpa mengubah apa pun — buktikan semua task sekarang berstatus `ok`, bukan `changed`. Ini membuktikan sifat idempotent Ansible: menjalankan konfigurasi yang sama berkali-kali aman, tidak menduplikasi efek.', 2, 'published', '2026-09-19 10:15:28.833636+00', '2026-09-19 10:15:28.833636+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('7409fa85-8c27-46e9-960c-95e38c5c943d', '4e1efab5-9672-4b24-bdd9-5951a9a18a9d', 'Variables & Jinja2 Templating', 'variables-dan-jinja2-templating', 'Playbook dari catatan sebelumnya sudah menginstall & menjalankan nginx, tapi semua nilainya hardcoded langsung di YAML. **Masalah yang diselesaikan sekarang:** bagaimana kalau port atau nama domain yang dipakai beda antara environment *staging* dan *production*? Menulis playbook terpisah untuk tiap environment itu duplikatif dan gampang tidak sinkron kalau salah satu diubah tapi yang lain lupa.

**Variables** menyimpan nilai yang bisa berbeda per host/environment, dirujuk lewat sintaks **Jinja2** (`{{ nama_variabel }}`) di playbook maupun di file template.

```mermaid
flowchart LR
  Var["Variable<br/>server_port: 8080"] --> Tmpl["Template .j2<br/>listen {{ server_port }};"]
  Tmpl -->|"module: template"| File["File hasil di managed node<br/>listen 8080;"]
```

### Mendefinisikan Variables
```yaml
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
```

### Template Jinja2
```text
# templates/nginx.conf.j2
server {
    listen {{ server_port }};
    server_name {{ server_name }};

    location / {
        root /var/www/html;
    }
}
```

Modul `template` memproses file `.j2`, mengganti `{{ server_port }}` dan `{{ server_name }}` dengan nilai variabel-nya, lalu menyalin HASIL-nya (bukan file `.j2` mentah) ke managed node.

Poin penting:

- Variable bisa didefinisikan di banyak tempat (`vars:` di playbook, file terpisah di `group_vars/`/`host_vars/`, atau lewat `-e` saat menjalankan `ansible-playbook`) — nilai dari sumber yang lebih spesifik (host) menang atas yang lebih umum (group).
- Modul `template` berbeda dari `copy`: `template` memproses Jinja2 dulu sebelum menyalin, `copy` menyalin file apa adanya tanpa substitusi variabel.
- Handler (`notify`/`handlers:`) cuma jalan kalau task yang memanggilnya berstatus `changed` — di sini, nginx cuma di-restart kalau config filenya BENAR-BENAR berubah, bukan di setiap run.', '[{"url":"https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_templating.html","label":"Ansible Docs — Templating (Jinja2)"}]'::jsonb, '[]'::jsonb, 'Ubah `site.yml` dari catatan sebelumnya supaya memakai `vars` dan `template` seperti contoh di atas. Buat file `templates/nginx.conf.j2` dengan variabel `{{ server_port }}`. Jalankan playbook-nya, lalu cek isi file hasil di managed node (`/etc/nginx/sites-available/default`) — pastikan `{{ server_port }}` sudah tergantikan jadi angka aslinya, bukan teks mentah. Ubah nilai `server_port` di `vars`, jalankan ulang playbook-nya, dan buktikan HANYA task `template` yang `changed` sekaligus men-trigger handler restart nginx — task lain tetap `ok`.', 3, 'published', '2026-09-19 10:15:28.833636+00', '2026-09-19 10:15:28.833636+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('981a2989-16f7-4928-bbbf-64ac1348e317', '4e1efab5-9672-4b24-bdd9-5951a9a18a9d', 'Roles Dasar', 'roles-dasar', 'Playbook dari catatan-catatan sebelumnya masih satu file — untuk satu service sederhana itu masih rapi. **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** begitu kamu mengelola banyak service (nginx, database, aplikasi sendiri) dalam satu proyek infrastruktur, satu file playbook raksasa berisi semua task/vars/template jadi susah dibaca dan tidak bisa dipakai ulang di proyek lain.

**Role** adalah cara Ansible mengorganisir playbook jadi unit yang modular dan reusable, lewat struktur folder standar yang otomatis dikenali Ansible.

```mermaid
flowchart TD
  Role["roles/nginx/"] --> Tasks["tasks/main.yml<br/>(daftar task)"]
  Role --> Templates["templates/<br/>(file .j2)"]
  Role --> Handlers["handlers/main.yml<br/>(mis. restart service)"]
  Role --> Defaults["defaults/main.yml<br/>(nilai default variable)"]
  Role --> Vars["vars/main.yml<br/>(variable tetap)"]
```

### Membuat Struktur Role
```bash
ansible-galaxy init roles/nginx
```

Perintah di atas otomatis membuat folder `roles/nginx/` berisi sub-folder standar (`tasks/`, `templates/`, `handlers/`, `defaults/`, `vars/`, dst) masing-masing dengan `main.yml` kosong siap diisi.

### Memindahkan Isi Playbook ke Role
```yaml
# roles/nginx/tasks/main.yml — isi dipindah dari tasks: di site.yml sebelumnya
---
- name: Deploy konfigurasi nginx dari template
  template:
    src: nginx.conf.j2
    dest: /etc/nginx/sites-available/default
  notify: Restart nginx
```

```yaml
# roles/nginx/handlers/main.yml
---
- name: Restart nginx
  service:
    name: nginx
    state: restarted
```

```yaml
# roles/nginx/defaults/main.yml — nilai default, gampang di-override
---
server_port: 8080
server_name: "contoh.local"
```

Playbook utama sekarang jadi jauh lebih ringkas — cuma memanggil role-nya:

```yaml
# site.yml
---
- name: Setup semua server
  hosts: webservers
  become: true
  roles:
    - nginx
```

Poin penting:

- File `.j2` di dalam role TIDAK perlu path lengkap `templates/nginx.conf.j2` lagi saat dirujuk dari task di dalam role itu sendiri — Ansible otomatis mencari di folder `templates/` milik role tersebut.
- Satu playbook (`roles:`) bisa memanggil banyak role sekaligus (misalnya `nginx`, `postgresql`, `app-sendiri`) — tiap role independen dan bisa dipakai ulang di proyek lain.
- `defaults/main.yml` beda prioritas dari `vars/main.yml`: nilai di `defaults` paling gampang di-override dari luar role, sedangkan `vars` di dalam role punya prioritas lebih tinggi.', '[{"url":"https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_reuse_roles.html","label":"Ansible Docs — Roles"}]'::jsonb, '[]'::jsonb, 'Jalankan `ansible-galaxy init roles/nginx` untuk membuat struktur role. Pindahkan task, handler, dan variable dari `site.yml` (catatan sebelumnya) ke file-file di dalam `roles/nginx/` sesuai contoh di atas. Sederhanakan `site.yml` supaya cuma memanggil `roles: - nginx`. Jalankan ulang `ansible-playbook -i inventory.ini site.yml` — hasil akhirnya harus identik dengan sebelum di-refactor jadi role. Ini menutup roadmap Ansible: dari instalasi dasar sampai automation yang terorganisir dan bisa dipakai ulang.', 4, 'published', '2026-09-19 10:15:28.833636+00', '2026-09-19 10:15:28.833636+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('76381f52-76a4-469d-9520-da66aeb4c3dd', 'b8ecce90-6cfa-42bd-bd17-b76f0aa0569d', 'Pengenalan Hermes Agent & Instalasi', 'pengenalan-hermes-agent-dan-instalasi', '**Masalah yang diselesaikan:** chatbot LLM biasa cuma membalas teks — begitu jawabannya berupa command atau kode, KAMU yang harus menyalinnya, menjalankannya sendiri di terminal, membaca hasil/error-nya, lalu menempelkan balik ke chat supaya modelnya tahu apa yang terjadi. Untuk task yang butuh banyak langkah bolak-balik, siklus manual ini melelahkan dan lambat.

**Hermes Agent** adalah AI agent open-source dan *self-improving* dari Nous Research — bukan sekadar chatbot, tapi agent yang bisa langsung mengeksekusi tool-nya sendiri (terminal, baca/tulis file, browser, web search), mengamati hasilnya, dan melanjutkan sampai task selesai.

```mermaid
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
```

### Instalasi
```bash
# Linux / macOS / WSL2 / Android (Termux)
curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash

# Reload shell setelah instalasi
source ~/.bashrc   # atau ~/.zshrc di macOS
```

```powershell
# Windows (PowerShell)
iex (irm https://hermes-agent.nousresearch.com/install.ps1)
```

Untuk macOS/Windows, alternatifnya download installer **Hermes Desktop** dari situs resminya. Installer otomatis mengurus dependency lain (Python, Node.js, ripgrep, ffmpeg) — prasyarat manual cuma `git`.

### Autentikasi & Verifikasi
```bash
# Cara tercepat: langganan Nous Portal (akses 300+ model + tool gateway)
hermes setup --portal

# Cek instalasi bermasalah atau tidak
hermes doctor

# Cek versi terinstall
hermes --version
```

| | Chatbot Biasa | Hermes Agent |
| --- | --- | --- |
| Eksekusi command/kode | Tidak bisa — kamu jalankan manual | Langsung dieksekusi agent lewat tool |
| Ingat konteks lintas sesi | Tidak (kecuali fitur khusus platform) | Ya, lewat sistem memory bawaan |
| Belajar prosedur baru | Tidak | Ya, lewat sistem skills |
| Akses tool eksternal (API, database) | Tidak | Ya, lewat MCP |

Poin penting:

- Hermes Agent bisa jalan di macOS/Linux/Windows(WSL2), dan juga di infrastruktur cloud (VPS, Modal, Daytona) untuk task yang butuh jalan lama tanpa laptop kamu nyala terus.
- `hermes setup --portal` adalah jalur setup paling cepat, tapi provider model lain (OpenAI-compatible endpoint, OpenRouter) juga didukung lewat `hermes model`.
- Instalasi per-user menyimpan datanya di `~/.hermes/` — ini folder yang akan sering direferensikan di catatan-catatan berikutnya (memory, skills, config).', '[{"url":"https://hermes-agent.nousresearch.com/docs/getting-started/installation","label":"Hermes Agent Docs — Installation"},{"url":"https://hermes-agent.nousresearch.com/","label":"Hermes Agent — Homepage"}]'::jsonb, '[{"url":"https://git-scm.com/downloads","label":"Git sudah terinstall (cek dengan `git --version`)"},{"url":"https://hermes-agent.nousresearch.com/","label":"Akun untuk akses model — Nous Portal (langganan), atau API key provider lain yang kompatibel (OpenAI, OpenRouter)"},{"label":"Familiar dengan command line/terminal dasar"}]'::jsonb, 'Install Hermes Agent sesuai OS kamu, reload shell, lalu jalankan `hermes doctor` — pastikan tidak ada error dependency. Jalankan `hermes setup --portal` (atau `hermes model` kalau pakai provider lain) untuk autentikasi. Cek `hermes --version` berhasil menampilkan versi terinstall. Kalau semua langkah ini lolos tanpa error, instalasi kamu siap dipakai di catatan berikutnya.', 0, 'published', '2026-09-19 10:23:25.989758+00', '2026-09-22 14:30:30.496+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('8de5fb40-428e-41c3-8372-12010a66d04b', 'b8ecce90-6cfa-42bd-bd17-b76f0aa0569d', 'Menjalankan Task Pertama & CLI Dasar', 'task-pertama-dan-cli-dasar', 'Hermes Agent sekarang sudah terinstall dan terautentikasi (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** bagaimana caranya kasih task ke agent dan memastikan dia BENAR-BENAR mengeksekusi tool (bukan cuma menjawab teks tebakan tanpa verifikasi)?

```mermaid
sequenceDiagram
  autonumber
  participant U as User (Prompt)
  participant H as Hermes Agent (LLM)
  participant T as Environment Tools (Terminal / Files)
  U->>H: "Cek isi direktori saat ini"
  Note over H: Reasoning: butuh eksekusi tool terminal
  H->>T: Jalankan perintah terminal (ls -la)
  T-->>H: Output daftar file dari OS
  Note over H: Analisis output nyata
  H-->>U: Jawaban terverifikasi berdasarkan hasil eksekusi tool
```

```bash
# Interface modern (disarankan)
hermes --tui

# Atau CLI klasik
hermes
```

### Kasih Task yang Mudah Diverifikasi
Task pertama sebaiknya spesifik dan hasilnya gampang dicek — supaya kamu tahu pasti agent benar-benar menjalankan tool, bukan menebak jawaban:

```text
Cek direktori saat ini dan sebutkan apa yang kelihatan seperti file utama project ini.
```

```text
Berapa penggunaan disk saya? Tampilkan 5 folder terbesar.
```

Interaksi yang berhasil menampilkan: banner model/provider yang dipakai, agent membalas tanpa error, dan — kalau tool dipakai — kamu bisa lihat eksekusi tool-nya (terminal command, baca file, web search) sebelum jawaban akhir muncul.

### Melanjutkan Sesi
```bash
# Lanjutkan sesi paling terakhir
hermes --continue
# atau bentuk pendeknya
hermes -c

# Lihat daftar sesi sebelumnya
hermes sessions list
```

| Fitur | Cara Pakai |
| --- | --- |
| Menu slash command | Ketik `/` untuk lihat pilihan (`/help`, `/tools`, `/model`, dst) |
| Input multi-baris | `Alt+Enter`, `Ctrl+J`, atau `Shift+Enter` |
| Interupsi proses berjalan | Ketik pesan baru lalu Enter — proses saat ini dihentikan |

Poin penting:

- `hermes --tui` (Text User Interface) menampilkan progress tool-calling secara visual real-time — lebih mudah diamati dibanding CLI klasik saat belajar.
- Sesi yang sudah selesai TIDAK hilang begitu terminal ditutup — `hermes --continue` membuka kembali histori percakapan & konteksnya.
- Ketik `/tools` untuk melihat daftar tool bawaan yang tersedia (60+ tool: terminal, file, web search, browser automation, dst) — agent memilih sendiri tool mana yang relevan untuk task-mu.', '[{"url":"https://hermes-agent.nousresearch.com/docs/getting-started/quickstart","label":"Hermes Agent Docs — Quickstart"}]'::jsonb, '[]'::jsonb, 'Jalankan `hermes --tui`. Kasih task yang hasilnya gampang diverifikasi, misalnya "Cek direktori saat ini dan sebutkan apa yang kelihatan seperti file utama project ini" — perhatikan agent benar-benar menjalankan command `ls`/`dir` (bukan menebak) sebelum menjawab. Tutup terminal, buka lagi, jalankan `hermes --continue` — buktikan agent masih ingat percakapan sebelumnya di sesi yang sama. Ketik `/tools` untuk lihat daftar tool bawaan yang tersedia.', 1, 'published', '2026-09-19 10:23:25.989758+00', '2026-09-22 13:48:48.472+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('c965955f-d2c5-4a62-869d-09f6906b03a6', 'b8ecce90-6cfa-42bd-bd17-b76f0aa0569d', 'Skills: Pengetahuan Prosedural yang Dipakai Ulang', 'skills-pengetahuan-prosedural', 'Memory dari catatan sebelumnya bagus untuk fakta & preferensi singkat — tapi punya batas ukuran ketat. **Masalah yang diselesaikan sekarang:** bagaimana kalau agent berulang kali harus mengerjakan PROSEDUR multi-langkah yang sama (misalnya alur review PR khusus project kamu)? Menjelaskan ulang instruksi detailnya setiap kali itu boros token dan rawan ada detail kecil yang terlewat.

**Skill** adalah dokumen pengetahuan prosedural yang dimuat *on-demand* (bukan selalu aktif di context seperti memory) — mengikuti pola *progressive disclosure* supaya hemat token: agent cuma lihat daftar nama & deskripsi skill dulu, baru memuat isi lengkapnya kalau memang relevan dengan task saat itu.

```mermaid
flowchart TD
  Exp["Agent kerjakan prosedur<br/>multi-langkah berulang"] -->|"tool: skill_manage"| Auto["Skill dibuat OTOMATIS<br/>dari pengalaman"]
  Doc["Dokumentasi/SDK yang ada"] -->|"/learn"| Manual["Skill dibuat MANUAL<br/>dari materi referensi"]
  Auto --> Store[("SKILL.md<br/>~/.hermes/skills/")]
  Manual --> Store
  Store -->|"/nama-skill instruksi"| Load["Dimuat saat dibutuhkan<br/>(progressive disclosure)"]
```

### Format `SKILL.md`
```yaml
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
```

### Cara Skill Terbentuk
- **Otomatis dari pengalaman**: lewat tool `skill_manage`, agent sendiri yang membuat skill saat menemukan prosedur non-trivial yang layak dipakai ulang (habis mengerjakan alur berulang, menemukan solusi dari error, atau menerima koreksi darimu).
- **Manual lewat `/learn`**: kamu convert materi referensi (dokumentasi lokal, halaman web, catatan yang kamu ketik) jadi skill.
- **Dari hub**: install skill siap pakai dari komunitas lewat `hermes skills install <sumber>`.

```bash
# Cari & pasang skill dari hub
hermes skills browse
hermes skills search <kata kunci>
hermes skills install <sumber>

# Lihat skill yang tersedia
hermes skills list  # atau /skills list di dalam chat
```

Memanggil skill secara eksplisit lewat slash command:
```text
/github-pr-workflow buatkan PR untuk refactor auth ini
```

| Cara Terbentuk | Trigger |
| --- | --- |
| Otomatis (`skill_manage`) | Agent sendiri, setelah kerjakan prosedur berulang atau menerima koreksi |
| Manual (`/learn`) | Kamu, dari dokumentasi/materi yang sudah ada |
| Hub | Kamu, install skill siap pakai dari komunitas |

Poin penting:

- Skill BEDA dari memory: memory itu fakta/preferensi singkat yang selalu aktif di context, skill itu prosedur lebih panjang yang cuma dimuat kalau relevan — supaya tidak membebani context dengan hal yang jarang dipakai.
- Skill dari hub melewati security scanning (deteksi command berbahaya, prompt injection) sebelum dipakai — level trust-nya bertingkat dari `builtin` sampai `community`.
- Beberapa skill bisa digabung jadi satu `bundle` (`~/.hermes/skill-bundles/`) dan dipanggil sekaligus lewat satu slash command.', '[{"url":"https://hermes-agent.nousresearch.com/docs/user-guide/features/skills","label":"Hermes Agent Docs — Skills"}]'::jsonb, '[]'::jsonb, 'Pilih satu prosedur berulang yang relevan buat kamu (mis. alur commit & PR project tertentu), lalu jalankan `/learn` sambil menunjukkan dokumentasinya ke agent (atau jelaskan prosedurnya langsung). Setelah skill terbentuk, cek isinya di `~/.hermes/skills/`. Buka sesi BARU, panggil skill itu lewat slash command (`/nama-skill <instruksi>`) — buktikan agent langsung mengikuti prosedur yang tersimpan tanpa kamu jelaskan ulang detailnya.', 3, 'published', '2026-09-19 10:23:25.989758+00', '2026-09-19 10:23:25.989758+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('e55690f6-12cc-415f-8c52-ff154e3ca548', '4e1efab5-9672-4b24-bdd9-5951a9a18a9d', 'Pengenalan Ansible & Instalasi', 'pengenalan-ansible-dan-instalasi', '**Masalah yang diselesaikan:** kalau kamu punya 20 server yang butuh package sama ter-install dan config sama ter-apply, cara manual (SSH satu-satu, jalankan command yang sama berulang) itu lambat dan rawan salah — gampang lupa jalankan di satu server, atau versi command yang dijalankan sedikit beda tanpa sadar, sehingga tiap server jadi tidak identik lagi (*configuration drift*).

**Ansible** adalah tool otomasi IT yang bersifat *agentless* — tidak perlu install software tambahan apa pun di server yang dikelola (*managed node*), cukup akses SSH dan Python sudah terinstall di sana (biasanya sudah ada secara default di distro Linux modern). Konfigurasi didefinisikan secara *declarative* dalam YAML: kamu bilang *state* seperti apa yang diinginkan ("nginx harus ter-install dan running"), bukan langkah-langkah imperatif ("jalankan apt install, lalu systemctl start").

```mermaid
flowchart LR
  subgraph Control["Control Node (komputer kamu)"]
    Ansible["Ansible + Inventory + Playbook"]
  end

  Ansible -->|SSH| S1["Managed Node 1"]
  Ansible -->|SSH| S2["Managed Node 2"]
  Ansible -->|SSH| S3["Managed Node 3"]
```

Tidak ada agent/daemon yang jalan terus-menerus di managed node — Ansible cuma "mampir" lewat SSH saat dijalankan, mengeksekusi task-nya, lalu selesai.

### Instalasi (di Control Node)
```bash
# Lewat pip (disarankan, cross-platform)
python3 -m pip install --user ansible

# Atau lewat package manager (Ubuntu/Debian)
sudo apt update && sudo apt install ansible -y

# Cek versi terinstall
ansible --version
```

### Tes Koneksi Pertama
Modul `ping` (bukan ICMP ping biasa) memastikan Ansible bisa connect & menjalankan Python di target:

```bash
# Tes ke localhost (mesin kamu sendiri) tanpa perlu server lain dulu
ansible localhost -m ping
```

Kalau berhasil, akan muncul respons `"ping": "pong"` — tandanya Ansible siap dipakai untuk mengelola server sungguhan.

Poin penting:

- *Agentless* berarti tidak ada proses tambahan yang jalan di background managed node — bedanya dengan tool seperti Puppet/Chef yang butuh agent ter-install permanen di tiap server.
- *Idempotent* adalah sifat penting Ansible: menjalankan playbook yang sama berkali-kali menghasilkan state akhir yang sama, tidak menduplikasi efek (misalnya, "pastikan package X ter-install" tidak akan error atau install ulang kalau X sudah ada).
- Managed node cukup punya Python terinstall (untuk generasi modern Ansible tidak lagi butuh Python di control node vs managed node versi tertentu — cek dokumentasi kalau target-nya sistem lama).', '[{"url":"https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html","label":"Ansible Docs — Installation Guide"},{"url":"https://docs.ansible.com/ansible/latest/getting_started/index.html","label":"Ansible Docs — Getting Started"}]'::jsonb, '[{"url":"https://www.python.org/downloads/","label":"Python 3 sudah terinstall di control node"},{"label":"Familiar dengan command line/terminal dan SSH dasar"},{"label":"Minimal satu mesin Linux untuk dipraktikkan (VM lokal seperti VirtualBox/Vagrant, atau VPS murah) — kalau belum ada, catatan ini tetap bisa dipraktikkan ke localhost"}]'::jsonb, 'Install Ansible lewat `pip` atau package manager sesuai OS kamu, lalu cek dengan `ansible --version`. Jalankan `ansible localhost -m ping` — pastikan hasilnya `"pong"`. Kalau kamu punya akses SSH ke server lain (VM lokal atau VPS), coba juga `ansible <ip-server> -m ping -u <username> --private-key <path-ke-ssh-key>` untuk membuktikan Ansible bisa connect ke server sungguhan, bukan cuma localhost.', 0, 'published', '2026-09-19 10:15:28.833636+00', '2026-09-22 14:30:29.208+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('4af5aaed-92a1-4678-b07c-3746d4a4793a', 'b8ecce90-6cfa-42bd-bd17-b76f0aa0569d', 'Memory: Ingatan Lintas Sesi', 'memory-lintas-sesi', 'Sekarang kamu bisa kasih task dan lanjutkan sesi yang sama (dari catatan sebelumnya) — tapi `--continue` cuma bekerja untuk sesi yang SAMA. **Masalah yang diselesaikan sekarang:** begitu kamu mulai sesi yang benar-benar BARU, agent (seperti chatbot biasa pada umumnya) kembali dari nol — kamu harus jelaskan ulang preferensi dan konteks project dari awal, setiap kali.

**Memory** di Hermes Agent adalah dua file berukuran terbatas yang disimpan di `~/.hermes/memories/`: `MEMORY.md` (catatan lingkungan/konvensi/hal yang dipelajari) dan `USER.md` (profil preferensi & gaya komunikasi kamu).

```mermaid
flowchart LR
  S1["Sesi 1 selesai"] -->|"tool memory: add/replace/remove"| Files[("MEMORY.md + USER.md<br/>~/.hermes/memories/")]
  Files -->|"Injeksi ke system prompt saat sesi mulai"| S2["Sesi 2 (baru)"]
  S2 -.->|"Kalau butuh detail lama<br/>yang tidak ada di snapshot"| Search["Full-text search<br/>histori sesi lama"]
```

### Cara Kerja
- **Snapshot di awal sesi**: isi `MEMORY.md` dan `USER.md` dimuat ke system prompt saat sesi baru dimulai — langsung tersedia tanpa biaya token tambahan di tengah percakapan. Perubahan yang terjadi DALAM sesi baru muncul di sesi BERIKUTNYA, bukan langsung di sesi yang sama.
- **Pencarian sesi lama**: kalau info yang dibutuhkan tidak ada di snapshot memory aktif, agent bisa mencari lewat histori sesi lama (full-text search) — bisa menemukan hal yang dibahas berminggu-minggu lalu meski tidak ada di memory aktif.

### Perintah Terkait
```bash
# Lihat daftar sesi lama
hermes sessions list
```

Di dalam chat:
- `/journey` — lihat timeline skill & entri memory yang sudah dipelajari agent
- `/memory pending` — review perubahan memory yang belum disimpan (kalau mode approval aktif)

| File | Isi |
| --- | --- |
| `MEMORY.md` | Fakta lingkungan, konvensi project, workaround yang ditemukan |
| `USER.md` | Preferensi kamu, gaya komunikasi, ekspektasi |

Poin penting:

- Memory di Hermes BERBEDA dari sekadar context window panjang: kapasitasnya dibatasi ketat (karakter maksimum per file) dan agent aktif memutuskan apa yang layak disimpan vs dibuang, bukan menyimpan semuanya.
- Kamu bisa audit dan edit apa yang sudah "dipelajari" agent lewat `/journey` — bukan black box.
- Kalau `write_approval` diaktifkan, agent minta persetujuan kamu dulu sebelum menulis perubahan ke memory — berguna kalau kamu mau kontrol penuh atas apa yang disimpan.', '[{"url":"https://hermes-agent.nousresearch.com/docs/user-guide/features/memory","label":"Hermes Agent Docs — Memory"}]'::jsonb, '[]'::jsonb, 'Di satu sesi, kasih tahu agent sebuah preferensi spesifik (mis. "selalu jawab pakai Bahasa Indonesia santai, jangan formal"). Tutup terminal SEPENUHNYA (bukan cuma `--continue`), buka `hermes --tui` lagi sebagai sesi BARU tanpa flag `--continue` — tanya sesuatu yang tidak berhubungan, dan perhatikan apakah gaya jawabannya masih mengikuti preferensi yang kamu kasih tahu sebelumnya. Ketik `/journey` untuk melihat apa saja yang sudah tersimpan sebagai memory.', 2, 'published', '2026-09-19 10:23:25.989758+00', '2026-09-19 10:23:25.989758+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('a594ed6c-459f-4f2f-baf2-6524ebc1d715', 'd68cb157-4b1f-4921-a71f-2d6c9b127e5f', 'Widget Dasar: StatelessWidget vs StatefulWidget', 'widget-dasar-stateless-stateful', 'Sekarang environment Flutter kamu sudah siap dan app pertama sudah jalan (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** di Flutter, HAMPIR SEMUA hal — teks, tombol, layout, bahkan padding — adalah *widget*. Ini beda dari native Android yang memisahkan layout XML (deklaratif) dari logic Kotlin/Java (imperatif); di Flutter keduanya digabung jadi satu lewat kode Dart yang deklaratif. Pertanyaan pertama yang harus dijawab: widget mana yang perlu MENGINGAT sesuatu yang bisa berubah (butuh *state*), dan mana yang tidak?

```mermaid
flowchart TD
  subgraph SL["StatelessWidget"]
    SL1["build() cuma bergantung<br/>pada parameter constructor"] --> SL2["Immutable — tidak bisa<br/>berubah sendiri setelah dibuat"]
  end
  subgraph SF["StatefulWidget"]
    SF1["Punya objek State terpisah"] --> SF2["setState() memicu<br/>build() ulang"]
    SF2 --> SF3["Tampilan ter-update"]
  end
```

### StatelessWidget — Tidak Pernah Berubah Sendiri
```dart
class SapaanWidget extends StatelessWidget {
  final String nama;
  const SapaanWidget({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Text(''Halo, $nama!'');
  }
}
```

### StatefulWidget — Punya State yang Bisa Berubah
```dart
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
        Text(''Jumlah: $_jumlah''),
        ElevatedButton(onPressed: _tambah, child: const Text(''Tambah'')),
      ],
    );
  }
}
```

| | StatelessWidget | StatefulWidget |
| --- | --- | --- |
| Bisa berubah tanpa dibuat ulang dari parent? | Tidak | Ya, lewat `setState()` |
| Contoh pemakaian | Teks statis, icon, layout tetap | Counter, form input, toggle switch |
| Objek `State` terpisah? | Tidak perlu | Ya, wajib override `createState()` |

Poin penting:

- Mengubah variabel state TANPA memanggil `setState()` (mis. `_jumlah++;` saja tanpa dibungkus) TIDAK akan mengubah tampilan — variabelnya berubah di memori, tapi Flutter tidak tahu harus `build()` ulang.
- `const` di depan constructor widget (seperti `const SapaanWidget(...)`) memberi tahu Flutter widget itu tidak akan berubah — optimisasi performa supaya tidak di-build ulang tanpa perlu.
- Keputusan Stateless vs Stateful ditentukan oleh KONTEN widget-nya, bukan aturan kaku — kalau ragu, mulai dari StatelessWidget, baru naikkan jadi StatefulWidget begitu memang butuh menyimpan state yang berubah.', '[{"url":"https://docs.flutter.dev/ui/widgets-intro","label":"Flutter Docs — Introduction to Widgets"}]'::jsonb, '[]'::jsonb, 'Ganti isi `lib/main.dart` dengan `CounterWidget` di atas (bungkus dalam `MaterialApp` + `Scaffold`). Jalankan, tekan tombol "Tambah" beberapa kali — pastikan angkanya bertambah di layar. SENGAJA hapus `setState()`-nya (langsung `_jumlah++;` tanpa dibungkus), jalankan lagi — buktikan angkanya BERTAMBAH di data (bisa dicek lewat `print()`) tapi tampilan di layar TIDAK berubah, membuktikan pentingnya `setState()`.', 1, 'published', '2026-09-19 12:19:14.593871+00', '2026-09-19 12:19:14.593871+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('bc24da08-12b3-4fda-9a36-7487a18ff35c', 'd68cb157-4b1f-4921-a71f-2d6c9b127e5f', 'Layout Dasar: Row, Column, Container', 'layout-dasar-row-column-container', 'Sekarang kamu paham widget Stateless dan Stateful (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** satu widget saja tidak cukup untuk membangun tampilan nyata — kamu perlu cara MENYUSUN banyak widget jadi satu layout utuh: horizontal, vertikal, dengan jarak/padding yang rapi.

Flutter menyusun UI dengan cara MENUMPUK widget layout di dalam widget layout lain (*composition*) — tidak ada bahasa markup terpisah seperti XML.

```mermaid
flowchart TD
  Container["Container (padding, warna background)"] --> Column["Column (susun vertikal)"]
  Column --> Row["Row (susun horizontal)"]
  Row --> Icon["Icon"]
  Row --> Text1["Text (nama)"]
  Column --> Text2["Text (deskripsi)"]
```

```dart
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
          const Text(''Budi Santoso'', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
      const Text(''Flutter Developer''),
    ],
  ),
)
```

| Widget | Fungsi |
| --- | --- |
| `Row` | Menyusun children secara HORIZONTAL |
| `Column` | Menyusun children secara VERTIKAL |
| `Container` | Membungkus satu child dengan padding, margin, warna, atau border |
| `Center` | Memusatkan satu child secara horizontal & vertikal |
| `SizedBox` | Kotak kosong berukuran tetap — sering dipakai untuk memberi JARAK antar widget |
| `Expanded` | Membuat child mengisi ruang tersisa di dalam `Row`/`Column` |

Poin penting:

- `Row` dan `Column` masing-masing WAJIB diisi parameter `children: [...]` berisi list widget — kalau isinya melebihi ruang tersedia (misal terlalu banyak widget di `Row` sempit) akan muncul error "overflow" berwarna kuning-hitam khas Flutter.
- `mainAxisAlignment` mengatur perataan SEPANJANG arah utama (horizontal untuk `Row`, vertikal untuk `Column`), `crossAxisAlignment` mengatur perataan TEGAK LURUS arah utama.
- `Container` cuma boleh punya SATU child langsung — kalau butuh lebih dari satu widget di dalamnya, bungkus dulu dengan `Row`/`Column` seperti contoh di atas.', '[{"url":"https://docs.flutter.dev/ui/layout","label":"Flutter Docs — Layout"}]'::jsonb, '[]'::jsonb, 'Buat widget "kartu profil" persis seperti contoh di atas (icon + nama dalam `Row`, deskripsi di bawahnya dalam `Column`, dibungkus `Container` dengan padding dan warna latar). Tambahkan `Expanded` di dalam `Row` supaya teks nama mengambil sisa ruang yang ada, cek apa bedanya visualnya dibanding tanpa `Expanded`. Coba ganti `crossAxisAlignment` dari `start` ke `center`, amati bagaimana posisi konten berubah.', 2, 'published', '2026-09-19 12:19:14.593871+00', '2026-09-19 12:19:14.593871+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('a2d5a6dd-36aa-4c30-88e8-0bddcf82f1db', 'd68cb157-4b1f-4921-a71f-2d6c9b127e5f', 'Navigasi Antar Halaman', 'navigasi-dasar', 'Sekarang kamu bisa menyusun layout satu halaman penuh (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** aplikasi nyata hampir selalu punya LEBIH dari satu halaman — bagaimana caranya berpindah ke halaman lain, dan (kalau perlu) mengirim data ke halaman itu atau menerima data balik darinya?

**Navigator** di Flutter mengelola halaman sebagai STACK (tumpukan) — `push` menambah halaman baru di atas, `pop` membuang halaman teratas dan kembali ke sebelumnya.

```mermaid
flowchart LR
  A["HalamanUtama"] -->|"Navigator.push()"| B["HalamanDetail"]
  B -->|"Navigator.pop()"| A
```

### Berpindah Halaman & Mengirim Data
```dart
// Dari HalamanUtama, kirim data "nama" ke HalamanDetail
Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => HalamanDetail(nama: ''Budi''),
  ),
);

class HalamanDetail extends StatelessWidget {
  final String nama;
  const HalamanDetail({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(''Detail'')),
      body: Center(child: Text(''Halo, $nama'')),
    );
  }
}
```

### Kembali Sambil Membawa Data
```dart
// Di HalamanDetail — kembali sambil kirim hasil
ElevatedButton(
  onPressed: () => Navigator.of(context).pop(''Data dari detail''),
  child: const Text(''Kembali''),
)

// Di HalamanUtama — menerima hasil dari push (harus pakai await)
final hasil = await Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => const HalamanDetail(nama: ''Budi'')),
);
print(hasil); // "Data dari detail"
```

Poin penting:

- `Navigator.push()` mengembalikan sebuah `Future` — pakai `await` kalau butuh menunggu dan menangkap data yang dikirim balik lewat `Navigator.pop(data)`.
- Tombol "back" bawaan Android/iOS otomatis memanggil `pop()` kalau ada `AppBar` dengan tombol back — kamu tidak perlu menangani ini manual di kasus umum.
- Untuk aplikasi dengan navigasi kompleks (deep linking, banyak tab), package seperti `go_router` lebih direkomendasikan daripada `Navigator` manual — tapi memahami `push`/`pop` tetap fondasi yang perlu dikuasai lebih dulu.', '[{"url":"https://docs.flutter.dev/ui/navigation","label":"Flutter Docs — Navigation and Routing"}]'::jsonb, '[]'::jsonb, 'Buat dua halaman: `HalamanUtama` dengan tombol yang meng-`Navigator.push()` ke `HalamanDetail`, kirim sebuah String lewat constructor. Di `HalamanDetail`, tampilkan data itu, dan buat tombol yang `Navigator.pop()` sambil membawa data BARU (String lain). Di `HalamanUtama`, tangkap data balik itu pakai `await` pada `Navigator.push()`, tampilkan lewat `SnackBar` atau `print()` begitu pengguna kembali dari `HalamanDetail`.', 3, 'published', '2026-09-19 12:19:14.593871+00', '2026-09-19 12:19:14.593871+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('b0fe8fee-7092-4408-a1da-0c3371d3cd67', 'd68cb157-4b1f-4921-a71f-2d6c9b127e5f', 'Mengambil Data dari API (HTTP Request)', 'http-request-dasar', 'Sekarang kamu bisa membangun UI multi-halaman (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** semua data yang dipakai sejauh ini di-hardcode langsung di kode. Aplikasi nyata butuh data dari SERVER — dan karena request jaringan itu ASINKRON (butuh waktu, bisa gagal), UI harus bisa menampilkan status loading, data, atau error dengan tepat.

### Package `http`
```bash
flutter pub add http
```

```dart
import ''dart:convert'';
import ''package:http/http.dart'' as http;

Future<List<String>> ambilDaftarPost() async {
  final response = await http.get(
    Uri.parse(''https://jsonplaceholder.typicode.com/posts?_limit=5''),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as List;
    return data.map((item) => item[''title''] as String).toList();
  } else {
    throw Exception(''Gagal mengambil data (status: ${response.statusCode})'');
  }
}
```

### Menampilkan dengan `FutureBuilder`
```mermaid
flowchart TD
  FB["FutureBuilder"] --> Loading["Belum selesai:<br/>CircularProgressIndicator"]
  FB --> Error["Gagal (hasError):<br/>Tampilkan pesan error"]
  FB --> Data["Berhasil (hasData):<br/>Tampilkan datanya"]
```

```dart
FutureBuilder<List<String>>(
  future: ambilDaftarPost(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const CircularProgressIndicator();
    } else if (snapshot.hasError) {
      return Text(''Error: ${snapshot.error}'');
    } else if (snapshot.hasData) {
      return Column(
        children: snapshot.data!.map((judul) => Text(judul)).toList(),
      );
    }
    return const Text(''Tidak ada data'');
  },
)
```

Poin penting:

- `FutureBuilder` otomatis rebuild widget-nya sesuai state `Future`: `waiting` (masih loading), `hasError` (gagal), atau `hasData` (berhasil) — kamu tidak perlu mengelola `setState()` manual untuk loading spinner.
- Panggil fungsi `Future` (seperti `ambilDaftarPost()`) di `initState()` dan simpan hasilnya ke variabel, JANGAN dipanggil langsung di `build()` — kalau dipanggil di `build()`, request akan terkirim ULANG setiap kali widget di-*rebuild*.
- Selalu cek `response.statusCode` sebelum memproses `response.body` — status selain 200 (seperti 404 atau 500) berarti request-nya gagal meski tidak melempar exception Dart secara otomatis.', '[{"url":"https://docs.flutter.dev/cookbook/networking/fetch-data","label":"Flutter Cookbook — Fetch Data from the Internet"}]'::jsonb, '[]'::jsonb, 'Tambahkan package `http` (`flutter pub add http`). Buat fungsi `ambilDaftarPost()` seperti contoh di atas, tampilkan hasilnya lewat `FutureBuilder` di sebuah halaman baru. Pastikan tampilan menunjukkan `CircularProgressIndicator` sesaat sebelum data muncul. SENGAJA salahkan URL-nya (mis. ganti jadi domain yang tidak ada) untuk memicu `hasError`, buktikan pesan error-nya tertampil alih-alih app crash. Ini menutup roadmap Flutter: dari instalasi sampai aplikasi yang menampilkan data sungguhan dari API.', 4, 'published', '2026-09-19 12:19:14.593871+00', '2026-09-19 12:19:14.593871+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('0e690faf-177a-4f08-adb7-78813ad3b002', '620410c3-ebfb-4e0b-a8a6-578aaa70d726', 'Spring Data JPA Dasar: Akses Database', 'spring-data-jpa-dasar', 'REST Controller dari catatan sebelumnya sudah bisa menerima request dan balas response, tapi datanya cuma `List<Todo>` di memori — hilang total tiap aplikasi di-restart. **Masalah yang diselesaikan sekarang:** bagaimana menyimpan data ke database beneran yang bertahan lintas restart, tanpa menulis query SQL manual untuk tiap operasi CRUD?

**Spring Data JPA** adalah lapisan abstraksi di atas JPA/Hibernate — cukup definisikan *entity* dan *interface repository*, Spring OTOMATIS meng-generate implementasi CRUD-nya saat aplikasi jalan, tanpa kamu menulis satu baris SQL pun.

```mermaid
flowchart TD
  Entity["Class Java + @Entity<br/>public class Todo { ... }"] --> Repo["interface TodoRepository<br/>extends JpaRepository&lt;Todo, Integer&gt;"]
  Repo -->|"Spring generate otomatis saat runtime"| Impl["Implementasi CRUD lengkap<br/>(save, findById, findAll, delete, dst)"]
  Impl --> DB[("Database")]
```

### 1. Dependency & Konfigurasi
```bash
# Tambahkan di pom.xml (atau pilih saat generate di start.spring.io):
# - spring-boot-starter-data-jpa
# - com.h2database:h2 (database file-based, ringan untuk belajar)
```

```properties
# src/main/resources/application.properties
spring.datasource.url=jdbc:h2:file:./data/todos
spring.jpa.hibernate.ddl-auto=update
```

### 2. Entity & Repository
```java
@Entity
public class Todo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String judul;
    private boolean selesai;

    // getter & setter (atau pakai Lombok @Data untuk generate otomatis)
}

// Cukup EXTENDS JpaRepository — TIDAK perlu menulis implementasi sama sekali
public interface TodoRepository extends JpaRepository<Todo, Integer> {
}
```

### 3. Pakai di Controller (Ganti List In-Memory)
```java
@RestController
@RequestMapping("/api/todos")
public class TodoController {
    private final TodoRepository repository;

    public TodoController(TodoRepository repository) { // DI dari catatan sebelumnya
        this.repository = repository;
    }

    @GetMapping
    public List<Todo> semua() {
        return repository.findAll();
    }

    @PostMapping
    public Todo tambah(@RequestBody Todo todoBaru) {
        return repository.save(todoBaru); // INSERT kalau id null, UPDATE kalau id sudah ada
    }

    @DeleteMapping("/{id}")
    public void hapus(@PathVariable Integer id) {
        repository.deleteById(id);
    }
}
```

| Method `JpaRepository` | Fungsi |
| --- | --- |
| `findAll()` | Ambil semua baris |
| `findById(id)` | Ambil satu baris, mengembalikan `Optional<T>` |
| `save(entity)` | INSERT (kalau `id` null) atau UPDATE (kalau `id` sudah ada) |
| `deleteById(id)` | Hapus satu baris berdasarkan primary key |

Poin penting:

- `extends JpaRepository<Todo, Integer>` saja SUDAH CUKUP — Spring meng-generate implementasi lengkapnya secara otomatis saat aplikasi start, tanpa kamu menulis class implementasi manual.
- H2 dipakai di sini karena paling sederhana untuk belajar (file database lokal, tanpa install server terpisah) — provider lain (PostgreSQL, MySQL) dipakai dengan pola KODE yang sama persis, cuma beda `spring.datasource.url` dan driver dependency-nya.
- `spring.jpa.hibernate.ddl-auto=update` membuat Hibernate otomatis membuat/menyesuaikan struktur tabel dari class `@Entity` — praktis untuk belajar, tapi di production biasanya dipakai tool migration terpisah (Flyway/Liquibase) untuk kontrol lebih ketat.', '[{"url":"https://docs.spring.io/spring-data/jpa/reference/jpa.html","label":"Spring Data JPA — Reference Documentation"},{"url":"https://spring.io/guides/gs/accessing-data-jpa","label":"Spring Guides — Accessing Data with JPA"}]'::jsonb, '[]'::jsonb, 'Tambahkan dependency `spring-boot-starter-data-jpa` dan `h2` ke project dari catatan sebelumnya. Buat entity `Todo` dan interface `TodoRepository` seperti contoh di atas, ganti `TodoController` supaya pakai `TodoRepository` (bukan `List` in-memory lagi). Jalankan aplikasi, tambah beberapa todo lewat POST, lalu STOP aplikasinya (Ctrl+C) dan jalankan ulang — panggil `GET /api/todos` lagi dan buktikan data yang kamu tambahkan sebelumnya masih ada (karena `jdbc:h2:file:` menyimpan ke file, bukan cuma di memori).', 3, 'published', '2026-09-19 12:26:42.215569+00', '2026-09-19 12:26:42.215569+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('1065af1e-2c02-4a29-878a-0523e4f7b2c6', '9deddb76-862f-4fce-83e4-57a0202df83b', 'Memahami Closure', 'closure', 'Sekarang kamu paham cara mendefinisikan fungsi dan konsep scope (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang:** bagaimana membuat variabel yang privat ke satu fungsi, tapi tetap bisa diakses/diubah oleh fungsi lain yang terkait dengannya — tanpa membuat variabel itu global (yang berisiko tertimpa atau diubah kode lain secara tidak sengaja)? Sebelum closure dipahami, satu-satunya cara menyimpan state antar pemanggilan fungsi terasa seperti harus pakai variabel global.

Closure adalah fungsi yang "mengingat" variabel dari scope tempat ia dibuat, meskipun fungsi luar sudah selesai dieksekusi.

```js
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
```

```mermaid
graph TD
  subgraph luar["buatCounter() — scope luar, dijalankan sekali"]
    j["jumlah = 0"]
    subgraph dalam["function() — closure (scope dalam)"]
      c["jumlah++ dan return jumlah"]
    end
  end
  j -. "tetap bisa diakses walau buatCounter() sudah selesai" .-> c
```

Poin penting:

- Setiap pemanggilan `buatCounter()` menghasilkan closure baru dengan `jumlah` masing-masing.
- Variabel `jumlah` tetap hidup di memori selama closure-nya masih dipakai.
- Sering dipakai untuk membuat data privat, seperti pola module.', '[{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Closures","label":"Closures — MDN Web Docs"}]'::jsonb, '[]'::jsonb, 'Modifikasi `buatCounter()` supaya mengembalikan object berisi dua fungsi sekaligus: `tambah()` dan `kurang()`, keduanya berbagi variabel `jumlah` yang sama lewat closure. Buat dua instance counter berbeda (`counterA` dan `counterB`) dari `buatCounter()` yang sama, lalu buktikan variabel `jumlah` masing-masing independen — mengubah `counterA` tidak memengaruhi `counterB` sama sekali.', 5, 'published', '2026-09-18 06:20:59.380972+00', '2026-09-22 14:30:18.922+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('96fdeed5-3947-4217-b466-7830060ce30b', '9deddb76-862f-4fce-83e4-57a0202df83b', 'Async/Await di JavaScript', 'async-await', 'Promise dari catatan sebelumnya sudah menyelesaikan masalah callback bersarang, tapi rantai `.then().then().then()` yang panjang masih agak sulit dibaca urutannya sekilas mata. **Masalah yang diselesaikan sekarang:** bagaimana menulis kode asinkron yang TERLIHAT seperti kode sinkron biasa (baris demi baris), padahal di baliknya tetap non-blocking?

`async/await` adalah gula sintaks di atas Promise agar kode asinkron terlihat seperti kode sinkron.

```mermaid
graph LR
  subgraph sinkron["Sinkron (blocking)"]
    s1["tugas1"] --> s2["tugas2"] --> s3["tugas3"]
  end
  subgraph asinkron["Async/Await (non-blocking)"]
    a1["await fetch()"] -. "kode lain tetap jalan selagi menunggu" .-> a2["lanjut pakai data"]
  end
```

```js
async function ambilData() {
  try {
    const res = await fetch("/api/data");
    const data = await res.json();
    console.log(data);
  } catch (err) {
    console.error("Gagal mengambil data:", err);
  }
}
```

Poin penting:

- `await` hanya bisa dipakai di dalam fungsi `async`.
- `await` menjeda eksekusi fungsi sampai Promise selesai, tanpa memblokir thread utama.
- Gunakan `try/catch` untuk menangani error, menggantikan `.catch()` pada Promise biasa.', '[{"url":"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function","label":"async function — MDN Web Docs"}]'::jsonb, '[]'::jsonb, 'Tulis fungsi `ambilDuaData()` yang memanggil dua endpoint berbeda (mis. `https://jsonplaceholder.typicode.com/users/1` dan `.../posts/1`) satu per satu pakai `await` berurutan, catat waktunya (`console.time`/`console.timeEnd`). Lalu tulis ulang supaya kedua `fetch` itu jalan bersamaan pakai `Promise.all([...])` — bandingkan waktunya, harus jauh lebih cepat karena tidak menunggu satu selesai dulu sebelum mulai yang lain.', 8, 'published', '2026-09-18 06:20:59.380972+00', '2026-09-22 14:30:19.564+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('02dfd4ed-3e64-4889-af20-33edb21dd807', '620410c3-ebfb-4e0b-a8a6-578aaa70d726', 'Dependency Injection (DI) Dasar di Spring', 'dependency-injection-dasar-spring', 'Sekarang aplikasi Spring Boot kamu sudah bisa jalan (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** kalau satu class butuh instance dari class lain (misalnya `NotifikasiService` butuh `EmailService` untuk mengirim email), cara paling naif adalah `new EmailService()` langsung di dalam `NotifikasiService`. Ini membuat kedua class *tightly coupled* — susah dites (tidak bisa diganti versi palsu/mock saat testing) dan susah diganti implementasinya.

**Dependency Injection (DI)** adalah pola di mana Spring (lewat *IoC Container*-nya) yang menyediakan instance yang dibutuhkan suatu class, bukan class itu yang membuat sendiri lewat `new`.

```mermaid
flowchart TD
  subgraph Container["Spring IoC Container"]
    Scan["@ComponentScan menemukan<br/>semua class ber-@Component/@Service"]
  end
  Container -.->|"Menyediakan instance lewat constructor"| Consumer["NotifikasiService(EmailService email)"]
```

### Mendaftarkan & Menyuntikkan Dependency
```java
// 1. Interface kontrak
public interface EmailService {
    void kirim(String tujuan, String pesan);
}

// 2. Implementasi — @Service menandai ini sebagai Spring bean
@Service
public class SmtpEmailService implements EmailService {
    @Override
    public void kirim(String tujuan, String pesan) {
        System.out.println("Mengirim email ke " + tujuan + ": " + pesan);
    }
}

// 3. Consumer — menerima EmailService lewat CONSTRUCTOR injection
@Service
public class NotifikasiService {
    private final EmailService emailService;

    // Constructor injection — Spring otomatis menyuntikkan EmailService di sini
    public NotifikasiService(EmailService emailService) {
        this.emailService = emailService;
    }

    public void beritahuUser(String email) {
        emailService.kirim(email, "Selamat datang di sistem!");
    }
}
```

| Annotation | Fungsi |
| --- | --- |
| `@Component` | Menandai class generik sebagai Spring bean (dikelola container) |
| `@Service` | Sama seperti `@Component`, tapi menandai secara spesifik ini adalah *service layer* (business logic) |
| `@Repository` | Sama seperti `@Component`, khusus *data access layer* — dibahas di catatan Spring Data JPA |
| `@Autowired` | Memberi tahu Spring untuk menyuntikkan dependency (opsional di constructor kalau cuma ada SATU constructor) |

Poin penting:

- **Constructor injection** (seperti contoh di atas) lebih direkomendasikan dibanding *field injection* (`@Autowired private EmailService emailService;`) — dependency jadi eksplisit terlihat di constructor, dan class tidak bisa dibuat dalam keadaan setengah lengkap (tanpa dependency wajibnya).
- Kalau class cuma punya SATU constructor, `@Autowired` di atasnya opsional — Spring otomatis pakai constructor itu untuk injection.
- Semua class ber-`@Component`/`@Service`/`@Repository` otomatis ditemukan lewat `@ComponentScan` (bagian dari `@SpringBootApplication`) — tidak perlu didaftarkan manual satu-satu di tempat lain.', '[{"url":"https://docs.spring.io/spring-framework/reference/core/beans/dependency-injection.html","label":"Spring Framework Docs — Dependency Injection"}]'::jsonb, '[]'::jsonb, 'Buat interface `EmailService` dan implementasinya `SmtpEmailService` (`@Service`) seperti contoh di atas. Buat `NotifikasiService` yang menerima `EmailService` lewat constructor. Buat class `CommandLineRunner` (atau endpoint REST sederhana) yang menerima `NotifikasiService` lewat constructor juga, panggil `beritahuUser(...)`-nya, jalankan aplikasi dan pastikan pesannya tercetak. Setelah berhasil, buat implementasi KEDUA dari `EmailService` (mis. `ConsoleLogEmailService`), tandai yang lama dengan `@Primary` atau matikan salah satu — amati bagaimana Spring menentukan implementasi mana yang disuntikkan kalau ada lebih dari satu.', 1, 'published', '2026-09-19 12:26:42.215569+00', '2026-09-19 12:26:42.215569+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('11d8a676-e322-4766-952f-3b11c3f9f57b', '620410c3-ebfb-4e0b-a8a6-578aaa70d726', 'REST Controller Dasar', 'rest-controller-dasar', 'Sekarang kamu paham Dependency Injection, yang jadi fondasi arsitektur Spring (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang:** bagaimana mengekspos business logic yang sudah dibangun jadi HTTP endpoint yang bisa diakses aplikasi lain (mobile app, frontend web)?

`@RestController` menandai class sebagai penerima HTTP request, dengan return value method-nya otomatis dikonversi jadi JSON (lewat library Jackson, sudah termasuk di `spring-boot-starter-web`).

```mermaid
flowchart LR
  Client["Client / Frontend"] -->|"GET /api/todos"| Get["@GetMapping"]
  Client -->|"POST /api/todos"| Post["@PostMapping"]
  Get --> JSON["Return List<Todo> -> otomatis jadi JSON"]
  Post --> Created["Return Todo yang baru dibuat"]
```

### Contoh CRUD Sederhana (In-Memory)
```java
public record Todo(int id, String judul, boolean selesai) {}

@RestController
@RequestMapping("/api/todos")
public class TodoController {
    private final List<Todo> todos = new ArrayList<>(List.of(
        new Todo(1, "Belajar Spring Boot", true),
        new Todo(2, "Membangun REST API", false)
    ));

    @GetMapping
    public List<Todo> semua() {
        return todos;
    }

    @GetMapping("/{id}")
    public ResponseEntity<Todo> satuById(@PathVariable int id) {
        return todos.stream()
            .filter(t -> t.id() == id)
            .findFirst()
            .map(ResponseEntity::ok)
            .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<Todo> tambah(@RequestBody Todo todoBaru) {
        todos.add(todoBaru);
        return ResponseEntity.status(HttpStatus.CREATED).body(todoBaru);
    }
}
```

| Annotation | Fungsi |
| --- | --- |
| `@RestController` | Gabungan `@Controller` + `@ResponseBody` — return value otomatis jadi response body (JSON) |
| `@RequestMapping("/api/todos")` | Prefix path untuk SEMUA endpoint di controller ini |
| `@GetMapping` / `@PostMapping` | Menangani HTTP method GET / POST di path tertentu |
| `@PathVariable` | Mengambil nilai dari bagian path URL, mis. `{id}` |
| `@RequestBody` | Mengonversi JSON body request jadi object Java otomatis |

Poin penting:

- `ResponseEntity<T>` memberi kontrol penuh atas HTTP status code (200, 201, 404, dst) — kalau method langsung `return` object biasa (tanpa `ResponseEntity`), Spring otomatis pakai status 200.
- `record` (fitur Java modern) cocok untuk data transfer object seperti `Todo` di atas — otomatis immutable dan sudah punya constructor, getter (`.judul()`, bukan `.getJudul()`), `equals()`, dan `toString()`.
- Data di atas masih `List` in-memory — hilang tiap aplikasi di-restart. Ini yang diselesaikan catatan berikutnya lewat Spring Data JPA.', '[{"url":"https://spring.io/guides/gs/rest-service","label":"Spring Guides — Building a RESTful Web Service"}]'::jsonb, '[]'::jsonb, 'Buat `TodoController` persis seperti contoh di atas. Jalankan aplikasinya, tes lewat browser untuk `GET /api/todos` dan `GET /api/todos/1`. Pakai curl atau Postman untuk `POST /api/todos` dengan body JSON `{"id": 3, "judul": "Baru", "selesai": false}`, verifikasi lewat `GET /api/todos` lagi bahwa data barunya muncul. Coba `GET /api/todos/999` (id yang tidak ada) — pastikan responnya status 404, bukan error 500.', 2, 'published', '2026-09-19 12:26:42.215569+00', '2026-09-19 12:26:42.215569+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('8febfa69-d5b5-4405-a74d-e8ae1c1a8453', '620410c3-ebfb-4e0b-a8a6-578aaa70d726', 'Request Validation & Exception Handling', 'validation-dan-exception-handling', 'Sekarang data kamu tersimpan permanen ke database (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** kalau client mengirim data yang tidak valid (judul kosong, misalnya) ke endpoint `POST`, tanpa validasi data buruk itu akan tersimpan begitu saja ke database — atau kalau ada error tak terduga lain, client menerima stack trace mentah Java yang membingungkan alih-alih pesan error yang jelas.

### 1. Validasi Lewat Bean Validation
```bash
# Tambahkan dependency: spring-boot-starter-validation
```

```java
@Entity
public class Todo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank(message = "Judul tidak boleh kosong")
    @Size(max = 100, message = "Judul maksimal 100 karakter")
    private String judul;

    private boolean selesai;
    // getter & setter
}
```

```java
@PostMapping
public Todo tambah(@Valid @RequestBody Todo todoBaru) { // @Valid memicu pengecekan
    return repository.save(todoBaru);
}
```

Tanpa penanganan lebih lanjut, request yang gagal validasi otomatis mengembalikan status `400 Bad Request` — tapi body response-nya masih berupa JSON error default Spring yang cukup verbose.

```mermaid
flowchart TD
  Req["POST /api/todos<br/>judul: ''''"] --> Valid{"@Valid: judul kosong?"}
  Valid -->|Gagal| MANV["MethodArgumentNotValidException dilempar"]
  MANV --> Advice["@RestControllerAdvice menangkapnya"]
  Advice --> Response["Response JSON rapi, status 400"]
  Valid -->|Lolos| Save["repository.save() dijalankan"]
```

### 2. Exception Handling Terpusat Lewat `@RestControllerAdvice`
```java
@RestControllerAdvice
public class GlobalExceptionHandler {

    // Menangkap error validasi @Valid secara khusus, format response jadi rapi
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<Map<String, String>> handleValidasi(MethodArgumentNotValidException ex) {
        Map<String, String> errors = new HashMap<>();
        ex.getBindingResult().getFieldErrors().forEach(
            error -> errors.put(error.getField(), error.getDefaultMessage())
        );
        return ResponseEntity.badRequest().body(errors);
    }

    // Menangkap exception lain yang tidak terduga
    @ExceptionHandler(Exception.class)
    public ResponseEntity<String> handleUmum(Exception ex) {
        return ResponseEntity.internalServerError().body("Terjadi kesalahan: " + ex.getMessage());
    }
}
```

Poin penting:

- `@RestControllerAdvice` (gabungan `@ControllerAdvice` + `@ResponseBody`) menangkap exception dari SEMUA controller di aplikasi secara terpusat — tidak perlu menulis `try/catch` berulang di tiap method controller.
- `@ExceptionHandler(TipeException.class)` yang lebih SPESIFIK (seperti `MethodArgumentNotValidException`) didahulukan Spring dibanding yang generik (`Exception.class`) — urutan deklarasi di file tidak berpengaruh, yang penting kecocokan tipe exception-nya.
- Anotasi Bean Validation umum lainnya: `@NotNull` (tidak boleh null), `@Min`/`@Max` (rentang angka), `@Email` (format email valid) — semuanya dari package `jakarta.validation.constraints`.', '[{"url":"https://docs.spring.io/spring-boot/reference/io/validation.html","label":"Spring Boot Docs — Validation"},{"url":"https://docs.spring.io/spring-boot/reference/web/servlet.html","label":"Spring Boot Docs — Servlet Web Applications (Error Handling)"}]'::jsonb, '[]'::jsonb, 'Tambahkan `@NotBlank` dan `@Size` ke field `judul` di entity `Todo`, tambahkan `@Valid` di parameter `@RequestBody` pada method `tambah()`. Coba `POST /api/todos` dengan `judul` kosong — pastikan responnya status 400. Buat `GlobalExceptionHandler` seperti contoh di atas, ulangi request yang sama — bandingkan response JSON-nya SEBELUM dan SESUDAH ada `@RestControllerAdvice` (harus jadi lebih rapi dan jelas field mana yang error). Ini menutup roadmap Java (Spring Boot): dari instalasi dasar sampai REST API yang datanya tersimpan permanen dan tervalidasi dengan aman.', 4, 'published', '2026-09-19 12:26:42.215569+00', '2026-09-19 12:26:42.215569+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('2c353801-6cec-4671-a4a3-d29eced08c1b', 'b403e972-3cb3-4605-a6b6-bb0f2774b0f6', 'Layout & Nested Layout Dasar', 'layout-dan-nested-layout', '**Masalah yang diselesaikan:** makin banyak halaman yang kamu buat dan navigasikan (seperti di catatan sebelumnya), makin banyak juga elemen UI yang berulang di tiap halaman — navbar, footer, sidebar. Copy-paste elemen itu ke tiap `page.tsx` bikin kode duplikat dan gampang jadi tidak konsisten kalau salah satu lupa di-update.

Layout adalah komponen UI yang dibagikan ke beberapa halaman anak. Ketika berpindah halaman di dalam layout yang sama, layout tetap bertahan (*persisted state*) dan tidak di-render ulang dari awal.

```mermaid
flowchart TD
    subgraph RootLayout ["app/layout.tsx (Root Layout: Navbar + Footer Global)"]
        subgraph DashboardLayout ["app/dashboard/layout.tsx (Sidebar Dashboard)"]
            P1["app/dashboard/page.tsx (Ringkasan)"]
            P2["app/dashboard/settings/page.tsx (Pengaturan)"]
        end
    end
```

### 1. Root Layout (`app/layout.tsx`)
Setiap aplikasi Next.js App Router wajib memiliki satu Root Layout untuk membungkus elemen dasar dokumen HTML:

```tsx
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
```

### 2. Nested Layout (`app/dashboard/layout.tsx`)
Layout bersarang hanya membungkus semua rute di dalam subfolder tersebut:

```tsx
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
```

- **Re-render Efisien**: Mengubah rute dari `/dashboard` ke `/dashboard/settings` hanya me-render ulang `children`, sedangkan Sidebar dan Navbar tetap utuh.
- **Data Sharing**: Layout cocok untuk meletakkan konteks state bersama atau navigasi lokal.', '[{"url":"https://nextjs.org/docs/app/building-your-application/routing/pages-and-layouts","label":"Next.js Docs — Pages and Layouts"}]'::jsonb, '[]'::jsonb, 'Di project latihan, tambahkan `app/dashboard/layout.tsx` dengan sidebar sederhana (seperti contoh di atas), lalu buat dua halaman di dalamnya: `app/dashboard/page.tsx` dan `app/dashboard/pengaturan/page.tsx`. Navigasi antar keduanya (pakai `<Link>` dari catatan sebelumnya) dan amati lewat DevTools Elements/Inspector: apakah sidebar ikut ter-render ulang tiap pindah halaman, atau tetap diam?', 4, 'published', '2026-09-18 09:12:01.736924+00', '2026-09-22 13:32:10.867+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('127a7415-d02b-42af-a472-99b2385dfc30', 'b4e47208-8775-4a24-a2f3-1655745b90f1', 'List Comprehension', 'list-comprehension', 'Sekarang kamu paham `for` loop dan struktur data `list` (dari catatan-catatan sebelumnya). **Masalah yang diselesaikan sekarang:** transformasi atau filter list yang sering dipakai (misalnya ambil elemen genap saja) biasanya butuh beberapa baris kode (deklarasi list kosong, loop, if, append) untuk operasi yang sebenarnya konsepnya sederhana.

List comprehension adalah cara ringkas membuat list baru dari list/iterable lain.

```mermaid
graph TD
  A["angka = [1, 2, 3, 4, 5, 6]"] --> B["for n in angka"]
  B --> C{"n % 2 == 0 ?"}
  C -- ya --> D["masuk ke hasil"]
  C -- tidak --> E["dilewati"]
  D --> F["[2, 4, 6]"]
```

```python
angka = [1, 2, 3, 4, 5, 6]

# cara biasa
genap = []
for n in angka:
    if n % 2 == 0:
        genap.append(n)

# dengan list comprehension
genap = [n for n in angka if n % 2 == 0]
```

Pola umum: `[ekspresi for item in iterable if kondisi]`.

Bisa juga dipakai untuk dictionary comprehension:

```python
kuadrat = {n: n**2 for n in angka}
```', '[{"url":"https://docs.python.org/3/tutorial/datastructures.html#list-comprehensions","label":"List Comprehensions — Python Docs"}]'::jsonb, '[]'::jsonb, 'Diberikan `kata = [''apel'', ''jeruk'', ''kiwi'', ''nanas'', ''anggur'']`, buat list comprehension baru yang cuma mengambil kata dengan panjang lebih dari 4 huruf, dan sekaligus ubah semuanya jadi huruf besar (`.upper()`). Lalu buat dictionary comprehension `{kata: len(kata) for kata in kata}` untuk memetakan tiap kata ke panjangnya.', 4, 'published', '2026-09-18 06:20:59.380972+00', '2026-09-22 14:30:22.85+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('bc2d0543-327c-445a-8641-b59c1a092feb', 'b4e47208-8775-4a24-a2f3-1655745b90f1', 'Virtual Environment (venv)', 'virtual-environment', 'Sekarang kamu bisa `import` module dan package pihak ketiga lewat `pip` (dari catatan sebelumnya). **Masalah yang diselesaikan sekarang (dan menutup roadmap ini):** kalau semua dependency Python diinstall secara global (satu Python untuk semua proyek), proyek A yang butuh `django==4` dan proyek B yang butuh `django==3` akan bertabrakan — cuma bisa ada satu versi terinstall global di satu waktu.

Virtual environment digunakan agar dependency setiap proyek Python terisolasi dan tidak bentrok satu sama lain.

```mermaid
graph TD
  subgraph A["Proyek A"]
    A1[".venv A"] --> A2["django==4, requests==2.1"]
  end
  subgraph B["Proyek B"]
    B1[".venv B"] --> B2["flask==3, requests==2.31"]
  end
```

```bash
# membuat venv
python -m venv .venv

# mengaktifkan (Linux/Mac)
source .venv/bin/activate

# mengaktifkan (Windows)
.venv\Scripts\activate

# menginstal dependency
pip install -r requirements.txt

# keluar dari venv
deactivate
```

Tips:

- Tambahkan folder `.venv/` ke `.gitignore` agar tidak ikut ter-commit.
- Simpan daftar dependency dengan `pip freeze > requirements.txt`.', '[{"url":"https://docs.python.org/3/library/venv.html","label":"venv — Creation of virtual environments — Python Docs"}]'::jsonb, '[{"url":"https://www.python.org/downloads/","label":"Python sudah terinstall (cek dengan `python --version`)"}]'::jsonb, 'Buat dua folder proyek berbeda. Di masing-masing, buat venv terpisah (`python -m venv .venv`), aktifkan, lalu install versi `requests` yang BERBEDA di tiap proyek (mis. `pip install requests==2.31.0` di satu, `pip install requests==2.28.0` di lainnya). Jalankan `pip freeze` di kedua venv untuk membuktikan versinya benar-benar berbeda dan tidak saling memengaruhi satu sama lain. Ini menutup roadmap Python: dari sintaks dasar sampai mengelola dependency proyek secara terisolasi.', 8, 'published', '2026-09-18 06:20:59.380972+00', '2026-09-22 14:30:23.622+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('af09f040-3187-4005-8da9-c2d2fe6f45ef', '620410c3-ebfb-4e0b-a8a6-578aaa70d726', 'Pengenalan Spring Boot & Instalasi', 'pengenalan-spring-boot-dan-instalasi', '**Masalah yang diselesaikan:** Spring (framework Java untuk aplikasi enterprise) secara tradisional butuh konfigurasi XML manual yang panjang dan server aplikasi (Tomcat) yang harus di-setup terpisah — banyak boilerplate sebelum sempat menulis satu baris pun kode business logic.

**Spring Boot** menyelesaikan ini lewat tiga hal: *auto-configuration* (Spring menebak konfigurasi yang masuk akal berdasarkan dependency yang ada), server *embedded* (Tomcat sudah termasuk di dalam aplikasi, tidak perlu instalasi terpisah), dan *starter dependency* (bundel dependency siap pakai per kebutuhan, misalnya `spring-boot-starter-web` untuk aplikasi web).

```mermaid
flowchart TD
  subgraph Tradisional["Spring Tradisional"]
    X["Konfigurasi XML manual"] --> T["Install & config Tomcat terpisah"] --> Deploy["Deploy .war ke server"]
  end
  subgraph Boot["Spring Boot"]
    Auto["Auto-configuration dari starter dependency"] --> Embed["Tomcat SUDAH ada di dalam aplikasi"] --> Run["java -jar app.jar — langsung jalan"]
  end
```

### Membuat Project Lewat Spring Initializr
Cara paling mudah: buka [start.spring.io](https://start.spring.io), pilih Maven, Java, versi Spring Boot terbaru, tambahkan dependency **Spring Web**, lalu generate & download project-nya.

```bash
# Setelah project di-extract, jalankan lewat Maven wrapper (tidak perlu install Maven manual)
./mvnw spring-boot:run

# Windows
mvnw.cmd spring-boot:run
```

Buka `http://localhost:8080` — Spring Boot otomatis menjalankan server web di port itu, tanpa konfigurasi tambahan apa pun.

### Anatomi Aplikasi Minimal
```java
// src/main/java/com/contoh/demo/DemoApplication.java
package com.contoh.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication // gabungan @Configuration + @EnableAutoConfiguration + @ComponentScan
public class DemoApplication {
    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }
}
```

Poin penting:

- `@SpringBootApplication` adalah SATU annotation yang menggabungkan tiga hal: menandai class ini sebagai sumber konfigurasi, mengaktifkan auto-configuration, dan memindai (*scan*) package ini serta sub-package-nya untuk menemukan component Spring lain secara otomatis.
- `./mvnw` (Maven Wrapper) memastikan semua orang yang menjalankan project memakai versi Maven yang SAMA persis, tanpa perlu install Maven manual di komputernya masing-masing.
- `src/main/resources/application.properties` (atau `.yml`) adalah tempat konfigurasi aplikasi (port, koneksi database, dst) — dibahas lebih lanjut di catatan-catatan berikutnya.', '[{"url":"https://spring.io/quickstart","label":"Spring — Quickstart Guide"},{"url":"https://spring.io/guides/gs/spring-boot","label":"Spring Guides — Building an Application with Spring Boot"}]'::jsonb, '[{"url":"https://adoptium.net/","label":"JDK (Java Development Kit) versi 17 atau lebih baru sudah terinstall"},{"url":"https://code.visualstudio.com/docs/languages/java","label":"IDE Java — IntelliJ IDEA atau VS Code dengan Java Extension Pack"}]'::jsonb, 'Buka [start.spring.io](https://start.spring.io), generate project baru dengan dependency "Spring Web", download dan extract. Jalankan `./mvnw spring-boot:run` (atau `mvnw.cmd spring-boot:run` di Windows) dari terminal di folder project itu. Buka `http://localhost:8080` di browser — akan muncul halaman error "Whitelabel Error Page" (ini NORMAL, karena belum ada endpoint yang didefinisikan). Buktikan servernya benar-benar jalan dengan melihat log `Tomcat started on port 8080` di terminal.', 0, 'published', '2026-09-19 12:26:42.215569+00', '2026-09-22 14:30:33.487+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;
INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES ('b21bd33f-6b73-4703-a270-dbfbbd8de0a8', '3e71ad0e-b25a-4567-b43e-282574f1590a', 'Query Data Dasar (CRUD)', 'query-dasar', 'Client Supabase dari catatan sebelumnya sudah siap. **Masalah yang diselesaikan sekarang:** bagaimana benar-benar membaca dan mengubah data di database dari kode aplikasi, tanpa menulis query SQL manual satu per satu?

Setelah client Supabase siap, operasi dasar ke database (CRUD) dipanggil lewat method di atas nama tabel.

```mermaid
flowchart LR
  App["Aplikasi Web<br/>supabase.from(''produk'').select(''*'')"] --> PostgREST["Supabase PostgREST API"]
  PostgREST --> DB["PostgreSQL Database<br/>SELECT * FROM produk;"]
  DB --> PostgREST
  PostgREST --> Res["Mengembalikan Objek JS<br/>{ data, error }"]
```

```ts
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
```

| Method Supabase | Setara perintah SQL |
| --- | --- |
| `.select("*")` | `SELECT * FROM produk` |
| `.insert({...})` | `INSERT INTO produk (...) VALUES (...)` |
| `.update({...}).eq("id", 1)` | `UPDATE produk SET ... WHERE id = 1` |
| `.delete().eq("id", 1)` | `DELETE FROM produk WHERE id = 1` |

Poin penting:

- Setiap query mengembalikan `{ data, error }` — selalu cek `error` sebelum memakai `data`, jangan asumsikan query selalu berhasil.
- `.eq("kolom", nilai)` adalah filter kondisi `WHERE kolom = nilai`; ada filter lain seperti `.gt()`, `.lt()`, `.like()` untuk kondisi berbeda.
- Query hanya akan berhasil kalau diizinkan oleh Row Level Security (RLS) tabel tersebut — kalau RLS aktif tapi belum ada policy, semua query dari client akan ditolak meskipun kodenya benar.', '[{"url":"https://supabase.com/docs/reference/javascript/introduction","label":"Supabase Docs — JavaScript Client Reference"}]'::jsonb, '[]'::jsonb, 'Di project Supabase kamu, buat tabel `produk` (kolom: `id`, `nama` text, `harga` numeric). Praktikkan keempat operasi CRUD di atas lewat client — insert 2-3 produk, select semuanya, update salah satu harganya, lalu delete satu. Cek tabel `produk` di dashboard Supabase (Table Editor) setiap habis satu operasi, untuk memastikan perubahannya benar-benar tersimpan di database.', 1, 'published', '2026-09-18 06:20:59.380972+00', '2026-09-22 14:30:24.243+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;

-- Category Quiz Questions (6 baris)
INSERT INTO category_quiz_questions (id, category_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('373a1cba-5b63-4c5b-a3ba-76baace97746', '9deddb76-862f-4fce-83e4-57a0202df83b', 'Manakah yang BUKAN termasuk topik dasar JavaScript yang sudah dipelajari di roadmap ini?', '["Variabel & scope","Closure","Arrow function","Migrasi database SQL"]'::jsonb, 3, 'Migrasi database bukan bagian dari roadmap dasar JavaScript di kategori ini — itu topik terpisah (mis. Supabase).', 0, '2026-09-21 09:32:19.89676+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO category_quiz_questions (id, category_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('1a9c68fc-6c7d-49d4-bdcd-0c3b206bf299', '9deddb76-862f-4fce-83e4-57a0202df83b', 'Apa fungsi utama Promise di JavaScript?', '["Menyimpan data ke localStorage","Merepresentasikan hasil operasi asynchronous yang belum tentu selesai","Mengubah CSS secara dinamis","Membuat elemen HTML baru"]'::jsonb, 1, 'Promise merepresentasikan nilai yang mungkin belum tersedia sekarang tapi akan selesai (resolve/reject) di masa depan.', 1, '2026-09-21 09:32:19.89676+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO category_quiz_questions (id, category_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('bb803c87-fd08-44c9-8c6d-2e6abdcba2b4', '9deddb76-862f-4fce-83e4-57a0202df83b', 'async/await adalah gula sintaks di atas apa?', '["Callback","Promise","Closure","Array method"]'::jsonb, 1, 'async/await mempermudah penulisan kode asynchronous yang sebenarnya tetap berbasis Promise di baliknya.', 2, '2026-09-21 09:32:19.89676+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO category_quiz_questions (id, category_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('81a0b296-cebd-4c16-acd0-a195d76c9a10', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'Apa masalah utama yang diselesaikan React dibanding manipulasi DOM manual?', '["React pakai pendekatan deklaratif — deskripsikan UI berdasarkan state, React yang urus update DOM-nya","React menghilangkan kebutuhan JavaScript sama sekali","React otomatis membuat API backend","React hanya alat untuk styling CSS"]'::jsonb, 0, 'Sebelum React, memperbarui tampilan berarti memanipulasi DOM manual satu per satu — React menyelesaikan ini lewat pendekatan deklaratif.', 0, '2026-09-22 03:55:16.577906+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO category_quiz_questions (id, category_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('c3cc2b3f-1b2e-4c95-bbb7-40870b85f788', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'Roadmap React di platform ini dimulai dari instalasi project sampai ke topik apa di langkah terakhir?', '["useEffect (sinkronisasi dengan sistem luar)","Redux","TypeScript generics","Server Component"]'::jsonb, 0, 'Sembilan langkah roadmap ini diakhiri di catatan useEffect Dasar, tentang menyinkronkan component dengan hal di luar React seperti fetch data dan timer.', 1, '2026-09-22 03:55:16.577906+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO category_quiz_questions (id, category_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('b97322a5-f519-4a0b-94d9-b7f614167b6f', '874d0ef2-3e06-451f-80e8-6cd10276bd6a', 'Apa prasyarat pengetahuan yang disebutkan di deskripsi roadmap React ini?', '["Dasar JavaScript (variabel, fungsi, array method seperti map/filter, destructuring)","Pengalaman pakai Next.js terlebih dahulu","Sertifikasi cloud tertentu","Menguasai bahasa pemrograman Python"]'::jsonb, 0, 'Deskripsi roadmap ini secara eksplisit meminta familiar dengan dasar JavaScript dulu, dan mengarahkan ke roadmap JavaScript di platform ini kalau belum.', 2, '2026-09-22 03:55:16.577906+00') ON CONFLICT (id) DO UPDATE SET category_id = EXCLUDED.category_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;

-- Note Quiz Questions (60 baris)
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('46e5f5c4-74d3-4c2e-958b-b64e24b59c49', '1065af1e-2c02-4a29-878a-0523e4f7b2c6', 'Apa itu closure di JavaScript?', '["Cara menutup browser","Fungsi yang mengingat variabel dari scope tempat ia dibuat","Tipe data khusus","Method untuk menghapus variabel"]'::jsonb, 1, 'Closure adalah fungsi yang tetap punya akses ke variabel dari scope pembuatnya, meskipun scope itu sudah selesai dieksekusi.', 0, '2026-09-21 09:32:19.89676+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('9112376e-4d17-4c50-b22e-947548c3d012', '1065af1e-2c02-4a29-878a-0523e4f7b2c6', 'Kalau buatCounter() dipanggil 2 kali, berapa banyak closure independen yang terbentuk?', '["1","2","0","Tergantung browser"]'::jsonb, 1, 'Setiap pemanggilan buatCounter() menghasilkan closure baru dengan variabel jumlah masing-masing, saling independen.', 1, '2026-09-21 09:32:19.89676+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('cb05c648-6c96-4483-8677-fc91936944f2', '1065af1e-2c02-4a29-878a-0523e4f7b2c6', 'Closure sering dipakai untuk membuat apa?', '["Data privat / pola module","Query database","Elemen HTML","File CSS"]'::jsonb, 0, 'Karena variabel di dalam closure tidak bisa diakses langsung dari luar, closure sering dipakai untuk menyembunyikan/mengenkapsulasi data (pola module).', 2, '2026-09-21 09:32:19.89676+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('452dbe3d-afa0-4d68-8943-4ab7890f0140', '0769c792-0dde-47ba-bc93-f4e5da16e884', 'Kapan TypeScript memeriksa kecocokan tipe?', '["Saat program berjalan (runtime)","Saat kompilasi (compile time)","Setelah program selesai","Tidak pernah"]'::jsonb, 1, 'TypeScript adalah static type checker — pengecekan tipe dilakukan saat kompilasi, sebelum kode dijalankan.', 0, '2026-09-21 09:32:19.89676+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('b6ae1e34-1ceb-4f0f-b86c-53a4ff0b9b47', '0769c792-0dde-47ba-bc93-f4e5da16e884', 'Apa yang dimaksud dengan "type inference" di TypeScript?', '["Tipe harus selalu ditulis manual","TypeScript otomatis menebak tipe dari nilai yang diberikan","Semua variabel bertipe any","Fitur ini hanya ada di JavaScript"]'::jsonb, 1, 'Kalau tidak ditulis manual, TypeScript tetap mencoba menebak tipe lewat inference berdasarkan nilai awalnya.', 1, '2026-09-21 09:32:19.89676+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('b502be86-efa5-402e-8d4c-a184472f7e8f', '0769c792-0dde-47ba-bc93-f4e5da16e884', 'Ekstensi file apa yang dipakai untuk TypeScript biasa (bukan JSX/React)?', '[".js",".ts",".tsx",".jsx"]'::jsonb, 1, 'File TypeScript berekstensi .ts, sedangkan .tsx dipakai kalau berisi JSX/React.', 2, '2026-09-21 09:32:19.89676+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('42acce6e-34ad-4e69-8871-ae71ea6d9243', '5dacd9a7-113a-4bbb-ac1c-73077beec662', 'Perintah CLI resmi apa yang dipakai untuk membuat project Next.js baru?', '["create-next-app","create-react-app","next new","npm init react-app"]'::jsonb, 0, '`npx create-next-app@latest` adalah CLI resmi untuk scaffold project Next.js siap pakai dalam satu perintah.', 0, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('4b21055d-d6b6-4126-ae4c-13fa6fb91600', '5dacd9a7-113a-4bbb-ac1c-73077beec662', 'File khusus apa di dalam folder app/ yang berfungsi sebagai error boundary untuk menangkap crash runtime?', '["loading.tsx","not-found.tsx","error.tsx","layout.tsx"]'::jsonb, 2, '`error.tsx` menangkap crash runtime tanpa merusak seluruh web, sedangkan `loading.tsx` untuk skeleton loading dan `not-found.tsx` untuk halaman 404.', 1, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('5917a855-9a5a-4d54-b091-13e46f764f8c', '5dacd9a7-113a-4bbb-ac1c-73077beec662', 'Folder apa yang menjadi tempat utama routing dan UI pages pada project Next.js App Router?', '["app/","public/","pages/","components/"]'::jsonb, 0, 'Struktur berbasis folder di `app/` secara otomatis memetakan folder menjadi rute URL di browser.', 2, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('b8319a3b-cb6d-4ac3-a884-d7d91477c952', 'd32cf121-3b02-42ce-bc5d-ea8577f5c39d', 'Apa yang dipakai Next.js App Router sebagai dasar penentuan routing, menggantikan config routing terpisah?', '["Struktur folder di dalam app/","File konfigurasi routing terpisah","Library React Router","State management global"]'::jsonb, 0, 'Next.js App Router memakai struktur folder itu sendiri sebagai definisi routing — tidak ada file config routing terpisah untuk disinkronkan.', 0, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('7f6cd754-43c7-4115-9dd6-94ba44a579d1', 'd32cf121-3b02-42ce-bc5d-ea8577f5c39d', 'Penulisan nama folder seperti apa yang menandakan sebuah dynamic route segment di App Router?', '["{slug}","[slug]","<slug>","(slug)"]'::jsonb, 1, 'Nama folder di dalam kurung siku `[slug]` berarti segmen URL dinamis, dan nilainya diterima lewat prop `params`.', 1, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('1c31c5e4-2a5f-49bb-902c-cd4d23b95862', 'd32cf121-3b02-42ce-bc5d-ea8577f5c39d', 'Sejak Next.js 15, tipe data `params` pada halaman dynamic route berubah menjadi apa?', '["Object biasa seperti sebelumnya","Promise yang harus di-await","Array of string","Class instance"]'::jsonb, 1, 'Sejak Next.js 15, params berupa Promise sehingga harus di-await dulu sebelum dipakai — berbeda dari versi Next.js 14 ke bawah.', 2, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('82754e93-6c0f-45ca-a2ea-bcfd81f70d53', '75351001-c5ee-4c99-a786-8ad8354733da', 'Mengapa sebaiknya tidak memakai tag `<a href="...">` biasa untuk navigasi antar halaman di Next.js?', '["Karena memicu full page reload dan membuang keuntungan performa React","Karena tidak valid secara HTML","Karena tidak bisa dipakai di Server Component","Karena akan error saat build"]'::jsonb, 0, 'Tag `<a>` biasa memicu full page reload — semua state hilang dan seluruh halaman di-fetch ulang dari server.', 0, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('c26478ba-e429-4933-992a-4ce334a6a219', '75351001-c5ee-4c99-a786-8ad8354733da', 'Hook apa yang dipakai untuk navigasi programatik (misal setelah submit form) di App Router?', '["useNavigate dari react-router","useHistory dari next/router","useRouter dari next/navigation","useRouter dari next/router"]'::jsonb, 2, 'Di App Router, useRouter wajib di-import dari `next/navigation`, bukan `next/router` (Pages Router lama).', 1, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('b9c81c9b-ac5d-4493-92fd-e1d2c8458699', '75351001-c5ee-4c99-a786-8ad8354733da', 'Apa yang otomatis dilakukan Next.js saat komponen `<Link>` muncul di viewport?', '["Prefetching resource route di background","Mengompres semua gambar di halaman","Validasi form otomatis","Menghapus cache halaman sebelumnya"]'::jsonb, 0, 'Next.js otomatis melakukan prefetching resource di background saat link muncul di viewport, sehingga transisi halaman terasa instan.', 2, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('85a07bd0-5e30-453e-9e17-f54e12de2299', '2c353801-6cec-4671-a4a3-d29eced08c1b', 'Apa yang terjadi pada layout ketika user berpindah halaman di dalam layout yang sama?', '["Layout di-render ulang dari awal","Layout tetap bertahan (persisted state), tidak di-render ulang","Layout dihapus dan dimuat ulang dari server","Layout otomatis berubah jadi Client Component"]'::jsonb, 1, 'Layout adalah komponen UI yang dibagikan ke beberapa halaman anak; saat berpindah halaman di layout yang sama, layout tetap bertahan dan tidak di-render ulang dari awal.', 0, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('07ff2932-efb8-4f2b-8cb8-6c0e1735c59f', '2c353801-6cec-4671-a4a3-d29eced08c1b', 'File apa yang wajib dimiliki setiap aplikasi App Router untuk membungkus elemen dasar dokumen HTML?', '["app/page.tsx","app/globals.css","app/layout.tsx (Root Layout)","app/loading.tsx"]'::jsonb, 2, 'Setiap aplikasi Next.js App Router wajib memiliki satu Root Layout (`app/layout.tsx`) untuk membungkus elemen dasar dokumen HTML seperti `<html>` dan `<body>`.', 1, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('3529ddcc-4868-431f-b844-8fbb09272a74', '2c353801-6cec-4671-a4a3-d29eced08c1b', 'Nested layout seperti `app/dashboard/layout.tsx` berlaku untuk rute yang mana saja?', '["Seluruh aplikasi tanpa kecuali","Hanya semua rute di dalam subfolder tersebut","Hanya halaman utama (root)","Hanya Client Component"]'::jsonb, 1, 'Layout bersarang (nested layout) hanya membungkus semua rute di dalam subfolder tempat file layout itu berada.', 2, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('896264a7-83e4-4cd5-b17e-ceb4bd12e55e', 'b38b67fc-0349-4842-a63d-3ea5cf6cdd1a', 'Secara default, semua komponen di dalam folder app/ pada Next.js App Router adalah jenis komponen apa?', '["Client Component","Server Component","Static Component","Hybrid Component"]'::jsonb, 1, 'Di App Router, semua komponen di dalam folder app/ adalah Server Component secara default — dirender di server tanpa mengirim JavaScript komponennya ke browser.', 0, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('ea0360c4-006f-4a81-b004-c54a3003548e', 'b38b67fc-0349-4842-a63d-3ea5cf6cdd1a', 'Directive apa yang wajib ditulis paling atas file (sebelum import lain) untuk menandai sebuah Client Component?', '["\"use server\"","\"use client\"","\"use strict\"","\"use state\""]'::jsonb, 1, 'Directive "use client" wajib ditulis paling atas file supaya komponen (dan semua yang di-import olehnya) dikirim juga ke browser sebagai JavaScript.', 1, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('b36bdb0f-2b5b-4ce7-b79b-e9d41a3be99e', 'b38b67fc-0349-4842-a63d-3ea5cf6cdd1a', 'Fitur apa yang TIDAK bisa dipakai langsung di Server Component dan harus dipindah ke Client Component terpisah?', '["useState, useEffect, dan event handler seperti onClick","async/await untuk fetch data","Import komponen lain","Penulisan JSX"]'::jsonb, 0, 'Server Component tidak bisa memakai useState, useEffect, atau event handler — bagian interaktif itu harus dipindah ke Client Component terpisah.', 2, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('0208903d-5267-4d1d-86f7-bd7cbfca96f9', '74c8b4b2-9b99-4bd6-a4cd-aa30d30961dc', 'Bagaimana cara Server Component mengambil data tanpa perlu useEffect?', '["Memakai async/await langsung di badan fungsi komponen","Memakai useEffect + useState seperti biasa","Memakai class component lifecycle method","Memakai Redux middleware"]'::jsonb, 0, 'Server Component dapat langsung mengambil data secara asynchronous (async/await) di badan fungsi komponen tanpa perlu useEffect atau useState.', 0, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('60bc970c-c144-436c-9b37-66d77d83c4c6', '74c8b4b2-9b99-4bd6-a4cd-aa30d30961dc', 'Opsi caching pada fetch() mana yang membuat data selalu di-fetch segar di setiap request (dynamic data)?', '["cache: ''force-cache''","cache: ''no-store''","next: { revalidate: 3600 }","cache: ''default''"]'::jsonb, 1, 'cache: "no-store" berarti dynamic data — selalu fetch data segar setiap request masuk, berbeda dengan force-cache (statis) atau revalidate (ISR).', 1, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('631b6efe-4af8-415e-9b78-f3be4ea9fa6c', '74c8b4b2-9b99-4bd6-a4cd-aa30d30961dc', 'Apa keuntungan keamanan dari melakukan data fetching di Server Component dibanding di browser?', '["Kredensial API key dan query database tetap berada di server, tidak bocor ke browser","Data otomatis terenkripsi end-to-end","Tidak perlu menggunakan database","Semua data otomatis menjadi public"]'::jsonb, 0, 'Karena fetching terjadi di server, kredensial API key dan query database tetap berada di server dan tidak bocor ke browser.', 2, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('68709469-b476-4641-a6ee-4424e5595064', '450a660e-26e5-4470-9ac7-6db63edb259b', 'Nama file apa yang dipakai untuk membuat Route Handler / custom API endpoint di App Router?', '["page.tsx","route.ts","api.ts","handler.tsx"]'::jsonb, 1, 'Route Handlers dibuat menggunakan Web Standard Request dan Response API di dalam file route.ts.', 0, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('f02f534a-7179-43ec-a82c-fed3a2d77b89', '450a660e-26e5-4470-9ac7-6db63edb259b', 'Apakah file route.ts boleh ditaruh di folder yang sama dengan page.tsx?', '["Boleh, tidak masalah sama sekali","Tidak boleh","Boleh hanya untuk method GET","Boleh hanya di folder root app/"]'::jsonb, 1, 'File route.ts tidak boleh ditaruh di folder yang sama dengan page.tsx.', 1, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('cdbab029-7971-4a13-b656-5bad9b5b7b26', '450a660e-26e5-4470-9ac7-6db63edb259b', 'Bagaimana cara menangani HTTP method POST pada sebuah Route Handler?', '["function handlePost() { ... }","export async function POST(request) { ... }","export default POST()","function onPost(req, res) { ... }"]'::jsonb, 1, 'Method HTTP ditangani dengan mengekspor fungsi async bernama sesuai method-nya, misalnya export async function POST(request).', 2, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('70161f6b-2dd1-4983-b930-11a5bb0ec6ae', 'c357b844-d366-44d5-8d81-7377d8abd0d2', 'Prefix apa yang wajib ditambahkan pada environment variable agar bisa dibaca di Client Component/browser?', '["PUBLIC_","NEXT_PUBLIC_","CLIENT_","ENV_PUBLIC_"]'::jsonb, 1, 'Prefix NEXT_PUBLIC_ wajib diberikan jika suatu variabel perlu dibaca di sisi klien/browser.', 0, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('375979c4-561c-42ae-88e5-14a4eb47a991', 'c357b844-d366-44d5-8d81-7377d8abd0d2', 'File apa yang dipakai Next.js untuk memuat environment variables secara lokal?', '[".env.local","config.json","next.config.mjs","package.json"]'::jsonb, 0, 'Next.js memiliki dukungan bawaan untuk memuat environment variables dari file .env.local.', 1, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('69eddf7f-acc7-49d6-885c-4790560f544c', 'c357b844-d366-44d5-8d81-7377d8abd0d2', 'Mengapa variabel seperti DATABASE_URL (tanpa prefix NEXT_PUBLIC_) aman dari kebocoran ke browser?', '["Karena otomatis dienkripsi oleh Next.js","Karena hanya terbaca di Server Environment (Node.js Runtime), bernilai undefined di Client Component","Karena disimpan langsung di database","Karena Next.js menghapusnya saat build"]'::jsonb, 1, 'Variabel tanpa prefix NEXT_PUBLIC_ hanya terbaca di Server Environment; saat diakses dari Client Component nilainya undefined, mencegah kebocoran kunci rahasia.', 2, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('e4432874-5cb0-4989-ae56-c659bd3c7594', '0bd6b9e8-c329-4078-a066-f00213688aee', 'Fungsi apa yang dipakai untuk membuat metadata dinamis berdasarkan data seperti slug artikel?', '["generateMetadata","getMetadata","createMetadata","useMetadata"]'::jsonb, 0, 'generateMetadata adalah fungsi async yang dipakai untuk metadata dinamis, misalnya pada halaman artikel blog app/notes/[slug]/page.tsx.', 0, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('cb518d8a-bcb2-47a9-bbe8-253af571b6c5', '0bd6b9e8-c329-4078-a066-f00213688aee', 'Informasi apa yang didefinisikan oleh Metadata API di Next.js App Router?', '["Informasi <head> HTML seperti title, description, dan OpenGraph tag","Konfigurasi routing dinamis","State global aplikasi","Skema database"]'::jsonb, 0, 'Metadata API mendefinisikan informasi <head> HTML seperti title, description, favicon, dan OpenGraph tag untuk media sosial, baik statis maupun dinamis.', 1, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('ec81c523-eb33-4d43-bc49-65a4adf45f31', '0bd6b9e8-c329-4078-a066-f00213688aee', 'Apa fungsi title template seperti `{ template: "%s | Catatan Belajar" }` di app/layout.tsx?', '["Membuat format title konsisten di seluruh halaman turunan","Mengubah bahasa halaman secara otomatis","Menentukan warna tema situs","Membuat favicon otomatis"]'::jsonb, 0, 'Title template di Root Layout membuat format title konsisten — setiap halaman turunan tinggal mengisi bagian %s.', 2, '2026-09-21 10:03:34.082505+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('381b8d37-0b5d-4d30-8613-8bee858345e7', 'd2e61558-75c1-4704-87ef-ef56220afdb8', 'Alat modern apa yang direkomendasikan untuk scaffolding project React karena dev server-nya sangat cepat (pakai native ES modules)?', '["Vite","webpack","Gulp","Babel"]'::jsonb, 0, 'Vite dipakai karena dev server-nya sangat cepat (native ES modules), berbeda dari Create React App yang sekarang sudah tidak direkomendasikan lagi oleh tim React.', 0, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('83841c2d-3cc8-4d9e-bbf2-46542a76ff22', 'd2e61558-75c1-4704-87ef-ef56220afdb8', 'Fungsi apa yang menghubungkan aplikasi React ke elemen DOM nyata (`#root`)?', '["createRoot","useEffect","document.createElement","useState"]'::jsonb, 0, '`createRoot(document.getElementById(''root'')).render(...)` adalah titik pertemuan antara HTML biasa dan dunia React.', 1, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('fafa487e-c69e-4699-837e-8507e3341b41', 'd2e61558-75c1-4704-87ef-ef56220afdb8', 'Apa fungsi `<StrictMode>` di `src/main.jsx`?', '["Alat bantu development yang sengaja menjalankan sebagian fungsi dua kali untuk membantu menemukan bug","Component UI utama aplikasi","Mengatur routing aplikasi","Mempercepat build production"]'::jsonb, 0, 'StrictMode bukan komponen UI, melainkan alat bantu development untuk menemukan side effect yang tidak bersih; tidak berpengaruh di production.', 2, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('767a1628-38f3-42be-ab55-a272cbc8b499', 'ef237ccd-12be-46e1-af47-198a937b5a2a', 'JSX pada akhirnya dikompilasi menjadi apa oleh Babel/Vite?', '["React.createElement()","HTML murni","CSS","WebAssembly"]'::jsonb, 0, 'JSX cuma sintaks yang mirip HTML; di balik layar dikompilasi jadi pemanggilan React.createElement().', 0, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('1f63423d-1a55-420d-b451-182d81e6335a', 'ef237ccd-12be-46e1-af47-198a937b5a2a', 'Kenapa JSX memakai `className`, bukan `class`, untuk atribut CSS?', '["class adalah keyword reserved di JavaScript","className lebih pendek untuk diketik","HTML tidak mendukung atribut class","class cuma untuk komponen berbasis class"]'::jsonb, 0, 'class adalah kata kunci reserved di JavaScript, jadi JSX memakai className sebagai gantinya.', 1, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('993fddc3-523c-4045-843b-b904b2d1c4d3', 'ef237ccd-12be-46e1-af47-198a937b5a2a', 'Apa yang wajib dipenuhi JSX terkait root element yang dikembalikan sebuah component?', '["Wajib satu root element pembungkus (atau Fragment <>...</>)","Boleh banyak root element tanpa pembungkus","Wajib pakai <div> sebagai root","Tidak boleh ada elemen bersarang"]'::jsonb, 0, 'JSX wajib punya satu root element; kalau tidak mau ada tag pembungkus tambahan di DOM, pakai Fragment (<>...</>).', 2, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('87240fb5-11f8-41ac-9729-9e0985b69485', 'f630317b-981e-41b2-b3fb-b80b1cc345d7', 'Kenapa nama component React wajib diawali huruf kapital, misalnya `KartuProduk`?', '["Supaya React bisa membedakan component dari tag HTML biasa","Supaya lebih mudah dibaca saja","Itu aturan penamaan JavaScript pada umumnya","Supaya bisa dipakai di file .jsx"]'::jsonb, 0, 'React memakai huruf kapital di awal nama untuk membedakan <KartuProduk /> (component) dari <div /> (tag HTML biasa).', 0, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('9499698d-2f17-4de1-aff4-1f4319e89cb0', 'f630317b-981e-41b2-b3fb-b80b1cc345d7', 'Bagaimana sifat props yang diterima sebuah component?', '["Read-only, tidak boleh diubah component itu sendiri","Bisa diubah bebas oleh component itu sendiri","Otomatis ter-update dua arah ke parent","Hanya boleh berisi string"]'::jsonb, 0, 'Data mengalir satu arah (one-way data flow) dari parent ke child; component tidak boleh mengubah props yang diterimanya sendiri.', 1, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('624a54a0-8ad4-4980-bf08-ed501fd8a73e', 'f630317b-981e-41b2-b3fb-b80b1cc345d7', '`function KartuProduk({ nama, harga })` — teknik apa yang dipakai pada parameter itu?', '["Destructuring dari objek props","Spread operator","Template literal","Optional chaining"]'::jsonb, 0, 'Itu sama dengan menulis function KartuProduk(props) { const { nama, harga } = props; ... } — destructuring objek props langsung di parameter.', 2, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('5a412e1c-bb98-4380-991f-8fbc8c2a3408', '5b25c713-0c3b-467d-9bd2-3f5002f12668', 'Kenapa variabel biasa di dalam fungsi component tidak cukup untuk menyimpan data yang berubah seiring waktu (mis. jumlah klik)?', '["Di-reset ke nilai awal tiap render ulang, dan mengubahnya tidak memicu render ulang","Variabel biasa berjalan lebih lambat","JavaScript tidak mendukung variabel di dalam fungsi","useState wajib dipakai di semua fungsi JavaScript"]'::jsonb, 0, 'Tiap render, fungsi component dijalankan dari awal sehingga variabel biasa di-reset, dan mengubahnya langsung tidak memberi tahu React untuk render ulang.', 0, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('43ea5789-6bcb-4c34-9dff-00aeca50efc5', '5b25c713-0c3b-467d-9bd2-3f5002f12668', 'Apa yang dikembalikan oleh pemanggilan `useState(0)`?', '["Array berisi nilai state saat ini dan fungsi untuk mengubahnya","Objek dengan properti value","String kosong","Sebuah Promise"]'::jsonb, 0, 'useState mengembalikan array [nilaiSaatIni, fungsiSetter], biasa didestructuring jadi const [count, setCount] = useState(0).', 1, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('2d4fe525-11c9-41ae-b2a4-a8e4cce57198', '5b25c713-0c3b-467d-9bd2-3f5002f12668', 'Kalau `<Counter />` dipakai dua kali di halaman yang sama, bagaimana state `count` di masing-masing instance?', '["Masing-masing instance punya count sendiri-sendiri, terpisah total","Keduanya berbagi nilai count yang sama","Cuma instance pertama yang benar-benar punya state","Akan terjadi error karena komponen duplikat"]'::jsonb, 0, 'State bersifat lokal per instance component — mengklik salah satu Counter tidak memengaruhi Counter lainnya.', 2, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('ca5acd51-25b4-49c1-bcf8-f646e8943606', 'eb9e7936-95b5-42b9-9396-12637e884505', 'Kenapa `onClick={handleClick()}` salah dipakai sebagai event handler?', '["Fungsi langsung terpanggil sekali waktu render, bukan waktu diklik","Sintaksnya langsung error di JSX","Tidak bisa dipakai sama sekali di JSX","Harus selalu pakai arrow function tanpa terkecuali"]'::jsonb, 0, 'onClick={handleClick()} memanggil fungsinya sekali saat render (karena ada tanda kurung), bukan mengirim referensi fungsi untuk dipanggil nanti saat event terjadi.', 0, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('33845c87-d26b-4c0b-8fd2-dca1edf063a8', 'eb9e7936-95b5-42b9-9396-12637e884505', 'Kenapa handler dengan parameter tambahan (misal id item) perlu dibungkus arrow function, seperti `onClick={() => onHapus(item.id)}`?', '["Supaya pemanggilannya ditunda sampai event benar-benar terjadi","Supaya dieksekusi lebih cepat","Karena onHapus tidak bisa dipanggil langsung sama sekali","Itu wajib secara sintaks JSX untuk semua handler"]'::jsonb, 0, 'Arrow function membungkus pemanggilan onHapus(item.id) supaya baru dieksekusi saat event klik terjadi, bukan langsung saat render.', 1, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('10c564f1-a4dc-4bd8-8aae-2469903eb2ed', 'eb9e7936-95b5-42b9-9396-12637e884505', 'Apa sebutan untuk event object di React yang dibungkus supaya perilakunya konsisten di semua browser?', '["Synthetic Event","Native Event","Virtual Event","Custom Event"]'::jsonb, 0, 'React membungkus event native browser jadi Synthetic Event supaya API-nya (e.target, e.preventDefault(), dst) konsisten di semua browser.', 2, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('76f8e52a-6630-4dc4-97cc-8e7c5cc7c1c2', '97bae629-d766-42d8-b52f-72403968fe7e', 'Kenapa React tidak bisa langsung menulis if/else di tengah markup JSX?', '["JSX cuma ekspresi, bukan statement","JSX tidak mendukung JavaScript sama sekali","if/else sudah deprecated di JavaScript modern","React secara sengaja melarang percabangan"]'::jsonb, 0, 'JSX adalah ekspresi yang menghasilkan nilai, sedangkan if/else adalah statement — makanya percabangan besar ditulis di luar JSX (mis. return lebih awal).', 0, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('4b2ba4b0-f968-4360-8c77-85ad123d5c76', '97bae629-d766-42d8-b52f-72403968fe7e', 'Apa jebakan umum menulis `{jumlahPesan && <span>...</span>}` tanpa perbandingan eksplisit (mis. `> 0`)?', '["Kalau jumlahPesan bernilai 0, angka \"0\" itu sendiri ikut ter-render ke layar","Kode itu akan selalu error saat build","Component tidak akan pernah ter-render","jumlahPesan otomatis dianggap true"]'::jsonb, 0, '0 dianggap falsy oleh JavaScript, tapi karena bukan null/undefined/false, React tetap merender nilai 0 itu sendiri sebagai teks di layar.', 1, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('c4fe8be9-25cd-4b05-96bc-b2089d8fbb80', '97bae629-d766-42d8-b52f-72403968fe7e', 'Untuk percabangan besar yang paling jelas dibaca, cara apa yang direkomendasikan?', '["if/else di luar JSX dengan return lebih awal","Ternary bersarang berkali-kali di dalam JSX","switch-case langsung di dalam JSX","Selalu pakai operator && untuk semua kasus"]'::jsonb, 0, 'if/else di luar JSX dengan return lebih awal paling gampang dibaca untuk percabangan besar, dibanding ternary bersarang yang cepat sulit dibaca.', 2, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('1801331a-022a-40bb-926e-b4bac4388c78', '925ecd75-7b79-409e-b372-642eafd5f496', 'Fungsi JavaScript apa yang dipakai untuk mengubah array data jadi array elemen JSX?', '[".map()",".filter()",".reduce()",".forEach()"]'::jsonb, 0, 'React memakai Array.prototype.map() biasa (bukan API baru) untuk mentransformasi array data jadi array elemen JSX.', 0, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('c4475d6a-f630-48f5-99f3-597388afdff6', '925ecd75-7b79-409e-b372-642eafd5f496', 'Kenapa prop `key` penting saat me-render list di React?', '["React memakainya untuk mencocokkan elemen list antar render supaya tidak salah mencocokkan item","Supaya CSS bisa styling per item secara otomatis","Wajib untuk validasi HTML","Untuk mempercepat network request"]'::jsonb, 0, 'key membantu React mencocokkan item mana yang ditambah/dihapus/digeser urutannya antar render, mencegah bug halus seperti state yang "nempel" ke item salah.', 1, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('a91bf28f-9d2d-4b90-b458-2cd337406817', '925ecd75-7b79-409e-b372-642eafd5f496', 'Kapan memakai index array sebagai `key` dianggap berisiko?', '["Kalau list itu bisa diurutkan ulang, ditambah di tengah, atau dihapus sebagian","Selalu aman dipakai kapan saja tanpa pengecualian","Cuma berisiko kalau list-nya kosong","Index tidak pernah boleh dipakai sama sekali walau list statis"]'::jsonb, 0, 'Kalau list berubah urutan/ditambah/dihapus, index tiap item bisa berubah walau datanya sama, membuat React salah mencocokkan elemen.', 2, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('4e405100-e203-4768-8a40-d0c802b216aa', '098092c7-34cf-4366-9ae8-9b3167714015', 'Apa yang dimaksud dengan "controlled component" pada form React?', '["Nilai input disimpan di state React dan disinkronkan lewat onChange, bukan disimpan di DOM","Input yang otomatis tervalidasi tanpa kode tambahan","Component yang di-render di server","Form yang tidak bisa diedit oleh user"]'::jsonb, 0, 'Controlled component menjadikan state React sebagai single source of truth untuk nilai input, bukan DOM yang menyimpannya sendiri.', 0, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('df4e7a37-07e1-401a-ad72-fbe7296fc906', '098092c7-34cf-4366-9ae8-9b3167714015', 'Kalau `value` di-set pada `<input>` tapi `onChange` tidak disediakan, apa yang terjadi?', '["Input jadi read-only (tidak bisa diketik) karena state tidak pernah diperbarui","Input berjalan normal seperti biasa","React otomatis menambahkan onChange sendiri","Akan muncul error saat proses build"]'::jsonb, 0, 'Tanpa onChange, state yang jadi sumber value tidak pernah berubah, jadi input terlihat seperti tidak bisa diketik.', 1, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('d895e5db-7c69-4697-a351-fc959c6f9f62', '098092c7-34cf-4366-9ae8-9b3167714015', 'Pola `{...data, [e.target.name]: e.target.value}` dipakai untuk apa?', '["Meng-update satu field dalam objek state tanpa memutasi objek lamanya langsung","Menghapus semua data lama di state","Membuat array baru dari sebuah objek","Validasi format input"]'::jsonb, 0, 'Spread {...data} menyalin field lama, lalu [e.target.name]: e.target.value menimpa satu field sesuai input yang berubah — tanpa memutasi objek state lama secara langsung.', 2, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('de7528ba-267f-4fd6-ad0c-4af7a73402e6', '4a0c242e-8f48-4777-8060-ad5d6073febd', 'Kapan efek pada `useEffect(() => {...}, [])` (dependency array kosong) dijalankan?', '["Cuma sekali, tepat setelah render pertama (mount)","Setiap kali component render ulang, apa pun penyebabnya","Tidak akan pernah dijalankan","Hanya saat component di-unmount"]'::jsonb, 0, 'Dependency array kosong [] berarti efek cuma jalan sekali setelah render pertama (mount), tidak berulang di render selanjutnya.', 0, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('aa918c04-a4c3-4532-b81d-7aa3c4a4c4ac', '4a0c242e-8f48-4777-8060-ad5d6073febd', 'Apa fungsi cleanup function yang dikembalikan dari sebuah useEffect?', '["Dijalankan sebelum efek berikutnya jalan / sebelum component unmount, untuk membereskan resource seperti interval","Untuk memulai efek yang benar-benar baru","Untuk mengubah isi dependency array","Untuk mempercepat proses render"]'::jsonb, 0, 'Cleanup function (mis. return () => clearInterval(id)) dipanggil sebelum efek berikutnya jalan atau saat component unmount, untuk membereskan resource dari efek sebelumnya.', 1, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;
INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES ('3c1fe9aa-7028-4d1a-b150-b1405f69d665', '4a0c242e-8f48-4777-8060-ad5d6073febd', 'Apa akibat kalau `clearInterval` tidak dipanggil di cleanup function pada contoh Timer?', '["Menumpuk interval baru yang jalan terus di background (memory leak)","Timer otomatis berhenti sendiri","Tidak ada dampak apa pun ke aplikasi","Component akan langsung error saat render"]'::jsonb, 0, 'Tanpa clearInterval di cleanup, tiap kali component ini remount akan menumpuk interval baru yang terus berjalan di background — memory leak klasik.', 2, '2026-09-21 23:49:42.152147+00') ON CONFLICT (id) DO UPDATE SET note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;

COMMIT;
