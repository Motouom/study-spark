import { describe, expect, it } from "vitest";
import { parseAiLearningPath } from "@/lib/ai";

describe("parseAiLearningPath", () => {
  it("extracts a JSON array even when the provider adds prose", () => {
    const days = parseAiLearningPath(
      'Here is the plan:\n[{"day":1,"title":"Review algebra","paper":"Paper A","target":"Redo Q1","focus":"Factorisation"}]\nGood luck.',
    );

    expect(days).toEqual([
      {
        day: 1,
        title: "Review algebra",
        paper: "Paper A",
        target: "Redo Q1",
        focus: "Factorisation",
      },
    ]);
  });

  it("extracts fenced JSON objects with days", () => {
    const days = parseAiLearningPath(
      '```json\n{"days":[{"day":2,"title":"Timed work","paper":"Paper B","target":"Solve 4 questions","focus":"Show working"}]}\n```',
    );

    expect(days[0]).toMatchObject({
      day: 2,
      title: "Timed work",
      paper: "Paper B",
      target: "Solve 4 questions",
      focus: "Show working",
    });
  });
});
