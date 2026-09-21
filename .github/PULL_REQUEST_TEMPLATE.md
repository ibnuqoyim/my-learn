## Ringkasan

<!-- Apa yang berubah dan kenapa (1-3 kalimat). -->

## Jenis perubahan

- [ ] Fitur baru
- [ ] Perbaikan bug
- [ ] Konten (catatan/kategori)
- [ ] Infrastruktur/tooling (CI, config, dependency)
- [ ] Dokumentasi

## Checklist

- [ ] `npm run verify` (lint + typecheck + build) lolos di `web/`
- [ ] Tidak menambah/menghapus dependency tanpa persetujuan eksplisit
      (lihat `AGENTS.md` — Forbidden Actions)
- [ ] Perubahan skema database (kalau ada) lewat file migrasi baru di
      `web/supabase/migrations/`, bukan edit manual/file lama
- [ ] Tidak ada secret/API key yang ter-commit
- [ ] Base branch PR ini benar sesuai `AGENTS.md` bagian 1 (`draft`,
      bukan `main`, kecuali ini memang PR rilis `draft` → `main`)

## Catatan tambahan

<!-- Konteks lain untuk reviewer, kalau ada. -->
