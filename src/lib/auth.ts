import { supabase, supabaseConfigured } from "./supabase";

export function googleAuthConfigured() {
  return supabaseConfigured();
}

export function emailAuthConfigured() {
  return supabaseConfigured();
}

export async function signInWithGoogle() {
  if (!supabase) {
    throw new Error(
      "Supabase is not configured. Add VITE_SUPABASE_URL and VITE_SUPABASE_PUBLISHABLE_KEY.",
    );
  }

  const { error } = await supabase.auth.signInWithOAuth({
    provider: "google",
    options: {
      redirectTo: `${window.location.origin}/auth/callback`,
      queryParams: {
        access_type: "offline",
        prompt: "consent",
      },
    },
  });

  if (error) throw error;
}

export async function requestEmailMagicLink(email: string) {
  if (!supabase) {
    throw new Error(
      "Supabase is not configured. Add VITE_SUPABASE_URL and VITE_SUPABASE_PUBLISHABLE_KEY.",
    );
  }

  const { error } = await supabase.auth.signInWithOtp({
    email,
    options: {
      emailRedirectTo: `${window.location.origin}/auth/callback`,
    },
  });

  if (error) throw error;
}

export async function signOut() {
  localStorage.clear();
  if (supabase) await supabase.auth.signOut();
}

export async function deleteCurrentAccount() {
  if (!supabase) {
    localStorage.clear();
    return;
  }

  const { error } = await supabase.rpc("delete_current_user", { confirm_text: "delete" });
  if (error) throw error;

  await signOut();
}
