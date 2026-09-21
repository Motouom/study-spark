import { createClient, type SupabaseClient, type User } from "npm:@supabase/supabase-js@2";

export function serviceSupabase(): SupabaseClient {
  return createClient(Deno.env.get("SUPABASE_URL")!, Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!, {
    auth: { persistSession: false },
  });
}

export function userSupabase(jwt: string): SupabaseClient {
  return createClient(Deno.env.get("SUPABASE_URL")!, Deno.env.get("SUPABASE_ANON_KEY")!, {
    auth: { persistSession: false },
    global: { headers: { Authorization: `Bearer ${jwt}` } },
  });
}

export async function getAuthenticatedUser(request: Request): Promise<User> {
  const authHeader = request.headers.get("Authorization") ?? "";
  const token = authHeader.replace(/^Bearer\s+/i, "");
  if (!token) throw jsonError("Missing authorization token.", 401);

  const supabase = serviceSupabase();
  const { data, error } = await supabase.auth.getUser(token);
  if (error || !data.user) throw jsonError("Invalid or expired session.", 401);
  return data.user;
}

export function jsonError(message: string, status = 500) {
  return new Response(JSON.stringify({ error: message }), {
    status,
    headers: { "Content-Type": "application/json" },
  });
}
