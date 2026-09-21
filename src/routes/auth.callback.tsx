import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { useEffect, useState } from "react";
import { Button } from "@/components/ui/button";
import { supabase } from "@/lib/supabase";

export const Route = createFileRoute("/auth/callback")({
  head: () => ({ meta: [{ title: "Signing in - StudySpark" }] }),
  component: AuthCallback,
});

function AuthCallback() {
  const navigate = useNavigate();
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function finishSignIn() {
      if (!supabase) {
        setError("Supabase is not configured in this environment.");
        return;
      }

      const url = new URL(window.location.href);
      const authErrorDescription = url.searchParams.get("error_description");

      if (authErrorDescription) {
        setError(decodeURIComponent(authErrorDescription.replace(/\+/g, " ")));
        return;
      }

      // The Supabase client is created with detectSessionInUrl: true, so it
      // exchanges the PKCE code itself on load. Manually calling
      // exchangeCodeForSession here as well races it for the same
      // one-time code. Instead, wait for the session to appear.
      const deadline = Date.now() + 10_000;
      while (Date.now() < deadline) {
        const { data } = await supabase.auth.getSession();
        if (data.session) {
          window.history.replaceState(null, "", window.location.pathname);
          await navigate({ to: "/dashboard" });
          return;
        }
        await new Promise((resolve) => window.setTimeout(resolve, 300));
      }

      setError("Sign-in took too long. Please try signing in again.");
    }

    void finishSignIn();
  }, [navigate]);

  return (
    <main className="flex min-h-dvh items-center justify-center bg-background px-6">
      <div className="w-full max-w-sm rounded-xl border border-border bg-card p-6 text-center">
        <h1 className="font-display text-2xl text-foreground">
          {error ? "Sign-in could not finish" : "Finishing sign-in..."}
        </h1>
        <p className="mt-2 text-sm text-muted-foreground">
          {error ?? "Please wait while StudySpark saves your session."}
        </p>
        {error && (
          <Button asChild className="mt-5 w-full">
            <Link to="/signin">Back to sign in</Link>
          </Button>
        )}
      </div>
    </main>
  );
}
