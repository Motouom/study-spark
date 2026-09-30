import type { StudentProfile } from "@/lib/study-reference-data";
import type { CourseDocument } from "@/hooks/use-study-content";
import type { StructuralQuestionProgress } from "@/hooks/use-structural-progress";

export type LearnerNotificationKind = "content" | "progress" | "streak" | "membership";

export type LearnerNotificationPreferences = Record<LearnerNotificationKind, boolean>;

export type LearnerNotification = {
  id: string;
  title: string;
  body: string;
  kind: LearnerNotificationKind;
  createdAt: string;
  read: boolean;
};

export const DEFAULT_PREFERENCES: LearnerNotificationPreferences = {
  content: true,
  progress: true,
  streak: true,
  membership: true,
};

type Translate = (key: string) => string;

export type BuildNotificationsInput = {
  profile: StudentProfile | null;
  documents: CourseDocument[];
  progress: StructuralQuestionProgress[];
  currentStreak: number;
  preferences: LearnerNotificationPreferences;
  readIds: Set<string>;
  lastPaymentStatus?: string | null;
  lastPaymentCreatedAt?: string | null;
  t: Translate;
};

/**
 * Pure builder for the learner notification list. Extracted from the hook so
 * the fragile generation rules (weak-subject detection, streak restart,
 * membership expiry, payment failure) can be regression-tested without a
 * browser or Supabase.
 */
export function buildLearnerNotifications(input: BuildNotificationsInput): LearnerNotification[] {
  const { profile, documents, progress, currentStreak, preferences, readIds, t } = input;

  if (!profile) return [];

  const items: Omit<LearnerNotification, "read">[] = [];

  const startedDocumentIds = new Set(progress.map((item) => item.documentId));
  const unattemptedDocuments = documents.filter((document) => !startedDocumentIds.has(document.id));

  if (unattemptedDocuments.length > 0) {
    const document = unattemptedDocuments[0];
    items.push({
      id: `content-${document.id}`,
      kind: "content",
      title: t("notifications.generated.newPaper.title"),
      body: t("notifications.generated.newPaper.body")
        .replace("{title}", document.title)
        .replace("{subject}", document.subject),
      createdAt: document.updatedAt,
    });
  }

  const weakSubject = profile.subjects
    .map((subject) => {
      const subjectAttempts = progress.filter((item) => {
        const document = documents.find((candidate) => candidate.id === item.documentId);
        return document?.subject === subject;
      });
      const passed = subjectAttempts.filter((item) => item.status === "passed").length;
      const score =
        subjectAttempts.length > 0 ? Math.round((passed / subjectAttempts.length) * 100) : null;
      return { subject, score };
    })
    .filter(
      (item): item is { subject: (typeof item)["subject"]; score: number } => item.score !== null,
    )
    .sort((a, b) => a.score - b.score)[0];

  if (weakSubject && weakSubject.score < 70) {
    items.push({
      id: `progress-${weakSubject.subject}`,
      kind: "progress",
      title: t("notifications.generated.weakSubject.title"),
      body: t("notifications.generated.weakSubject.body")
        .replace("{subject}", weakSubject.subject)
        .replace("{score}", String(weakSubject.score)),
      createdAt: progress[0]?.updatedAt ?? new Date().toISOString(),
    });
  }

  if (progress.length > 0 && currentStreak === 0) {
    items.push({
      id: "streak-restart",
      kind: "streak",
      title: t("notifications.generated.streak.title"),
      body: t("notifications.generated.streak.body"),
      createdAt: progress[0]?.updatedAt ?? new Date().toISOString(),
    });
  }

  if (profile.plan === "premium" && profile.premiumUntil) {
    const daysRemaining = Math.ceil(
      (new Date(profile.premiumUntil).getTime() - Date.now()) / (1000 * 60 * 60 * 24),
    );
    if (daysRemaining >= 0 && daysRemaining <= 7) {
      items.push({
        id: `membership-expiring-${profile.premiumUntil.slice(0, 10)}`,
        kind: "membership",
        title: t("notifications.generated.premiumEnds.title"),
        body:
          daysRemaining === 0
            ? t("notifications.generated.premiumEndsToday.body")
            : t("notifications.generated.premiumEnds.body").replace(
                "{days}",
                String(daysRemaining),
              ),
        createdAt: profile.premiumUntil,
      });
    }
  }

  if (input.lastPaymentStatus === "failed") {
    items.push({
      id: `membership-payment-failed-${input.lastPaymentCreatedAt ?? "latest"}`,
      kind: "membership",
      title: t("notifications.generated.paymentFailed.title"),
      body: t("notifications.generated.paymentFailed.body"),
      createdAt: input.lastPaymentCreatedAt ?? new Date().toISOString(),
    });
  }

  return items
    .filter((item) => preferences[item.kind])
    .map((item) => ({ ...item, read: readIds.has(item.id) }))
    .sort((a, b) => Number(a.read) - Number(b.read) || b.createdAt.localeCompare(a.createdAt));
}
