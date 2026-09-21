import type { QuizQuestionFormInput } from "@/lib/types";

// Dipakai server action admin (app/admin/quiz/actions.ts) sebelum
// insert/update — logikanya murni supaya bisa dites tanpa Supabase,
// sama seperti lib/validateNote.ts.
export function validateQuizQuestionInput(input: QuizQuestionFormInput): string | null {
  if (!input.question.trim()) return "Pertanyaan wajib diisi";

  const options = input.options.map((o) => o.trim()).filter((o) => o.length > 0);
  if (options.length < 2) return "Minimal 2 opsi jawaban wajib diisi";
  if (options.length !== input.options.length) return "Semua opsi jawaban wajib diisi (tidak boleh kosong)";

  if (!Number.isInteger(input.correctIndex) || input.correctIndex < 0 || input.correctIndex >= input.options.length) {
    return "Jawaban benar wajib dipilih dari salah satu opsi";
  }

  return null;
}
