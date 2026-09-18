import { supabase, supabaseConfigured } from "./supabase";
import { clearStudySparkLocalData } from "@/hooks/use-study-profile";

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

export async function signInWithEmailPassword(email: string, password: string) {
  if (!supabase) {
    throw new Error(
      "Supabase is not configured. Add VITE_SUPABASE_URL and VITE_SUPABASE_PUBLISHABLE_KEY.",
    );
  }

  const { error } = await supabase.auth.signInWithPassword({ email, password });
  if (error) throw error;
}

export async function signUpWithEmailPassword(email: string, password: string) {
  if (!supabase) {
    throw new Error(
      "Supabase is not configured. Add VITE_SUPABASE_URL and VITE_SUPABASE_PUBLISHABLE_KEY.",
    );
  }

  const { error } = await supabase.auth.signUp({
    email,
    password,
    options: {
      emailRedirectTo: `${window.location.origin}/auth/callback`,
    },
  });
  if (error) throw error;
}

export async function signOut() {
  clearStudySparkLocalData();
  if (supabase) await supabase.auth.signOut();
}

export async function deleteCurrentAccount() {
  if (!supabase) {
    clearStudySparkLocalData();
    return;
  }

  const { error } = await supabase.rpc("delete_current_user", { confirm_text: "delete" });
  if (error) throw error;

  await signOut();
}
