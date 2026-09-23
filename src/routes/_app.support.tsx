import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { Textarea } from "@/components/ui/textarea";
import { isPremiumActive } from "@/lib/premium";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import { classLabel, seriesLabel } from "@/lib/study-reference-data";
import { CheckCircle2, ExternalLink, LifeBuoy, Mail, MessageCircle } from "lucide-react";
import { useState } from "react";
import { useI18n } from "@/lib/i18n";

export const Route = createFileRoute("/_app/support")({
  head: () => ({ meta: [{ title: "Support — StudySpark" }] }),
  component: SupportPage,
});

const SUPPORT_EMAIL = "motouomvictor@gmail.com";
const WHATSAPP_NUMBER = "+237000000000"; // placeholder — update with real number

type IssueCategory =
  | "login"
  | "payment"
  | "premium_access"
  | "wrong_content"
  | "missing_paper"
  | "technical_bug"
  | "account_help"
  | "other";

const CATEGORIES_EN: { value: IssueCategory; label: string }[] = [
  { value: "login", label: "Login or sign-in problem" },
  { value: "payment", label: "Payment or billing issue" },
  { value: "premium_access", label: "Premium access not unlocking" },
  { value: "wrong_content", label: "Wrong or incorrect content" },
  { value: "missing_paper", label: "Missing paper or subject" },
  { value: "technical_bug", label: "App crash or technical bug" },
  { value: "account_help", label: "Account or profile help" },
  { value: "other", label: "Something else" },
];

const CATEGORIES_FR: { value: IssueCategory; label: string }[] = [
  { value: "login", label: "Problème de connexion" },
  { value: "payment", label: "Problème de paiement ou facturation" },
  { value: "premium_access", label: "Accès Premium non débloqué" },
  { value: "wrong_content", label: "Contenu incorrect ou erroné" },
  { value: "missing_paper", label: "Épreuve ou matière manquante" },
  { value: "technical_bug", label: "Crash ou bug technique" },
  { value: "account_help", label: "Aide compte ou profil" },
  { value: "other", label: "Autre chose" },
];

function SupportPage() {
  const { t, locale } = useI18n();
  const { profile } = useStudyProfile();
  const { user } = useSupabaseUser();
  const premium = isPremiumActive(profile);
  const [category, setCategory] = useState<IssueCategory | "">("");
  const [message, setMessage] = useState("");
  const [opened, setOpened] = useState(false);

  const categories = locale === "fr" ? CATEGORIES_FR : CATEGORIES_EN;

  // Safe context — no keys, tokens, secrets, or internal IDs
  const safeContext = [
    category ? `Category: ${category}` : null,
    `Plan: ${premium ? "Premium" : "Free"}`,
    profile
      ? `Level: ${classLabel(profile.classLevel)} · Series: ${seriesLabel(profile.series)}`
      : null,
    profile ? `Subjects: ${profile.subjects.join(", ")}` : null,
    user?.email ? `Account: ${user.email}` : null,
  ]
    .filter(Boolean)
    .join("\n");

  const categoryLabel = categories.find((c) => c.value === category)?.label ?? "";
  const subject = category ? `[StudySpark] ${categoryLabel}` : "StudySpark support request";

  const mailtoHref = (() => {
    const body = `${message.trim()}\n\n---\n${safeContext}`;
    const params = new URLSearchParams({ subject, body });
    return `mailto:${SUPPORT_EMAIL}?${params.toString()}`;
  })();

  const whatsappHref = (() => {
    const text = [
      `*StudySpark support*`,
      category ? `Category: ${categoryLabel}` : null,
      message.trim() ? `Message: ${message.trim()}` : null,
      `---`,
      safeContext,
    ]
      .filter(Boolean)
      .join("\n");
    return `https://wa.me/${WHATSAPP_NUMBER.replace(/\D/g, "")}?text=${encodeURIComponent(text)}`;
  })();

  const canSend = category !== "" && message.trim().length > 0;

  return (
    <>
      <PageHeader title={t("support.title")} description={t("support.description")} />
      <div className="space-y-6 px-4 py-6 md:px-10 md:py-8">
        {/* Main form */}
        <section className="max-w-2xl rounded-xl border border-border bg-card p-5">
          <div className="flex items-center gap-2">
            <LifeBuoy className="h-5 w-5" />
            <h2 className="text-base font-medium">{t("support.contactTitle")}</h2>
          </div>

          <div className="mt-5 space-y-4">
            {/* Category selector */}
            <div>
              <label className="mb-1.5 block text-sm font-medium">
                {t("support.categoryLabel")}
              </label>
              <div className="flex flex-wrap gap-2">
                {categories.map((c) => (
                  <button
                    key={c.value}
                    type="button"
                    onClick={() => setCategory(c.value)}
                    className={`rounded-full border px-3 py-1.5 text-xs font-medium transition-colors ${
                      category === c.value
                        ? "border-foreground bg-foreground text-background"
                        : "border-border bg-background text-muted-foreground hover:border-foreground/40 hover:text-foreground"
                    }`}
                  >
                    {c.label}
                  </button>
                ))}
              </div>
            </div>

            {/* Message */}
            <div>
              <label className="mb-1.5 block text-sm font-medium">
                {t("support.messageLabel")}
              </label>
              <Textarea
                placeholder={t("support.messagePlaceholder")}
                value={message}
                onChange={(e) => setMessage(e.target.value)}
                className="min-h-36"
              />
            </div>

            {/* Context preview — shows what will be sent, no secrets */}
            {(category || user) && (
              <div className="rounded-lg border border-border bg-secondary/40 p-3">
                <p className="mb-1.5 text-xs font-medium text-muted-foreground">
                  {t("support.contextNote")}
                </p>
                <pre className="whitespace-pre-wrap text-xs text-muted-foreground">
                  {safeContext}
                </pre>
              </div>
            )}

            {/* Send buttons */}
            <div className="flex flex-wrap gap-2">
              <Button
                disabled={!canSend}
                onClick={() => {
                  window.location.href = mailtoHref;
                  setOpened(true);
                }}
              >
                <Mail className="mr-1.5 h-4 w-4" />
                {t("support.sendEmail")}
              </Button>
              <Button
                variant="outline"
                disabled={!canSend}
                onClick={() => {
                  window.open(whatsappHref, "_blank", "noopener,noreferrer");
                  setOpened(true);
                }}
              >
                <MessageCircle className="mr-1.5 h-4 w-4" />
                {t("support.sendWhatsApp")}
              </Button>
            </div>

            {opened && (
              <p className="flex items-center gap-1.5 text-xs text-success">
                <CheckCircle2 className="h-3.5 w-3.5" />
                {t("support.sentNote")}
              </p>
            )}

            <p className="text-xs text-muted-foreground">
              {t("support.directEmail")}{" "}
              <a
                href={`mailto:${SUPPORT_EMAIL}`}
                className="font-medium text-accent underline underline-offset-2"
              >
                {SUPPORT_EMAIL}
              </a>
            </p>
          </div>
        </section>

        {/* Response expectations */}
        <section className="max-w-2xl rounded-xl border border-border bg-card p-5">
          <h2 className="text-base font-medium">{t("support.expectTitle")}</h2>
          <ul className="mt-4 space-y-3 text-sm text-muted-foreground">
            <li className="flex items-start gap-2.5">
              <span className="mt-0.5 h-1.5 w-1.5 shrink-0 rounded-full bg-success" />
              {t("support.expect1")}
            </li>
            <li className="flex items-start gap-2.5">
              <span className="mt-0.5 h-1.5 w-1.5 shrink-0 rounded-full bg-accent" />
              {t("support.expect2")}
            </li>
            <li className="flex items-start gap-2.5">
              <span className="mt-0.5 h-1.5 w-1.5 shrink-0 rounded-full bg-muted-foreground" />
              {t("support.expect3")}
            </li>
          </ul>
        </section>

        {/* Quick links for common issues */}
        <section className="max-w-2xl rounded-xl border border-border bg-card p-5">
          <h2 className="text-base font-medium">{t("support.quickLinksTitle")}</h2>
          <div className="mt-4 grid gap-2 sm:grid-cols-2">
            <Link
              to="/pricing"
              className="flex items-center gap-2 rounded-lg border border-border bg-background p-3 text-sm hover:bg-secondary/40"
            >
              <ExternalLink className="h-4 w-4 shrink-0 text-muted-foreground" />
              {t("support.linkPayment")}
            </Link>
            <Link
              to="/settings"
              className="flex items-center gap-2 rounded-lg border border-border bg-background p-3 text-sm hover:bg-secondary/40"
            >
              <ExternalLink className="h-4 w-4 shrink-0 text-muted-foreground" />
              {t("support.linkAccount")}
            </Link>
            <Link
              to="/library"
              className="flex items-center gap-2 rounded-lg border border-border bg-background p-3 text-sm hover:bg-secondary/40"
            >
              <ExternalLink className="h-4 w-4 shrink-0 text-muted-foreground" />
              {t("support.linkPapers")}
            </Link>
            <Link
              to="/signin"
              className="flex items-center gap-2 rounded-lg border border-border bg-background p-3 text-sm hover:bg-secondary/40"
            >
              <ExternalLink className="h-4 w-4 shrink-0 text-muted-foreground" />
              {t("support.linkSignIn")}
            </Link>
          </div>
        </section>
      </div>
    </>
  );
}
