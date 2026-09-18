---
title: Server Component vs Client Component
date: 2024-04-15
updated: 2026-09-18
---

Di App Router, semua komponen di dalam folder `app/` adalah **Server
Component** secara default — dirender di server, tidak mengirim JavaScript
komponennya ke browser. Untuk komponen yang butuh interaktivitas (state,
event handler, hooks), harus ditandai sebagai **Client Component**.

```
Server                                  Browser
+----------------------+                +--------------------------+
| Server Component      |    HTML       |                           |
| - fetch data           | -----------> |  Render HTML (statis)     |
| - render jadi HTML     |               |                           |
+----------------------+                |  +---------------------+  |
                                         |  | Client Component     |  |
| Client Component      |  HTML + JS    |  | "use client"         |  |
| - "use client"        | ------------> |  | (di-hydrate, jadi     |  |
+----------------------+                |  |  interaktif)          |  |
                                         |  +---------------------+  |
                                         +--------------------------+
```

Server Component hanya mengirim hasil render (HTML), JavaScript-nya tidak
pernah sampai ke browser. Client Component mengirim HTML *dan* bundle
JS-nya supaya bisa jadi interaktif lewat proses hydration.

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

- Directive `"use client"` wajib ditulis paling atas file, sebelum import
  lain, supaya komponen (dan semua yang di-import olehnya) dikirim juga ke
  browser sebagai JavaScript.
- Server Component tidak bisa memakai `useState`, `useEffect`, atau
  event handler (`onClick`, dst) — kalau butuh itu, pindahkan bagian
  interaktifnya ke Client Component terpisah.
- Server Component boleh langsung `async`/`await` untuk fetch data, tanpa
  perlu `useEffect`.

## Sumber

- [Next.js Docs — Server and Client Components](https://nextjs.org/docs/app/getting-started/server-and-client-components)
