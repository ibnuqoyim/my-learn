import { describe, expect, it } from "vitest";
import { normalizeNoteSummary } from "@/lib/normalizeNoteSummary";

describe("normalizeNoteSummary", () => {
  it("meratakan category kalau Supabase mengembalikannya sebagai array (embed belongsTo)", () => {
    const row = {
      id: "n1",
      title: "Closure",
      slug: "closure",
      updated_at: "2026-01-01T00:00:00Z",
      order_index: 3,
      category: [{ id: "c1", name: "JavaScript", slug: "javascript" }],
    };

    expect(normalizeNoteSummary(row)).toEqual({
      id: "n1",
      title: "Closure",
      slug: "closure",
      updated_at: "2026-01-01T00:00:00Z",
      orderIndex: 3,
      category: { id: "c1", name: "JavaScript", slug: "javascript" },
    });
  });

  it("membiarkan category apa adanya kalau sudah berupa object (bukan array)", () => {
    const row = {
      id: "n2",
      title: "Promise",
      slug: "promise",
      updated_at: "2026-01-02T00:00:00Z",
      order_index: 4,
      category: { id: "c1", name: "JavaScript", slug: "javascript" },
    };

    expect(normalizeNoteSummary(row).category).toEqual({ id: "c1", name: "JavaScript", slug: "javascript" });
  });

  it("order_index null/undefined default ke 0", () => {
    const row = {
      id: "n3",
      title: "Tanpa urutan",
      slug: "tanpa-urutan",
      updated_at: "2026-01-03T00:00:00Z",
      order_index: null,
      category: { id: "c1", name: "JavaScript", slug: "javascript" },
    };

    expect(normalizeNoteSummary(row).orderIndex).toBe(0);
  });
});
