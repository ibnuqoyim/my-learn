"use server";

import { createClient } from "@/lib/supabase/server";
import { getCategoryAiContext, getNoteAiContext } from "@/lib/queries";
import type { AiChatScope } from "@/lib/types";

type AskAiResult = { success: true; reply: string } | { success: false; error: string };
type ClearResult = { success: true } | { success: false; error: string };

// Batasi panjang pertanyaan & jumlah riwayat yang dikirim ulang ke API
// supaya prompt tidak membengkak tanpa batas dan biaya API per-request
// terkendali — bukan validasi keamanan, cuma jaga-jaga biaya.
const MAX_MESSAGE_LENGTH = 1000;
const MAX_HISTORY_MESSAGES = 12;

function chatTable(scope: AiChatScope) {
  return "noteId" in scope ? "note_ai_chat_messages" : "category_ai_chat_messages";
}

function scopeColumn(scope: AiChatScope): [string, string] {
  return "noteId" in scope ? ["note_id", scope.noteId] : ["category_id", scope.categoryId];
}

// System prompt dibangun dari konten materi asli (bukan dikarang) supaya
// jawaban AI grounded ke catatan/roadmap yang sedang dibaca user — sama
// semangatnya dengan larangan "jangan mengarang sumber" di AGENTS.md bagian
// 3 poin 5, walau ini bukan konten catatan itu sendiri.
async function buildSystemPrompt(scope: AiChatScope): Promise<string | null> {
  if ("noteId" in scope) {
    const note = await getNoteAiContext(scope.noteId);
    if (!note) return null;
    return [
      `Kamu adalah asisten belajar di platform "Catatan Belajar". Jawab HANYA pertanyaan yang berkaitan dengan materi catatan ini beserta topik kategorinya (${note.categoryName}).`,
      "Kalau pertanyaan di luar topik ini (termasuk topik umum, teknologi lain, atau permintaan yang tidak berkaitan), tolak dengan sopan dan arahkan user supaya bertanya seputar materi ini saja.",
      "Jawab ringkas, jelas, dalam Bahasa Indonesia, boleh pakai contoh kode kalau relevan.",
      "",
      `--- MATERI: ${note.title} (kategori ${note.categoryName}) ---`,
      note.content,
      "--- AKHIR MATERI ---",
    ].join("\n");
  }

  const category = await getCategoryAiContext(scope.categoryId);
  if (!category) return null;
  const outline = category.noteTitles.map((title, i) => `${i + 1}. ${title}`).join("\n");
  return [
    `Kamu adalah asisten belajar di platform "Catatan Belajar". Jawab HANYA pertanyaan yang berkaitan dengan roadmap kategori "${category.name}" ini (daftar catatannya di bawah).`,
    "Kalau pertanyaan di luar topik roadmap ini, tolak dengan sopan dan arahkan user supaya bertanya seputar materi ini saja. Kalau pertanyaan soal detail satu catatan spesifik yang tidak kamu tahu persis dari daftar di bawah, arahkan user membuka catatan itu untuk detail lengkapnya.",
    "Jawab ringkas, jelas, dalam Bahasa Indonesia.",
    "",
    `--- ROADMAP: ${category.name} ---`,
    category.description ?? "(kategori ini belum punya deskripsi roadmap)",
    "",
    "Daftar catatan:",
    outline,
    "--- AKHIR ROADMAP ---",
  ].join("\n");
}

export async function askAiAction(scope: AiChatScope, message: string): Promise<AskAiResult> {
  try {
    const trimmed = message.trim();
    if (!trimmed) return { success: false, error: "Pertanyaan tidak boleh kosong" };
    if (trimmed.length > MAX_MESSAGE_LENGTH) {
      return { success: false, error: `Pertanyaan maksimal ${MAX_MESSAGE_LENGTH} karakter` };
    }

    const baseUrl = process.env.AI_BASE_URL;
    const apiKey = process.env.AI_API_KEY;
    const model = process.env.AI_MODEL;
    if (!baseUrl || !apiKey || !model) {
      return {
        success: false,
        error: "Fitur Tanya AI belum dikonfigurasi di server (AI_BASE_URL/AI_API_KEY/AI_MODEL belum diisi).",
      };
    }

    const supabase = await createClient();
    const {
      data: { user },
    } = await supabase.auth.getUser();
    if (!user) return { success: false, error: "Masuk dulu untuk pakai fitur Tanya AI." };

    const systemPrompt = await buildSystemPrompt(scope);
    if (!systemPrompt) return { success: false, error: "Materi tidak ditemukan." };

    const table = chatTable(scope);
    const [column, value] = scopeColumn(scope);

    const { data: history, error: historyError } = await supabase
      .from(table)
      .select("role, content")
      .eq("user_id", user.id)
      .eq(column, value)
      .order("created_at", { ascending: true });
    if (historyError) return { success: false, error: historyError.message };

    const recentHistory = (history ?? []).slice(-MAX_HISTORY_MESSAGES);

    const { error: insertUserError } = await supabase.from(table).insert({
      user_id: user.id,
      [column]: value,
      role: "user",
      content: trimmed,
    });
    if (insertUserError) return { success: false, error: insertUserError.message };

    const messages = [
      { role: "system", content: systemPrompt },
      ...recentHistory.map((m: { role: string; content: string }) => ({ role: m.role, content: m.content })),
      { role: "user", content: trimmed },
    ];

    let reply: string | undefined;
    try {
      const res = await fetch(`${baseUrl.replace(/\/+$/, "")}/chat/completions`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${apiKey}`,
        },
        body: JSON.stringify({ model, messages, temperature: 0.3 }),
      });

      if (!res.ok) {
        const errText = await res.text().catch(() => "");
        return { success: false, error: `AI API error (${res.status}): ${errText.slice(0, 200)}` };
      }

      const json = await res.json();
      reply = json.choices?.[0]?.message?.content?.trim();
    } catch (e) {
      return { success: false, error: e instanceof Error ? e.message : "Gagal menghubungi AI." };
    }

    if (!reply) return { success: false, error: "AI tidak memberikan jawaban." };

    const { error: insertAssistantError } = await supabase.from(table).insert({
      user_id: user.id,
      [column]: value,
      role: "assistant",
      content: reply,
    });
    if (insertAssistantError) return { success: false, error: insertAssistantError.message };

    return { success: true, reply };
  } catch (e) {
    return { success: false, error: e instanceof Error ? e.message : "Terjadi kesalahan" };
  }
}

export async function clearAiChatAction(scope: AiChatScope): Promise<ClearResult> {
  try {
    const supabase = await createClient();
    const {
      data: { user },
    } = await supabase.auth.getUser();
    if (!user) return { success: false, error: "Masuk dulu untuk pakai fitur Tanya AI." };

    const [column, value] = scopeColumn(scope);
    const { error } = await supabase.from(chatTable(scope)).delete().eq("user_id", user.id).eq(column, value);
    if (error) return { success: false, error: error.message };

    return { success: true };
  } catch (e) {
    return { success: false, error: e instanceof Error ? e.message : "Terjadi kesalahan" };
  }
}
