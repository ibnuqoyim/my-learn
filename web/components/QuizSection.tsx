"use client";

import Link from "next/link";
import { useState } from "react";
import { getQuizDataAction } from "@/app/actions/quiz";
import Modal from "@/components/Modal";
import { createClient } from "@/lib/supabase/client";
import type { Profile, QuizAttempt, QuizQuestion, QuizScope } from "@/lib/types";

type Props = {
  scope: QuizScope;
  title: string;
  currentUser: Profile | null;
};

export default function QuizSection({ scope, title, currentUser }: Props) {
  const [open, setOpen] = useState(false);
  const [loading, setLoading] = useState(false);
  const [loaded, setLoaded] = useState(false);
  const [loadError, setLoadError] = useState<string | null>(null);
  const [questions, setQuestions] = useState<QuizQuestion[]>([]);
  const [attempt, setAttempt] = useState<QuizAttempt | null>(null);
  const [retaking, setRetaking] = useState(false);
  const [selected, setSelected] = useState<(number | null)[]>([]);
  const [submitting, setSubmitting] = useState(false);
  const [submitError, setSubmitError] = useState<string | null>(null);
  const [justSubmitted, setJustSubmitted] = useState<number[] | null>(null);

  if (!currentUser) {
    return (
      <section className="mt-10">
        <h2 className="mb-4 border-b border-border pb-1 text-xl font-bold">🧠 {title}</h2>
        <p className="text-sm text-muted">
          <Link href="/login" className="text-accent underline underline-offset-2">
            Masuk
          </Link>{" "}
          dulu untuk ikut kuis ini.
        </p>
      </section>
    );
  }

  async function handleOpen() {
    setOpen(true);
    if (loaded || loading) return;

    setLoading(true);
    setLoadError(null);
    const result = await getQuizDataAction(scope);
    setLoading(false);

    if (!result.success) {
      setLoadError(result.error);
      return;
    }

    setQuestions(result.questions);
    setAttempt(result.attempt);
    setSelected(result.questions.map(() => null));
    setRetaking(!result.attempt);
    setLoaded(true);
  }

  function selectAnswer(questionIndex: number, optionIndex: number) {
    setSelected((prev) => prev.map((value, i) => (i === questionIndex ? optionIndex : value)));
  }

  function startRetake() {
    setSelected(questions.map(() => null));
    setJustSubmitted(null);
    setSubmitError(null);
    setRetaking(true);
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!currentUser) return;
    if (selected.some((value) => value === null)) {
      setSubmitError("Jawab semua pertanyaan dulu sebelum submit.");
      return;
    }

    setSubmitting(true);
    setSubmitError(null);

    const answers = selected as number[];
    const score = questions.reduce((total, question, i) => total + (answers[i] === question.correctIndex ? 1 : 0), 0);
    const scopeColumn = "noteId" in scope ? { note_id: scope.noteId } : { category_id: scope.categoryId };
    const onConflict = "noteId" in scope ? "user_id,note_id" : "user_id,category_id";
    const table = "noteId" in scope ? "note_quiz_attempts" : "category_quiz_attempts";

    const supabase = createClient();
    const { error: dbError } = await supabase
      .from(table)
      .upsert(
        { user_id: currentUser.id, ...scopeColumn, score, total: questions.length, answers, updated_at: new Date().toISOString() },
        { onConflict }
      );

    setSubmitting(false);

    if (dbError) {
      setSubmitError(dbError.message);
      return;
    }

    setAttempt({ score, total: questions.length, answers, updatedAt: new Date().toISOString() });
    setJustSubmitted(answers);
    setRetaking(false);
  }

  return (
    <section className="mt-10">
      <h2 className="mb-2 border-b border-border pb-1 text-xl font-bold">🧠 {title}</h2>
      <button type="button" onClick={handleOpen} className="mt-2 rounded-md bg-accent px-4 py-2 text-sm text-white">
        Mulai Kuis
      </button>

      <Modal open={open} onClose={() => setOpen(false)} title={`🧠 ${title}`}>
        {loading && <p className="text-sm text-muted">Memuat soal...</p>}
        {loadError && <p className="text-sm text-red-500">{loadError}</p>}
        {loaded && questions.length === 0 && <p className="text-sm text-muted">Belum ada soal kuis untuk ini.</p>}

        {loaded && questions.length > 0 && !retaking && attempt && (
          <div>
            <p className="mb-3 font-bold">
              Skor kamu: {attempt.score} / {attempt.total}
            </p>

            {justSubmitted && (
              <ul className="mb-3 flex flex-col gap-3">
                {questions.map((question, i) => {
                  const picked = justSubmitted[i];
                  const isCorrect = picked === question.correctIndex;
                  return (
                    <li key={question.id} className="text-sm">
                      <p className="font-bold">
                        {isCorrect ? "✅" : "❌"} {question.question}
                      </p>
                      <p className="text-muted">
                        Jawaban kamu: {question.options[picked]}
                        {!isCorrect && ` — jawaban benar: ${question.options[question.correctIndex]}`}
                      </p>
                      {question.explanation && <p className="mt-1 text-muted">{question.explanation}</p>}
                    </li>
                  );
                })}
              </ul>
            )}

            <button type="button" onClick={startRetake} className="rounded-md border border-border bg-code-bg px-4 py-2 text-sm">
              Coba Lagi
            </button>
          </div>
        )}

        {loaded && questions.length > 0 && retaking && (
          <form onSubmit={handleSubmit} className="flex flex-col gap-6">
            {questions.map((question, qi) => (
              <fieldset key={question.id} className="rounded-md border border-border p-4">
                <legend className="px-1 font-bold">
                  {qi + 1}. {question.question}
                </legend>
                <div className="mt-2 flex flex-col gap-2">
                  {question.options.map((option, oi) => (
                    <label key={oi} className="flex items-center gap-2 text-sm">
                      <input
                        type="radio"
                        name={`quiz-question-${qi}`}
                        checked={selected[qi] === oi}
                        onChange={() => selectAnswer(qi, oi)}
                      />
                      {option}
                    </label>
                  ))}
                </div>
              </fieldset>
            ))}

            {submitError && <p className="text-sm text-red-500">{submitError}</p>}

            <button
              type="submit"
              disabled={submitting}
              className="self-start rounded-md bg-accent px-4 py-2 text-sm text-white disabled:opacity-60"
            >
              {submitting ? "Mengirim..." : "Submit Jawaban"}
            </button>
          </form>
        )}
      </Modal>
    </section>
  );
}
