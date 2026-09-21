import { createFileRoute } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { PremiumBadge } from "@/components/PremiumGate";
import { isPremiumActive } from "@/lib/premium";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import { classLabel, seriesLabel } from "@/lib/study-reference-data";
import { CheckCircle2, LifeBuoy, Mail } from "lucide-react";
import { useState } from "react";
import { useI18n } from "@/lib/i18n";

export const Route = createFileRoute("/_app/support")({
  head: () => ({ meta: [{ title: "Support — StudySpark" }] }),
  component: SupportPage,
});

const SUPPORT_EMAIL = "motouomvictor@gmail.com";

function SupportPage() {
  const { t } = useI18n();
  const { profile } = useStudyProfile();
  const { user } = useSupabaseUser();
  const premium = isPremiumActive(profile);
  const [subject, setSubject] = useState("");
  const [message, setMessage] = useState("");
  const [opened, setOpened] = useState(false);

  const mailtoHref = (() => {
    const details = [
      `Plan: ${premium ? "Premium" : "Free"}`,
      profile
        ? `Level: ${classLabel(profile.classLevel)} · Series: ${seriesLabel(profile.series)}`
        : null,
      profile ? `Subjects: ${profile.subjects.join(", ")}` : null,
      user?.email ? `Account: ${user.email}` : null,
    ]
      .filter(Boolean)
      .join("\n");
    const body = `${message.trim()}\n\n---\n${details}`;
    const params = new URLSearchParams({
      subject: subject.trim() || "StudySpark support request",
      body,
    });
    return `mailto:${SUPPORT_EMAIL}?${params.toString()}`;
  })();

  const canSend = subject.trim().length > 0 && message.trim().length > 0;

  return (
    <>
      <PageHeader title={t("support.title")} description={t("support.description")} />
      <div className="px-6 py-6 md:px-10 md:py-8">
        <section className="max-w-2xl rounded-xl border border-border bg-card p-5">
          <div className="flex items-center justify-between gap-3">
            <div className="flex items-center gap-2">
              <LifeBuoy className="h-5 w-5" />
              <h2 className="text-base font-medium">{t("support.contactTitle")}</h2>
            </div>
            {premium ? <PremiumBadge /> : null}
          </div>
          <div className="mt-5 grid gap-3">
            <Input
              placeholder={t("support.subjectPlaceholder")}
              value={subject}
              onChange={(event) => setSubject(event.target.value)}
            />
            <textarea
              placeholder={t("support.messagePlaceholder")}
              value={message}
              onChange={(event) => setMessage(event.target.value)}
              className="min-h-40 rounded-md border border-input bg-background px-3 py-2 text-sm outline-none focus-visible:ring-2 focus-visible:ring-ring"
            />
            <Button
              className="w-fit"
              disabled={!canSend}
              onClick={() => {
                window.location.href = mailtoHref;
                setOpened(true);
              }}
            >
              <Mail className="mr-1.5 h-4 w-4" />
              {t("support.sendRequest")}
            </Button>
            {opened && (
              <p className="flex items-center gap-1.5 text-xs text-success">
                <CheckCircle2 className="h-3.5 w-3.5" />
                {t("support.emailOpened")}
              </p>
            )}
            <p className="text-xs text-muted-foreground">
              {t("support.noEmailApp")}{" "}
              <a
                href={`mailto:${SUPPORT_EMAIL}`}
                className="font-medium text-accent underline underline-offset-2"
              >
                {SUPPORT_EMAIL}
              </a>
              .
            </p>
            <p className="text-xs text-muted-foreground">{t("support.autoDetails")}</p>
          </div>
        </section>
      </div>
    </>
  );
}
