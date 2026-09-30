import { describe, expect, it } from "vitest";
import { en, fr } from "./i18n";

// Keys used by the fragile learner flows (notifications, profile, learning
// path). A missing key in either language would render a raw key in the UI, so
// both dictionaries must cover them.
const CRITICAL_FLOW_KEYS = [
  "notifications.generated.newPaper.title",
  "notifications.generated.newPaper.body",
  "notifications.generated.weakSubject.title",
  "notifications.generated.weakSubject.body",
  "notifications.generated.streak.title",
  "notifications.generated.streak.body",
  "notifications.generated.premiumEnds.title",
  "notifications.generated.premiumEndsToday.body",
  "notifications.generated.premiumEnds.body",
  "notifications.generated.paymentFailed.title",
  "notifications.generated.paymentFailed.body",
] as const;

describe("i18n critical flow coverage", () => {
  it("defines every critical notification key in English", () => {
    for (const key of CRITICAL_FLOW_KEYS) {
      expect(en[key], `missing English key: ${key}`).toBeTruthy();
    }
  });

  it("defines every critical notification key in French", () => {
    for (const key of CRITICAL_FLOW_KEYS) {
      expect(fr[key], `missing French key: ${key}`).toBeTruthy();
    }
  });

  it("does not leave placeholder tokens unresolved in French bodies", () => {
    for (const key of CRITICAL_FLOW_KEYS) {
      const value = fr[key];
      if (!value) continue;
      // Every {token} used in the English string must also appear in French.
      const tokens = [...(en[key]?.match(/\{[a-zA-Z]+\}/g) ?? [])];
      for (const token of tokens) {
        expect(value, `French ${key} missing token ${token}`).toContain(token);
      }
    }
  });
});
