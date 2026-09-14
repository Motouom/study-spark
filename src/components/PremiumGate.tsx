import { Link } from "@tanstack/react-router";
import { Lock, Sparkles } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { isPremiumActive } from "@/lib/premium";
import type { ReactNode } from "react";

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
  const { profile, loaded } = useStudyProfile();
  if (!loaded) return <PremiumGateSkeleton />;
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

function PremiumGateSkeleton() {
  return (
    <div className="space-y-4">
      <div className="rounded-xl border border-border bg-card p-5">
        <div className="h-5 w-44 animate-pulse rounded bg-secondary" />
        <div className="mt-3 h-4 w-full max-w-lg animate-pulse rounded bg-secondary" />
        <div className="mt-2 h-4 w-2/3 animate-pulse rounded bg-secondary" />
      </div>
      <div className="grid gap-4 md:grid-cols-3">
        <div className="h-28 animate-pulse rounded-xl border border-border bg-card" />
        <div className="h-28 animate-pulse rounded-xl border border-border bg-card" />
        <div className="h-28 animate-pulse rounded-xl border border-border bg-card" />
      </div>
    </div>
  );
}
