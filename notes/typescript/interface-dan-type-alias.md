---
title: Interface & Type Alias
date: 2024-04-05
---

`interface` dan `type` sama-sama dipakai untuk mendefinisikan bentuk
(shape) sebuah object, supaya TypeScript bisa memeriksa strukturnya.

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

Perbedaan singkat:

- `interface` bisa di-*extend* (`interface Admin extends User {}`) dan bisa
  digabung otomatis kalau dideklarasikan dua kali (declaration merging).
- `type` lebih fleksibel: bisa dipakai untuk union (`type Status = "aktif" | "nonaktif"`),
  bukan hanya bentuk object.
- Untuk mendefinisikan bentuk object biasa, keduanya bisa dipakai — pilih
  salah satu dan konsisten dalam satu project.

## Sumber

- [TypeScript Handbook — Object Types (Interfaces)](https://www.typescriptlang.org/docs/handbook/2/objects.html)
