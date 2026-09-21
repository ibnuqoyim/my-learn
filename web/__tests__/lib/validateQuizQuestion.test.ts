import { describe, expect, it } from "vitest";
import { validateQuizQuestionInput } from "@/lib/validateQuizQuestion";
import type { QuizQuestionFormInput } from "@/lib/types";

function baseInput(overrides: Partial<QuizQuestionFormInput> = {}): QuizQuestionFormInput {
  return {
    question: "Apa itu closure?",
    options: ["Fungsi biasa", "Fungsi yang mengingat scope pembuatnya", "Sebuah tipe data", "Objek DOM"],
    correctIndex: 1,
    explanation: "Closure mengingat variabel dari scope tempat ia dibuat.",
    orderIndex: 0,
    ...overrides,
  };
}

describe("validateQuizQuestionInput", () => {
  it("mengembalikan null (valid) untuk input lengkap", () => {
    expect(validateQuizQuestionInput(baseInput())).toBeNull();
  });

  it("menolak pertanyaan kosong", () => {
    expect(validateQuizQuestionInput(baseInput({ question: "   " }))).toMatch(/pertanyaan/i);
  });

  it("menolak kurang dari 2 opsi", () => {
    expect(validateQuizQuestionInput(baseInput({ options: ["Satu-satunya opsi"], correctIndex: 0 }))).toMatch(/opsi/i);
  });

  it("menolak kalau ada opsi kosong", () => {
    expect(validateQuizQuestionInput(baseInput({ options: ["A", "", "C"] }))).toMatch(/opsi/i);
  });

  it("menerima persis 2 opsi", () => {
    expect(validateQuizQuestionInput(baseInput({ options: ["Benar", "Salah"], correctIndex: 0 }))).toBeNull();
  });

  it("menolak correctIndex negatif", () => {
    expect(validateQuizQuestionInput(baseInput({ correctIndex: -1 }))).toMatch(/jawaban benar/i);
  });

  it("menolak correctIndex di luar jangkauan opsi", () => {
    expect(validateQuizQuestionInput(baseInput({ correctIndex: 4 }))).toMatch(/jawaban benar/i);
  });

  it("menolak correctIndex bukan integer", () => {
    expect(validateQuizQuestionInput(baseInput({ correctIndex: 1.5 }))).toMatch(/jawaban benar/i);
  });

  it("explanation kosong tetap valid (opsional)", () => {
    expect(validateQuizQuestionInput(baseInput({ explanation: "" }))).toBeNull();
  });
});
