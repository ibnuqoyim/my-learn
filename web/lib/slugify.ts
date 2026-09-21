// Dipakai form admin (NoteForm, CategoryForm) untuk saran slug otomatis
// dari judul/nama — diekstrak ke sini (bukan didefinisikan ulang di tiap
// komponen) supaya satu fungsi ini bisa dites & tidak ada risiko dua
// implementasi diam-diam beda perilaku.
export function slugify(text: string): string {
  return text
    .toLowerCase()
    .trim()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/(^-|-$)/g, "");
}
