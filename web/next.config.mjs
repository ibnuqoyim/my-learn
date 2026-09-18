import { fileURLToPath } from "node:url";
import path from "node:path";

const __dirname = path.dirname(fileURLToPath(import.meta.url));

/** @type {import('next').NextConfig} */
const nextConfig = {
  // Repo root punya package-lock.json Eleventy juga (lihat CLAUDE.md soal
  // migrasi bertahap) — kunci root tracing ke folder ini supaya Next.js
  // tidak salah menebak workspace root.
  outputFileTracingRoot: __dirname,
};

export default nextConfig;
