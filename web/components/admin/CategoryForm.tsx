"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { createCategoryAction, deleteCategoryAction, updateCategoryAction } from "@/app/admin/categories/actions";
import { slugify } from "@/lib/slugify";
import type { Category } from "@/lib/types";

const inputClass = "rounded-md border border-border bg-code-bg px-3 py-2 text-text";
const labelClass = "flex flex-col gap-1 text-sm";

export function CategoryCreateForm() {
  const router = useRouter();
  const [name, setName] = useState("");
  const [slug, setSlug] = useState("");
  const [slugTouched, setSlugTouched] = useState(false);
  const [description, setDescription] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [saving, setSaving] = useState(false);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setSaving(true);
    const result = await createCategoryAction({ name, slug, description });
    setSaving(false);
    if (!result.success) {
      setError(result.error);
      return;
    }
    setName("");
    setSlug("");
    setSlugTouched(false);
    setDescription("");
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} className="mb-8 flex max-w-xl flex-col gap-3 rounded-md border border-border p-4">
      <h3 className="font-bold">Kategori Baru</h3>
      <label className={labelClass}>
        Nama
        <input
          required
          value={name}
          onChange={(e) => {
            setName(e.target.value);
            if (!slugTouched) setSlug(slugify(e.target.value));
          }}
          className={inputClass}
        />
      </label>
      <label className={labelClass}>
        Slug
        <input
          required
          value={slug}
          onChange={(e) => {
            setSlugTouched(true);
            setSlug(e.target.value);
          }}
          className={inputClass}
        />
      </label>
      <label className={labelClass}>
        Deskripsi / narasi roadmap (opsional, Markdown)
        <textarea
          value={description}
          onChange={(e) => setDescription(e.target.value)}
          rows={3}
          className={inputClass}
        />
      </label>
      {error && <p className="text-sm text-red-500">{error}</p>}
      <button
        type="submit"
        disabled={saving}
        className="self-start rounded-md bg-accent px-4 py-2 text-sm text-white disabled:opacity-60"
      >
        {saving ? "Menyimpan..." : "Buat Kategori"}
      </button>
    </form>
  );
}

export function CategoryRow({ category, noteCount }: { category: Category; noteCount: number }) {
  const router = useRouter();
  const [editing, setEditing] = useState(false);
  const [name, setName] = useState(category.name);
  const [slug, setSlug] = useState(category.slug);
  const [description, setDescription] = useState(category.description ?? "");
  const [error, setError] = useState<string | null>(null);
  const [saving, setSaving] = useState(false);

  async function handleSave(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setSaving(true);
    const result = await updateCategoryAction(category.id, { name, slug, description });
    setSaving(false);
    if (!result.success) {
      setError(result.error);
      return;
    }
    setEditing(false);
    router.refresh();
  }

  async function handleDelete() {
    if (!confirm(`Hapus kategori "${category.name}"? Hanya bisa dihapus kalau sudah tidak punya catatan.`)) return;
    const result = await deleteCategoryAction(category.id);
    if (!result.success) {
      alert(result.error);
      return;
    }
    router.refresh();
  }

  if (editing) {
    return (
      <li className="border-b border-border py-3">
        <form onSubmit={handleSave} className="flex flex-col gap-2">
          <div className="flex gap-2">
            <input value={name} onChange={(e) => setName(e.target.value)} className={`${inputClass} flex-1`} />
            <input value={slug} onChange={(e) => setSlug(e.target.value)} className={`${inputClass} flex-1`} />
          </div>
          <textarea
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            rows={3}
            className={inputClass}
          />
          {error && <p className="text-sm text-red-500">{error}</p>}
          <div className="flex gap-3 text-sm">
            <button type="submit" disabled={saving} className="text-accent underline underline-offset-2">
              {saving ? "Menyimpan..." : "Simpan"}
            </button>
            <button type="button" onClick={() => setEditing(false)} className="text-muted underline underline-offset-2">
              Batal
            </button>
          </div>
        </form>
      </li>
    );
  }

  return (
    <li className="flex flex-wrap items-center justify-between gap-3 border-b border-border py-3">
      <div>
        <span className="font-bold">{category.name}</span>{" "}
        <span className="text-sm text-muted">
          ({category.slug}) &middot; {noteCount} catatan
        </span>
      </div>
      <div className="flex gap-3 text-sm">
        <button type="button" onClick={() => setEditing(true)} className="text-accent underline underline-offset-2">
          Edit
        </button>
        <button type="button" onClick={handleDelete} className="text-red-500 underline underline-offset-2">
          Hapus
        </button>
      </div>
    </li>
  );
}
