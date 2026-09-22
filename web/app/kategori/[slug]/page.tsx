import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import AskAiPanel from "@/components/AskAiPanel";
import MarkdownContent from "@/components/MarkdownContent";
import QuizSection from "@/components/QuizSection";
import {
  getAiChatMessages,
  getCategoryBySlug,
  getCurrentProfile,
  getNoteProgressMap,
  getQuizAttempt,
  getQuizQuestions,
} from "@/lib/queries";
import type { AiChatMessage, QuizAttempt } from "@/lib/types";

export async function generateMetadata({
  params,
}: {
  params: Promise<{ slug: string }>;
}): Promise<Metadata> {
  const { slug } = await params;
  const result = await getCategoryBySlug(slug);
  if (!result) return { title: "Kategori tidak ditemukan" };
  return { title: `${result.category.name} — Catatan Belajar` };
}

const STATUS_BADGE: Record<string, string> = {
  selesai: "✓ Selesai",
  dipelajari: "Sedang Dipelajari",
};

export default async function CategoryPage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  const result = await getCategoryBySlug(slug);

  if (!result) notFound();
  const { category, notes } = result;

  const [user, quizQuestions] = await Promise.all([getCurrentProfile(), getQuizQuestions({ categoryId: category.id })]);

  const [progressMap, quizAttempt, aiChatMessages]: [Record<string, string>, QuizAttempt | null, AiChatMessage[]] = user
    ? await Promise.all([
        getNoteProgressMap(user.id, notes.map((n) => n.id)),
        getQuizAttempt(user.id, { categoryId: category.id }),
        getAiChatMessages(user.id, { categoryId: category.id }),
      ])
    : [{}, null, []];

  const selesaiCount = notes.filter((n) => progressMap[n.id] === "selesai").length;
  const progressPercent = notes.length > 0 ? Math.round((selesaiCount / notes.length) * 100) : 0;

  return (
    <div>
      <p className="mb-2 text-sm text-muted">
        <Link href="/" className="text-accent underline underline-offset-2">
          Beranda
        </Link>
      </p>
      <h1 className="mb-2 text-3xl font-bold">{category.name}</h1>

      {category.description ? (
        <div className="mb-6 rounded-md border border-accent/30 bg-code-bg p-4">
          <MarkdownContent content={category.description} />
        </div>
      ) : (
        <p className="mb-4 text-sm text-muted">
          Urutan belajar disarankan — mulai dari nomor 1, ikuti sampai selesai.
        </p>
      )}

      {user && notes.length > 0 && (
        <div className="mb-6 rounded-md border border-border bg-code-bg p-3">
          <p className="mb-2 text-sm font-bold">
            Progress kamu: {selesaiCount} dari {notes.length} selesai ({progressPercent}%)
          </p>
          <div className="h-2 w-full overflow-hidden rounded-full bg-border">
            <div className="h-full rounded-full bg-accent" style={{ width: `${progressPercent}%` }} />
          </div>
        </div>
      )}

      <ol>
        {notes.map((note, index) => {
          const status = progressMap[note.id];
          return (
            <li
              key={note.id}
              className="flex flex-wrap items-center justify-between gap-4 border-b border-border py-2.5"
            >
              <span className="flex items-baseline gap-2">
                <span className="text-sm text-muted">{index + 1}.</span>
                <Link
                  href={`/notes/${category.slug}/${note.slug}`}
                  className="text-accent underline underline-offset-2"
                >
                  {note.title}
                </Link>
              </span>
              {status && STATUS_BADGE[status] && (
                <span
                  className={`text-sm ${status === "selesai" ? "text-accent" : "text-muted"}`}
                >
                  {STATUS_BADGE[status]}
                </span>
              )}
            </li>
          );
        })}
      </ol>

      <QuizSection
        scope={{ categoryId: category.id }}
        title="Kuis Akhir Kategori"
        questions={quizQuestions}
        currentUser={user}
        initialAttempt={quizAttempt}
      />

      <AskAiPanel scope={{ categoryId: category.id }} currentUser={user} initialMessages={aiChatMessages} />
    </div>
  );
}
