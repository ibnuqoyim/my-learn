"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { createQuizQuestionAction, deleteQuizQuestionAction, updateQuizQuestionAction } from "@/app/admin/quiz/actions";
import type { QuizQuestionForAdmin, QuizQuestionFormInput, QuizScope } from "@/lib/types";

const inputClass = "rounded-md border border-border bg-code-bg px-3 py-2 text-text";
const labelClass = "flex flex-col gap-1 text-sm";

function emptyInput(nextOrderIndex: number): QuizQuestionFormInput {
  return {
    question: "",
    options: ["", ""],
    correctIndex: 0,
    explanation: "",
    orderIndex: nextOrderIndex,
  };
}

function OptionsEditor({
  options,
  correctIndex,
  onChangeOption,
  onChangeCorrect,
  onRemoveOption,
  onAddOption,
}: {
  options: string[];
  correctIndex: number;
  onChangeOption: (i: number, value: string) => void;
  onChangeCorrect: (i: number) => void;
  onRemoveOption: (i: number) => void;
  onAddOption: () => void;
}) {
  return (
    <fieldset className="flex flex-col gap-2 rounded-md border border-border p-3">
      <legend className="px-1 text-sm font-bold">Opsi jawaban (minimal 2, pilih radio = jawaban benar)</legend>
      {options.map((option, i) => (
        <div key={i} className="flex items-center gap-2">
          <input
            type="radio"
            name="correct-option"
            checked={correctIndex === i}
            onChange={() => onChangeCorrect(i)}
            aria-label={`Jadikan opsi ${i + 1} sebagai jawaban benar`}
          />
          <input
            placeholder={`Opsi ${i + 1}`}
            value={option}
            onChange={(e) => onChangeOption(i, e.target.value)}
            className={`${inputClass} flex-1`}
          />
          {options.length > 2 && (
            <button
              type="button"
              onClick={() => onRemoveOption(i)}
              className="px-2 text-sm text-red-500"
              aria-label={`Hapus opsi ${i + 1}`}
            >
              ✕
            </button>
          )}
        </div>
      ))}
      <button type="button" onClick={onAddOption} className="self-start text-sm text-accent underline underline-offset-2">
        + Tambah opsi
      </button>
    </fieldset>
  );
}

function QuizForm({
  initial,
  onSubmit,
  submitLabel,
  onCancel,
}: {
  initial: QuizQuestionFormInput;
  onSubmit: (input: QuizQuestionFormInput) => Promise<{ success: boolean; error?: string }>;
  submitLabel: string;
  onCancel?: () => void;
}) {
  const router = useRouter();
  const [question, setQuestion] = useState(initial.question);
  const [options, setOptions] = useState(initial.options);
  const [correctIndex, setCorrectIndex] = useState(initial.correctIndex);
  const [explanation, setExplanation] = useState(initial.explanation);
  const [orderIndex, setOrderIndex] = useState(initial.orderIndex);
  const [error, setError] = useState<string | null>(null);
  const [saving, setSaving] = useState(false);

  function updateOption(i: number, value: string) {
    setOptions((prev) => prev.map((o, idx) => (idx === i ? value : o)));
  }

  function removeOption(i: number) {
    setOptions((prev) => prev.filter((_, idx) => idx !== i));
    setCorrectIndex((prev) => (prev === i ? 0 : prev > i ? prev - 1 : prev));
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setSaving(true);
    const result = await onSubmit({ question, options, correctIndex, explanation, orderIndex });
    setSaving(false);
    if (!result.success) {
      setError(result.error ?? "Gagal menyimpan");
      return;
    }
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} className="flex max-w-xl flex-col gap-3">
      <label className={labelClass}>
        Pertanyaan
        <textarea
          required
          value={question}
          onChange={(e) => setQuestion(e.target.value)}
          rows={2}
          className={inputClass}
        />
      </label>

      <OptionsEditor
        options={options}
        correctIndex={correctIndex}
        onChangeOption={updateOption}
        onChangeCorrect={setCorrectIndex}
        onRemoveOption={removeOption}
        onAddOption={() => setOptions((prev) => [...prev, ""])}
      />

      <label className={labelClass}>
        Penjelasan (opsional, ditampilkan setelah user menjawab)
        <textarea
          value={explanation}
          onChange={(e) => setExplanation(e.target.value)}
          rows={2}
          className={inputClass}
        />
      </label>

      <label className={labelClass}>
        Urutan
        <input
          type="number"
          value={orderIndex}
          onChange={(e) => setOrderIndex(Number(e.target.value))}
          className={`${inputClass} w-28`}
        />
      </label>

      {error && <p className="text-sm text-red-500">{error}</p>}

      <div className="flex gap-3">
        <button
          type="submit"
          disabled={saving}
          className="self-start rounded-md bg-accent px-4 py-2 text-sm text-white disabled:opacity-60"
        >
          {saving ? "Menyimpan..." : submitLabel}
        </button>
        {onCancel && (
          <button type="button" onClick={onCancel} className="self-start text-sm text-muted underline underline-offset-2">
            Batal
          </button>
        )}
      </div>
    </form>
  );
}

export function QuizQuestionCreateForm({ scope, nextOrderIndex }: { scope: QuizScope; nextOrderIndex: number }) {
  return (
    <div className="mb-8 rounded-md border border-border p-4">
      <h3 className="mb-3 font-bold">Soal Baru</h3>
      <QuizForm
        initial={emptyInput(nextOrderIndex)}
        submitLabel="Tambah Soal"
        onSubmit={(input) => createQuizQuestionAction(scope, input)}
      />
    </div>
  );
}

export function QuizQuestionRow({ scope, question }: { scope: QuizScope; question: QuizQuestionForAdmin }) {
  const router = useRouter();
  const [editing, setEditing] = useState(false);
  const [deleting, setDeleting] = useState(false);

  async function handleDelete() {
    if (!confirm("Hapus soal ini?")) return;
    setDeleting(true);
    const result = await deleteQuizQuestionAction(question.id, scope);
    setDeleting(false);
    if (!result.success) {
      alert(result.error);
      return;
    }
    router.refresh();
  }

  if (editing) {
    return (
      <li className="border-b border-border py-4">
        <QuizForm
          initial={{
            question: question.question,
            options: question.options,
            correctIndex: question.correctIndex,
            explanation: question.explanation,
            orderIndex: question.orderIndex,
          }}
          submitLabel="Simpan Perubahan"
          onCancel={() => setEditing(false)}
          onSubmit={(input) => updateQuizQuestionAction(question.id, scope, input)}
        />
      </li>
    );
  }

  return (
    <li className="flex flex-wrap items-start justify-between gap-3 border-b border-border py-3">
      <div>
        <p className="font-bold">
          {question.orderIndex}. {question.question}
        </p>
        <ul className="mt-1 text-sm text-muted">
          {question.options.map((option, i) => (
            <li key={i} className={i === question.correctIndex ? "text-accent" : undefined}>
              {i === question.correctIndex ? "✓ " : "— "}
              {option}
            </li>
          ))}
        </ul>
      </div>
      <div className="flex shrink-0 gap-3 text-sm">
        <button type="button" onClick={() => setEditing(true)} className="text-accent underline underline-offset-2">
          Edit
        </button>
        <button
          type="button"
          onClick={handleDelete}
          disabled={deleting}
          className="text-red-500 underline underline-offset-2 disabled:opacity-60"
        >
          {deleting ? "Menghapus..." : "Hapus"}
        </button>
      </div>
    </li>
  );
}
