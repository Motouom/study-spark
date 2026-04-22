import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { Logo } from "@/components/Logo";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Separator } from "@/components/ui/separator";
import { useState, type FormEvent } from "react";

export const Route = createFileRoute("/sign-in")({
  head: () => ({
    meta: [{ title: "Sign in — StudyFlow" }],
  }),
  component: SignIn,
});

function GoogleIcon() {
  return (
    <svg viewBox="0 0 24 24" className="h-4 w-4">
      <path
        fill="#EA4335"
        d="M12 10.2v3.9h5.5c-.2 1.4-1.7 4.1-5.5 4.1a6.2 6.2 0 1 1 0-12.4c2 0 3.3.8 4 1.6l2.7-2.6C16.9 3.2 14.7 2.2 12 2.2a9.8 9.8 0 1 0 0 19.6c5.7 0 9.4-4 9.4-9.6 0-.7 0-1.2-.2-2H12Z"
      />
    </svg>
  );
}

function SignIn() {
  const navigate = useNavigate();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [loading, setLoading] = useState(false);

  const handleSubmit = (e: FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setTimeout(() => navigate({ to: "/dashboard" }), 500);
  };

  return (
    <div className="grid min-h-screen md:grid-cols-2">
      <div className="flex flex-col px-6 py-8 md:px-12 lg:px-20">
        <Logo />
        <div className="mx-auto flex w-full max-w-sm flex-1 flex-col justify-center">
          <h1 className="font-display text-4xl text-foreground">Welcome back</h1>
          <p className="mt-2 text-sm text-muted-foreground">
            Pick up where you left off. Your streak is waiting.
          </p>

          <Button
            variant="outline"
            className="mt-8 h-11 gap-2"
            onClick={() => navigate({ to: "/dashboard" })}
          >
            <GoogleIcon /> Continue with Google
          </Button>

          <div className="my-6 flex items-center gap-3">
            <Separator className="flex-1" />
            <span className="text-xs uppercase tracking-wider text-muted-foreground">or</span>
            <Separator className="flex-1" />
          </div>

          <form onSubmit={handleSubmit} className="space-y-4">
            <div>
              <Label htmlFor="email">Email</Label>
              <Input
                id="email"
                type="email"
                required
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                placeholder="you@school.edu"
                className="mt-1.5 h-11"
              />
            </div>
            <div>
              <div className="flex items-center justify-between">
                <Label htmlFor="password">Password</Label>
                <a className="text-xs text-muted-foreground hover:text-foreground" href="#">
                  Forgot?
                </a>
              </div>
              <Input
                id="password"
                type="password"
                required
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                className="mt-1.5 h-11"
              />
            </div>
            <Button type="submit" disabled={loading} className="h-11 w-full">
              {loading ? "Signing in..." : "Sign in"}
            </Button>
          </form>

          <p className="mt-6 text-center text-sm text-muted-foreground">
            New to StudyFlow?{" "}
            <Link to="/sign-up" className="font-medium text-foreground hover:underline">
              Create an account
            </Link>
          </p>
        </div>
      </div>

      <aside className="relative hidden bg-surface md:block">
        <div className="absolute inset-0 dot-bg opacity-60" />
        <div className="relative flex h-full flex-col justify-between p-12">
          <div />
          <blockquote className="max-w-md">
            <p className="font-display text-3xl leading-snug text-foreground">
              "I went from scared of JAMB to scoring in the top 10%. The streaks kept me showing
              up — even on bad days."
            </p>
            <footer className="mt-6 flex items-center gap-3">
              <div className="h-10 w-10 rounded-full bg-foreground text-center font-display text-lg leading-10 text-background">
                I
              </div>
              <div>
                <div className="text-sm font-medium">Ibrahim O.</div>
                <div className="text-xs text-muted-foreground">JAMB 2024 · Lagos</div>
              </div>
            </footer>
          </blockquote>
          <div className="text-xs text-muted-foreground">© StudyFlow</div>
        </div>
      </aside>
    </div>
  );
}
