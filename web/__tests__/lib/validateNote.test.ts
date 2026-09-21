import { describe, expect, it } from "vitest";
import { validateNoteInput } from "@/lib/validateNote";
import type { NoteFormInput } from "@/lib/types";

function baseInput(overrides: Partial<NoteFormInput> = {}): NoteFormInput {
  return {
    categoryId: "cat-1",
    title: "Judul Catatan",
    slug: "judul-catatan",
    content: "Isi catatan yang cukup panjang.",
    sources: [{ label: "MDN", url: "https://developer.mozilla.org" }],
    prerequisites: [],
    practice: "",
    status: "draft",
    orderIndex: 0,
    ...overrides,
  };
}

describe("validateNoteInput", () => {
  it("mengembalikan null (valid) untuk input lengkap", () => {
    expect(validateNoteInput(baseInput())).toBeNull();
  });

  it("menolak judul kosong", () => {
    expect(validateNoteInput(baseInput({ title: "   " }))).toMatch(/judul/i);
  });

  it("menolak slug kosong", () => {
    expect(validateNoteInput(baseInput({ slug: "" }))).toMatch(/slug/i);
  });

  it.each(["Judul Besar", "ada_underscore", "ada--strip-ganda-diawal-", "-diawal-strip", "spasi di tengah"])(
    "menolak slug format salah: %s",
    (badSlug) => {
      expect(validateNoteInput(baseInput({ slug: badSlug }))).toMatch(/slug/i);
    }
  );

  it("menerima slug kebab-case dengan angka", () => {
    expect(validateNoteInput(baseInput({ slug: "langkah-2-setup" }))).toBeNull();
  });

  it("menolak kategori kosong", () => {
    expect(validateNoteInput(baseInput({ categoryId: "" }))).toMatch(/kategori/i);
  });

  it("menolak konten kosong", () => {
    expect(validateNoteInput(baseInput({ content: "   " }))).toMatch(/konten/i);
  });

  it("menolak kalau sumber kosong (standar AGENTS.md: wajib minimal 1)", () => {
    expect(validateNoteInput(baseInput({ sources: [] }))).toMatch(/sumber/i);
  });

  it("menolak sumber yang label/url-nya kosong", () => {
    expect(validateNoteInput(baseInput({ sources: [{ label: "", url: "https://x.com" }] }))).toMatch(/sumber/i);
    expect(validateNoteInput(baseInput({ sources: [{ label: "X", url: "" }] }))).toMatch(/sumber/i);
  });

  it("prasyarat boleh kosong (array kosong)", () => {
    expect(validateNoteInput(baseInput({ prerequisites: [] }))).toBeNull();
  });

  it("prasyarat boleh tanpa url, tapi label wajib", () => {
    expect(validateNoteInput(baseInput({ prerequisites: [{ label: "Paham dasar React" }] }))).toBeNull();
    expect(validateNoteInput(baseInput({ prerequisites: [{ label: "" }] }))).toMatch(/prasyarat/i);
  });
});
