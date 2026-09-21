import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { QuizQuestionCreateForm, QuizQuestionRow } from "@/components/admin/QuizManager";
import { getCategoryById, getQuizQuestionsForAdmin } from "@/lib/queries";

export const metadata: Metadata = { title: "Kuis Kategori — Admin" };

export default async function AdminCategoryQuizPage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const category = await getCategoryById(id);
  if (!category) notFound();

  const scope = { categoryId: id };
  const questions = await getQuizQuestionsForAdmin(scope);
  const nextOrderIndex = questions.length > 0 ? Math.max(...questions.map((q) => q.orderIndex)) + 1 : 0;

  return (
    <div>
      <p className="mb-2 text-sm text-muted">
        <Link href="/admin/categories" className="text-accent underline underline-offset-2">
          ← Kelola Kategori
        </Link>
      </p>
      <h2 className="mb-1 text-xl font-bold">Kuis Akhir Kategori: {category.name}</h2>
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
