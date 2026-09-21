import type { Metadata } from "next";
import Link from "next/link";
import { searchNotes } from "@/lib/queries";

export const metadata: Metadata = { title: "Cari Catatan — Catatan Belajar" };

export default async function SearchPage({
  searchParams,
}: {
  searchParams: Promise<{ q?: string }>;
}) {
  const { q } = await searchParams;
  const query = q?.trim() ?? "";
  const results = query ? await searchNotes(query) : [];

  return (
    <div>
      <p className="mb-2 text-sm text-muted">
        <Link href="/" className="text-accent underline underline-offset-2">
          Beranda
        </Link>
      </p>
      <h1 className="mb-4 text-3xl font-bold">Cari Catatan</h1>

      <form action="/cari" method="get" className="mb-6 flex gap-2">
        <input
          type="search"
          name="q"
          defaultValue={query}
          placeholder="mis. closure, RLS, dynamic route..."
          className="flex-1 rounded-md border border-border bg-code-bg px-3 py-2 text-text"
        />
        <button type="submit" className="rounded-md bg-accent px-4 py-2 text-sm text-white">
          Cari
        </button>
      </form>

      {!query && <p className="text-sm text-muted">Ketik kata kunci lalu tekan &ldquo;Cari&rdquo;.</p>}

      {query && results.length === 0 && (
        <p className="text-sm text-muted">Tidak ada catatan yang cocok dengan &ldquo;{query}&rdquo;.</p>
      )}

      {results.length > 0 && (
        <ul>
          {results.map((note) => (
            <li key={note.id} className="flex flex-wrap justify-between gap-4 border-b border-border py-2.5">
              <Link
                href={`/notes/${note.category.slug}/${note.slug}`}
                className="text-accent underline underline-offset-2"
              >
                {note.title}
              </Link>
              <span className="text-sm text-muted">{note.category.name}</span>
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}
