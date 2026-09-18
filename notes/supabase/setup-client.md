---
title: Setup Supabase Client
date: 2024-04-20
updated: 2026-09-18
---

Supabase adalah backend siap pakai (database Postgres, auth, storage, dst)
yang diakses lewat library `@supabase/supabase-js` di sisi aplikasi.

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

- `supabaseUrl` dan `supabaseKey` didapat dari dashboard project Supabase
  (Project Settings → API Keys).
- Key ini disebut **publishable key** (`sb_publishable_...`) — pengganti
  "anon key" lama, karena Supabase sedang memensiunkan anon/service_role
  key. Kedua jenis key masih berfungsi untuk sementara, tapi project baru
  sebaiknya pakai publishable key.
- Publishable key aman dipakai di sisi client/browser karena akses datanya
  tetap dibatasi oleh Row Level Security (RLS) di database, bukan oleh key
  itu sendiri.
- Client (`supabase`) yang dibuat sekali ini dipakai ulang di seluruh
  aplikasi untuk query, auth, dan storage.

## Sumber

- [Supabase Docs — JavaScript Client Reference](https://supabase.com/docs/reference/javascript/introduction)
- [Supabase Docs — Migrating to publishable and secret API keys](https://supabase.com/docs/guides/getting-started/migrating-to-new-api-keys)
