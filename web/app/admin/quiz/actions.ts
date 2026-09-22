"use server";

import { revalidatePath, revalidateTag } from "next/cache";
import { requireAdmin } from "@/lib/admin-guard";
import { validateQuizQuestionInput } from "@/lib/validateQuizQuestion";
import type { QuizQuestionFormInput, QuizScope } from "@/lib/types";

type ActionResult = { success: true; id: string } | { success: false; error: string };

function quizTable(scope: QuizScope) {
  return "noteId" in scope ? "note_quiz_questions" : "category_quiz_questions";
}

function scopeColumn(scope: QuizScope): [string, string] {
  return "noteId" in scope ? ["note_id", scope.noteId] : ["category_id", scope.categoryId];
}

// Revalidate pakai template route dinamis ("page" mode) supaya tidak
// perlu query slug catatan/kategori dulu cuma untuk tahu path publiknya —
// lihat https://nextjs.org/docs/app/api-reference/functions/revalidatePath
function revalidateQuizScope(scope: QuizScope) {
  if ("noteId" in scope) {
    revalidatePath("/notes/[category]/[slug]", "page");
    revalidatePath(`/admin/quiz/note/${scope.noteId}`);
  } else {
    revalidatePath("/kategori/[slug]", "page");
    revalidatePath(`/admin/quiz/category/${scope.categoryId}`);
  }
  revalidateTag("quiz-questions", { expire: 0 });
}

export async function createQuizQuestionAction(scope: QuizScope, input: QuizQuestionFormInput): Promise<ActionResult> {
  try {
    const { supabase } = await requireAdmin();
    const validationError = validateQuizQuestionInput(input);
    if (validationError) return { success: false, error: validationError };

    const [column, value] = scopeColumn(scope);
    const { data, error } = await supabase
      .from(quizTable(scope))
      .insert({
        [column]: value,
        question: input.question.trim(),
        options: input.options.map((o) => o.trim()).filter((o) => o.length > 0),
        correct_index: input.correctIndex,
        explanation: input.explanation.trim() || null,
        order_index: input.orderIndex,
      })
      .select("id")
      .single();

    if (error) return { success: false, error: error.message };

    revalidateQuizScope(scope);
    return { success: true, id: data.id };
  } catch (e) {
    return { success: false, error: e instanceof Error ? e.message : "Terjadi kesalahan" };
  }
}

export async function updateQuizQuestionAction(
  id: string,
  scope: QuizScope,
  input: QuizQuestionFormInput
): Promise<ActionResult> {
  try {
    const { supabase } = await requireAdmin();
    const validationError = validateQuizQuestionInput(input);
    if (validationError) return { success: false, error: validationError };

    const { error } = await supabase
      .from(quizTable(scope))
      .update({
        question: input.question.trim(),
        options: input.options.map((o) => o.trim()).filter((o) => o.length > 0),
        correct_index: input.correctIndex,
        explanation: input.explanation.trim() || null,
        order_index: input.orderIndex,
      })
      .eq("id", id);

    if (error) return { success: false, error: error.message };

    revalidateQuizScope(scope);
    return { success: true, id };
  } catch (e) {
    return { success: false, error: e instanceof Error ? e.message : "Terjadi kesalahan" };
  }
}

export async function deleteQuizQuestionAction(id: string, scope: QuizScope): Promise<ActionResult> {
  try {
    const { supabase } = await requireAdmin();
    const { error } = await supabase.from(quizTable(scope)).delete().eq("id", id);
    if (error) return { success: false, error: error.message };

    revalidateQuizScope(scope);
    return { success: true, id };
  } catch (e) {
    return { success: false, error: e instanceof Error ? e.message : "Terjadi kesalahan" };
  }
}
