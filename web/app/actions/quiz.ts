"use server";

import { createClient } from "@/lib/supabase/server";
import { getQuizAttempt, getQuizQuestions } from "@/lib/queries";
import type { QuizAttempt, QuizQuestion, QuizScope } from "@/lib/types";

type QuizDataResult =
  | { success: true; questions: QuizQuestion[]; attempt: QuizAttempt | null }
  | { success: false; error: string };

// Dipanggil begitu user klik tombol buka kuis (lihat components/QuizSection.tsx)
// -- bukan lagi di-fetch otomatis waktu halaman catatan/kategori dimuat, supaya
// user yang tidak pernah buka kuis tidak ikut menanggung query soal+attempt-nya.
export async function getQuizDataAction(scope: QuizScope): Promise<QuizDataResult> {
  try {
    const supabase = await createClient();
    const {
      data: { user },
    } = await supabase.auth.getUser();
    if (!user) return { success: false, error: "Masuk dulu untuk ikut kuis ini." };

    const [questions, attempt] = await Promise.all([getQuizQuestions(scope), getQuizAttempt(user.id, scope)]);
    return { success: true, questions, attempt };
  } catch (e) {
    return { success: false, error: e instanceof Error ? e.message : "Terjadi kesalahan" };
  }
}
