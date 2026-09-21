"use server";

import { revalidatePath } from "next/cache";
import { requireAdmin } from "@/lib/admin-guard";
import { validateNoteInput } from "@/lib/validateNote";
import type { NoteFormInput } from "@/lib/types";

type ActionResult = { success: true; id: string } | { success: false; error: string };

export async function createNoteAction(input: NoteFormInput): Promise<ActionResult> {
  try {
    const { supabase } = await requireAdmin();
    const validationError = validateNoteInput(input);
    if (validationError) return { success: false, error: validationError };

    const { data, error } = await supabase
      .from("notes")
      .insert({
        category_id: input.categoryId,
        title: input.title.trim(),
        slug: input.slug.trim(),
        content: input.content,
        sources: input.sources,
        prerequisites: input.prerequisites,
        practice: input.practice.trim() || null,
        status: input.status,
        order_index: input.orderIndex,
      })
      .select("id")
      .single();

    if (error) return { success: false, error: error.message };

    revalidatePath("/admin/notes");
    revalidatePath("/");
    return { success: true, id: data.id };
  } catch (e) {
    return { success: false, error: e instanceof Error ? e.message : "Terjadi kesalahan" };
  }
}

export async function updateNoteAction(id: string, input: NoteFormInput): Promise<ActionResult> {
  try {
    const { supabase } = await requireAdmin();
    const validationError = validateNoteInput(input);
    if (validationError) return { success: false, error: validationError };

    // Ambil slug + slug kategori versi lama dulu, supaya kalau judul/slug
    // atau kategorinya berubah, path lama ikut di-revalidate juga (bukan
    // cuma path baru) — kalau tidak, versi cache lama nyangkut sampai
    // request berikutnya.
    const { data: before } = await supabase
      .from("notes")
      .select("slug, category:categories(slug)")
      .eq("id", id)
      .maybeSingle();

    const { error } = await supabase
      .from("notes")
      .update({
        category_id: input.categoryId,
        title: input.title.trim(),
        slug: input.slug.trim(),
        content: input.content,
        sources: input.sources,
        prerequisites: input.prerequisites,
        practice: input.practice.trim() || null,
        status: input.status,
        order_index: input.orderIndex,
        updated_at: new Date().toISOString(),
      })
      .eq("id", id);

    if (error) return { success: false, error: error.message };

    if (before) {
      const prevCategory = Array.isArray(before.category) ? before.category[0] : before.category;
      if (prevCategory) revalidatePath(`/notes/${prevCategory.slug}/${before.slug}`);
    }
    revalidatePath("/admin/notes");
    revalidatePath("/");
    return { success: true, id };
  } catch (e) {
    return { success: false, error: e instanceof Error ? e.message : "Terjadi kesalahan" };
  }
}

export async function deleteNoteAction(id: string): Promise<ActionResult> {
  try {
    const { supabase } = await requireAdmin();
    const { error } = await supabase.from("notes").delete().eq("id", id);
    if (error) return { success: false, error: error.message };

    revalidatePath("/admin/notes");
    revalidatePath("/");
    return { success: true, id };
  } catch (e) {
    return { success: false, error: e instanceof Error ? e.message : "Terjadi kesalahan" };
  }
}
