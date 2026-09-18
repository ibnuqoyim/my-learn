import { createClient } from "@/lib/supabase/server";
import type { Category, CategoryWithNotes, Note, NoteSummary } from "@/lib/types";

const NOTE_SUMMARY_SELECT = "id, title, slug, updated_at, category:categories(id, name, slug)";

// Supabase project belum terhubung (mis. baru clone repo, .env.local belum
// diisi) — jangan sampai seluruh app crash, tampilkan saja state kosong
// supaya `npm run dev`/`npm run build` tetap bisa dicoba sebelum ada project
// Supabase asli. Lihat README.md untuk langkah menghubungkan project.
const supabaseConfigured = Boolean(
  process.env.NEXT_PUBLIC_SUPABASE_URL && process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY
);

// Supabase mengembalikan relasi belongsTo sebagai array kalau tipe hasil
// generic-nya tidak dispesifikasikan lewat codegen; kita tahu tiap note
// selalu punya tepat satu category (foreign key not-null), jadi ratakan di
// sini supaya pemanggil tidak perlu mikirin bentuk mentah dari Supabase.
function normalizeNoteSummary(row: any): NoteSummary {
  const category = Array.isArray(row.category) ? row.category[0] : row.category;
  return {
    id: row.id,
    title: row.title,
    slug: row.slug,
    updated_at: row.updated_at,
    category,
  };
}

export async function getRecentNotes(limit = 8): Promise<NoteSummary[]> {
  if (!supabaseConfigured) return [];
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("notes")
    .select(NOTE_SUMMARY_SELECT)
    .eq("status", "published")
    .order("updated_at", { ascending: false })
    .limit(limit);

  if (error) throw error;
  return (data ?? []).map(normalizeNoteSummary);
}

export async function getCategoriesWithNotes(): Promise<CategoryWithNotes[]> {
  if (!supabaseConfigured) return [];
  const supabase = await createClient();
  const { data: categories, error: categoriesError } = await supabase
    .from("categories")
    .select("id, name, slug")
    .order("name", { ascending: true });

  if (categoriesError) throw categoriesError;

  const { data: notes, error: notesError } = await supabase
    .from("notes")
    .select(NOTE_SUMMARY_SELECT)
    .eq("status", "published")
    .order("updated_at", { ascending: false });

  if (notesError) throw notesError;

  const summaries = (notes ?? []).map(normalizeNoteSummary);

  return (categories ?? []).map((category) => ({
    ...category,
    notes: summaries.filter((note) => note.category.id === category.id),
  }));
}

export async function getCategoryBySlug(
  slug: string
): Promise<{ category: Category; notes: NoteSummary[] } | null> {
  if (!supabaseConfigured) return null;
  const supabase = await createClient();
  const { data: category, error: categoryError } = await supabase
    .from("categories")
    .select("id, name, slug")
    .eq("slug", slug)
    .maybeSingle();

  if (categoryError) throw categoryError;
  if (!category) return null;

  const { data: notes, error: notesError } = await supabase
    .from("notes")
    .select(NOTE_SUMMARY_SELECT)
    .eq("category_id", category.id)
    .eq("status", "published")
    .order("updated_at", { ascending: false });

  if (notesError) throw notesError;

  return { category, notes: (notes ?? []).map(normalizeNoteSummary) };
}

export async function getNoteBySlug(categorySlug: string, noteSlug: string): Promise<Note | null> {
  if (!supabaseConfigured) return null;
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("notes")
    .select(
      "id, title, slug, content, sources, created_at, updated_at, category:categories!inner(id, name, slug)"
    )
    .eq("slug", noteSlug)
    .eq("status", "published")
    .eq("categories.slug", categorySlug)
    .maybeSingle();

  if (error) throw error;
  if (!data) return null;

  const category = Array.isArray(data.category) ? data.category[0] : data.category;
  return { ...data, category } as Note;
}
