import type { Metadata } from "next";
import { notFound } from "next/navigation";
import NoteForm from "@/components/admin/NoteForm";
import { getAllCategoriesSimple, getNoteForAdmin } from "@/lib/queries";

export const metadata: Metadata = { title: "Edit Catatan — Admin" };

export default async function EditNotePage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const [note, categories] = await Promise.all([getNoteForAdmin(id), getAllCategoriesSimple()]);

  if (!note) notFound();

  return (
    <div>
      <h2 className="mb-4 text-xl font-bold">Edit: {note.title}</h2>
      <NoteForm categories={categories} initial={note} />
    </div>
  );
}
