"use server";

import { revalidatePath } from "next/cache";
import { requireAdmin } from "@/lib/admin-guard";
import type { NoteFormInput } from "@/lib/types";

type ActionResult = { success: true; id: string } | { success: false; error: string };

const SLUG_RE = /^[a-z0-9]+(-[a-z0-9]+)*$/;

function validate(input: NoteFormInput): string | null {
  if (!input.title.trim()) return "Judul wajib diisi";
  if (!input.slug.trim() || !SLUG_RE.test(input.slug.trim())) {
    return "Slug wajib diisi, format kebab-case (huruf kecil, angka, strip)";
  }
  if (!input.categoryId) return "Kategori wajib dipilih";
  if (!input.content.trim()) return "Konten wajib diisi";
  if (input.sources.length === 0) return "Minimal 1 sumber wajib diisi (standar isi materi di CLAUDE.md)";
  for (const source of input.sources) {
    if (!source.label.trim() || !source.url.trim()) return "Setiap sumber wajib punya label dan url";
  }
  for (const prerequisite of input.prerequisites) {
    if (!prerequisite.label.trim()) return "Setiap prasyarat wajib punya label";
  }
  return null;
}

export async function createNoteAction(input: NoteFormInput): Promise<ActionResult> {
  try {
    const { supabase } = await requireAdmin();
    const validationError = validate(input);
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
    const validationError = validate(input);
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
