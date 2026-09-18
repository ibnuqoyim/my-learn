---
title: Async/Await di JavaScript
date: 2024-01-20
---

`async/await` adalah gula sintaks di atas Promise agar kode asinkron terlihat seperti kode sinkron.

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
- Gunakan `try/catch` untuk menangani error, menggantikan `.catch()` pada Promise biasa.
