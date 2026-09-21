"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { createNoteAction, updateNoteAction } from "@/app/admin/notes/actions";
import { slugify } from "@/lib/slugify";
import type { Category, NoteFormInput, NoteForAdmin, NoteSource, Prerequisite } from "@/lib/types";

type Props = {
  categories: Category[];
  initial?: NoteForAdmin;
};

const inputClass = "rounded-md border border-border bg-code-bg px-3 py-2 text-text";
const labelClass = "flex flex-col gap-1 text-sm";

export default function NoteForm({ categories, initial }: Props) {
  const router = useRouter();
  const isEdit = Boolean(initial);

  const [title, setTitle] = useState(initial?.title ?? "");
  const [slug, setSlug] = useState(initial?.slug ?? "");
  const [slugTouched, setSlugTouched] = useState(isEdit);
  const [categoryId, setCategoryId] = useState(initial?.categoryId ?? categories[0]?.id ?? "");
  const [status, setStatus] = useState<"draft" | "published">(initial?.status ?? "draft");
  const [orderIndex, setOrderIndex] = useState(initial?.orderIndex ?? 0);
  const [content, setContent] = useState(initial?.content ?? "");
  const [practice, setPractice] = useState(initial?.practice ?? "");
  const [sources, setSources] = useState<NoteSource[]>(initial?.sources?.length ? initial.sources : [{ label: "", url: "" }]);
  const [prerequisites, setPrerequisites] = useState<Prerequisite[]>(initial?.prerequisites ?? []);
  const [error, setError] = useState<string | null>(null);
  const [saving, setSaving] = useState(false);

  function handleTitleChange(value: string) {
    setTitle(value);
    if (!slugTouched) setSlug(slugify(value));
  }

  function updateSource(index: number, field: keyof NoteSource, value: string) {
    setSources((prev) => prev.map((s, i) => (i === index ? { ...s, [field]: value } : s)));
  }

  function updatePrerequisite(index: number, field: keyof Prerequisite, value: string) {
    setPrerequisites((prev) => prev.map((p, i) => (i === index ? { ...p, [field]: value } : p)));
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setSaving(true);

    const input: NoteFormInput = {
      categoryId,
      title,
      slug,
      content,
      practice,
      status,
      orderIndex,
      sources: sources.filter((s) => s.label.trim() || s.url.trim()),
      prerequisites: prerequisites.filter((p) => p.label.trim() || p.url?.trim()),
    };

    const result = isEdit ? await updateNoteAction(initial!.id, input) : await createNoteAction(input);

    setSaving(false);
    if (!result.success) {
      setError(result.error);
      return;
    }
    router.push("/admin/notes");
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} className="flex max-w-2xl flex-col gap-4">
      <label className={labelClass}>
        Judul
        <input
          required
          value={title}
          onChange={(e) => handleTitleChange(e.target.value)}
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

      <div className="flex gap-4">
        <label className={`${labelClass} flex-1`}>
          Kategori
          <select
            required
            value={categoryId}
            onChange={(e) => setCategoryId(e.target.value)}
            className={inputClass}
          >
            {categories.map((c) => (
              <option key={c.id} value={c.id}>
                {c.name}
              </option>
            ))}
          </select>
        </label>

        <label className={labelClass}>
          Status
          <select
            value={status}
            onChange={(e) => setStatus(e.target.value as "draft" | "published")}
            className={inputClass}
          >
            <option value="draft">Draft</option>
            <option value="published">Published</option>
          </select>
        </label>

        <label className={labelClass}>
          Urutan (order_index)
          <input
            type="number"
            value={orderIndex}
            onChange={(e) => setOrderIndex(Number(e.target.value))}
            className={`${inputClass} w-28`}
          />
        </label>
      </div>

      <label className={labelClass}>
        Konten (Markdown, boleh ```mermaid)
        <textarea
          required
          value={content}
          onChange={(e) => setContent(e.target.value)}
          rows={16}
          className={`${inputClass} font-mono text-sm`}
        />
      </label>

      <label className={labelClass}>
        Latihan hands-on / &ldquo;Coba Sendiri&rdquo; (opsional, Markdown)
        <textarea
          value={practice}
          onChange={(e) => setPractice(e.target.value)}
          rows={5}
          className={`${inputClass} font-mono text-sm`}
        />
      </label>

      <fieldset className="flex flex-col gap-2 rounded-md border border-border p-3">
        <legend className="px-1 text-sm font-bold">Sumber (wajib minimal 1)</legend>
        {sources.map((source, i) => (
          <div key={i} className="flex gap-2">
            <input
              placeholder="Label"
              value={source.label}
              onChange={(e) => updateSource(i, "label", e.target.value)}
              className={`${inputClass} flex-1`}
            />
            <input
              placeholder="https://..."
              value={source.url}
              onChange={(e) => updateSource(i, "url", e.target.value)}
              className={`${inputClass} flex-1`}
            />
            <button
              type="button"
              onClick={() => setSources((prev) => prev.filter((_, idx) => idx !== i))}
              className="px-2 text-sm text-red-500"
              aria-label="Hapus sumber"
            >
              ✕
            </button>
          </div>
        ))}
        <button
          type="button"
          onClick={() => setSources((prev) => [...prev, { label: "", url: "" }])}
          className="self-start text-sm text-accent underline underline-offset-2"
        >
          + Tambah sumber
        </button>
      </fieldset>

      <fieldset className="flex flex-col gap-2 rounded-md border border-border p-3">
        <legend className="px-1 text-sm font-bold">Prasyarat (opsional, url boleh kosong)</legend>
        {prerequisites.map((prerequisite, i) => (
          <div key={i} className="flex gap-2">
            <input
              placeholder="Label"
              value={prerequisite.label}
              onChange={(e) => updatePrerequisite(i, "label", e.target.value)}
              className={`${inputClass} flex-1`}
            />
            <input
              placeholder="https://... (opsional)"
              value={prerequisite.url ?? ""}
              onChange={(e) => updatePrerequisite(i, "url", e.target.value)}
              className={`${inputClass} flex-1`}
            />
            <button
              type="button"
              onClick={() => setPrerequisites((prev) => prev.filter((_, idx) => idx !== i))}
              className="px-2 text-sm text-red-500"
              aria-label="Hapus prasyarat"
            >
              ✕
            </button>
          </div>
        ))}
        <button
          type="button"
          onClick={() => setPrerequisites((prev) => [...prev, { label: "", url: "" }])}
          className="self-start text-sm text-accent underline underline-offset-2"
        >
          + Tambah prasyarat
        </button>
      </fieldset>

      {error && <p className="text-sm text-red-500">{error}</p>}

      <button
        type="submit"
        disabled={saving}
        className="mt-2 self-start rounded-md bg-accent px-4 py-2 text-white disabled:opacity-60"
      >
        {saving ? "Menyimpan..." : isEdit ? "Simpan Perubahan" : "Buat Catatan"}
      </button>
    </form>
  );
}
