import { createClient as createSupabaseClient } from "@supabase/supabase-js";

// Dipakai KHUSUS oleh query yang dibungkus `unstable_cache` di lib/queries.ts.
// `unstable_cache` melarang dynamic API (cookies()/headers()) dipanggil di
// dalamnya, jadi tidak bisa pakai lib/supabase/server.ts yang butuh cookies()
// buat sesi login. Query yang lewat client ini WAJIB cuma baca data publik
// (RLS "public_read" di supabase/schema.sql) -- hasilnya di-cache dan
// dibagikan ke SEMUA pengunjung, jadi tidak boleh bergantung ke sesi user
// mana pun.
export function createPublicClient() {
  return createSupabaseClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!
  );
}
