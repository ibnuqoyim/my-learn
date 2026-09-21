# Agent Handover Log

Ringkasan singkat tiap task besar/lintas-sesi, supaya agent berikutnya
(Claude Code, Cursor, Windsurf, atau manusia) tahu konteks tanpa harus
membaca ulang seluruh riwayat commit. Tambahkan entri baru di **atas**
(paling baru di atas), jangan edit entri lama.

Format:

```markdown
## [YYYY-MM-DD] Task: <judul singkat>
- **Agent:** <nama agent + model, kalau tahu>
- **Status:** Completed / In Progress / Blocked
- **Changes:** <ringkasan 1-3 baris perubahan>
- **Verification:** <apa yang divalidasi — `npm run verify`, tes manual, dst>
```

---

## [2026-09-21] Task: Standarisasi repo untuk AI agent (agent-agnostic)

- **Agent:** Claude Code (Claude Sonnet 5)
- **Status:** Completed
- **Changes:** `AGENTS.md` jadi SSOT baru (gabungan aturan lama di
  `CLAUDE.md` + Command Matrix + Forbidden Actions baru). `CLAUDE.md`,
  `.cursorrules`, `.windsurfrules`, `.aider.conf.yml` jadi bridge tipis
  ke `AGENTS.md`. Tambah `.agentignore`, `Makefile`, `web/supabase/migrations/`
  (riwayat incremental + baseline dari `schema.sql`), CI (`ci.yml`:
  audit+lint+typecheck+build+gitleaks), AI PR reviewer scaffold
  (`ai-review.yml` + `scripts/ai_pr_review.py`, nonaktif sampai secret
  `OPENAI_API_KEY` diisi), `.github/dependabot.yml`, PR template.
- **Verification:** `npm run verify` (lint + typecheck + build) lolos di
  `web/`. Branch protection, Dependabot alert toggle, dan Socket.dev App
  **belum** diaktifkan — itu pengaturan GitHub Settings manual, lihat
  `AGENTS.md` bagian 6 & checklist di akhirnya untuk daftar gap yang
  masih terbuka (test runner, E2E, dsb).

## [2026-09-18 s/d 2026-09-21] Task: Cutover Eleventy → Next.js + Supabase, RBAC admin

- **Agent:** Sesi-sesi sebelumnya (Claude Code & kontributor lain lewat
  branch `draft`)
- **Status:** Completed
- **Changes:** Migrasi penuh dari blog statis Eleventy ke Next.js App
  Router + Supabase (auth, komentar, progress belajar, search, roadmap
  per kategori dengan `order_index`), lalu RBAC + dashboard admin
  (`/admin`) untuk CRUD notes/categories.
- **Verification:** Fitur dites end-to-end dengan project Supabase asli
  (signup, login, komentar, progress, search). Deploy live di Vercel dari
  `main`.
