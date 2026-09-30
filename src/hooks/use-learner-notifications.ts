import { useCallback, useEffect, useMemo, useState } from "react";
import { useStructuralProgress } from "@/hooks/use-structural-progress";
import { useStudyContent } from "@/hooks/use-study-content";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useSubscription } from "@/hooks/use-subscription";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import { useI18n } from "@/lib/i18n";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import {
  buildLearnerNotifications,
  DEFAULT_PREFERENCES,
  type LearnerNotification,
  type LearnerNotificationKind,
  type LearnerNotificationPreferences,
} from "@/lib/learner-notifications";

export type {
  LearnerNotification,
  LearnerNotificationKind,
  LearnerNotificationPreferences,
} from "@/lib/learner-notifications";

const READ_PREFIX = "studyspark.notifications.read.";
const PREFERENCES_PREFIX = "studyspark.notifications.preferences.";
const READ_EVENT = "studyspark:notifications-read";

type NotificationPreferenceRow = {
  kind: LearnerNotificationKind;
  enabled: boolean;
};

type NotificationReadRow = {
  notification_id: string;
};

type NotificationReadEventDetail = {
  userId: string;
  ids: string[];
};

function getReadKey(userId: string) {
  return `${READ_PREFIX}${userId}`;
}

function getPreferencesKey(userId: string) {
  return `${PREFERENCES_PREFIX}${userId}`;
}

function readPreferences(userId: string): LearnerNotificationPreferences {
  if (typeof window === "undefined") return DEFAULT_PREFERENCES;

  try {
    const saved = window.localStorage.getItem(getPreferencesKey(userId));
    if (!saved) return DEFAULT_PREFERENCES;

    const parsed = JSON.parse(saved) as Partial<LearnerNotificationPreferences>;
    return {
      content: typeof parsed.content === "boolean" ? parsed.content : DEFAULT_PREFERENCES.content,
      progress:
        typeof parsed.progress === "boolean" ? parsed.progress : DEFAULT_PREFERENCES.progress,
      streak: typeof parsed.streak === "boolean" ? parsed.streak : DEFAULT_PREFERENCES.streak,
      membership:
        typeof parsed.membership === "boolean" ? parsed.membership : DEFAULT_PREFERENCES.membership,
    };
  } catch {
    window.localStorage.removeItem(getPreferencesKey(userId));
    return DEFAULT_PREFERENCES;
  }
}

function readNotificationIds(userId: string) {
  if (typeof window === "undefined") return new Set<string>();

  try {
    const saved = window.localStorage.getItem(getReadKey(userId));
    const parsed = saved ? JSON.parse(saved) : [];
    return new Set(
      Array.isArray(parsed)
        ? parsed.filter((item): item is string => typeof item === "string")
        : [],
    );
  } catch {
    window.localStorage.removeItem(getReadKey(userId));
    return new Set<string>();
  }
}

function saveNotificationIds(userId: string, ids: Set<string>) {
  window.localStorage.setItem(getReadKey(userId), JSON.stringify([...ids]));
}

function publishNotificationReadEvent(userId: string, ids: Iterable<string>) {
  if (typeof window === "undefined") return;

  window.dispatchEvent(
    new CustomEvent<NotificationReadEventDetail>(READ_EVENT, {
      detail: {
        userId,
        ids: [...ids],
      },
    }),
  );
}

function savePreferences(userId: string, preferences: LearnerNotificationPreferences) {
  window.localStorage.setItem(getPreferencesKey(userId), JSON.stringify(preferences));
}

function preferencesFromRows(rows: NotificationPreferenceRow[]) {
  return rows.reduce<LearnerNotificationPreferences>(
    (next, row) => ({ ...next, [row.kind]: row.enabled }),
    DEFAULT_PREFERENCES,
  );
}

export function useLearnerNotificationPreferences() {
  const { user } = useSupabaseUser();
  const [remoteAvailable, setRemoteAvailable] = useState(true);
  const [preferences, setPreferences] =
    useState<LearnerNotificationPreferences>(DEFAULT_PREFERENCES);

  useEffect(() => {
    let active = true;

    if (!user) {
      setPreferences(DEFAULT_PREFERENCES);
      return;
    }

    const localPreferences = readPreferences(user.id);
    setPreferences(localPreferences);

    if (!supabaseConfigured() || !supabase || !remoteAvailable) return;

    supabase
      .from("learner_notification_preferences")
      .select("kind, enabled")
      .eq("user_id", user.id)
      .then(({ data, error }) => {
        if (!active) return;

        if (error) {
          console.warn("Could not load notification preferences", error);
          setRemoteAvailable(false);
          return;
        }

        const remotePreferences = preferencesFromRows((data ?? []) as NotificationPreferenceRow[]);
        setPreferences(remotePreferences);
        savePreferences(user.id, remotePreferences);
      });

    return () => {
      active = false;
    };
  }, [remoteAvailable, user]);

  const setKindEnabled = useCallback(
    (kind: LearnerNotificationKind, enabled: boolean) => {
      if (!user) return;

      setPreferences((current) => {
        const next = { ...current, [kind]: enabled };
        savePreferences(user.id, next);
        return next;
      });

      if (supabaseConfigured() && supabase && remoteAvailable) {
        supabase
          .from("learner_notification_preferences")
          .upsert(
            {
              user_id: user.id,
              kind,
              enabled,
              updated_at: new Date().toISOString(),
            },
            { onConflict: "user_id,kind" },
          )
          .then(({ error }) => {
            if (error) {
              console.warn("Could not save notification preference", error);
              setRemoteAvailable(false);
            }
          });
      }
    },
    [remoteAvailable, user],
  );

  return {
    preferences,
    setKindEnabled,
  };
}

export function useLearnerNotifications() {
  const { t } = useI18n();
  const { user, profile } = useStudyProfile();
  const content = useStudyContent(profile, { includeContent: false });
  const { progress, summary } = useStructuralProgress();
  const { subscription } = useSubscription();
  const { preferences } = useLearnerNotificationPreferences();
  const [remoteReadsAvailable, setRemoteReadsAvailable] = useState(true);
  const [readIds, setReadIds] = useState<Set<string>>(new Set());

  useEffect(() => {
    let active = true;

    if (!user) {
      setReadIds(new Set());
      return;
    }

    const localReadIds = readNotificationIds(user.id);
    setReadIds(localReadIds);

    if (!supabaseConfigured() || !supabase || !remoteReadsAvailable) return;

    supabase
      .from("learner_notification_reads")
      .select("notification_id")
      .eq("user_id", user.id)
      .then(({ data, error }) => {
        if (!active) return;

        if (error) {
          console.warn("Could not load notification read state", error);
          setRemoteReadsAvailable(false);
          return;
        }

        const remoteReadIds = new Set(
          ((data ?? []) as NotificationReadRow[]).map((item) => item.notification_id),
        );
        setReadIds((current) => {
          const merged = new Set([...current, ...localReadIds, ...remoteReadIds]);
          saveNotificationIds(user.id, merged);
          return merged;
        });
      });

    return () => {
      active = false;
    };
  }, [remoteReadsAvailable, user]);

  useEffect(() => {
    if (!user || typeof window === "undefined") return;

    const handleReadEvent = (event: Event) => {
      const detail = (event as CustomEvent<NotificationReadEventDetail>).detail;
      if (!detail || detail.userId !== user.id) return;

      setReadIds((current) => {
        const next = new Set(current);
        for (const id of detail.ids) next.add(id);
        saveNotificationIds(user.id, next);
        return next;
      });
    };

    window.addEventListener(READ_EVENT, handleReadEvent);
    return () => window.removeEventListener(READ_EVENT, handleReadEvent);
  }, [user]);

  const notifications = useMemo<LearnerNotification[]>(
    () =>
      buildLearnerNotifications({
        profile,
        documents: content.documents,
        progress,
        currentStreak: summary.currentStreak,
        preferences,
        readIds,
        lastPaymentStatus: subscription?.lastPaymentStatus,
        lastPaymentCreatedAt: subscription?.lastPaymentCreatedAt,
        t: t as (key: string) => string,
      }),
    [
      content.documents,
      preferences,
      profile,
      progress,
      readIds,
      subscription?.lastPaymentCreatedAt,
      subscription?.lastPaymentStatus,
      summary.currentStreak,
      t,
    ],
  );

  const markAsRead = useCallback(
    (id: string) => {
      if (!user) return;
      setReadIds((current) => {
        const next = new Set(current);
        next.add(id);
        saveNotificationIds(user.id, next);
        return next;
      });
      publishNotificationReadEvent(user.id, [id]);

      if (supabaseConfigured() && supabase && remoteReadsAvailable) {
        supabase
          .from("learner_notification_reads")
          .upsert(
            {
              user_id: user.id,
              notification_id: id,
              read_at: new Date().toISOString(),
            },
            { onConflict: "user_id,notification_id" },
          )
          .then(({ error }) => {
            if (error) {
              console.warn("Could not save notification read state", error);
              setRemoteReadsAvailable(false);
            }
          });
      }
    },
    [remoteReadsAvailable, user],
  );

  const markAllAsRead = useCallback(() => {
    if (!user) return;
    setReadIds((current) => {
      const next = new Set(current);
      for (const item of notifications) next.add(item.id);
      saveNotificationIds(user.id, next);
      return next;
    });
    publishNotificationReadEvent(
      user.id,
      notifications.map((item) => item.id),
    );

    if (notifications.length > 0 && supabaseConfigured() && supabase && remoteReadsAvailable) {
      const readAt = new Date().toISOString();
      supabase
        .from("learner_notification_reads")
        .upsert(
          notifications.map((item) => ({
            user_id: user.id,
            notification_id: item.id,
            read_at: readAt,
          })),
          { onConflict: "user_id,notification_id" },
        )
        .then(({ error }) => {
          if (error) {
            console.warn("Could not save notification read state", error);
            setRemoteReadsAvailable(false);
          }
        });
    }
  }, [notifications, remoteReadsAvailable, user]);

  const unreadCount = notifications.filter((item) => !item.read).length;

  return {
    notifications,
    unreadCount,
    loading: content.loading,
    error: content.error,
    markAsRead,
    markAllAsRead,
  };
}
