import { useEffect } from "react";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import { useSupabaseUser } from "@/hooks/use-supabase-user";

const BLOCKED_KEYS = new Set(["c", "x", "s", "p", "u"]);

function shouldBlockKeyboardEvent(event: KeyboardEvent) {
  const key = event.key.toLowerCase();
  const withModifier = event.ctrlKey || event.metaKey;

  if (withModifier && BLOCKED_KEYS.has(key)) return true;
  if (event.key === "PrintScreen") return true;
  if (event.key === "F12") return true;
  if (event.ctrlKey && event.shiftKey && ["i", "j", "c"].includes(key)) return true;

  return false;
}

export function useContentProtection(enabled = true, documentId?: string | null) {
  const { user } = useSupabaseUser();

  useEffect(() => {
    if (!enabled || typeof document === "undefined") return;

    const recordEvent = (eventType: string, details: Record<string, unknown> = {}) => {
      if (!supabaseConfigured() || !supabase || !user || !documentId) return;
      void supabase
        .rpc("record_protected_content_event", {
          event_document_id: documentId,
          event_type: eventType,
          event_details: details,
        })
        .then(({ error }) => {
          if (error) console.warn("Protected content event was not recorded", error.message);
        });
    };

    const prevent = (event: Event) => {
      event.preventDefault();
      event.stopPropagation();
    };

    const preventKeyboard = (event: KeyboardEvent) => {
      if (shouldBlockKeyboardEvent(event)) prevent(event);
    };
    const recordVisibilityHidden = () => {
      if (document.hidden) recordEvent("visibility_hidden");
    };
    const beforePrint = () => {
      document.body.classList.add("protected-content-hidden");
      recordEvent("print_blocked");
    };
    const afterPrint = () => document.body.classList.remove("protected-content-hidden");
    const preventCopy = (event: Event) => {
      prevent(event);
      recordEvent("copy_blocked", { event: event.type });
    };

    document.body.classList.add("protected-content-active");
    document.addEventListener("copy", preventCopy, true);
    document.addEventListener("cut", preventCopy, true);
    document.addEventListener("paste", preventCopy, true);
    document.addEventListener("contextmenu", prevent, true);
    document.addEventListener("dragstart", prevent, true);
    document.addEventListener("selectstart", prevent, true);
    document.addEventListener("keydown", preventKeyboard, true);
    document.addEventListener("visibilitychange", recordVisibilityHidden, true);
    window.addEventListener("beforeprint", beforePrint);
    window.addEventListener("afterprint", afterPrint);

    if (supabaseConfigured() && supabase && user && documentId) {
      recordEvent("view", {
        user_agent: navigator.userAgent,
        screen: `${window.screen.width}x${window.screen.height}`,
        viewport: `${window.innerWidth}x${window.innerHeight}`,
      });
    }

    return () => {
      document.body.classList.remove("protected-content-active");
      document.body.classList.remove("protected-content-hidden");
      document.removeEventListener("copy", preventCopy, true);
      document.removeEventListener("cut", preventCopy, true);
      document.removeEventListener("paste", preventCopy, true);
      document.removeEventListener("contextmenu", prevent, true);
      document.removeEventListener("dragstart", prevent, true);
      document.removeEventListener("selectstart", prevent, true);
      document.removeEventListener("keydown", preventKeyboard, true);
      document.removeEventListener("visibilitychange", recordVisibilityHidden, true);
      window.removeEventListener("beforeprint", beforePrint);
      window.removeEventListener("afterprint", afterPrint);
    };
  }, [documentId, enabled, user]);
}
