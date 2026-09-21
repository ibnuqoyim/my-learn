# Wrapper deterministik ke command di web/ — lihat AGENTS.md bagian
# "Command Matrix". Semua target ini idempotent & aman dijalankan berkali-kali.

.PHONY: install dev build lint typecheck test verify

install:
	cd web && npm ci

dev:
	cd web && npm run dev

build:
	cd web && npm run build

lint:
	cd web && npm run lint -- --max-warnings 0

typecheck:
	cd web && npm run typecheck

test:
	cd web && npm run test:coverage

verify:
	cd web && npm run verify
