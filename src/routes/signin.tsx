import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { Logo } from "@/components/Logo";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Separator } from "@/components/ui/separator";
import { ArrowRight, Mail } from "lucide-react";
import { useEffect, useState } from "react";
import {
  emailAuthConfigured,
  googleAuthConfigured,
  requestEmailMagicLink,
  signInWithGoogle,
} from "@/lib/auth";
import { useStudyProfile } from "@/hooks/use-study-profile";

export const Route = createFileRoute("/signin")({
  head: () => ({
    meta: [
      { title: "Sign in — StudySpark" },
      {
        name: "description",
        content: "Sign in to StudySpark to keep your progress synced across devices.",
      },
    ],
  }),
  component: SignIn,
});

function SignIn() {
  const navigate = useNavigate();
  const { user, profile, loaded } = useStudyProfile();
  const [email, setEmail] = useState("");
  const [loading, setLoading] = useState<null | "google" | "email">(null);
  const [notice, setNotice] = useState<string | null>(null);

  useEffect(() => {
    const searchParams = new URLSearchParams(window.location.search);
    const hashParams = new URLSearchParams(window.location.hash.replace(/^#/, ""));
    const errorDescription =
      searchParams.get("error_description") ?? hashParams.get("error_description");

    if (errorDescription) {
      setNotice(decodeURIComponent(errorDescription.replace(/\+/g, " ")));
    }
  }, []);

  useEffect(() => {
    if (!loaded || !user) return;
    void navigate({ to: profile ? "/dashboard" : "/onboarding", replace: true });
  }, [loaded, navigate, profile, user]);

  if (loaded && user) {
    return (
      <div className="flex min-h-dvh items-center justify-center bg-background px-6 text-center">
        <p className="text-sm text-muted-foreground">
          {profile ? "Opening your dashboard..." : "Opening profile setup..."}
        </p>
      </div>
    );
  }

  async function continueWithGoogle() {
    setNotice(null);
    setLoading("google");
    try {
      await signInWithGoogle();
    } catch (error) {
      setNotice(error instanceof Error ? error.message : "Google sign-in failed.");
      setLoading(null);
    }
  }

  async function continueWithEmail() {
    setNotice(null);
    setLoading("email");
    try {
      await requestEmailMagicLink(email);
      setNotice("Check your inbox for the sign-in link.");
    } catch (error) {
      setNotice(error instanceof Error ? error.message : "Email sign-in failed.");
    } finally {
      setLoading(null);
    }
  }

  return (
    <div className="grid min-h-dvh md:grid-cols-2">
      {/* Form side */}
      <div className="flex flex-col px-6 py-10 md:px-12">
        <div>
          <Logo />
        </div>
        <div className="mx-auto flex w-full max-w-sm flex-1 flex-col justify-center">
          <h1 className="font-display text-4xl text-foreground">Welcome back.</h1>
          <p className="mt-2 text-sm text-muted-foreground">
            Sign in to keep your streak, topic practice, and progress synced across all your
            devices.
          </p>

          <div className="mt-8 space-y-3">
            <Button
              size="lg"
              variant="outline"
              className="h-12 w-full justify-center gap-3 text-base"
              onClick={() => void continueWithGoogle()}
              disabled={loading !== null}
            >
              <GoogleIcon />
              {loading === "google" ? "Opening Google..." : "Continue with Google"}
            </Button>

            <div className="flex items-center gap-3 py-2">
              <Separator className="flex-1" />
              <span className="text-[11px] uppercase tracking-wider text-muted-foreground">or</span>
              <Separator className="flex-1" />
            </div>

            <form
              onSubmit={(e) => {
                e.preventDefault();
                if (email) void continueWithEmail();
              }}
              className="space-y-2"
            >
              <label className="text-xs font-medium text-muted-foreground" htmlFor="email">
                Email address
              </label>
              <div className="relative">
                <Mail className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
                <Input
                  id="email"
                  type="email"
                  required
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  placeholder="you@school.edu"
                  className="h-12 pl-9"
                />
              </div>
              <Button
                type="submit"
                className="h-12 w-full"
                disabled={loading !== null || !email || !emailAuthConfigured()}
              >
                {loading === "email" ? "Sending magic link..." : "Continue with email"}{" "}
                <ArrowRight className="ml-1 h-4 w-4" />
              </Button>
            </form>
          </div>

          {notice && (
            <p className="mt-4 rounded-lg border border-border bg-surface p-3 text-xs text-muted-foreground">
              {notice}
            </p>
          )}

          {!googleAuthConfigured() && !emailAuthConfigured() && (
            <p className="mt-4 rounded-lg border border-warning/40 bg-warning/10 p-3 text-xs text-warning-foreground">
              Supabase is not configured in this environment.
            </p>
          )}

          <p className="mt-8 text-center text-xs text-muted-foreground">
            By continuing you agree to our terms and privacy policy.
            <br />
            New here?{" "}
            <Link
              to="/onboarding"
              className="font-medium text-foreground underline-offset-4 hover:underline"
            >
              Set up your profile →
            </Link>
          </p>
        </div>
      </div>

      {/* Brand side */}
      <div className="relative hidden overflow-hidden border-l border-border bg-surface md:block">
        <div className="absolute inset-0 dot-bg opacity-50" />
        <div className="absolute inset-x-0 bottom-0 h-2/3 bg-gradient-to-t from-accent/15 to-transparent" />
        <div className="relative flex h-full flex-col justify-between p-12">
          <div className="flex items-center gap-2 text-xs uppercase tracking-widest text-muted-foreground">
            <span className="inline-block h-1.5 w-1.5 rounded-full bg-success" /> Synced & secure
          </div>
          <p className="font-display text-3xl leading-snug text-foreground md:text-4xl">
            Sign in, create your study profile, and unlock only the structural papers that match
            your class, series, and subjects.
          </p>
        </div>
      </div>
    </div>
  );
}

function GoogleIcon() {
  return (
    <svg viewBox="0 0 24 24" className="h-5 w-5" aria-hidden="true">
      <path
        d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92a5.07 5.07 0 0 1-2.2 3.32v2.76h3.56c2.08-1.92 3.28-4.74 3.28-8.09Z"
        fill="#4285F4"
      />
      <path
        d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.56-2.76c-.99.66-2.25 1.06-3.72 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84A11 11 0 0 0 12 23Z"
        fill="#34A853"
      />
      <path
        d="M5.84 14.11A6.6 6.6 0 0 1 5.5 12c0-.73.13-1.44.34-2.11V7.05H2.18A11 11 0 0 0 1 12c0 1.78.43 3.46 1.18 4.95l3.66-2.84Z"
        fill="#FBBC05"
      />
      <path
        d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.05l3.66 2.84C6.71 7.31 9.14 5.38 12 5.38Z"
        fill="#EA4335"
      />
    </svg>
  );
}
