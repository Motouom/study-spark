import { useMemo } from "react";
import type { User } from "@supabase/supabase-js";
import { useRoles } from "@/hooks/use-roles";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import { roleLabel, type Role } from "@/lib/roles";

export type AdminRole = Role;

type AdminSessionState = {
  user: User | null;
  role: Role | null;
  rawRole: unknown;
  loading: boolean;
  error: string | null;
  isAdmin: boolean;
  reload: () => void;
};

/**
 * Resolves whether the current user is staff (has any staff role) and their
 * primary staff role. Backed by the DB role model (migration 070) with a
 * fallback to the legacy JWT app_metadata.role.
 */
export function useAdminSession(): AdminSessionState {
  const { user } = useSupabaseUser();
  const roles = useRoles();

  return useMemo(() => {
    const staffRole = roles.roles.find((r) => r !== "student" && r !== "parent") ?? null;
    return {
      user,
      role: staffRole,
      rawRole: staffRole ? roleLabel(staffRole) : null,
      loading: !roles.loaded,
      isAdmin: roles.isStaff,
      reload: roles.reload,
      error: roles.isStaff
        ? null
        : (roles.error ?? "This account is not authorized for the admin console."),
    };
  }, [roles.error, roles.isStaff, roles.loaded, roles.reload, roles.roles, user]);
}
