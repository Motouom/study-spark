import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { Logo } from "@/components/Logo";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Separator } from "@/components/ui/separator";
import { ArrowRight, Mail } from "lucide-react";
import { useState } from "react";

export const Route = createFileRoute("/signin")({
  head: () => ({
    meta: [
      { title: "Sign in — StudyFlow" },
      { name: "description", content: "Sign in to StudyFlow to keep your progress synced across devices." },
    ],
  }),
  component: SignIn,
});

function SignIn() {
  const navigate = useNavigate();
  const [email, setEmail] = useState("");
  const [loading, setLoading] = useState<null | "google" | "email">(null);

  function go(type: "google" | "email") {
    setLoading(type);
    setTimeout(() => navigate({ to: "/dashboard" }), 700);
  }

  return (
    <div className="grid min-h-screen md:grid-cols-2">
      {/* Form side */}
      <div className="flex flex-col px-6 py-10 md:px-12">
        <div>
          <Link to="/">
            <Logo />
          </Link>
        </div>
        <div className="mx-auto flex w-full max-w-sm flex-1 flex-col justify-center">
          <h1 className="font-display text-4xl text-foreground">Welcome back.</h1>
          <p className="mt-2 text-sm text-muted-foreground">
            Sign in to keep your streak, papers, and progress synced across all your devices.
          </p>

          <div className="mt-8 space-y-3">
            <Button
              size="lg"
              variant="outline"
              className="h-12 w-full justify-center gap-3 text-base"
              onClick={() => go("google")}
              disabled={loading !== null}
            >
              <GoogleIcon />
              {loading === "google" ? "Signing you in..." : "Continue with Google"}
            </Button>

            <div className="flex items-center gap-3 py-2">
              <Separator className="flex-1" />
              <span className="text-[11px] uppercase tracking-wider text-muted-foreground">or</span>
              <Separator className="flex-1" />
            </div>

            <form
              onSubmit={(e) => {
                e.preventDefault();
                if (email) go("email");
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
              <Button type="submit" className="h-12 w-full" disabled={loading !== null || !email}>
                {loading === "email" ? "Sending magic link..." : "Continue with email"} <ArrowRight className="ml-1 h-4 w-4" />
              </Button>
            </form>
          </div>

          <p className="mt-8 text-center text-xs text-muted-foreground">
            By continuing you agree to our terms and privacy policy.
            <br />
            New here?{" "}
            <Link to="/onboarding" className="font-medium text-foreground underline-offset-4 hover:underline">
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
          <div>
            <p className="font-display text-3xl leading-snug text-foreground md:text-4xl">
              "I went from D's to A's in three months. The streaks made me actually open the app every day."
            </p>
            <div className="mt-6 flex items-center gap-3">
              <div className="flex h-10 w-10 items-center justify-center rounded-full bg-foreground font-display text-sm text-background">
                K
              </div>
              <div>
                <div className="text-sm font-medium">Kwame Asante</div>
                <div className="text-xs text-muted-foreground">WASSCE 2024 · Ghana</div>
              </div>
            </div>
          </div>
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
