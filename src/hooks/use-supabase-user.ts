import { useEffect, useState } from "react";
import type { User } from "@supabase/supabase-js";
import { supabase } from "@/lib/supabase";

export function useSupabaseUser() {
  const [user, setUser] = useState<User | null>(null);
  const [loaded, setLoaded] = useState(false);

  useEffect(() => {
    if (!supabase) {
      setLoaded(true);
      return;
    }

    let active = true;

    supabase.auth.getUser().then(({ data }) => {
      if (!active) return;
      setUser(data.user);
      setLoaded(true);
    });

    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((_event, session) => {
      const nextUser = session?.user ?? null;
      // Ignore token-refresh events that supply an equivalent user object:
      // updating state on every event would re-trigger every consumer's
      // fetch effects (and re-insert study sessions mid-read).
      setUser((previous) => {
        if (previous && nextUser && previous.id === nextUser.id) return previous;
        return nextUser;
      });
      setLoaded(true);
    });

    return () => {
      active = false;
      subscription.unsubscribe();
    };
  }, []);

  return { user, loaded };
}

export function getSupabaseDisplayName(user: User | null) {
  const metadata = user?.user_metadata;
  return (
    metadata?.full_name ??
    metadata?.name ??
    metadata?.display_name ??
    user?.email?.split("@")[0] ??
    null
  );
}
