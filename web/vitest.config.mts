import path from "node:path";
import { defineConfig } from "vitest/config";

export default defineConfig({
  resolve: {
    alias: {
      "@": path.resolve(import.meta.dirname, "."),
    },
  },
  test: {
    globals: true,
    environment: "node",
    // Isolasi dari Playwright nanti (belum ada) — lihat AGENTS.md bagian 6.
    include: ["__tests__/**/*.{test,spec}.{js,mjs,cjs,ts,mts,cts}"],
    exclude: ["e2e/**", "node_modules/**", ".next/**"],
    coverage: {
      provider: "v8",
      reporter: ["text", "json-summary", "html"],
      // Scope SENGAJA dibatasi cuma ke modul murni yang benar-benar
      // dites (lib/validateNote.ts, lib/validateCategory.ts,
      // lib/slugify.ts, lib/normalizeNoteSummary.ts) — bukan seluruh
      // `lib/` atau `app/`. Sebagian besar kode lain (query Supabase,
      // server actions, komponen) belum ada test-nya (butuh mocking
      // Supabase/Next request context, lihat AGENTS.md checklist), jadi
      // TIDAK jujur untuk di-gate 80% kalau scope-nya diperlebar tanpa
      // test barunya. Perlebar `include` di bawah seiring makin banyak
      // modul yang dites, jangan cuma naikkan angka thresholds-nya.
      include: [
        "lib/slugify.ts",
        "lib/validateNote.ts",
        "lib/validateCategory.ts",
        "lib/normalizeNoteSummary.ts",
        "lib/validateQuizQuestion.ts",
      ],
      thresholds: {
        lines: 80,
        functions: 80,
        branches: 75,
        statements: 80,
      },
    },
  },
});
