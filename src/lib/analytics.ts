/**
 * StudySpark analytics — thin wrapper over Vercel Analytics custom events.
 *
 * Privacy rules enforced here:
 * - No paper markdown content, question text, or document IDs are sent.
 * - No auth tokens, service keys, or payment secrets are sent.
 * - User identification is limited to plan tier and language/curriculum path
 *   at an aggregate level — no email, name, or user_id is sent.
 * - Events fire at most once per logical action (callers must not call in loops
 *   or inside effects that re-run on focus/reload). This wrapper enforces a
 *   per-action debounce to prevent duplicates from re-renders or focus events.
 */

import { track as vercelTrack } from "@vercel/analytics";

// Track last event name and timestamp to prevent duplicate firings from
// re-renders, focus events, or hot-reload. The 1200ms window matches
// typical React render debouncing and avoids counting the same logical
// action multiple times.
const lastEvent: Record<string, number> = {};
const DEBOUNCE_MS = 1200;

function shouldFire(eventName: string): boolean {
  const now = Date.now();
  const last = lastEvent[eventName] ?? 0;
  if (now - last < DEBOUNCE_MS) return false;
  lastEvent[eventName] = now;
  return true;
}

// ─── Event catalogue ─────────────────────────────────────────────────────────

export type AnalyticsEvent =
  // Acquisition funnel
  | { name: "landing_view"; props?: { locale?: string } }
  | { name: "signup_start"; props?: { method: "google" | "email" | "password" } }
  | { name: "signup_complete"; props?: { method: "google" | "email" | "password" } }
  | { name: "onboarding_complete"; props?: { level: string; language: string } }
  // Core engagement
  | { name: "paper_opened"; props?: { subject: string; level: string; isLocked: boolean } }
  | { name: "subject_selected"; props?: { subject: string } }
  | { name: "checkpoint_marked"; props?: { type: "understood" | "review" | "bookmark" } }
  | { name: "ai_action_used"; props?: { action: "progress_insight" | "learning_path" | "format_paper" } }
  | { name: "search_used"; props?: { hasQuery: boolean } }
  // Premium conversion
  | { name: "premium_view" }
  | { name: "checkout_started"; props?: { interval: "monthly" | "yearly" } }
  | { name: "payment_success" }
  | { name: "payment_failure"; props?: { reason?: string } }
  | { name: "payment_pending" }
  // Auth
  | { name: "signin_error"; props?: { reason?: string } }
  // Errors
  | { name: "route_error"; props?: { route?: string } };

// ─── Track function ───────────────────────────────────────────────────────────

/**
 * Fire a typed analytics event.
 * Safe to call server-side — no-ops if window is unavailable.
 * Never include paper content, user emails, tokens, or keys.
 * Debounces identical events within 1200ms to prevent duplicate counting.
 */
export function track(event: AnalyticsEvent): void {
  if (typeof window === "undefined") return;

  if (!shouldFire(event.name)) return;

  try {
    vercelTrack(event.name, "props" in event ? (event.props ?? {}) : {});
  } catch {
    // Analytics must never break the app
  }
}
