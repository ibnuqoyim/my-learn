import { describe, expect, it } from "vitest";
import { validateCategoryInput } from "@/lib/validateCategory";

describe("validateCategoryInput", () => {
  it("mengembalikan null (valid) untuk input lengkap", () => {
    expect(
      validateCategoryInput({ name: "Rust", slug: "rust", description: "Bahasa sistem." })
    ).toBeNull();
  });

  it("description kosong tetap valid (opsional)", () => {
    expect(validateCategoryInput({ name: "Rust", slug: "rust", description: "" })).toBeNull();
  });

  it("menolak nama kosong", () => {
    expect(validateCategoryInput({ name: "  ", slug: "rust", description: "" })).toMatch(/nama/i);
  });

  it("menolak slug kosong", () => {
    expect(validateCategoryInput({ name: "Rust", slug: "", description: "" })).toMatch(/slug/i);
  });

  it("menolak slug format bukan kebab-case", () => {
    expect(validateCategoryInput({ name: "Rust", slug: "Rust Lang", description: "" })).toMatch(/slug/i);
  });
});
