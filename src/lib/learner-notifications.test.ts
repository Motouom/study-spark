import { describe, expect, it } from "vitest";
import {
  buildLearnerNotifications,
  DEFAULT_PREFERENCES,
  type BuildNotificationsInput,
} from "./learner-notifications";
import type { StudentProfile } from "./study-reference-data";
import type { CourseDocument } from "@/hooks/use-study-content";
import type { StructuralQuestionProgress } from "@/hooks/use-structural-progress";

const t = (key: string) => key;

function profile(overrides: Partial<StudentProfile> = {}): StudentProfile {
  return {
    name: "Amina",
    language: "english",
    educationSystem: "gce",
    country: "Cameroon",
    region: "Centre",
    city: "Yaoundé",
    locationVerified: false,
    locationLatitude: null,
    locationLongitude: null,
    locationVerifiedAt: null,
    level: "ordinary",
    classLevel: "form_5",
    series: "science",
    subjects: ["Mathematics", "Physics"],
    plan: "free",
    premiumUntil: null,
    ...overrides,
  };
}

function document(overrides: Partial<CourseDocument> = {}): CourseDocument {
  return {
    id: "doc-1",
    topicId: "topic-1",
    subject: "Mathematics",
    title: "Algebra Paper",
    language: "english",
    level: "ordinary",
    classLevels: ["form_5"],
    series: ["science"],
    markdownContent: "",
    updatedAt: "2026-09-01T00:00:00Z",
    accessStatus: "free_preview",
    contentKind: "paper",
    isLocked: false,
    ...overrides,
  };
}

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

function input(overrides: Partial<BuildNotificationsInput> = {}): BuildNotificationsInput {
  return {
    profile: profile(),
    documents: [document()],
    progress: [],
    currentStreak: 0,
    preferences: DEFAULT_PREFERENCES,
    readIds: new Set(),
    t,
    ...overrides,
  };
}

describe("buildLearnerNotifications", () => {
  it("returns an empty list when there is no profile", () => {
    expect(buildLearnerNotifications(input({ profile: null }))).toEqual([]);
  });

  it("generates a content notification for an unattempted document", () => {
    const notifications = buildLearnerNotifications(input());
    expect(notifications.some((n) => n.kind === "content" && n.id === "content-doc-1")).toBe(true);
  });

  it("does not generate a content notification when all documents are started", () => {
    const notifications = buildLearnerNotifications(
      input({ progress: [progress()], documents: [document()] }),
    );
    expect(notifications.some((n) => n.kind === "content")).toBe(false);
  });

  it("generates a weak-subject notification when a subject pass rate is below 70", () => {
    const notifications = buildLearnerNotifications(
      input({
        progress: [
          progress({ documentId: "doc-1", status: "failed" }),
          progress({ documentId: "doc-1", status: "failed" }),
          progress({ documentId: "doc-1", status: "passed" }),
        ],
      }),
    );
    const weak = notifications.find((n) => n.kind === "progress");
    expect(weak).toBeDefined();
    expect(weak?.id).toBe("progress-Mathematics");
  });

  it("does not generate a weak-subject notification when pass rate is 70 or above", () => {
    const notifications = buildLearnerNotifications(
      input({
        progress: [
          progress({ documentId: "doc-1", status: "passed" }),
          progress({ documentId: "doc-1", status: "passed" }),
          progress({ documentId: "doc-1", status: "passed" }),
        ],
      }),
    );
    expect(notifications.some((n) => n.kind === "progress")).toBe(false);
  });

  it("generates a streak-restart notification only when there is progress and no streak", () => {
    expect(
      buildLearnerNotifications(input({ progress: [], currentStreak: 0 })).some(
        (n) => n.kind === "streak",
      ),
    ).toBe(false);
    expect(
      buildLearnerNotifications(input({ progress: [progress()], currentStreak: 0 })).some(
        (n) => n.kind === "streak",
      ),
    ).toBe(true);
    expect(
      buildLearnerNotifications(input({ progress: [progress()], currentStreak: 3 })).some(
        (n) => n.kind === "streak",
      ),
    ).toBe(false);
  });

  it("generates a membership-expiry notification for premium expiring within 7 days", () => {
    const soon = new Date(Date.now() + 3 * 24 * 60 * 60 * 1000).toISOString();
    const notifications = buildLearnerNotifications(
      input({ profile: profile({ plan: "premium", premiumUntil: soon }) }),
    );
    expect(notifications.some((n) => n.kind === "membership")).toBe(true);
  });

  it("does not generate a membership notification for a far-future expiry", () => {
    const far = new Date(Date.now() + 90 * 24 * 60 * 60 * 1000).toISOString();
    const notifications = buildLearnerNotifications(
      input({ profile: profile({ plan: "premium", premiumUntil: far }) }),
    );
    expect(notifications.some((n) => n.kind === "membership")).toBe(false);
  });

  it("generates a payment-failed notification", () => {
    const notifications = buildLearnerNotifications(
      input({ lastPaymentStatus: "failed", lastPaymentCreatedAt: "2026-09-01T00:00:00Z" }),
    );
    expect(notifications.some((n) => n.id.startsWith("membership-payment-failed"))).toBe(true);
  });

  it("respects read state and preference filters", () => {
    const notifications = buildLearnerNotifications(
      input({
        readIds: new Set(["content-doc-1"]),
        preferences: { ...DEFAULT_PREFERENCES, content: false },
      }),
    );
    expect(notifications.some((n) => n.kind === "content")).toBe(false);
  });

  it("marks a notification as read when its id is in readIds", () => {
    const notifications = buildLearnerNotifications(input({ readIds: new Set(["content-doc-1"]) }));
    const content = notifications.find((n) => n.id === "content-doc-1");
    expect(content?.read).toBe(true);
  });
});
