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
  signInWithEmailPassword,
  signInWithGoogle,
  signUpWithEmailPassword,
} from "@/lib/auth";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useI18n } from "@/lib/i18n";
import { LanguageSwitcher } from "@/components/LanguageSwitcher";
import { track } from "@/lib/analytics";

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
  const { t } = useI18n();
  const navigate = useNavigate();
  const { user, profile, loaded } = useStudyProfile();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [passwordMode, setPasswordMode] = useState<"signin" | "signup">("signin");
  const [loading, setLoading] = useState<null | "google" | "email" | "password">(null);
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
          {profile ? t("signin.openingDashboard") : t("signin.openingProfile")}
        </p>
      </div>
    );
  }

  async function continueWithGoogle() {
    setNotice(null);
    setLoading("google");
    track({ name: "signup_start", props: { method: "google" } });
    try {
      await signInWithGoogle();
      track({ name: "signup_complete", props: { method: "google" } });
    } catch (error) {
      track({ name: "signin_error", props: { reason: "google_failed" } });
      setNotice(error instanceof Error ? error.message : t("signin.googleFailed"));
      setLoading(null);
    }
  }

  async function continueWithEmail() {
    setNotice(null);
    setLoading("email");
    track({ name: "signup_start", props: { method: "email" } });
    try {
      await requestEmailMagicLink(email);
      setNotice(t("signin.magicLinkSent"));
    } catch (error) {
      track({ name: "signin_error", props: { reason: "magic_link_failed" } });
      setNotice(error instanceof Error ? error.message : t("signin.emailFailed"));
    } finally {
      setLoading(null);
    }
  }

  async function continueWithPassword() {
    setNotice(null);
    setLoading("password");
    track({ name: "signup_start", props: { method: "password" } });
    try {
      if (passwordMode === "signup") {
        await signUpWithEmailPassword(email, password);
        track({ name: "signup_complete", props: { method: "password" } });
        setNotice(t("signin.accountCreated"));
      } else {
        await signInWithEmailPassword(email, password);
        track({ name: "signup_complete", props: { method: "password" } });
        setNotice(t("signin.signedIn"));
      }
    } catch (error) {
      const message = error instanceof Error ? error.message : "";
      track({ name: "signin_error", props: { reason: "password_failed" } });
      setNotice(
        message.includes("not confirmed")
          ? t("signin.confirmEmail")
          : message || t("signin.passwordFailed"),
      );
    } finally {
      setLoading(null);
    }
  }

  return (
    <div className="flex min-h-dvh flex-col bg-background px-6 py-8">
      <div className="mx-auto flex w-full max-w-sm items-center justify-between">
        <Logo />
        <LanguageSwitcher className="h-9 w-36" />
      </div>

      <main className="mx-auto flex w-full max-w-sm flex-1 flex-col justify-center py-10">
        <div>
          <h1 className="font-display text-4xl text-foreground">{t("signin.title")}</h1>
          <p className="mt-2 text-sm text-muted-foreground">{t("signin.subtitle")}</p>
        </div>

        <div className="mt-8 space-y-3">
          <Button
            size="lg"
            variant="outline"
            className="h-12 w-full justify-center gap-3 text-base"
            onClick={() => void continueWithGoogle()}
            disabled={loading !== null}
          >
            <GoogleIcon />
            {loading === "google" ? t("signin.openingGoogle") : t("signin.continueGoogle")}
          </Button>

          <div className="flex items-center gap-3 py-2">
            <Separator className="flex-1" />
            <span className="text-[11px] uppercase tracking-wider text-muted-foreground">
              {t("signin.or")}
            </span>
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
              {t("signin.emailAddress")}
            </label>
            <div className="relative">
              <Mail className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
              <Input
                id="email"
                type="email"
                required
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                placeholder={t("signin.emailPlaceholder")}
                className="h-12 pl-9"
              />
            </div>
            <Button
              type="submit"
              className="h-12 w-full"
              disabled={loading !== null || !email || !emailAuthConfigured()}
            >
              {loading === "email" ? t("signin.magicLinkSending") : t("signin.continueEmail")}{" "}
              <ArrowRight className="ml-1 h-4 w-4" />
            </Button>
          </form>

          <details className="rounded-lg border border-border bg-card p-3">
            <summary className="cursor-pointer text-xs font-medium text-muted-foreground">
              {t("signin.passwordSummary")}
            </summary>
            <form
              onSubmit={(e) => {
                e.preventDefault();
                if (email && password) void continueWithPassword();
              }}
              className="mt-3 space-y-2"
            >
              <Input
                type="password"
                required
                minLength={6}
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                placeholder={t("signin.passwordPlaceholder")}
                className="h-11"
              />
              <Button
                type="submit"
                variant="outline"
                className="h-11 w-full"
                disabled={loading !== null || !email || !password || !emailAuthConfigured()}
              >
                {loading === "password"
                  ? t("signin.passwordWorking")
                  : passwordMode === "signup"
                    ? t("signin.createPasswordAccount")
                    : t("signin.signInPassword")}
              </Button>
              <button
                type="button"
                onClick={() => setPasswordMode(passwordMode === "signin" ? "signup" : "signin")}
                className="text-xs text-muted-foreground underline-offset-4 hover:underline"
              >
                {passwordMode === "signin" ? t("signin.noAccount") : t("signin.hasAccount")}
              </button>
            </form>
          </details>
        </div>

        {notice && (
          <p className="mt-4 rounded-lg border border-border bg-surface p-3 text-xs text-muted-foreground">
            {notice}
            {(notice.toLowerCase().includes("fail") ||
              notice.toLowerCase().includes("error") ||
              notice.toLowerCase().includes("not confirmed")) && (
              <a
                href="/support"
                className="ml-2 font-medium text-accent underline underline-offset-2"
              >
                Get help →
              </a>
            )}
          </p>
        )}

        {!googleAuthConfigured() && !emailAuthConfigured() && (
          <p className="mt-4 rounded-lg border border-warning/40 bg-warning/10 p-3 text-xs text-warning-foreground">
            {t("signin.notConfigured")}
          </p>
        )}

        <p className="mt-8 text-center text-xs text-muted-foreground">
          {t("signin.agreement")}
          <br />
          {t("signin.newHere")}{" "}
          <Link
            to="/onboarding"
            className="font-medium text-foreground underline-offset-4 hover:underline"
          >
            {t("signin.setupProfile")} →
          </Link>
        </p>
      </main>
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
