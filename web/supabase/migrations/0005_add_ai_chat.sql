-- Tanya AI: chat kontekstual di akhir catatan & akhir kategori (login-gated,
-- lihat AGENTS.md bagian 3 poin 8 untuk pola serupa di fitur kuis). Beda dari
-- kuis, ini bukan konten yang dikelola admin -- murni log percakapan pribadi
-- tiap user dengan AI, jadi RLS-nya cukup "punya sendiri" tanpa policy admin,
-- dan dipisah per scope (note/kategori) dengan alasan yang sama seperti
-- note_quiz_attempts/category_quiz_attempts: menghindari FK nullable ganda.

create table if not exists note_ai_chat_messages (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users (id) on delete cascade,
  note_id uuid not null references notes (id) on delete cascade,
  role text not null check (role in ('user', 'assistant')),
  content text not null check (char_length(content) > 0),
  created_at timestamptz not null default now()
);

create table if not exists category_ai_chat_messages (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users (id) on delete cascade,
  category_id uuid not null references categories (id) on delete cascade,
  role text not null check (role in ('user', 'assistant')),
  content text not null check (char_length(content) > 0),
  created_at timestamptz not null default now()
);

create index if not exists note_ai_chat_messages_user_note_idx
  on note_ai_chat_messages (user_id, note_id, created_at);

create index if not exists category_ai_chat_messages_user_category_idx
  on category_ai_chat_messages (user_id, category_id, created_at);

alter table note_ai_chat_messages enable row level security;
alter table category_ai_chat_messages enable row level security;

-- Owner-only, sama seperti note_quiz_attempts_owner_all -- Route Handler
-- (app/api/ask-ai/route.ts) insert baris "user" & "assistant" lewat client
-- yang terikat sesi login pemanggil, bukan service role, supaya RLS ini
-- yang menegakkan kepemilikan baris, bukan cuma pengecekan di kode.
drop policy if exists "note_ai_chat_messages_owner_all" on note_ai_chat_messages;
create policy "note_ai_chat_messages_owner_all" on note_ai_chat_messages
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "category_ai_chat_messages_owner_all" on category_ai_chat_messages;
create policy "category_ai_chat_messages_owner_all" on category_ai_chat_messages
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);
