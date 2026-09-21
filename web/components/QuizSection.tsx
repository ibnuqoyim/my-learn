"use client";

import Link from "next/link";
import { useState } from "react";
import { createClient } from "@/lib/supabase/client";
import type { Profile, QuizAttempt, QuizQuestion, QuizScope } from "@/lib/types";

type Props = {
  scope: QuizScope;
  title: string;
  questions: QuizQuestion[];
  currentUser: Profile | null;
  initialAttempt: QuizAttempt | null;
};

export default function QuizSection({ scope, title, questions, currentUser, initialAttempt }: Props) {
  const [attempt, setAttempt] = useState(initialAttempt);
  const [retaking, setRetaking] = useState(!initialAttempt);
  const [selected, setSelected] = useState<(number | null)[]>(() => questions.map(() => null));
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [justSubmitted, setJustSubmitted] = useState<number[] | null>(null);

  if (questions.length === 0) return null;

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

  function selectAnswer(questionIndex: number, optionIndex: number) {
    setSelected((prev) => prev.map((value, i) => (i === questionIndex ? optionIndex : value)));
  }

  function startRetake() {
    setSelected(questions.map(() => null));
    setJustSubmitted(null);
    setError(null);
    setRetaking(true);
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!currentUser) return;
    if (selected.some((value) => value === null)) {
      setError("Jawab semua pertanyaan dulu sebelum submit.");
      return;
    }

    setSubmitting(true);
    setError(null);

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
      setError(dbError.message);
      return;
    }

    setAttempt({ score, total: questions.length, answers, updatedAt: new Date().toISOString() });
    setJustSubmitted(answers);
    setRetaking(false);
  }

  if (!retaking && attempt) {
    return (
      <section className="mt-10">
        <h2 className="mb-4 border-b border-border pb-1 text-xl font-bold">🧠 {title}</h2>
        <div className="rounded-md border border-border bg-code-bg p-4">
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

          <button
            type="button"
            onClick={startRetake}
            className="rounded-md border border-border bg-bg px-4 py-2 text-sm"
          >
            Coba Lagi
          </button>
        </div>
      </section>
    );
  }

  return (
    <section className="mt-10">
      <h2 className="mb-4 border-b border-border pb-1 text-xl font-bold">🧠 {title}</h2>
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

        {error && <p className="text-sm text-red-500">{error}</p>}

        <button
          type="submit"
          disabled={submitting}
          className="self-start rounded-md bg-accent px-4 py-2 text-sm text-white disabled:opacity-60"
        >
          {submitting ? "Mengirim..." : "Submit Jawaban"}
        </button>
      </form>
    </section>
  );
}
