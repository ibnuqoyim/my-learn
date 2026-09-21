import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { QuizQuestionCreateForm, QuizQuestionRow } from "@/components/admin/QuizManager";
import { getNoteForAdmin, getQuizQuestionsForAdmin } from "@/lib/queries";

export const metadata: Metadata = { title: "Kuis Catatan — Admin" };

export default async function AdminNoteQuizPage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const note = await getNoteForAdmin(id);
  if (!note) notFound();

  const scope = { noteId: id };
  const questions = await getQuizQuestionsForAdmin(scope);
  const nextOrderIndex = questions.length > 0 ? Math.max(...questions.map((q) => q.orderIndex)) + 1 : 0;

  return (
    <div>
      <p className="mb-2 text-sm text-muted">
        <Link href="/admin/notes" className="text-accent underline underline-offset-2">
          ← Kelola Catatan
        </Link>
      </p>
      <h2 className="mb-1 text-xl font-bold">Kuis: {note.title}</h2>
      <p className="mb-4 text-sm text-muted">{questions.length} soal</p>

      <QuizQuestionCreateForm scope={scope} nextOrderIndex={nextOrderIndex} />

      <ul>
        {questions.map((question) => (
          <QuizQuestionRow key={question.id} scope={scope} question={question} />
        ))}
      </ul>
      {questions.length === 0 && <p className="text-sm text-muted">Belum ada soal.</p>}
    </div>
  );
}
