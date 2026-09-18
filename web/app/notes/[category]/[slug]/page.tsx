import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import CommentSection from "@/components/CommentSection";
import MarkdownContent from "@/components/MarkdownContent";
import ProgressControl from "@/components/ProgressControl";
import { getComments, getCurrentProfile, getNoteBySlug } from "@/lib/queries";

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

  const [comments, currentUser] = await Promise.all([getComments(note.id), getCurrentProfile()]);

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

      <ProgressControl noteId={note.id} currentUser={currentUser} />

      <MarkdownContent content={note.content} />

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

      <CommentSection noteId={note.id} initialComments={comments} currentUser={currentUser} />
    </article>
  );
}
