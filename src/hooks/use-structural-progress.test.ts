import { describe, expect, it } from "vitest";
import {
  calculateStructuralMastery,
  countStructuralQuestions,
  formatDuration,
  summarizeStructuralProgress,
  type StructuralQuestionProgress,
} from "@/hooks/use-structural-progress";

function progress(overrides: Partial<StructuralQuestionProgress> = {}): StructuralQuestionProgress {
  return {
    id: "p-1",
    documentId: "doc-1",
    questionNumber: 1,
    status: "passed",
    startedAt: "2026-09-01T00:00:00Z",
    completedAt: "2026-09-01T00:10:00Z",
    durationSeconds: 600,
    updatedAt: "2026-09-01T00:10:00Z",
    ...overrides,
  };
}

describe("formatDuration", () => {
  it("returns a friendly label for null/zero", () => {
    expect(formatDuration(null)).toBe("No time yet");
    expect(formatDuration(0)).toBe("No time yet");
    expect(formatDuration(undefined)).toBe("No time yet");
  });

  it("formats seconds, minutes, and hours", () => {
    expect(formatDuration(45)).toBe("45s");
    expect(formatDuration(125)).toBe("2m 5s");
    expect(formatDuration(3661)).toBe("1h 1m");
  });
});

describe("countStructuralQuestions", () => {
  it("counts unique Q-numbered questions in markdown", () => {
    const markdown = "## Section\n\nQ1. What is x?\n\nQ2. Solve.\n\nQ1. repeated";
    expect(countStructuralQuestions(markdown)).toBe(2);
  });

  it("returns 0 for empty or null markdown", () => {
    expect(countStructuralQuestions(null)).toBe(0);
    expect(countStructuralQuestions("")).toBe(0);
    expect(countStructuralQuestions(undefined)).toBe(0);
  });
});

describe("summarizeStructuralProgress", () => {
  it("computes counts, completion rate, and duration", () => {
    const summary = summarizeStructuralProgress([
      progress({ status: "passed", durationSeconds: 600 }),
      progress({ id: "p-2", status: "passed", durationSeconds: 300 }),
      progress({ id: "p-3", status: "failed", durationSeconds: 120 }),
      progress({ id: "p-4", status: "started", durationSeconds: null }),
    ]);
    expect(summary.totalStarted).toBe(4);
    expect(summary.passed).toBe(2);
    expect(summary.failed).toBe(1);
    expect(summary.active).toBe(1);
    expect(summary.completionRate).toBe(50);
    expect(summary.totalDurationSeconds).toBe(1020);
    expect(summary.averageDurationSeconds).toBe(340);
  });

  it("returns zeroed values for empty progress", () => {
    const summary = summarizeStructuralProgress([]);
    expect(summary.totalStarted).toBe(0);
    expect(summary.completionRate).toBe(0);
    expect(summary.totalDurationSeconds).toBe(0);
    expect(summary.averageDurationSeconds).toBe(0);
  });
});

describe("calculateStructuralMastery", () => {
  it("computes per-subject mastery and sorts by score", () => {
    const mastery = calculateStructuralMastery(
      [
        progress({ documentId: "doc-1", status: "passed" }),
        progress({ documentId: "doc-1", status: "passed" }),
        progress({ documentId: "doc-2", status: "failed" }),
      ],
      [
        { id: "doc-1", subject: "Mathematics", markdownContent: "Q1.\nQ2." },
        { id: "doc-2", subject: "Physics", markdownContent: "Q1." },
      ],
    );

    expect(mastery).toHaveLength(2);
    expect(mastery[0].subject).toBe("Mathematics");
    expect(mastery[0].passed).toBe(2);
    expect(mastery[0].failed).toBe(0);
    expect(mastery[1].subject).toBe("Physics");
    expect(mastery[1].failed).toBe(1);
  });

  it("handles empty progress and documents", () => {
    expect(calculateStructuralMastery([], [])).toEqual([]);
  });
});
