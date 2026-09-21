import { createFileRoute } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { PremiumBadge } from "@/components/PremiumGate";
import { isPremiumActive } from "@/lib/premium";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import { classLabel, seriesLabel } from "@/lib/study-reference-data";
import { AlertCircle, CheckCircle2, LifeBuoy, Mail } from "lucide-react";
import type { FormEvent } from "react";
import { useState } from "react";

export const Route = createFileRoute("/_app/support")({
  head: () => ({ meta: [{ title: "Support — StudySpark" }] }),
  component: SupportPage,
});

function SupportPage() {
  const { profile } = useStudyProfile();
  const { user } = useSupabaseUser();
  const premium = isPremiumActive(profile);
  const [subject, setSubject] = useState("");
  const [message, setMessage] = useState("");
  const [status, setStatus] = useState<"idle" | "sending" | "sent" | "error">("idle");
  const [errorMessage, setErrorMessage] = useState("");

  const canSend = subject.trim().length > 0 && message.trim().length > 0;

  async function sendSupportRequest(event: FormEvent<HTMLFormElement>) {
    event.preventDefault();
    if (!canSend || status === "sending") return;

    setStatus("sending");
    setErrorMessage("");

    try {
      const response = await fetch("/api/support", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          subject: subject.trim(),
          message: message.trim(),
          metadata: {
            classLevel: profile ? classLabel(profile.classLevel) : undefined,
            plan: premium ? "Premium" : "Free",
            series: profile ? seriesLabel(profile.series) : undefined,
            subjects: profile?.subjects ?? [],
          },
        }),
      });

      const body = (await response.json().catch(() => ({}))) as { error?: string };
      if (!response.ok) {
        throw new Error(body.error ?? "Support request could not be sent. Please try again.");
      }

      setSubject("");
      setMessage("");
      setStatus("sent");
    } catch (error) {
      setErrorMessage(
        error instanceof Error ? error.message : "Support request could not be sent.",
      );
      setStatus("error");
    }
  }

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
          <form className="mt-5 grid gap-3" onSubmit={sendSupportRequest}>
            <Input
              placeholder="Subject"
              value={subject}
              onChange={(event) => {
                setSubject(event.target.value);
                if (status !== "sending") setStatus("idle");
              }}
            />
            <textarea
              placeholder="Describe the issue..."
              value={message}
              onChange={(event) => {
                setMessage(event.target.value);
                if (status !== "sending") setStatus("idle");
              }}
              className="min-h-40 rounded-md border border-input bg-background px-3 py-2 text-sm outline-none focus-visible:ring-2 focus-visible:ring-ring"
            />
            <Button className="w-fit" disabled={!canSend || status === "sending"} type="submit">
              <Mail className="mr-1.5 h-4 w-4" />
              {status === "sending" ? "Sending..." : "Send request"}
            </Button>
            {status === "sent" && (
              <p className="flex items-center gap-1.5 text-xs text-success">
                <CheckCircle2 className="h-3.5 w-3.5" />
                Your request was sent. We reply within 24 hours.
              </p>
            )}
            {status === "error" && (
              <p className="flex items-center gap-1.5 text-xs text-destructive">
                <AlertCircle className="h-3.5 w-3.5" />
                {errorMessage}
              </p>
            )}
            <p className="text-xs text-muted-foreground">
              Your plan, level, and subjects are attached automatically so we can help faster.
            </p>
          </form>
        </section>
      </div>
    </>
  );
}
