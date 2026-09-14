import { useCallback, useEffect, useMemo, useState } from "react";
import type { User } from "@supabase/supabase-js";
import { supabase, supabaseConfigured } from "@/lib/supabase";

export type AdminRole = "admin" | "reviewer" | "super_admin";

type AdminSessionState = {
  user: User | null;
  role: AdminRole | null;
  rawRole: unknown;
  loading: boolean;
  error: string | null;
};

function roleFromUser(user: User | null): AdminRole | null {
  const role = user?.app_metadata?.role;
  return role === "admin" || role === "reviewer" || role === "super_admin" ? role : null;
}

export function useAdminSession() {
  const [state, setState] = useState<AdminSessionState>({
    user: null,
    role: null,
    rawRole: null,
    loading: true,
    error: null,
  });

  const load = useCallback(async () => {
    if (!supabaseConfigured() || !supabase) {
      setState({
        user: null,
        role: null,
        rawRole: null,
        loading: false,
        error: "Supabase is not configured.",
      });
      return;
    }

    const { data, error } = await supabase.auth.getUser();
    if (error) {
      setState({ user: null, role: null, rawRole: null, loading: false, error: error.message });
      return;
    }

    const role = roleFromUser(data.user);
    setState({
      user: data.user,
      role,
      rawRole: data.user?.app_metadata?.role ?? null,
      loading: false,
      error: role ? null : "This account is not authorized for the admin console.",
    });
  }, []);

  useEffect(() => {
    void load();

    if (!supabase) return;
    const { data } = supabase.auth.onAuthStateChange(() => {
      void load();
    });

    return () => data.subscription.unsubscribe();
  }, [load]);

  return useMemo(
    () => ({
      ...state,
      isAdmin: Boolean(state.role),
      reload: load,
    }),
    [load, state],
  );
}
