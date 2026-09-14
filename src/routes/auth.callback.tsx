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
      const code = url.searchParams.get("code");

      if (authErrorDescription) {
        setError(decodeURIComponent(authErrorDescription.replace(/\+/g, " ")));
        return;
      }

      const { data: existingSession } = await supabase.auth.getSession();
      if (existingSession.session) {
        await navigate({ to: "/dashboard" });
        return;
      }

      if (!code) {
        setError("The sign-in callback did not include an authorization code or saved session.");
        return;
      }

      const { error: exchangeError } = await supabase.auth.exchangeCodeForSession(code);
      if (exchangeError) {
        setError(exchangeError.message);
        return;
      }

      await navigate({ to: "/dashboard" });
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
