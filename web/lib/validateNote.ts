import type { NoteFormInput } from "@/lib/types";

const SLUG_RE = /^[a-z0-9]+(-[a-z0-9]+)*$/;

// Dipisah dari app/admin/notes/actions.ts supaya bisa dites tanpa perlu
// koneksi Supabase — logikanya murni (input in, pesan error/null out),
// tidak menyentuh database. actions.ts tetap yang menegakkannya sebelum
// insert/update.
export function validateNoteInput(input: NoteFormInput): string | null {
  if (!input.title.trim()) return "Judul wajib diisi";
  if (!input.slug.trim() || !SLUG_RE.test(input.slug.trim())) {
    return "Slug wajib diisi, format kebab-case (huruf kecil, angka, strip)";
  }
  if (!input.categoryId) return "Kategori wajib dipilih";
  if (!input.content.trim()) return "Konten wajib diisi";
  if (input.sources.length === 0) return "Minimal 1 sumber wajib diisi (standar isi materi di AGENTS.md)";
  for (const source of input.sources) {
    if (!source.label.trim() || !source.url.trim()) return "Setiap sumber wajib punya label dan url";
  }
  for (const prerequisite of input.prerequisites) {
    if (!prerequisite.label.trim()) return "Setiap prasyarat wajib punya label";
  }
  return null;
}
