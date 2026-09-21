const SLUG_RE = /^[a-z0-9]+(-[a-z0-9]+)*$/;

export type CategoryInput = { name: string; slug: string; description: string };

// Dipisah dari app/admin/categories/actions.ts supaya bisa dites tanpa
// perlu koneksi Supabase — lihat lib/validateNote.ts untuk alasan yang
// sama.
export function validateCategoryInput(input: CategoryInput): string | null {
  if (!input.name.trim()) return "Nama wajib diisi";
  if (!input.slug.trim() || !SLUG_RE.test(input.slug.trim())) {
    return "Slug wajib diisi, format kebab-case (huruf kecil, angka, strip)";
  }
  return null;
}
