"use client";

import Link from "next/link";
import { useState } from "react";
import { createClient } from "@/lib/supabase/client";

export default function DaftarPage() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [displayName, setDisplayName] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [done, setDone] = useState(false);
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setLoading(true);

    const supabase = createClient();
    const { error } = await supabase.auth.signUp({
      email,
      password,
      options: { data: { display_name: displayName || undefined } },
    });

    setLoading(false);
    if (error) {
      setError(error.message);
      return;
    }
    setDone(true);
  }

  if (done) {
    return (
      <div className="max-w-sm">
        <h1 className="mb-4 text-3xl font-bold">Cek email kamu</h1>
        <p className="leading-7">
          Kami sudah kirim link konfirmasi ke <strong>{email}</strong>. Buka email itu untuk
          mengaktifkan akun sebelum masuk.
        </p>
      </div>
    );
  }

  return (
    <div className="max-w-sm">
      <h1 className="mb-4 text-3xl font-bold">Daftar</h1>
      <form onSubmit={handleSubmit} className="flex flex-col gap-3">
        <label className="flex flex-col gap-1 text-sm">
          Nama tampilan (opsional)
          <input
            type="text"
            value={displayName}
            onChange={(e) => setDisplayName(e.target.value)}
            className="rounded-md border border-border bg-code-bg px-3 py-2 text-text"
          />
        </label>
        <label className="flex flex-col gap-1 text-sm">
          Email
          <input
            type="email"
            required
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="rounded-md border border-border bg-code-bg px-3 py-2 text-text"
          />
        </label>
        <label className="flex flex-col gap-1 text-sm">
          Password
          <input
            type="password"
            required
            minLength={6}
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            className="rounded-md border border-border bg-code-bg px-3 py-2 text-text"
          />
        </label>
        {error && <p className="text-sm text-red-500">{error}</p>}
        <button
          type="submit"
          disabled={loading}
          className="mt-2 rounded-md bg-accent px-4 py-2 text-white disabled:opacity-60"
        >
          {loading ? "Memproses..." : "Daftar"}
        </button>
      </form>
      <p className="mt-4 text-sm text-muted">
        Sudah punya akun?{" "}
        <Link href="/login" className="text-accent underline underline-offset-2">
          Masuk
        </Link>
      </p>
    </div>
  );
}
