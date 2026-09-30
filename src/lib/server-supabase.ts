import { createClient, type User } from "@supabase/supabase-js";
import WebSocket from "ws";

function readEnv(name: string) {
  return import.meta.env[name] ?? process.env[name];
}

function requireEnv(name: string) {
  const value = readEnv(name);
  if (!value) throw new Error(`${name} is not configured.`);
  return value;
}

export function getServiceSupabase() {
  return createClient(requireEnv("VITE_SUPABASE_URL"), requireEnv("SUPABASE_SERVICE_ROLE_KEY"), {
    auth: {
      autoRefreshToken: false,
      persistSession: false,
    },
    realtime: {
      transport: WebSocket,
    },
  });
}

export async function getAuthenticatedUser(request: Request): Promise<User> {
  const token = request.headers.get("authorization")?.replace(/^Bearer\s+/i, "");
  if (!token) throw new Response("Authentication required.", { status: 401 });

  const key = readEnv("VITE_SUPABASE_PUBLISHABLE_KEY") ?? readEnv("VITE_SUPABASE_ANON_KEY");
  if (!key) throw new Error("VITE_SUPABASE_PUBLISHABLE_KEY is not configured.");

  const authClient = createClient(requireEnv("VITE_SUPABASE_URL"), key, {
    auth: {
      autoRefreshToken: false,
      persistSession: false,
    },
    realtime: {
      transport: WebSocket,
    },
  });

  const { data, error } = await authClient.auth.getUser(token);
  if (error || !data.user) throw new Response("Authentication required.", { status: 401 });

  return data.user;
}

export function getAuthenticatedSupabase(request: Request) {
  const token = request.headers.get("authorization")?.replace(/^Bearer\s+/i, "");
  if (!token) throw new Response("Authentication required.", { status: 401 });

  const key = readEnv("VITE_SUPABASE_PUBLISHABLE_KEY") ?? readEnv("VITE_SUPABASE_ANON_KEY");
  if (!key) throw new Error("VITE_SUPABASE_PUBLISHABLE_KEY is not configured.");

  return createClient(requireEnv("VITE_SUPABASE_URL"), key, {
    auth: {
      autoRefreshToken: false,
      persistSession: false,
    },
    global: {
      headers: {
        Authorization: `Bearer ${token}`,
      },
    },
    realtime: {
      transport: WebSocket,
    },
  });
}

const LEGACY_ROLE_MAP: Record<string, string> = {
  reviewer: "moderator",
  admin: "content_admin",
  super_admin: "platform_admin",
};

/**
 * Resolves a user's effective roles server-side. Reads the DB-assigned roles
 * via the `current_user_roles()` RPC (service role), falling back to the legacy
 * JWT app_metadata.role when the RPC is unavailable. Returns the raw role ids.
 */
export async function getUserRoles(user: User): Promise<string[]> {
  const legacy = user.app_metadata?.role;
  const legacyRoles = legacy && LEGACY_ROLE_MAP[legacy] ? [LEGACY_ROLE_MAP[legacy]] : [];

  try {
    const supabase = getServiceSupabase();
    const { data, error } = await supabase.rpc("current_user_roles");
    if (error) throw error;
    if (Array.isArray(data) && data.length > 0) {
      return data.filter((role): role is string => typeof role === "string");
    }
  } catch {
    // Fall through to the legacy JWT role.
  }

  return legacyRoles;
}

/** True if the user has any of the given roles (server-side). */
export async function userHasAnyRole(user: User, roles: string[]): Promise<boolean> {
  const userRoles = await getUserRoles(user);
  return userRoles.some((role) => roles.includes(role));
}
