import { useMemo } from "react";
import { useStructuralProgress } from "@/hooks/use-structural-progress";
import { useStudyContent } from "@/hooks/use-study-content";
import { useStudyProfile } from "@/hooks/use-study-profile";

export type LearnerNotification = {
  id: string;
  title: string;
  body: string;
  kind: "content" | "progress" | "streak";
};

export function useLearnerNotifications() {
  const { profile } = useStudyProfile();
  const content = useStudyContent(profile);
  const { progress, summary } = useStructuralProgress();

  const notifications = useMemo<LearnerNotification[]>(() => {
    const items: LearnerNotification[] = [];

    if (!profile) return items;

    const startedDocumentIds = new Set(progress.map((item) => item.documentId));
    const unattemptedDocuments = content.documents.filter(
      (document) => !startedDocumentIds.has(document.id),
    );

    if (unattemptedDocuments.length > 0) {
      const document = unattemptedDocuments[0];
      items.push({
        id: `content-${document.id}`,
        kind: "content",
        title: "New paper ready",
        body: `${document.title} is available for ${document.subject}.`,
      });
    }

    const weakSubject = profile.subjects
      .map((subject) => {
        const subjectAttempts = progress.filter((item) => {
          const document = content.documents.find((candidate) => candidate.id === item.documentId);
          return document?.subject === subject;
        });
        const passed = subjectAttempts.filter((item) => item.status === "passed").length;
        const score =
          subjectAttempts.length > 0 ? Math.round((passed / subjectAttempts.length) * 100) : null;
        return { subject, score };
      })
      .filter((item): item is { subject: string; score: number } => item.score !== null)
      .sort((a, b) => a.score - b.score)[0];

    if (weakSubject && weakSubject.score < 70) {
      items.push({
        id: `progress-${weakSubject.subject}`,
        kind: "progress",
        title: "Weak subject reminder",
        body: `${weakSubject.subject} is at ${weakSubject.score}% mastery. Revisit failed structural questions.`,
      });
    }

    if (progress.length > 0 && summary.currentStreak === 0) {
      items.push({
        id: "streak-restart",
        kind: "streak",
        title: "Restart your streak",
        body: "Mark one structural question today to start a new streak.",
      });
    }

    return items;
  }, [content.documents, profile, progress, summary.currentStreak]);

  return {
    notifications,
    unreadCount: notifications.length,
    loading: content.loading,
    error: content.error,
  };
}
