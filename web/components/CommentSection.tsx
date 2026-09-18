"use client";

import Link from "next/link";
import { useState } from "react";
import { createClient } from "@/lib/supabase/client";
import type { Comment, Profile } from "@/lib/types";

function formatDate(iso: string) {
  return new Date(iso).toLocaleDateString("id-ID", {
    day: "numeric",
    month: "long",
    year: "numeric",
    hour: "2-digit",
    minute: "2-digit",
  });
}

export default function CommentSection({
  noteId,
  initialComments,
  currentUser,
}: {
  noteId: string;
  initialComments: Comment[];
  currentUser: Profile | null;
}) {
  const [comments, setComments] = useState(initialComments);
  const [body, setBody] = useState("");
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState<string | null>(null);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!currentUser || !body.trim()) return;

    setSubmitting(true);
    setError(null);

    const supabase = createClient();
    const { data, error } = await supabase
      .from("comments")
      .insert({ note_id: noteId, user_id: currentUser.id, body: body.trim() })
      .select("id, body, created_at, user_id")
      .single();

    setSubmitting(false);

    if (error || !data) {
      setError(error?.message ?? "Gagal mengirim komentar.");
      return;
    }

    setComments((prev) => [
      ...prev,
      {
        id: data.id,
        body: data.body,
        createdAt: data.created_at,
        userId: data.user_id,
        authorName: currentUser.displayName || currentUser.email || "Kamu",
      },
    ]);
    setBody("");
  }

  return (
    <section className="mt-10">
      <h2 className="mb-4 border-b border-border pb-1 text-xl font-bold">
        Komentar {comments.length > 0 && `(${comments.length})`}
      </h2>

      {comments.length === 0 ? (
        <p className="mb-4 text-sm text-muted">Belum ada komentar. Jadi yang pertama komentar.</p>
      ) : (
        <ul className="mb-6 flex flex-col gap-4">
          {comments.map((comment) => (
            <li key={comment.id} className="border-b border-border pb-4">
              <p className="mb-1 text-sm">
                <strong>{comment.authorName}</strong>{" "}
                <span className="text-muted">&middot; {formatDate(comment.createdAt)}</span>
              </p>
              <p className="whitespace-pre-wrap leading-6">{comment.body}</p>
            </li>
          ))}
        </ul>
      )}

      {currentUser ? (
        <form onSubmit={handleSubmit} className="flex flex-col gap-2">
          <label htmlFor="comment-body" className="text-sm font-bold">
            Tulis komentar
          </label>
          <textarea
            id="comment-body"
            value={body}
            onChange={(e) => setBody(e.target.value)}
            required
            rows={3}
            className="rounded-md border border-border bg-code-bg px-3 py-2 text-text"
          />
          {error && <p className="text-sm text-red-500">{error}</p>}
          <button
            type="submit"
            disabled={submitting || !body.trim()}
            className="self-start rounded-md bg-accent px-4 py-2 text-sm text-white disabled:opacity-60"
          >
            {submitting ? "Mengirim..." : "Kirim Komentar"}
          </button>
        </form>
      ) : (
        <p className="text-sm text-muted">
          <Link href="/login" className="text-accent underline underline-offset-2">
            Masuk
          </Link>{" "}
          dulu untuk ikut komentar.
        </p>
      )}
    </section>
  );
}
