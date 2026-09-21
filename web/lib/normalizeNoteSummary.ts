import type { NoteSummary } from "@/lib/types";

// Dipisah dari lib/queries.ts (yang mengimpor lib/supabase/server.ts →
// next/headers, jadi butuh request context Next.js) supaya fungsi murni
// ini bisa dites langsung tanpa mocking Supabase/Next.
//
// Supabase mengembalikan relasi belongsTo sebagai array kalau tipe hasil
// generic-nya tidak dispesifikasikan lewat codegen; kita tahu tiap note
// selalu punya tepat satu category (foreign key not-null), jadi ratakan di
// sini supaya pemanggil tidak perlu mikirin bentuk mentah dari Supabase.
export function normalizeNoteSummary(row: any): NoteSummary {
  const category = Array.isArray(row.category) ? row.category[0] : row.category;
  return {
    id: row.id,
    title: row.title,
    slug: row.slug,
    updated_at: row.updated_at,
    orderIndex: row.order_index ?? 0,
    category,
  };
}
