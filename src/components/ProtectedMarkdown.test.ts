import { describe, expect, it } from "vitest";
import {
  hasMath,
  normalizeQuestionHeadings,
  slugifyHeading,
  splitSimpleQuestionLabel,
} from "./ProtectedMarkdown";

describe("ProtectedMarkdown helpers", () => {
  it("slugifies headings", () => {
    expect(slugifyHeading("How to Use This Course")).toBe("how-to-use-this-course");
    expect(slugifyHeading("Q1 — Résoudre l'équation")).toBe("q1-r-soudre-l-quation");
  });

  it("detects math content", () => {
    expect(hasMath("Solve $x^2 + 1 = 0$")).toBe(true);
    expect(hasMath("$$E = mc^2$$")).toBe(true);
    expect(hasMath("Inline \\(x+1\\) math")).toBe(true);
    expect(hasMath("\\[\\int_0^1 x\\,dx\\]")).toBe(true);
    expect(hasMath("\\begin{align} x \\end{align}")).toBe(true);
    expect(hasMath("Plain text only, no formulas.")).toBe(false);
  });

  it("normalizes question headings", () => {
    const out = normalizeQuestionHeadings("**Q1.** Solve for x");
    expect(out).toContain("### Q1");
    expect(out).toContain("Solve for x");
  });

  it("does not touch lines without question labels", () => {
    const line = "## CORRIGÉ TYPE";
    expect(normalizeQuestionHeadings(line)).toBe(line);
  });

  it("splits simple question labels", () => {
    const split = splitSimpleQuestionLabel("Q1. Solve for x");
    expect(split?.questionNumber).toBe(1);
    expect(split?.rest).toBe("Solve for x");
  });
});
