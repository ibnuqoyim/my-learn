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

## [2026-09-21] Task: Upgrade Next.js 15 → 16 (fix CI audit gate)

- **Agent:** Claude Code (Claude Sonnet 5)
- **Status:** Completed
- **Changes:** CI `npm audit --audit-level=high` (baru ditambahkan task
  sebelumnya) menemukan kerentanan high-severity di `postcss` bawaan
  `next@15.5.25`; satu-satunya fix adalah upgrade major ke `next@16.3.5`
  — dilakukan atas persetujuan eksplisit user (bukan otomatis, sesuai
  Forbidden Action #1 di `AGENTS.md`). Next 16 menghapus total `next
  lint` (sebelumnya cuma deprecated) — migrasi ke `eslint .` langsung.
  `middleware.ts` juga deprecated diganti konvensi `proxy.ts` — dimigrasi
  pakai codemod resmi (`npx @next/codemod middleware-to-proxy`,
  fungsi `middleware` jadi `proxy`, isi logic tidak berubah).
  `tsconfig.json` diupdate otomatis oleh tooling Next 16 (`jsx:
  react-jsx`, include `.next/dev/types`). Next 16 juga memperkenalkan
  `web/AGENTS.md`/`web/CLAUDE.md` auto-generated (peringatan
  version-specific breaking changes) — dibiarkan, bukan konflik dengan
  SSOT root (lihat catatan di root `AGENTS.md`).
- **Verification:** `npm audit --audit-level=high` → 0 vulnerabilities.
  `npm run verify` (lint+typecheck+build) lolos bersih. Dev server
  dites jalan (halaman render, tidak crash) — data Supabase tidak bisa
  divalidasi live dari sandbox ini (network egress diblokir), sama
  seperti keterbatasan sepanjang sesi ini.

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
