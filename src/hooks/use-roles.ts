import { useCallback, useEffect, useMemo, useState } from "react";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import {
  hasPlatformAdminRole,
  hasStaffRole,
  normalizeRole,
  normalizeRoles,
  primaryRole,
  type Role,
} from "@/lib/roles";

export type RolesState = {
  roles: Role[];
  primaryRole: Role | null;
  isStaff: boolean;
  isPlatformAdmin: boolean;
  loaded: boolean;
  error: string | null;
  reload: () => void;
};

/**
 * Resolves the current user's effective roles. Reads the DB-assigned roles via
 * the `current_user_roles()` RPC (which also folds in any legacy JWT role), so
 * role changes take effect immediately rather than on JWT refresh.
 */
export function useRoles(): RolesState {
  const { user, loaded: userLoaded } = useSupabaseUser();
  const [roles, setRoles] = useState<Role[]>([]);
  const [loaded, setLoaded] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [reloadKey, setReloadKey] = useState(0);

  useEffect(() => {
    if (!userLoaded) return;

    if (!user) {
      setRoles([]);
      setLoaded(true);
      setError(null);
      return;
    }

    if (!supabaseConfigured() || !supabase) {
      // Fall back to the legacy JWT role so the UI still works without the
      // new RPC being present.
      const legacy = normalizeRole(user.app_metadata?.role);
      setRoles(legacy ? [legacy] : []);
      setLoaded(true);
      setError(null);
      return;
    }

    let active = true;
    (async () => {
      try {
        const { data, error: rpcError } = await supabase.rpc("current_user_roles");
        if (!active) return;
        if (rpcError) {
          console.warn("Could not load roles", rpcError);
          const legacy = normalizeRole(user.app_metadata?.role);
          setRoles(legacy ? [legacy] : []);
          setError(rpcError.message);
          setLoaded(true);
          return;
        }
        setRoles(normalizeRoles(Array.isArray(data) ? data : []));
        setError(null);
        setLoaded(true);
      } catch (err) {
        if (!active) return;
        const legacy = normalizeRole(user.app_metadata?.role);
        setRoles(legacy ? [legacy] : []);
        setError(err instanceof Error ? err.message : "Could not load roles.");
        setLoaded(true);
      }
    })();

    return () => {
      active = false;
    };
  }, [user, userLoaded, reloadKey]);

  const reload = useCallback(() => {
    setLoaded(false);
    setReloadKey((key) => key + 1);
  }, []);

  return useMemo(
    () => ({
      roles,
      primaryRole: primaryRole(roles),
      isStaff: hasStaffRole(roles),
      isPlatformAdmin: hasPlatformAdminRole(roles),
      loaded,
      error,
      reload,
    }),
    [error, loaded, reload, roles],
  );
}
