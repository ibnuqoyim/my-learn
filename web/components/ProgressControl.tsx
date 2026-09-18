"use client";

import { useEffect, useState } from "react";
import { createClient } from "@/lib/supabase/client";
import type { Profile, ProgressStatus } from "@/lib/types";

const OPTIONS: { value: ProgressStatus; label: string }[] = [
  { value: "belum", label: "Belum" },
  { value: "dipelajari", label: "Sedang Dipelajari" },
  { value: "selesai", label: "Selesai" },
];

export default function ProgressControl({ noteId, currentUser }: { noteId: string; currentUser: Profile | null }) {
  const [status, setStatus] = useState<ProgressStatus | null>(null);
  const [loading, setLoading] = useState(Boolean(currentUser));
  const [saving, setSaving] = useState(false);

  useEffect(() => {
    if (!currentUser) return;
    let cancelled = false;

    const supabase = createClient();
    supabase
      .from("note_progress")
      .select("status")
      .eq("note_id", noteId)
      .eq("user_id", currentUser.id)
      .maybeSingle()
      .then(({ data }) => {
        if (!cancelled) {
          setStatus((data?.status as ProgressStatus) ?? "belum");
          setLoading(false);
        }
      });

    return () => {
      cancelled = true;
    };
  }, [noteId, currentUser]);

  async function updateStatus(next: ProgressStatus) {
    if (!currentUser) return;
    setSaving(true);
    const supabase = createClient();
    const { error } = await supabase
      .from("note_progress")
      .upsert(
        { user_id: currentUser.id, note_id: noteId, status: next, updated_at: new Date().toISOString() },
        { onConflict: "user_id,note_id" }
      );
    setSaving(false);
    if (!error) setStatus(next);
  }

  if (!currentUser) {
    return null;
  }

  return (
    <div className="mb-6 flex flex-wrap items-center gap-2 rounded-md border border-border bg-code-bg p-3">
      <span className="text-sm font-bold">Progress belajar:</span>
      {loading ? (
        <span className="text-sm text-muted">Memuat...</span>
      ) : (
        OPTIONS.map((option) => (
          <button
            key={option.value}
            type="button"
            disabled={saving}
            onClick={() => updateStatus(option.value)}
            className={`rounded-full border px-3 py-1 text-sm disabled:opacity-60 ${
              status === option.value
                ? "border-accent bg-accent text-white"
                : "border-border bg-bg text-text"
            }`}
          >
            {option.label}
          </button>
        ))
      )}
    </div>
  );
}
