import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import AskAiPanel from "@/components/AskAiPanel";
import CommentSection from "@/components/CommentSection";
import MarkdownContent from "@/components/MarkdownContent";
import ProgressControl from "@/components/ProgressControl";
import QuizSection from "@/components/QuizSection";
import {
  getAdjacentNotes,
  getAiChatMessages,
  getComments,
  getCurrentProfile,
  getNoteBySlug,
  getQuizAttempt,
  getQuizQuestions,
} from "@/lib/queries";

type Params = { category: string; slug: string };

export async function generateMetadata({ params }: { params: Promise<Params> }): Promise<Metadata> {
  const { category, slug } = await params;
  const note = await getNoteBySlug(category, slug);
  if (!note) return { title: "Catatan tidak ditemukan" };
  return { title: `${note.title} — Catatan Belajar` };
}

export default async function NotePage({ params }: { params: Promise<Params> }) {
  const { category: categorySlug, slug } = await params;
  const note = await getNoteBySlug(categorySlug, slug);

  if (!note) notFound();

  const [comments, currentUser, adjacent, quizQuestions] = await Promise.all([
    getComments(note.id),
    getCurrentProfile(),
    getAdjacentNotes(note.category.id, note.id),
    getQuizQuestions({ noteId: note.id }),
  ]);
  const [quizAttempt, aiChatMessages] = currentUser
    ? await Promise.all([
        getQuizAttempt(currentUser.id, { noteId: note.id }),
        getAiChatMessages(currentUser.id, { noteId: note.id }),
      ])
    : [null, []];

  const updated = new Date(note.updated_at).toLocaleDateString("id-ID", {
    day: "numeric",
    month: "long",
    year: "numeric",
  });

  return (
    <article>
      <p className="mb-2 text-sm text-muted">
        <Link href="/" className="text-accent underline underline-offset-2">
          Beranda
        </Link>{" "}
        /{" "}
        <Link href={`/kategori/${note.category.slug}`} className="text-accent underline underline-offset-2">
          {note.category.name}
        </Link>
      </p>
      <h1 className="mb-2 text-3xl font-bold">{note.title}</h1>
      <p className="mb-4 text-sm text-muted">
        {note.category.name} &middot; Diperbarui {updated}
      </p>

      {note.prerequisites.length > 0 && (
        <div className="mb-6 rounded-md border border-border bg-code-bg p-4">
          <h2 className="mb-2 text-sm font-bold">📋 Prasyarat</h2>
          <ul className="list-disc space-y-1 pl-6 text-sm">
            {note.prerequisites.map((prereq) => (
              <li key={prereq.label}>
                {prereq.url ? (
                  <a href={prereq.url} className="text-accent underline underline-offset-2">
                    {prereq.label}
                  </a>
                ) : (
                  prereq.label
                )}
              </li>
            ))}
          </ul>
        </div>
      )}

      <ProgressControl noteId={note.id} currentUser={currentUser} />

      <MarkdownContent content={note.content} />

      {note.practice && (
        <div className="mb-6 rounded-md border-2 border-accent/40 bg-code-bg p-4">
          <h2 className="mb-2 text-lg font-bold">🎯 Coba Sendiri</h2>
          <MarkdownContent content={note.practice} />
        </div>
      )}

      {note.sources.length > 0 && (
        <>
          <h2 className="mt-10 mb-2 border-b border-border pb-1 text-xl font-bold">Sumber</h2>
          <ul className="list-disc space-y-1 pl-6">
            {note.sources.map((source) => (
              <li key={source.url}>
                <a href={source.url} className="text-accent underline underline-offset-2">
                  {source.label}
                </a>
              </li>
            ))}
          </ul>
        </>
      )}

      <QuizSection
        scope={{ noteId: note.id }}
        title="Kuis Catatan Ini"
        questions={quizQuestions}
        currentUser={currentUser}
        initialAttempt={quizAttempt}
      />

      <AskAiPanel scope={{ noteId: note.id }} currentUser={currentUser} initialMessages={aiChatMessages} />

      <nav className="mt-10 flex flex-wrap justify-between gap-4 border-t border-border pt-4 text-sm">
        {adjacent.prev ? (
          <Link
            href={`/notes/${adjacent.prev.category.slug}/${adjacent.prev.slug}`}
            className="text-accent underline underline-offset-2"
          >
            ← {adjacent.prev.title}
          </Link>
        ) : (
          <span />
        )}
        {adjacent.next && (
          <Link
            href={`/notes/${adjacent.next.category.slug}/${adjacent.next.slug}`}
            className="text-accent underline underline-offset-2"
          >
            {adjacent.next.title} →
          </Link>
        )}
      </nav>

      <CommentSection noteId={note.id} initialComments={comments} currentUser={currentUser} />
    </article>
  );
}
