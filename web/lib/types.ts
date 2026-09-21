export type Category = {
  id: string;
  name: string;
  slug: string;
  // Cuma diisi kalau memang di-select (mis. di getCategoryBySlug) — query
  // yang menyisipkan Category sebagai relasi ringkas (di dalam
  // NoteSummary) tidak perlu ikut fetch ini.
  description?: string | null;
};

export type NoteSource = {
  label: string;
  url: string;
};

export type Prerequisite = {
  label: string;
  // Opsional — beda dari NoteSource, prasyarat boleh murni pengetahuan
  // tanpa link (mis. "familiar dengan JSX dasar").
  url?: string;
};

export type NoteSummary = {
  id: string;
  title: string;
  slug: string;
  category: Category;
  updated_at: string;
  orderIndex: number;
};

export type Note = NoteSummary & {
  content: string;
  sources: NoteSource[];
  prerequisites: Prerequisite[];
  practice: string | null;
  created_at: string;
};

export type CategoryWithNotes = Category & {
  notes: NoteSummary[];
};

export type Role = "user" | "admin";

export type Profile = {
  id: string;
  email?: string;
  displayName: string | null;
  role: Role;
};

// Bentuk data yang dikirim form admin (create/edit catatan) — dipisah dari
// `Note` karena form kerja dengan string mentah (categoryId dropdown,
// sources/prerequisites yang di-JSON.stringify ke hidden input) sebelum
// divalidasi & dikonversi di server action.
export type NoteFormInput = {
  categoryId: string;
  title: string;
  slug: string;
  content: string;
  sources: NoteSource[];
  prerequisites: Prerequisite[];
  practice: string;
  status: "draft" | "published";
  orderIndex: number;
};

export type NoteForAdmin = NoteFormInput & {
  id: string;
  categorySlug: string;
  updatedAt: string;
};

export type Comment = {
  id: string;
  body: string;
  createdAt: string;
  userId: string;
  authorName: string;
};

export type ProgressStatus = "belum" | "dipelajari" | "selesai";

export type ProgressEntry = {
  status: ProgressStatus;
  updatedAt: string;
  note: NoteSummary;
};

export type CategoryProgress = {
  total: number;
  selesai: number;
  dipelajari: number;
};

export type AdjacentNotes = {
  prev: NoteSummary | null;
  next: NoteSummary | null;
};

// Kuis di akhir catatan atau akhir kategori — scope-nya menentukan tabel
// mana yang dipakai di lib/queries.ts (note_quiz_* vs category_quiz_*),
// jadi selalu tepat salah satu dari dua field ini yang diisi.
export type QuizScope = { noteId: string } | { categoryId: string };

export type QuizQuestion = {
  id: string;
  question: string;
  options: string[];
  correctIndex: number;
  explanation: string | null;
  orderIndex: number;
};

export type QuizAttempt = {
  score: number;
  total: number;
  answers: number[];
  updatedAt: string;
};

// Bentuk data form admin (create/edit soal) — mirip pola NoteFormInput.
export type QuizQuestionFormInput = {
  question: string;
  options: string[];
  correctIndex: number;
  explanation: string;
  orderIndex: number;
};

export type QuizQuestionForAdmin = QuizQuestionFormInput & {
  id: string;
};
