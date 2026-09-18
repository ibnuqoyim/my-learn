// Script migrasi satu kali: pindahkan 11 catatan + kategori dari blog
// Eleventy lama ke Supabase, lewat supabase-js. Butuh SUPABASE_SECRET_KEY
// (bukan publishable key) supaya bisa insert — RLS menolak insert dari
// publishable key biasa.
//
// Kalau belum ada secret key di .env.local, pakai scripts/seed-via-sql.mjs
// (lewat Supabase Management API + personal access token) sebagai
// alternatif.
//
// Usage: npm run seed

import { createClient } from "@supabase/supabase-js";
import { config } from "dotenv";
import { categories, notes } from "./seed-data.mjs";

config({ path: ".env.local" });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const secretKey = process.env.SUPABASE_SECRET_KEY;

if (!supabaseUrl || !secretKey) {
  console.error("NEXT_PUBLIC_SUPABASE_URL dan SUPABASE_SECRET_KEY wajib diisi di .env.local");
  process.exit(1);
}

const supabase = createClient(supabaseUrl, secretKey);

async function main() {
  const categorySlugToId = new Map();

  for (const category of categories) {
    const { data, error } = await supabase
      .from("categories")
      .upsert(
        { name: category.name, slug: category.slug, description: category.description ?? null },
        { onConflict: "slug" }
      )
      .select("id, slug")
      .single();

    if (error) throw error;
    categorySlugToId.set(data.slug, data.id);
    console.log(`Kategori siap: ${category.name}`);
  }

  for (const note of notes) {
    const category_id = categorySlugToId.get(note.category);
    const payload = {
      category_id,
      title: note.title,
      slug: note.slug,
      content: note.content,
      sources: note.sources,
      prerequisites: note.prerequisites ?? [],
      practice: note.practice ?? null,
      order_index: note.order ?? 0,
      status: "published",
    };

    // Cek dulu apakah isinya beda dari yang sudah ada — supaya re-run
    // seed yang isinya sama tidak menggeser updated_at (dan urutan
    // "Tulisan Terbaru") tanpa alasan.
    const { data: existing } = await supabase
      .from("notes")
      .select("title, content, sources, prerequisites, practice, order_index")
      .eq("category_id", category_id)
      .eq("slug", note.slug)
      .maybeSingle();

    const changed =
      !existing ||
      existing.title !== payload.title ||
      existing.content !== payload.content ||
      existing.practice !== payload.practice ||
      existing.order_index !== payload.order_index ||
      JSON.stringify(existing.sources) !== JSON.stringify(payload.sources) ||
      JSON.stringify(existing.prerequisites) !== JSON.stringify(payload.prerequisites);

    const { error } = await supabase
      .from("notes")
      .upsert(
        changed ? { ...payload, updated_at: new Date().toISOString() } : payload,
        { onConflict: "category_id,slug" }
      );

    if (error) throw error;
    console.log(`Catatan tersimpan: ${note.title}${changed ? "" : " (tidak berubah)"}`);
  }

  console.log(`\nSelesai: ${categories.length} kategori, ${notes.length} catatan.`);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
