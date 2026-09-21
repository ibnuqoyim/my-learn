"use client";

import Link from "next/link";
import { useState } from "react";
import { askAiAction, clearAiChatAction } from "@/app/actions/ask-ai";
import type { AiChatMessage, AiChatScope, Profile } from "@/lib/types";

type Props = {
  scope: AiChatScope;
  currentUser: Profile | null;
  initialMessages: AiChatMessage[];
};

export default function AskAiPanel({ scope, currentUser, initialMessages }: Props) {
  const [messages, setMessages] = useState(initialMessages);
  const [input, setInput] = useState("");
  const [sending, setSending] = useState(false);
  const [clearing, setClearing] = useState(false);
  const [error, setError] = useState<string | null>(null);

  if (!currentUser) {
    return (
      <section className="mt-10">
        <h2 className="mb-4 border-b border-border pb-1 text-xl font-bold">🤖 Tanya AI</h2>
        <p className="text-sm text-muted">
          <Link href="/login" className="text-accent underline underline-offset-2">
            Masuk
          </Link>{" "}
          dulu untuk tanya AI seputar materi ini.
        </p>
      </section>
    );
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    const question = input.trim();
    if (!question || sending) return;

    setSending(true);
    setError(null);
    // Tampilkan pertanyaan user langsung (optimistic) — id sementara, nanti
    // tetap konsisten dipakai walau tidak dicocokkan ulang ke row DB asli,
    // karena halaman ini tidak butuh id itu untuk apa pun setelah dirender.
    const optimisticUserMessage: AiChatMessage = {
      id: `pending-${Date.now()}`,
      role: "user",
      content: question,
      createdAt: new Date().toISOString(),
    };
    setMessages((prev) => [...prev, optimisticUserMessage]);
    setInput("");

    const result = await askAiAction(scope, question);
    setSending(false);

    if (!result.success) {
      setError(result.error);
      // Pertanyaan gagal dijawab — jangan biarkan tampil seolah terkirim.
      setMessages((prev) => prev.filter((m) => m.id !== optimisticUserMessage.id));
      setInput(question);
      return;
    }

    setMessages((prev) => [
      ...prev,
      { id: `assistant-${Date.now()}`, role: "assistant", content: result.reply, createdAt: new Date().toISOString() },
    ]);
  }

  async function handleClear() {
    if (!confirm("Hapus semua riwayat tanya-jawab ini?")) return;
    setClearing(true);
    const result = await clearAiChatAction(scope);
    setClearing(false);
    if (!result.success) {
      setError(result.error);
      return;
    }
    setMessages([]);
    setError(null);
  }

  return (
    <section className="mt-10">
      <div className="mb-4 flex items-center justify-between gap-3 border-b border-border pb-1">
        <h2 className="text-xl font-bold">🤖 Tanya AI</h2>
        {messages.length > 0 && (
          <button
            type="button"
            onClick={handleClear}
            disabled={clearing}
            className="text-xs text-muted underline underline-offset-2 disabled:opacity-60"
          >
            {clearing ? "Menghapus..." : "Hapus riwayat"}
          </button>
        )}
      </div>

      <p className="mb-3 text-sm text-muted">
        Tanya seputar materi ini saja — jawabannya dibatasi ke konteks catatan/kategori ini, di luar itu akan ditolak.
      </p>

      {messages.length > 0 && (
        <ul className="mb-4 flex flex-col gap-3">
          {messages.map((message) => (
            <li
              key={message.id}
              className={`rounded-md border p-3 text-sm whitespace-pre-wrap ${
                message.role === "user" ? "border-accent/40 bg-code-bg" : "border-border"
              }`}
            >
              <p className="mb-1 text-xs font-bold text-muted">{message.role === "user" ? "Kamu" : "AI"}</p>
              {message.content}
            </li>
          ))}
        </ul>
      )}

      <form onSubmit={handleSubmit} className="flex flex-col gap-2">
        <textarea
          value={input}
          onChange={(e) => setInput(e.target.value)}
          rows={2}
          placeholder="Tanya sesuatu tentang materi ini..."
          className="rounded-md border border-border bg-code-bg px-3 py-2 text-sm text-text"
          disabled={sending}
        />
        {error && <p className="text-sm text-red-500">{error}</p>}
        <button
          type="submit"
          disabled={sending || !input.trim()}
          className="self-start rounded-md bg-accent px-4 py-2 text-sm text-white disabled:opacity-60"
        >
          {sending ? "Mengirim..." : "Kirim"}
        </button>
      </form>
    </section>
  );
}
