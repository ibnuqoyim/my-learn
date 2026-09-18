// Jalankan file SQL terhadap project Supabase lewat Management API,
// dipakai untuk menerapkan supabase/schema.sql sebelum ada Supabase CLI
// ter-setup. Butuh PAT_TOKEN_SUPABASE (personal access token, bukan
// project API key) dan project ref di environment.
//
// Usage: node scripts/run-sql.mjs <path-ke-file.sql> <project-ref>

import { readFile } from "node:fs/promises";

const [, , sqlPath, projectRef] = process.argv;
const pat = process.env.PAT_TOKEN_SUPABASE;

if (!sqlPath || !projectRef || !pat) {
  console.error("Usage: PAT_TOKEN_SUPABASE=... node scripts/run-sql.mjs <file.sql> <project-ref>");
  process.exit(1);
}

const query = await readFile(sqlPath, "utf8");

const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
  method: "POST",
  headers: {
    Authorization: `Bearer ${pat}`,
    "Content-Type": "application/json",
  },
  body: JSON.stringify({ query }),
});

const text = await res.text();

if (!res.ok) {
  console.error(`Gagal (HTTP ${res.status}):`, text);
  process.exit(1);
}

console.log(`Sukses (HTTP ${res.status})`);
console.log(text.slice(0, 2000));
