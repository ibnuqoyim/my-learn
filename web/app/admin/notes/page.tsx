import type { Metadata } from "next";
import Link from "next/link";
import { getAllNotesForAdmin } from "@/lib/queries";
import DeleteNoteButton from "./DeleteNoteButton";

export const metadata: Metadata = { title: "Kelola Catatan — Admin" };

export default async function AdminNotesPage() {
  const notes = await getAllNotesForAdmin();

  return (
    <div>
      <div className="mb-4 flex items-center justify-between">
        <p className="text-sm text-muted">{notes.length} catatan total</p>
        <Link
          href="/admin/notes/new"
          className="rounded-md bg-accent px-4 py-2 text-sm text-white no-underline"
        >
          + Catatan Baru
        </Link>
      </div>

      <ul>
        {notes.map((note) => (
          <li
            key={note.id}
            className="flex flex-wrap items-center justify-between gap-3 border-b border-border py-3"
          >
            <div>
              <div className="flex items-center gap-2">
                <span className="font-bold">{note.title}</span>
                <span
                  className={`rounded-full border px-2 py-0.5 text-xs ${
                    note.status === "published"
                      ? "border-accent text-accent"
                      : "border-border text-muted"
                  }`}
                >
                  {note.status}
                </span>
              </div>
              <div className="text-sm text-muted">
                {note.category.name} &middot; urutan {note.orderIndex}
              </div>
            </div>
            <div className="flex gap-3 text-sm">
              <Link href={`/admin/notes/${note.id}/edit`} className="text-accent underline underline-offset-2">
                Edit
              </Link>
              <Link href={`/admin/quiz/note/${note.id}`} className="text-accent underline underline-offset-2">
                Kuis
              </Link>
              <DeleteNoteButton id={note.id} title={note.title} />
            </div>
          </li>
        ))}
      </ul>

      {notes.length === 0 && <p className="text-sm text-muted">Belum ada catatan.</p>}
    </div>
  );
}
