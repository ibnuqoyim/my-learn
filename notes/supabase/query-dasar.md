---
title: Query Data Dasar (CRUD)
date: 2024-04-25
---

Setelah client Supabase siap, operasi dasar ke database (CRUD) dipanggil
lewat method di atas nama tabel.

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

Poin penting:

- Setiap query mengembalikan `{ data, error }` — selalu cek `error` sebelum
  memakai `data`, jangan asumsikan query selalu berhasil.
- `.eq("kolom", nilai)` adalah filter kondisi `WHERE kolom = nilai`; ada
  filter lain seperti `.gt()`, `.lt()`, `.like()` untuk kondisi berbeda.
- Query hanya akan berhasil kalau diizinkan oleh Row Level Security (RLS)
  tabel tersebut — kalau RLS aktif tapi belum ada policy, semua query dari
  client akan ditolak meskipun kodenya benar.

## Sumber

- [Supabase Docs — JavaScript Client Reference](https://supabase.com/docs/reference/javascript/introduction)
