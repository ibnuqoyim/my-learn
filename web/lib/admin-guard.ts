import { createClient } from "@/lib/supabase/server";

// Dipakai server-side (layout /admin & server actions CRUD) untuk
// memastikan yang mengakses benar-benar admin. Ini lapisan kedua di atas
// RLS ("notes_admin_all"/"categories_admin_write" di supabase/schema.sql)
// — RLS tetap jadi penjamin utama di level database, tapi cek ini bikin
// error-nya jelas ("Bukan admin") daripada silent-fail lewat RLS, dan
// mencegah query sia-sia untuk user yang jelas bukan admin.
export async function requireAdmin() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    throw new Error("Belum login");
  }

  const { data: profile } = await supabase.from("profiles").select("role").eq("id", user.id).maybeSingle();

  if (profile?.role !== "admin") {
    throw new Error("Bukan admin");
  }

  return { supabase, userId: user.id };
}
