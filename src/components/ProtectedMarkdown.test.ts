import { describe, expect, it } from "vitest";
import {
  hasMath,
  normalizeAnswerKey,
  normalizeLegacyLatex,
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

  it("normalizes legacy parenthesized TeX without changing prose", () => {
    const markdown = [
      "Derivative: (\\frac{dy}{dx}=nx^{n-1})",
      "Quotient: (\\frac{u'v-uv'}{v^2})",
      "Integral: (\\int x^n dx=\\frac{x^{n+1}}{n+1}+C)",
      "An ordinary explanation (with no TeX).",
    ].join("\n\n");

    expect(normalizeLegacyLatex(markdown)).toBe(
      [
        "Derivative: $\\frac{dy}{dx}=nx^{n-1}$",
        "Quotient: $\\frac{u'v-uv'}{v^2}$",
        "Integral: $\\int x^n dx=\\frac{x^{n+1}}{n+1}+C$",
        "An ordinary explanation (with no TeX).",
      ].join("\n\n"),
    );
  });

  it("preserves existing math, code, URLs, and ordinary parentheses", () => {
    const markdown = [
      "$x^2$",
      "$$E=mc^2$$",
      "`(\\frac{x}{y})`",
      "```\\frac{code}{example}```",
      "https://example.com/(\\frac{x}{y})",
      "ordinary (parentheses)",
    ].join("\n\n");

    expect(normalizeLegacyLatex(markdown)).toBe(
      [
        "$x^2$",
        "$$\nE=mc^2\n$$",
        "`(\\frac{x}{y})`",
        "```\\frac{code}{example}```",
        "https://example.com/(\\frac{x}{y})",
        "ordinary (parentheses)",
      ].join("\n\n"),
    );
  });

  it("rewrites single-line display math to fenced blocks so it renders as display", () => {
    const markdown = [
      "$$\\lim_{x\\to a} (mx+p)=ma+p$$",
      "$$\\begin{cases} ax+by=c \\\\ a'x+b'y=c' \\end{cases}$$",
      "Inline $x^2$ stays inline.",
      "$$x=-\\frac{b}{a}$$",
    ].join("\n\n");

    expect(normalizeLegacyLatex(markdown)).toBe(
      [
        "$$\n\\lim_{x\\to a} (mx+p)=ma+p\n$$",
        "$$\n\\begin{cases} ax+by=c \\\\ a'x+b'y=c' \\end{cases}\n$$",
        "Inline $x^2$ stays inline.",
        "$$\nx=-\\frac{b}{a}\n$$",
      ].join("\n\n"),
    );
  });

  it("normalizes multiple formulas in one paragraph", () => {
    expect(normalizeLegacyLatex("Compare (\\alpha+\\beta) with (\\pi\\cdot r^2).")).toBe(
      "Compare $\\alpha+\\beta$ with $\\pi\\cdot r^2$.",
    );
  });

  it("converts legacy \\(...\\) and \\[...\\] delimiters to dollar math", () => {
    const markdown = [
      "Inline: \\(x^n\\) and \\(\\frac{dy}{dx}\\).",
      "Quotient: \\(\\left(\\frac{u}{v}\\right)' = \\frac{u'v - uv'}{v^2}\\).",
      "Display: \\[\\int_0^1 x^2 \\, dx = \\frac{1}{3}\\]",
    ].join("\n\n");

    expect(normalizeLegacyLatex(markdown)).toBe(
      [
        "Inline: $x^n$ and $\\frac{dy}{dx}$.",
        "Quotient: $\\left(\\frac{u}{v}\\right)' = \\frac{u'v - uv'}{v^2}$.",
        "Display: $$\\int_0^1 x^2 \\, dx = \\frac{1}{3}$$",
      ].join("\n\n"),
    );
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

  it("converts answer key lists into answerkey code blocks", () => {
    const markdown = ["## ANSWER KEY", "", "1. A", "2. B", "3. C", "4. D"].join("\n");
    expect(normalizeAnswerKey(markdown)).toBe(
      ["## ANSWER KEY", "", "```answerkey", "1. A", "2. B", "3. C", "4. D", "```"].join("\n"),
    );
  });

  it("keeps the heading when no answer lines follow", () => {
    const markdown = ["## ANSWER KEY", "", "See the solution below."].join("\n");
    expect(normalizeAnswerKey(markdown)).toBe(markdown);
  });

  it("leaves ordinary content untouched", () => {
    const markdown = ["## QUESTIONS", "", "1. A", "2. B"].join("\n");
    expect(normalizeAnswerKey(markdown)).toBe(markdown);
  });
});
