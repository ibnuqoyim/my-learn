import Link from "next/link";
import { redirect } from "next/navigation";
import { getCurrentProfile } from "@/lib/queries";

export default async function AdminLayout({ children }: { children: React.ReactNode }) {
  const profile = await getCurrentProfile();
  if (!profile) redirect("/login");
  if (profile.role !== "admin") redirect("/");

  return (
    <div>
      <p className="mb-2 text-sm text-muted">
        <Link href="/" className="text-accent underline underline-offset-2">
          Beranda
        </Link>
      </p>
      <h1 className="mb-4 text-3xl font-bold">Dashboard Admin</h1>
      <nav className="mb-8 flex gap-4 border-b border-border text-sm font-bold">
        <Link href="/admin/notes" className="border-b-2 border-transparent px-1 pb-2 hover:border-accent">
          Catatan
        </Link>
        <Link href="/admin/categories" className="border-b-2 border-transparent px-1 pb-2 hover:border-accent">
          Kategori
        </Link>
      </nav>
      {children}
    </div>
  );
}
