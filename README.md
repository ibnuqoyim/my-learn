# Catatan Belajar

Blog sederhana untuk menyimpan catatan pelajaran. Semua catatan ditulis dalam
file Markdown dan dikelompokkan per folder berdasarkan topik. Dibangun dengan
[Eleventy (11ty)](https://www.11ty.dev/) — static site generator ringan yang
outputnya HTML murni, sehingga sangat mudah dideploy ke Netlify.

## Struktur folder

```
notes/
  javascript/
    javascript.json   <- data kategori untuk semua file di folder ini
    closure.md
    async-await.md
  python/
    python.json
    list-comprehension.md
    virtual-environment.md
  git/
    git.json
    branching.md
```

## Menambah catatan baru

1. Pilih folder kategori yang sudah ada (`notes/javascript`, `notes/python`,
   `notes/git`), atau buat folder kategori baru di dalam `notes/`.
2. Jika membuat kategori baru, tambahkan file `<nama-folder>.json` di folder
   tersebut, isinya:
   ```json
   {
     "layout": "note.njk",
     "category": "Nama Kategori",
     "tags": "notes"
   }
   ```
3. Tambahkan file `.md` baru di folder itu dengan front matter:
   ```md
   ---
   title: Judul Catatan
   date: 2024-05-01
   ---

   Isi catatan di sini, bisa pakai Markdown biasa (heading, list, code block, dst).
   ```
4. Simpan — halaman beranda dan halaman kategori akan otomatis menampilkan
   catatan baru tersebut.

## Menjalankan secara lokal

```bash
npm install
npm start        # jalankan server lokal dengan live reload di http://localhost:8080
npm run build    # build ke folder _site/
```

## Deploy ke Netlify

1. Push repo ini ke GitHub.
2. Di Netlify, klik **Add new site → Import an existing project**, lalu pilih
   repo ini.
3. Netlify akan membaca konfigurasi dari `netlify.toml` secara otomatis:
   - Build command: `npm run build`
   - Publish directory: `_site`
4. Klik **Deploy site**. Setiap kali push ke branch utama, Netlify akan
   otomatis build ulang dan deploy versi terbaru.
