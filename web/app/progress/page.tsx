import type { Metadata } from "next";
import Link from "next/link";
import { redirect } from "next/navigation";
import { getCurrentProfile, getUserProgress } from "@/lib/queries";
import type { ProgressEntry, ProgressStatus } from "@/lib/types";

export const metadata: Metadata = { title: "Progress Saya — Catatan Belajar" };

const GROUPS: { status: ProgressStatus; label: string }[] = [
  { status: "selesai", label: "Selesai" },
  { status: "dipelajari", label: "Sedang Dipelajari" },
  { status: "belum", label: "Belum Ditandai" },
];

export default async function ProgressPage() {
  const user = await getCurrentProfile();
  if (!user) redirect("/login");

  const entries = await getUserProgress(user.id);
  const byStatus = (status: ProgressStatus) => entries.filter((entry: ProgressEntry) => entry.status === status);

  return (
    <div>
      <p className="mb-2 text-sm text-muted">
        <Link href="/" className="text-accent underline underline-offset-2">
          Beranda
        </Link>
      </p>
      <h1 className="mb-2 text-3xl font-bold">Progress Saya</h1>
      <p className="mb-8 leading-7">
        Catatan yang sudah kamu tandai progress-nya. Tandai lewat tombol &ldquo;Progress belajar&rdquo; di
        halaman tiap catatan.
      </p>

      {entries.length === 0 ? (
        <p className="text-sm text-muted">
          Belum ada catatan yang ditandai. Buka salah satu catatan dan tandai progress-nya di sana.
        </p>
      ) : (
        GROUPS.map(({ status, label }) => {
          const group = byStatus(status);
          if (group.length === 0) return null;
          return (
            <section key={status} className="mb-8">
              <h2 className="mb-2 border-b border-border pb-1 text-xl font-bold">
                {label} ({group.length})
              </h2>
              <ul>
                {group.map((entry) => (
                  <li
                    key={entry.note.id}
                    className="flex flex-wrap justify-between gap-4 border-b border-border py-2.5"
                  >
                    <Link
                      href={`/notes/${entry.note.category.slug}/${entry.note.slug}`}
                      className="text-accent underline underline-offset-2"
                    >
                      {entry.note.title}
                    </Link>
                    <span className="text-sm text-muted">{entry.note.category.name}</span>
                  </li>
                ))}
              </ul>
            </section>
          );
        })
      )}
    </div>
  );
}
