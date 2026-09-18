import Link from "next/link";
import { notFound } from "next/navigation";
import { getCategoryBySlug } from "@/lib/queries";

export default async function CategoryPage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  const result = await getCategoryBySlug(slug);

  if (!result) notFound();
  const { category, notes } = result;

  return (
    <div>
      <p className="mb-2 text-sm text-muted">
        <Link href="/" className="text-accent underline underline-offset-2">
          Beranda
        </Link>
      </p>
      <h1 className="mb-4 text-3xl font-bold">{category.name}</h1>
      <ul>
        {notes.map((note) => (
          <li key={note.id} className="flex flex-wrap justify-between gap-4 border-b border-border py-2.5">
            <Link href={`/notes/${category.slug}/${note.slug}`} className="text-accent underline underline-offset-2">
              {note.title}
            </Link>
            <span className="text-sm text-muted">
              {new Date(note.updated_at).toLocaleDateString("id-ID", {
                day: "numeric",
                month: "long",
                year: "numeric",
              })}
            </span>
          </li>
        ))}
      </ul>
    </div>
  );
}
