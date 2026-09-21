import type { Metadata } from "next";
import NoteForm from "@/components/admin/NoteForm";
import { getAllCategoriesSimple } from "@/lib/queries";

export const metadata: Metadata = { title: "Catatan Baru — Admin" };

export default async function NewNotePage() {
  const categories = await getAllCategoriesSimple();

  return (
    <div>
      <h2 className="mb-4 text-xl font-bold">Catatan Baru</h2>
      {categories.length === 0 ? (
        <p className="text-sm text-muted">
          Belum ada kategori. Buat kategori dulu di halaman{" "}
          <a href="/admin/categories" className="text-accent underline underline-offset-2">
            Kategori
          </a>
          .
        </p>
      ) : (
        <NoteForm categories={categories} />
      )}
    </div>
  );
}
