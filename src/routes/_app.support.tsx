import { createFileRoute } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { PremiumBadge } from "@/components/PremiumGate";
import { isPremiumActive } from "@/lib/premium";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { LifeBuoy, Mail } from "lucide-react";

export const Route = createFileRoute("/_app/support")({
  head: () => ({ meta: [{ title: "Support — StudySpark" }] }),
  component: SupportPage,
});

function SupportPage() {
  const { profile } = useStudyProfile();
  const premium = isPremiumActive(profile);

  return (
    <>
      <PageHeader
        title="Support"
        description="Priority support is available to every signed-in learner."
      />
      <div className="px-6 py-6 md:px-10 md:py-8">
        <section className="max-w-2xl rounded-xl border border-border bg-card p-5">
          <div className="flex items-center justify-between gap-3">
            <div className="flex items-center gap-2">
              <LifeBuoy className="h-5 w-5" />
              <h2 className="text-base font-medium">Contact support</h2>
            </div>
            {premium ? <PremiumBadge /> : null}
          </div>
          <div className="mt-5 grid gap-3">
            <Input placeholder="Subject" />
            <textarea
              placeholder="Describe the issue..."
              className="min-h-40 rounded-md border border-input bg-background px-3 py-2 text-sm outline-none focus-visible:ring-2 focus-visible:ring-ring"
            />
            <Button className="w-fit">
              <Mail className="mr-1.5 h-4 w-4" />
              Prepare request
            </Button>
          </div>
        </section>
      </div>
    </>
  );
}
