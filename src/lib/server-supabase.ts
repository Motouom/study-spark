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
