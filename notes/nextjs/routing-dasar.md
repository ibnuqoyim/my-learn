---
title: Routing Dasar dengan App Router
date: 2024-04-10
updated: 2026-09-18
---

Next.js (App Router) memakai file-based routing: struktur folder di dalam
`app/` menentukan URL, dan file `page.tsx` di dalam folder itu yang jadi
halamannya.

```
app/
  page.tsx            -> "/"
  about/
    page.tsx          -> "/about"
  blog/
    [slug]/
      page.tsx         -> "/blog/apa-saja"  (dynamic route)
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

- Hanya file bernama `page.tsx` (atau `.jsx`) yang membuat route bisa
  diakses publik; file lain di folder yang sama (komponen, util) tidak
  otomatis jadi halaman.
- Nama folder di dalam kurung siku `[slug]` berarti segmen URL dinamis, dan
  nilainya diterima lewat prop `params`.
- Sejak Next.js 15, `params` berupa `Promise` sehingga harus di-`await`
  dulu sebelum dipakai — bukan object biasa seperti versi Next.js 14 ke
  bawah.
- `layout.tsx` di level folder yang sama membungkus semua halaman di
  dalamnya (misalnya untuk header/footer bersama).

## Sumber

- [Next.js Docs — Dynamic Route Segments](https://nextjs.org/docs/app/api-reference/file-conventions/dynamic-routes)
