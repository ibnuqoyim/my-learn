import type { Metadata } from "next";
import { CategoryCreateForm, CategoryRow } from "@/components/admin/CategoryForm";
import { getAllCategoriesSimple, getAllNotesForAdmin } from "@/lib/queries";

export const metadata: Metadata = { title: "Kelola Kategori — Admin" };

export default async function AdminCategoriesPage() {
  const [categories, notes] = await Promise.all([getAllCategoriesSimple(), getAllNotesForAdmin()]);
  const countByCategory = new Map<string, number>();
  for (const note of notes) {
    countByCategory.set(note.category.id, (countByCategory.get(note.category.id) ?? 0) + 1);
  }

  return (
    <div>
      <CategoryCreateForm />
      <h2 className="mb-2 text-xl font-bold">Kategori ({categories.length})</h2>
      <ul>
        {categories.map((category) => (
          <CategoryRow key={category.id} category={category} noteCount={countByCategory.get(category.id) ?? 0} />
        ))}
      </ul>
    </div>
  );
}
