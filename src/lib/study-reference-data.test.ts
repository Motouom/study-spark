import { describe, expect, it } from "vitest";
import {
  classLevelsForSystem,
  educationSystemForLanguage,
  subjectsForSeries,
} from "./study-reference-data";

describe("study-reference-data", () => {
  it("maps language to education system", () => {
    expect(educationSystemForLanguage("french")).toBe("francophone");
    expect(educationSystemForLanguage("english")).toBe("gce");
  });

  it("provides francophone class levels", () => {
    const levels = classLevelsForSystem("francophone");
    const ids = levels.map((level) => level.id);
    expect(ids).toContain("sixieme");
    expect(ids).toContain("troisieme");
    expect(ids).toContain("premiere");
    expect(ids).toContain("terminale");
  });

  it("exposes selectable subjects per series", () => {
    const ses = subjectsForSeries("ses");
    expect(ses).toContain("Économie d'Entreprise");
    expect(ses).not.toContain("Économie");
    const ti = subjectsForSeries("ti");
    expect(ti).toContain("Économie d'Entreprise");
  });

  it("returns all subjects when no series is given", () => {
    expect(subjectsForSeries(null).length).toBeGreaterThan(0);
  });
});
