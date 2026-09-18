// Alternatif scripts/seed.mjs untuk kondisi belum ada SUPABASE_SECRET_KEY
// di .env — pakai Supabase Management API (personal access token) untuk
// menjalankan INSERT/UPSERT sebagai raw SQL, bypass RLS di level API
// project sepenuhnya (PAT beroperasi di scope akun, bukan lewat Data API).
//
// Usage: PAT_TOKEN_SUPABASE=... node scripts/seed-via-sql.mjs <project-ref>

import { categories, notes } from "./seed-data.mjs";

const [, , projectRef] = process.argv;
const pat = process.env.PAT_TOKEN_SUPABASE;

if (!projectRef || !pat) {
  console.error("Usage: PAT_TOKEN_SUPABASE=... node scripts/seed-via-sql.mjs <project-ref>");
  process.exit(1);
}

function sqlString(value) {
  return `'${String(value).replace(/'/g, "''")}'`;
}

function buildSql() {
  const statements = [];

  for (const category of categories) {
    statements.push(
      `insert into categories (name, slug) values (${sqlString(category.name)}, ${sqlString(category.slug)}) ` +
        `on conflict (slug) do update set name = excluded.name;`
    );
  }

  for (const note of notes) {
    const sourcesJson = sqlString(JSON.stringify(note.sources));
    statements.push(
      `insert into notes (category_id, title, slug, content, sources, order_index, status) values (` +
        `(select id from categories where slug = ${sqlString(note.category)}), ` +
        `${sqlString(note.title)}, ` +
        `${sqlString(note.slug)}, ` +
        `${sqlString(note.content)}, ` +
        `${sourcesJson}::jsonb, ` +
        `${note.order ?? 0}, ` +
        `'published'` +
        `) on conflict (category_id, slug) do update set ` +
        `title = excluded.title, content = excluded.content, sources = excluded.sources, ` +
        `order_index = excluded.order_index, status = excluded.status, ` +
        // Hanya bump updated_at kalau memang ada yang berubah — supaya
        // re-run seed yang isinya sama tidak menggeser urutan "Tulisan
        // Terbaru" di seluruh catatan tanpa alasan.
        `updated_at = case when (notes.title, notes.content, notes.sources, notes.order_index) ` +
        `is distinct from (excluded.title, excluded.content, excluded.sources, excluded.order_index) ` +
        `then now() else notes.updated_at end;`
    );
  }

  return statements.join("\n");
}

async function main() {
  const query = buildSql();

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

  console.log(`Sukses (HTTP ${res.status}): ${categories.length} kategori, ${notes.length} catatan.`);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
