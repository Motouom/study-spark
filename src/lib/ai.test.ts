import { describe, expect, it } from "vitest";
import { fallbackLearningPath, parseAiLearningPath } from "@/lib/ai";

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

describe("fallbackLearningPath", () => {
  const ranking = [
    {
      title: "Hardest Paper",
      subject: "Mathematics",
      bestDepth: 40,
      reviewCount: 6,
      failedQuestions: [1, 2, 3],
      avgConfidence: 2,
      difficultParts: ["Factorisation"],
      addToRevision: true,
      difficultyScore: 90,
    },
    {
      title: "Second Paper",
      subject: "Physics",
      bestDepth: 60,
      reviewCount: 3,
      avgConfidence: 3,
      difficultParts: [],
      addToRevision: false,
      difficultyScore: 70,
    },
  ];

  it("always returns a 7-day plan", () => {
    const days = fallbackLearningPath({
      weakestSubjects: ["Mathematics"],
      difficultyRanking: ranking,
      nextPapers: ["Fresh Paper"],
    });
    expect(days).toHaveLength(7);
    expect(days.map((d) => d.day)).toEqual([1, 2, 3, 4, 5, 6, 7]);
  });

  it("leads with the hardest paper and its failed questions", () => {
    const days = fallbackLearningPath({
      weakestSubjects: ["Mathematics"],
      difficultyRanking: ranking,
      nextPapers: [],
    });
    expect(days[0].paper).toBe("Hardest Paper");
    expect(days[0].target).toContain("Q1");
    expect(days[0].focus).toContain("Factorisation");
  });

  it("falls back to the weakest subject when the ranking is empty", () => {
    const days = fallbackLearningPath({
      weakestSubjects: ["Physics"],
      difficultyRanking: [],
      nextPapers: [],
    });
    expect(days[0].title).toContain("Physics");
    expect(days[0].paper).toBe("Current weakest paper");
  });

  it("uses the next fresh paper for day 5 timed practice", () => {
    const days = fallbackLearningPath({
      weakestSubjects: ["Mathematics"],
      difficultyRanking: ranking,
      nextPapers: ["Fresh Paper"],
    });
    expect(days[4].paper).toBe("Fresh Paper");
  });

  it("survives an empty ranking and no next papers without throwing", () => {
    const days = fallbackLearningPath({
      weakestSubjects: [],
      difficultyRanking: [],
      nextPapers: [],
    });
    expect(days).toHaveLength(7);
    expect(days[0].paper).toBe("Current weakest paper");
  });
});
