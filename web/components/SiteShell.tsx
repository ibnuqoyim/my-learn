"use client";

import Link from "next/link";
import { useEffect, useState } from "react";
import type { CategoryWithNotes, NoteSummary } from "@/lib/types";

type Props = {
  recentNotes: NoteSummary[];
  categories: CategoryWithNotes[];
  children: React.ReactNode;
};

export default function SiteShell({ recentNotes, categories, children }: Props) {
  const [menuOpen, setMenuOpen] = useState(false);
  const [theme, setTheme] = useState<"light" | "dark" | null>(null);

  useEffect(() => {
    try {
      const saved = localStorage.getItem("theme");
      if (saved === "dark" || saved === "light") {
        setTheme(saved);
        document.documentElement.setAttribute("data-theme", saved);
      }
    } catch {
      // localStorage tidak tersedia (mis. private mode) — biarkan ikut
      // prefers-color-scheme sistem.
    }
  }, []);

  useEffect(() => {
    document.body.classList.toggle("overflow-hidden", menuOpen);
  }, [menuOpen]);

  function toggleTheme() {
    const prefersDark = window.matchMedia("(prefers-color-scheme: dark)").matches;
    const current = theme ?? (prefersDark ? "dark" : "light");
    const next = current === "dark" ? "light" : "dark";
    setTheme(next);
    document.documentElement.setAttribute("data-theme", next);
    try {
      localStorage.setItem("theme", next);
    } catch {
      // abaikan kalau localStorage tidak bisa dipakai
    }
  }

  return (
    <>
      <header className="flex items-center justify-between gap-2 border-b border-border px-4 py-2.5 md:px-6 md:py-3.5">
        <button
          type="button"
          aria-label="Buka menu navigasi"
          aria-expanded={menuOpen}
          onClick={() => setMenuOpen(true)}
          className="inline-flex h-11 w-11 items-center justify-center rounded-full border border-border bg-code-bg text-lg md:hidden"
        >
          ☰
        </button>
        <Link href="/" className="font-bold text-text no-underline">
          📚 Catatan Belajar
        </Link>
        <button
          type="button"
          aria-label="Ganti mode gelap/terang"
          onClick={toggleTheme}
          className="inline-flex h-11 w-11 items-center justify-center rounded-full border border-border bg-code-bg text-base md:h-9 md:w-9"
        >
          {theme === "dark" ? "☀️" : "🌙"}
        </button>
      </header>

      {menuOpen && (
        <div
          className="fixed inset-0 z-40 bg-black/50 md:hidden"
          onClick={() => setMenuOpen(false)}
        />
      )}

      <div className="mx-auto flex max-w-layout items-start gap-10 px-4 py-6 md:px-6 md:py-8">
        <aside
          className={`fixed right-0 top-0 z-50 flex h-dvh w-[min(85vw,320px)] flex-col overflow-y-auto border-l border-border bg-bg p-5 transition-transform duration-200 md:static md:z-auto md:h-auto md:w-[220px] md:flex-none md:translate-x-0 md:border-l-0 md:p-0 ${
            menuOpen ? "translate-x-0" : "translate-x-full"
          }`}
        >
          <button
            type="button"
            aria-label="Tutup menu navigasi"
            onClick={() => setMenuOpen(false)}
            className="mb-4 inline-flex h-9 w-9 items-center justify-center self-end rounded-full border border-border bg-code-bg md:hidden"
          >
            ✕
          </button>

          <nav>
            <div>
              <h2 className="mb-1.5 border-b border-border pb-1.5 text-sm font-bold">
                Tulisan Terbaru
              </h2>
              <ul>
                {recentNotes.map((note) => (
                  <li key={note.id} className="border-b border-border py-2">
                    <Link
                      href={`/notes/${note.category.slug}/${note.slug}`}
                      className="text-sm no-underline hover:underline"
                    >
                      {note.title}
                    </Link>
                    <div className="text-xs text-muted">{note.category.name}</div>
                  </li>
                ))}
              </ul>
            </div>
            <div className="mt-8">
              <h2 className="mb-1.5 border-b border-border pb-1.5 text-sm font-bold">Kategori</h2>
              <ul>
                {categories.map((category) => (
                  <li key={category.id} className="border-b border-border py-2">
                    <Link href={`/kategori/${category.slug}`} className="text-sm no-underline hover:underline">
                      {category.name}
                    </Link>{" "}
                    <span className="text-xs text-muted">({category.notes.length})</span>
                  </li>
                ))}
              </ul>
            </div>
          </nav>
        </aside>

        <main className="min-w-0 max-w-content flex-1">{children}</main>
      </div>

      <footer className="py-8 text-center text-sm text-muted">
        Dibuat dengan Next.js &amp; Supabase &middot; Ditulis dalam Markdown
      </footer>
    </>
  );
}
