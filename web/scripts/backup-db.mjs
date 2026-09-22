// Script untuk melakukan backup seluruh data dari project Supabase (production/current)
// ke folder web/supabase/backups/latest/
//
// Usage: node scripts/backup-db.mjs

import fs from "node:fs";
import path from "node:path";

function loadEnvFile(filePath) {
  if (!fs.existsSync(filePath)) return {};
  const res = {};
  const content = fs.readFileSync(filePath, "utf8");
  for (const line of content.split("\n")) {
    const match = line.match(/^\s*([A-Za-z0-9_]+)\s*=\s*(.*)?\s*$/);
    if (match) {
      res[match[1]] = match[2] ? match[2].trim() : "";
    }
  }
  return res;
}

const localEnv = loadEnvFile(path.resolve(process.cwd(), ".env.local"));
const rootEnv = loadEnvFile(path.resolve(process.cwd(), "../.env"));

let pat = process.env.PAT_TOKEN_SUPABASE || localEnv.PAT_TOKEN_SUPABASE || rootEnv.PAT_TOKEN_SUPABASE;
if (!pat) {
  for (const val of [...Object.values(localEnv), ...Object.values(rootEnv)]) {
    if (typeof val === "string" && val.startsWith("sbp_")) {
      pat = val;
      break;
    }
  }
}

let projectRef = process.argv[2];
if (!projectRef) {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL || localEnv.NEXT_PUBLIC_SUPABASE_URL;
  if (url) {
    const match = url.match(/https:\/\/([^.]+)\.supabase\.co/);
    if (match) projectRef = match[1];
  }
}

if (!projectRef) {
  projectRef = "sgtopeghogkwaaaygakc";
}

if (!pat) {
  console.error("Token Supabase (PAT_TOKEN_SUPABASE) tidak ditemukan di environment atau .env");
  process.exit(1);
}

const tables = [
  "categories",
  "notes",
  "profiles",
  "comments",
  "note_progress",
  "category_quiz_questions",
  "category_quiz_attempts",
  "note_quiz_questions",
  "note_quiz_attempts",
  "category_ai_chat_messages",
  "note_ai_chat_messages",
];

async function runQuery(query) {
  const res = await fetch(`https://api.supabase.com/v1/projects/${projectRef}/database/query`, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${pat}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ query }),
  });

  if (!res.ok) {
    throw new Error(`Query failed (HTTP ${res.status}): ${await res.text()}`);
  }

  return res.json();
}

function sqlEscape(val) {
  if (val === null || val === undefined) return "NULL";
  if (typeof val === "boolean") return val ? "TRUE" : "FALSE";
  if (typeof val === "number") return String(val);
  if (typeof val === "object") {
    const s = JSON.stringify(val).replace(/'/g, "''");
    return `'${s}'::jsonb`;
  }
  const s = String(val).replace(/'/g, "''");
  return `'${s}'`;
}

async function main() {
  console.log(`Mengambil data backup dari project Supabase: ${projectRef}...`);

  const backupDir = path.resolve(process.cwd(), "supabase/backups/latest");
  fs.mkdirSync(backupDir, { recursive: true });

  const manifest = {
    project_ref: projectRef,
    timestamp: new Date().toISOString(),
    tables: {},
  };

  const backupData = {};

  for (const table of tables) {
    process.stdout.write(`- Mengambil ${table}... `);
    const rows = await runQuery(`SELECT * FROM ${table};`);
    backupData[table] = rows;
    manifest.tables[table] = rows.length;

    const jsonPath = path.join(backupDir, `${table}.json`);
    fs.writeFileSync(jsonPath, JSON.stringify(rows, null, 2), "utf8");
    console.log(`selesai (${rows.length} baris)`);
  }

  // Simpan manifest
  fs.writeFileSync(path.join(backupDir, "manifest.json"), JSON.stringify(manifest, null, 2), "utf8");

  // Buat file SQL restore
  console.log("Menghasilkan file restore_data.sql...");
  const sqlLines = [];
  sqlLines.push("-- Database Backup Snapshot (data only)");
  sqlLines.push(`-- Generated: ${manifest.timestamp}`);
  sqlLines.push(`-- Supabase Project: ${projectRef}`);
  sqlLines.push("");
  sqlLines.push("BEGIN;");
  sqlLines.push("");

  // Categories
  sqlLines.push(`-- Categories (${backupData.categories.length} baris)`);
  for (const cat of backupData.categories) {
    sqlLines.push(
      `INSERT INTO categories (id, name, slug, description, created_at) VALUES (` +
        `${sqlEscape(cat.id)}, ${sqlEscape(cat.name)}, ${sqlEscape(cat.slug)}, ` +
        `${sqlEscape(cat.description)}, ${sqlEscape(cat.created_at)}) ` +
        `ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, slug = EXCLUDED.slug, description = EXCLUDED.description;`
    );
  }

  sqlLines.push("");
  // Notes
  sqlLines.push(`-- Notes (${backupData.notes.length} baris)`);
  for (const n of backupData.notes) {
    sqlLines.push(
      `INSERT INTO notes (id, category_id, title, slug, content, sources, prerequisites, practice, order_index, status, created_at, updated_at) VALUES (` +
        `${sqlEscape(n.id)}, ${sqlEscape(n.category_id)}, ${sqlEscape(n.title)}, ${sqlEscape(n.slug)}, ` +
        `${sqlEscape(n.content)}, ${sqlEscape(n.sources)}, ${sqlEscape(n.prerequisites)}, ${sqlEscape(n.practice)}, ` +
        `${sqlEscape(n.order_index)}, ${sqlEscape(n.status)}, ${sqlEscape(n.created_at)}, ${sqlEscape(n.updated_at)}) ` +
        `ON CONFLICT (id) DO UPDATE SET ` +
        `category_id = EXCLUDED.category_id, title = EXCLUDED.title, slug = EXCLUDED.slug, content = EXCLUDED.content, ` +
        `sources = EXCLUDED.sources, prerequisites = EXCLUDED.prerequisites, practice = EXCLUDED.practice, ` +
        `order_index = EXCLUDED.order_index, status = EXCLUDED.status, updated_at = EXCLUDED.updated_at;`
    );
  }

  sqlLines.push("");
  // Category Quiz Questions
  sqlLines.push(`-- Category Quiz Questions (${backupData.category_quiz_questions.length} baris)`);
  for (const q of backupData.category_quiz_questions) {
    sqlLines.push(
      `INSERT INTO category_quiz_questions (id, category_id, question, options, correct_index, explanation, order_index, created_at) VALUES (` +
        `${sqlEscape(q.id)}, ${sqlEscape(q.category_id)}, ${sqlEscape(q.question)}, ${sqlEscape(q.options)}, ` +
        `${sqlEscape(q.correct_index)}, ${sqlEscape(q.explanation)}, ${sqlEscape(q.order_index)}, ${sqlEscape(q.created_at)}) ` +
        `ON CONFLICT (id) DO UPDATE SET ` +
        `category_id = EXCLUDED.category_id, question = EXCLUDED.question, options = EXCLUDED.options, ` +
        `correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;`
    );
  }

  sqlLines.push("");
  // Note Quiz Questions
  sqlLines.push(`-- Note Quiz Questions (${backupData.note_quiz_questions.length} baris)`);
  for (const q of backupData.note_quiz_questions) {
    sqlLines.push(
      `INSERT INTO note_quiz_questions (id, note_id, question, options, correct_index, explanation, order_index, created_at) VALUES (` +
        `${sqlEscape(q.id)}, ${sqlEscape(q.note_id)}, ${sqlEscape(q.question)}, ${sqlEscape(q.options)}, ` +
        `${sqlEscape(q.correct_index)}, ${sqlEscape(q.explanation)}, ${sqlEscape(q.order_index)}, ${sqlEscape(q.created_at)}) ` +
        `ON CONFLICT (id) DO UPDATE SET ` +
        `note_id = EXCLUDED.note_id, question = EXCLUDED.question, options = EXCLUDED.options, ` +
        `correct_index = EXCLUDED.correct_index, explanation = EXCLUDED.explanation, order_index = EXCLUDED.order_index;`
    );
  }

  sqlLines.push("");
  sqlLines.push("COMMIT;");
  sqlLines.push("");

  fs.writeFileSync(path.join(backupDir, "restore_data.sql"), sqlLines.join("\n"), "utf8");
  console.log(`\nBackup selesai! Semua file tersimpan di: ${backupDir}`);
}

main().catch((err) => {
  console.error("Backup gagal:", err);
  process.exit(1);
});
