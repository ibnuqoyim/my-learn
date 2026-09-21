"use server";

import { revalidatePath } from "next/cache";
import { requireAdmin } from "@/lib/admin-guard";

type ActionResult = { success: true } | { success: false; error: string };

const SLUG_RE = /^[a-z0-9]+(-[a-z0-9]+)*$/;

type CategoryInput = { name: string; slug: string; description: string };

function validate(input: CategoryInput): string | null {
  if (!input.name.trim()) return "Nama wajib diisi";
  if (!input.slug.trim() || !SLUG_RE.test(input.slug.trim())) {
    return "Slug wajib diisi, format kebab-case (huruf kecil, angka, strip)";
  }
  return null;
}

export async function createCategoryAction(input: CategoryInput): Promise<ActionResult> {
  try {
    const { supabase } = await requireAdmin();
    const validationError = validate(input);
    if (validationError) return { success: false, error: validationError };

    const { error } = await supabase.from("categories").insert({
      name: input.name.trim(),
      slug: input.slug.trim(),
      description: input.description.trim() || null,
    });

    if (error) return { success: false, error: error.message };

    revalidatePath("/admin/categories");
    revalidatePath("/");
    return { success: true };
  } catch (e) {
    return { success: false, error: e instanceof Error ? e.message : "Terjadi kesalahan" };
  }
}

export async function updateCategoryAction(id: string, input: CategoryInput): Promise<ActionResult> {
  try {
    const { supabase } = await requireAdmin();
    const validationError = validate(input);
    if (validationError) return { success: false, error: validationError };

    const { error } = await supabase
      .from("categories")
      .update({
        name: input.name.trim(),
        slug: input.slug.trim(),
        description: input.description.trim() || null,
      })
      .eq("id", id);

    if (error) return { success: false, error: error.message };

    revalidatePath("/admin/categories");
    revalidatePath("/");
    return { success: true };
  } catch (e) {
    return { success: false, error: e instanceof Error ? e.message : "Terjadi kesalahan" };
  }
}

export async function deleteCategoryAction(id: string): Promise<ActionResult> {
  try {
    const { supabase } = await requireAdmin();
    const { error } = await supabase.from("categories").delete().eq("id", id);
    // FK notes.category_id -> categories.id pakai "on delete restrict", jadi
    // kategori yang masih punya catatan akan ditolak database — pesan
    // error-nya sudah cukup jelas, tidak perlu dicek manual dulu di sini.
    if (error) return { success: false, error: error.message };

    revalidatePath("/admin/categories");
    revalidatePath("/");
    return { success: true };
  } catch (e) {
    return { success: false, error: e instanceof Error ? e.message : "Terjadi kesalahan" };
  }
}
