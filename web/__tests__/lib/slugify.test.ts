import { describe, expect, it } from "vitest";
import { slugify } from "@/lib/slugify";

describe("slugify", () => {
  it("melowercase dan mengganti spasi dengan strip", () => {
    expect(slugify("Async/Await di JavaScript")).toBe("async-await-di-javascript");
  });

  it("membuang karakter non-alfanumerik", () => {
    expect(slugify("Next.js 16: App Router!")).toBe("next-js-16-app-router");
  });

  it("merapikan spasi/strip ganda jadi satu strip", () => {
    expect(slugify("Halo   Dunia -- Ini Tes")).toBe("halo-dunia-ini-tes");
  });

  it("membuang strip di awal/akhir hasil", () => {
    expect(slugify("  --Judul Catatan--  ")).toBe("judul-catatan");
  });

  it("string kosong menghasilkan string kosong, bukan error", () => {
    expect(slugify("")).toBe("");
    expect(slugify("   ")).toBe("");
  });

  it("angka & huruf kecil tidak berubah", () => {
    expect(slugify("typescript-2024-roadmap")).toBe("typescript-2024-roadmap");
  });
});
