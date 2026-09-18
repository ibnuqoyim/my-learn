import type { Metadata } from "next";
import SiteShell from "@/components/SiteShell";
import { getCategoriesWithNotes, getRecentNotes } from "@/lib/queries";
import "./globals.css";

export const metadata: Metadata = {
  title: "Catatan Belajar",
  description: "Kumpulan catatan singkat dari berbagai materi belajar, dikelompokkan per topik.",
};

const THEME_INIT_SCRIPT = `
(function () {
  try {
    var saved = localStorage.getItem("theme");
    if (saved === "dark" || saved === "light") {
      document.documentElement.setAttribute("data-theme", saved);
    }
  } catch (e) {}
})();
`;

export default async function RootLayout({ children }: { children: React.ReactNode }) {
  const [recentNotes, categories] = await Promise.all([getRecentNotes(8), getCategoriesWithNotes()]);

  return (
    <html lang="id" suppressHydrationWarning>
      <head>
        <script dangerouslySetInnerHTML={{ __html: THEME_INIT_SCRIPT }} />
      </head>
      <body className="font-sans leading-relaxed">
        <SiteShell recentNotes={recentNotes} categories={categories}>
          {children}
        </SiteShell>
      </body>
    </html>
  );
}
