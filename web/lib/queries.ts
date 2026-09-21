import { createClient } from "@/lib/supabase/server";
import { normalizeNoteSummary } from "@/lib/normalizeNoteSummary";
import type {
  AdjacentNotes,
  Category,
  CategoryWithNotes,
  Comment,
  Note,
  NoteForAdmin,
  NoteSummary,
  Profile,
  ProgressEntry,
  QuizAttempt,
  QuizQuestion,
  QuizQuestionForAdmin,
  QuizScope,
} from "@/lib/types";

const NOTE_SUMMARY_SELECT = "id, title, slug, updated_at, order_index, category:categories(id, name, slug)";

// Supabase project belum terhubung (mis. baru clone repo, .env.local belum
// diisi) — jangan sampai seluruh app crash, tampilkan saja state kosong
// supaya `npm run dev`/`npm run build` tetap bisa dicoba sebelum ada project
// Supabase asli. Lihat README.md untuk langkah menghubungkan project.
const supabaseConfigured = Boolean(
  process.env.NEXT_PUBLIC_SUPABASE_URL && process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY
);

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
    .select("id, name, slug, description")
    .eq("slug", slug)
    .maybeSingle();

  if (categoryError) throw categoryError;
  if (!category) return null;

  const { data: notes, error: notesError } = await supabase
    .from("notes")
    .select(NOTE_SUMMARY_SELECT)
    .eq("category_id", category.id)
    .eq("status", "published")
    .order("order_index", { ascending: true });

  if (notesError) throw notesError;

  return { category, notes: (notes ?? []).map(normalizeNoteSummary) };
}

export async function getNoteBySlug(categorySlug: string, noteSlug: string): Promise<Note | null> {
  if (!supabaseConfigured) return null;
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("notes")
    .select(
      "id, title, slug, content, sources, prerequisites, practice, order_index, created_at, updated_at, category:categories!inner(id, name, slug)"
    )
    .eq("slug", noteSlug)
    .eq("status", "published")
    .eq("categories.slug", categorySlug)
    .maybeSingle();

  if (error) throw error;
  if (!data) return null;

  const category = Array.isArray(data.category) ? data.category[0] : data.category;
  return {
    id: data.id,
    title: data.title,
    slug: data.slug,
    content: data.content,
    sources: data.sources ?? [],
    prerequisites: data.prerequisites ?? [],
    practice: data.practice ?? null,
    orderIndex: data.order_index ?? 0,
    created_at: data.created_at,
    updated_at: data.updated_at,
    category,
  };
}

export async function getCurrentProfile(): Promise<Profile | null> {
  if (!supabaseConfigured) return null;
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return null;

  const { data: profile } = await supabase
    .from("profiles")
    .select("display_name, role")
    .eq("id", user.id)
    .maybeSingle();

  return {
    id: user.id,
    email: user.email ?? undefined,
    displayName: profile?.display_name ?? null,
    role: (profile?.role as Profile["role"]) ?? "user",
  };
}

export async function getComments(noteId: string): Promise<Comment[]> {
  if (!supabaseConfigured) return [];
  const supabase = await createClient();
  const { data: comments, error } = await supabase
    .from("comments")
    .select("id, body, created_at, user_id")
    .eq("note_id", noteId)
    .order("created_at", { ascending: true });

  if (error) throw error;
  if (!comments || comments.length === 0) return [];

  // comments.user_id tidak punya FK langsung ke profiles (cuma ke
  // auth.users), jadi embed otomatis PostgREST tidak bisa dipakai di sini
  // — ambil nama penulis lewat query kedua lalu digabung manual.
  const userIds = [...new Set(comments.map((c) => c.user_id))];
  const { data: profiles } = await supabase.from("profiles").select("id, display_name").in("id", userIds);
  const nameById = new Map((profiles ?? []).map((p) => [p.id, p.display_name] as const));

  return comments.map((c) => ({
    id: c.id,
    body: c.body,
    createdAt: c.created_at,
    userId: c.user_id,
    authorName: nameById.get(c.user_id) || "Pengguna",
  }));
}

export async function getUserProgress(userId: string): Promise<ProgressEntry[]> {
  if (!supabaseConfigured) return [];
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("note_progress")
    .select(`status, updated_at, note:notes(${NOTE_SUMMARY_SELECT})`)
    .eq("user_id", userId)
    .order("updated_at", { ascending: false });

  if (error) throw error;

  return (data ?? [])
    .map((row: any) => {
      const note = Array.isArray(row.note) ? row.note[0] : row.note;
      if (!note) return null;
      return { status: row.status, updatedAt: row.updated_at, note: normalizeNoteSummary(note) };
    })
    .filter((entry): entry is ProgressEntry => entry !== null);
}

export async function getNoteProgressMap(userId: string, noteIds: string[]): Promise<Record<string, string>> {
  if (!supabaseConfigured || noteIds.length === 0) return {};
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("note_progress")
    .select("note_id, status")
    .eq("user_id", userId)
    .in("note_id", noteIds);

  if (error) throw error;
  return Object.fromEntries((data ?? []).map((row) => [row.note_id, row.status]));
}

export async function getAdjacentNotes(categoryId: string, currentNoteId: string): Promise<AdjacentNotes> {
  if (!supabaseConfigured) return { prev: null, next: null };
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("notes")
    .select(NOTE_SUMMARY_SELECT)
    .eq("category_id", categoryId)
    .eq("status", "published")
    .order("order_index", { ascending: true });

  if (error) throw error;

  const ordered = (data ?? []).map(normalizeNoteSummary);
  const index = ordered.findIndex((note) => note.id === currentNoteId);
  if (index === -1) return { prev: null, next: null };

  return { prev: ordered[index - 1] ?? null, next: ordered[index + 1] ?? null };
}

export async function searchNotes(query: string): Promise<NoteSummary[]> {
  if (!supabaseConfigured || !query.trim()) return [];
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("notes")
    .select(NOTE_SUMMARY_SELECT)
    .eq("status", "published")
    .textSearch("search_vector", query, { type: "websearch", config: "indonesian" })
    .limit(30);

  if (error) throw error;
  return (data ?? []).map(normalizeNoteSummary);
}

// ============================================================
// Dashboard admin (/admin) — perlu role admin, dijaga RLS "notes_admin_all"
// & "categories_admin_write" (lihat supabase/schema.sql), bukan cuma
// filter di sini. Query di bawah sengaja tidak filter status supaya admin
// bisa lihat & kelola draft juga.
// ============================================================

export async function getAllCategoriesSimple(): Promise<Category[]> {
  if (!supabaseConfigured) return [];
  const supabase = await createClient();
  const { data, error } = await supabase.from("categories").select("id, name, slug, description").order("name");
  if (error) throw error;
  return data ?? [];
}

export async function getCategoryById(id: string): Promise<Category | null> {
  if (!supabaseConfigured) return null;
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("categories")
    .select("id, name, slug, description")
    .eq("id", id)
    .maybeSingle();
  if (error) throw error;
  return data;
}

export async function getAllNotesForAdmin(): Promise<(NoteSummary & { status: "draft" | "published" })[]> {
  if (!supabaseConfigured) return [];
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("notes")
    .select(`${NOTE_SUMMARY_SELECT}, status`)
    .order("updated_at", { ascending: false });

  if (error) throw error;
  return (data ?? []).map((row: any) => ({ ...normalizeNoteSummary(row), status: row.status }));
}

export async function getNoteForAdmin(id: string): Promise<NoteForAdmin | null> {
  if (!supabaseConfigured) return null;
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("notes")
    .select(
      "id, title, slug, content, sources, prerequisites, practice, status, order_index, updated_at, category:categories!inner(id, slug)"
    )
    .eq("id", id)
    .maybeSingle();

  if (error) throw error;
  if (!data) return null;

  const category = Array.isArray(data.category) ? data.category[0] : data.category;
  return {
    id: data.id,
    title: data.title,
    slug: data.slug,
    content: data.content,
    sources: data.sources ?? [],
    prerequisites: data.prerequisites ?? [],
    practice: data.practice ?? "",
    status: data.status,
    orderIndex: data.order_index ?? 0,
    categoryId: category.id,
    categorySlug: category.slug,
    updatedAt: data.updated_at,
  };
}

export async function isCurrentUserAdmin(): Promise<boolean> {
  const profile = await getCurrentProfile();
  return profile?.role === "admin";
}

// ============================================================
// Kuis (di akhir catatan & di akhir kategori) — lihat QuizScope di
// lib/types.ts. Soal boleh dibaca publik (RLS di supabase/schema.sql),
// yang membatasi tampil/tidaknya di halaman adalah status login,
// dicek di komponen pemanggil, bukan di sini.
// ============================================================

function quizQuestionsTable(scope: QuizScope) {
  return "noteId" in scope ? "note_quiz_questions" : "category_quiz_questions";
}

function quizAttemptsTable(scope: QuizScope) {
  return "noteId" in scope ? "note_quiz_attempts" : "category_quiz_attempts";
}

function quizScopeColumn(scope: QuizScope): [string, string] {
  return "noteId" in scope ? ["note_id", scope.noteId] : ["category_id", scope.categoryId];
}

export async function getQuizQuestions(scope: QuizScope): Promise<QuizQuestion[]> {
  if (!supabaseConfigured) return [];
  const supabase = await createClient();
  const [column, value] = quizScopeColumn(scope);
  const { data, error } = await supabase
    .from(quizQuestionsTable(scope))
    .select("id, question, options, correct_index, explanation, order_index")
    .eq(column, value)
    .order("order_index", { ascending: true });

  if (error) throw error;
  return (data ?? []).map((row: any) => ({
    id: row.id,
    question: row.question,
    options: row.options ?? [],
    correctIndex: row.correct_index,
    explanation: row.explanation,
    orderIndex: row.order_index ?? 0,
  }));
}

// Dipakai halaman admin quiz — bentuknya sama dengan getQuizQuestions,
// cuma explanation di-default-kan ke string kosong (form input, bukan
// nullable) supaya langsung cocok sebagai initial value <textarea>.
export async function getQuizQuestionsForAdmin(scope: QuizScope): Promise<QuizQuestionForAdmin[]> {
  const questions = await getQuizQuestions(scope);
  return questions.map((q) => ({ ...q, explanation: q.explanation ?? "" }));
}

export async function getQuizAttempt(userId: string, scope: QuizScope): Promise<QuizAttempt | null> {
  if (!supabaseConfigured) return null;
  const supabase = await createClient();
  const [column, value] = quizScopeColumn(scope);
  const { data, error } = await supabase
    .from(quizAttemptsTable(scope))
    .select("score, total, answers, updated_at")
    .eq("user_id", userId)
    .eq(column, value)
    .maybeSingle();

  if (error) throw error;
  if (!data) return null;
  return { score: data.score, total: data.total, answers: data.answers ?? [], updatedAt: data.updated_at };
}
