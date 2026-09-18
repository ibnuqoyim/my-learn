---
title: Setup Supabase Client
date: 2024-04-20
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
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

export const supabase = createClient(supabaseUrl, supabaseAnonKey);
```

```
# .env.local
NEXT_PUBLIC_SUPABASE_URL=https://xxxxx.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=xxxxxxxxxxxxxxxxx
```

Poin penting:

- `supabaseUrl` dan `anonKey` didapat dari dashboard project Supabase
  (Project Settings → API).
- `anonKey` aman dipakai di sisi client/browser karena akses datanya tetap
  dibatasi oleh Row Level Security (RLS) di database, bukan oleh key itu
  sendiri.
- Client (`supabase`) yang dibuat sekali ini dipakai ulang di seluruh
  aplikasi untuk query, auth, dan storage.

## Sumber

- [Supabase Docs — JavaScript Client Reference](https://supabase.com/docs/reference/javascript/introduction)
