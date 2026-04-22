import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import { Logo } from "@/components/Logo";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Separator } from "@/components/ui/separator";
import { useState, type FormEvent } from "react";

export const Route = createFileRoute("/sign-up")({
  head: () => ({ meta: [{ title: "Create account — StudyFlow" }] }),
  component: SignUp,
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

function SignUp() {
  const navigate = useNavigate();
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
          <h1 className="font-display text-4xl text-foreground">Start studying free</h1>
          <p className="mt-2 text-sm text-muted-foreground">
            No credit card. No ads. Just past papers and progress.
          </p>

          <Button
            variant="outline"
            className="mt-8 h-11 gap-2"
            onClick={() => navigate({ to: "/dashboard" })}
          >
            <GoogleIcon /> Sign up with Google
          </Button>

          <div className="my-6 flex items-center gap-3">
            <Separator className="flex-1" />
            <span className="text-xs uppercase tracking-wider text-muted-foreground">or</span>
            <Separator className="flex-1" />
          </div>

          <form onSubmit={handleSubmit} className="space-y-4">
            <div>
              <Label htmlFor="name">Full name</Label>
              <Input id="name" required placeholder="Akua Mensah" className="mt-1.5 h-11" />
            </div>
            <div>
              <Label htmlFor="email">Email</Label>
              <Input
                id="email"
                type="email"
                required
                placeholder="you@school.edu"
                className="mt-1.5 h-11"
              />
            </div>
            <div>
              <Label htmlFor="password">Password</Label>
              <Input
                id="password"
                type="password"
                required
                minLength={6}
                className="mt-1.5 h-11"
              />
            </div>
            <Button type="submit" disabled={loading} className="h-11 w-full">
              {loading ? "Creating account..." : "Create account"}
            </Button>
          </form>

          <p className="mt-6 text-center text-sm text-muted-foreground">
            Already have an account?{" "}
            <Link to="/sign-in" className="font-medium text-foreground hover:underline">
              Sign in
            </Link>
          </p>
        </div>
      </div>

      <aside className="relative hidden bg-surface md:block">
        <div className="absolute inset-0 dot-bg opacity-60" />
        <div className="relative flex h-full flex-col justify-between p-12">
          <div />
          <div className="max-w-md space-y-6">
            <h2 className="font-display text-3xl text-foreground">
              Built for the way you actually study.
            </h2>
            <ul className="space-y-3 text-sm text-muted-foreground">
              {[
                "500+ past papers from WASSCE, JAMB, KCSE & more",
                "Every answer unlocked — never paywalled",
                "Progress charts that show what to study next",
                "Daily streaks to keep the habit alive",
              ].map((t) => (
                <li key={t} className="flex items-start gap-2.5">
                  <span className="mt-1.5 h-1.5 w-1.5 rounded-full bg-accent" />
                  {t}
                </li>
              ))}
            </ul>
          </div>
          <div className="text-xs text-muted-foreground">© StudyFlow</div>
        </div>
      </aside>
    </div>
  );
}
