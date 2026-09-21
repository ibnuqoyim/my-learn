"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { deleteNoteAction } from "./actions";

export default function DeleteNoteButton({ id, title }: { id: string; title: string }) {
  const router = useRouter();
  const [deleting, setDeleting] = useState(false);

  async function handleDelete() {
    if (!confirm(`Hapus catatan "${title}"? Komentar & progress belajar terkait ikut terhapus.`)) return;
    setDeleting(true);
    const result = await deleteNoteAction(id);
    setDeleting(false);
    if (!result.success) {
      alert(result.error);
      return;
    }
    router.refresh();
  }

  return (
    <button
      type="button"
      onClick={handleDelete}
      disabled={deleting}
      className="text-red-500 underline underline-offset-2 disabled:opacity-60"
    >
      {deleting ? "Menghapus..." : "Hapus"}
    </button>
  );
}
