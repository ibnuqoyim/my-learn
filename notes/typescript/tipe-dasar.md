---
title: Tipe Dasar & Type Annotation
date: 2024-04-01
---

TypeScript menambahkan sistem tipe di atas JavaScript. Tipe bisa ditulis
manual (annotation) atau otomatis ditebak oleh compiler (inference).

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
// tambah("1", 2); // Error: Argument of type 'string' is not assignable...
```

Poin penting:

- Tipe dicek saat kompilasi (compile time), bukan saat program berjalan.
- Kalau tidak ditulis, TypeScript tetap mencoba menebak tipe lewat inference —
  tetap disarankan menulis annotation di parameter fungsi agar jelas.
- File TypeScript berekstensi `.ts` (atau `.tsx` untuk JSX/React).

## Sumber

- [TypeScript Handbook — Everyday Types](https://www.typescriptlang.org/docs/handbook/2/everyday-types.html)
