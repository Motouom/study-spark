import { Link } from "@tanstack/react-router";
import { Lock, Sparkles } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { useStudyProfile } from "@/hooks/use-study-profile";
import type { StudentProfile } from "@/lib/study-reference-data";
import type { ReactNode } from "react";

export function isPremiumPlan(plan: string | null | undefined) {
  return plan === "premium";
}

export function isPremiumActive(profile: Pick<StudentProfile, "plan" | "premiumUntil"> | null | undefined) {
  if (profile?.plan !== "premium") return false;
  if (!profile.premiumUntil) return true;
  const expiry = new Date(profile.premiumUntil).getTime();
  return Number.isFinite(expiry) && expiry > Date.now();
}

export function PremiumBadge() {
  return (
    <Badge variant="secondary" className="gap-1.5">
      <Sparkles className="h-3 w-3" />
      Premium
    </Badge>
  );
}

export function PremiumGate({
  title,
  description,
  children,
}: {
  title: string;
  description: string;
  children: ReactNode;
}) {
  const { profile } = useStudyProfile();
  if (isPremiumActive(profile)) return <>{children}</>;

  return (
    <div className="mx-auto max-w-xl rounded-xl border border-border bg-card p-8 text-center">
      <div className="mx-auto flex h-12 w-12 items-center justify-center rounded-full bg-secondary">
        <Lock className="h-5 w-5" />
      </div>
      <div className="mt-4 flex justify-center">
        <PremiumBadge />
      </div>
      <h2 className="mt-4 font-display text-2xl">{title}</h2>
      <p className="mt-2 text-sm text-muted-foreground">{description}</p>
      <Button asChild className="mt-5">
        <Link to="/pricing">
          <Sparkles className="mr-1.5 h-4 w-4" />
          Upgrade to Premium
        </Link>
      </Button>
    </div>
  );
}
