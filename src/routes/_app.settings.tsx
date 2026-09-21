import { createFileRoute } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Label } from "@/components/ui/label";
import { ThemeToggle } from "@/components/ThemeToggle";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Separator } from "@/components/ui/separator";
import { Switch } from "@/components/ui/switch";
import {
  CAMEROON_REGIONS,
  COUNTRIES,
  LANGUAGES,
  classLevelsForSystem,
  educationSystemForLanguage,
  seriesOptionsForSystem,
  subjectsForSeries,
  DEFAULT_PROFILE,
  type ClassLevel,
  type EducationSystem,
  type Language,
  type Series,
  type Subject,
} from "@/lib/study-reference-data";
import { useEffect, useMemo, useState } from "react";
import { Badge } from "@/components/ui/badge";
import { Bell, Check, LogOut, Sparkles, Trash2, TriangleAlert } from "lucide-react";
import { Link, useNavigate } from "@tanstack/react-router";
import { getSupabaseDisplayName } from "@/hooks/use-supabase-user";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { deleteCurrentAccount, signOut } from "@/lib/auth";
import { supabaseConfigured } from "@/lib/supabase";
import { useBrowserLocation } from "@/hooks/use-browser-location";
import { useSubscription } from "@/hooks/use-subscription";
import { usePaymentHistory, type PaymentRecord } from "@/hooks/use-payment-history";
import { isPremiumActive } from "@/lib/premium";
import {
  useLearnerNotificationPreferences,
  type LearnerNotificationKind,
} from "@/hooks/use-learner-notifications";

export const Route = createFileRoute("/_app/settings")({
  head: () => ({ meta: [{ title: "Settings — StudySpark" }] }),
  component: SettingsPage,
});

function Section({
  title,
  description,
  children,
}: {
  title: string;
  description?: string;
  children: React.ReactNode;
}) {
  return (
    <section className="rounded-xl border border-border bg-card p-6">
      <h2 className="text-base font-medium">{title}</h2>
      {description && <p className="mt-1 text-sm text-muted-foreground">{description}</p>}
      <Separator className="my-5" />
      <div className="space-y-5">{children}</div>
    </section>
  );
}

function Row({
  label,
  hint,
  children,
}: {
  label: string;
  hint?: string;
  children: React.ReactNode;
}) {
  return (
    <div className="grid gap-2 md:grid-cols-[1fr_2fr] md:items-center md:gap-6">
      <div>
        <Label className="text-sm font-medium">{label}</Label>
        {hint && <p className="text-xs text-muted-foreground">{hint}</p>}
      </div>
      <div>{children}</div>
    </div>
  );
}

const NOTIFICATION_OPTIONS: Array<{
  kind: LearnerNotificationKind;
  label: string;
  hint: string;
}> = [
  {
    kind: "content",
    label: "Paper updates",
    hint: "New matching papers and useful study content prompts.",
  },
  {
    kind: "progress",
    label: "Progress insights",
    hint: "Weak subject reminders and review suggestions.",
  },
  {
    kind: "streak",
    label: "Streak nudges",
    hint: "Short reminders that help you keep a study habit alive.",
  },
  {
    kind: "membership",
    label: "Account and payments",
    hint: "Premium, renewal, and payment status updates.",
  },
];

function SettingsPage() {
  const navigate = useNavigate();
  const { user, loaded, profile: savedProfile, saveProfile } = useStudyProfile();
  const { subscription } = useSubscription();
  const {
    transactions: paymentHistory,
    loaded: historyLoaded,
    error: historyError,
    refresh: refreshHistory,
  } = usePaymentHistory();
  const [retryingId, setRetryingId] = useState<string | null>(null);
  const [retryError, setRetryError] = useState<string | null>(null);
  const { preferences, setKindEnabled } = useLearnerNotificationPreferences();
  const profile = supabaseConfigured() ? savedProfile : (savedProfile ?? DEFAULT_PROFILE);
  const premiumActive = isPremiumActive(profile);
  const fallbackProfile = profile ?? DEFAULT_PROFILE;
  const [name, setName] = useState(fallbackProfile.name);
  const [language, setLanguage] = useState<Language>(fallbackProfile.language);
  const [educationSystem, setEducationSystem] = useState<EducationSystem>(
    fallbackProfile.educationSystem ?? educationSystemForLanguage(fallbackProfile.language),
  );
  const [country, setCountry] = useState(fallbackProfile.country);
  const [region, setRegion] = useState(fallbackProfile.region);
  const [city, setCity] = useState(fallbackProfile.city);
  const [locationVerified, setLocationVerified] = useState(fallbackProfile.locationVerified);
  const [locationLatitude, setLocationLatitude] = useState(fallbackProfile.locationLatitude);
  const [locationLongitude, setLocationLongitude] = useState(fallbackProfile.locationLongitude);
  const [locationVerifiedAt, setLocationVerifiedAt] = useState(fallbackProfile.locationVerifiedAt);
  const [classLevel, setClassLevel] = useState(fallbackProfile.classLevel);
  const [series, setSeries] = useState(fallbackProfile.series);
  const [subjects, setSubjects] = useState<string[]>(fallbackProfile.subjects);
  const [saveError, setSaveError] = useState<string | null>(null);
  const [saved, setSaved] = useState(false);
  const [saving, setSaving] = useState(false);
  const [deleteConfirm, setDeleteConfirm] = useState("");
  const [deleteError, setDeleteError] = useState<string | null>(null);
  const [deleting, setDeleting] = useState(false);
  const browserLocation = useBrowserLocation();

  const resetCurriculumPath = (nextSystem: EducationSystem) => {
    const nextClassLevels = classLevelsForSystem(nextSystem);
    const nextSeriesOptions = seriesOptionsForSystem(nextSystem);
    const nextClassLevel = nextClassLevels.find((item) => item.level === selectedLevel)?.id;
    const nextSeries = nextSeriesOptions.find((item) => item.level === selectedLevel)?.id;

    setEducationSystem(nextSystem);
    setClassLevel(nextClassLevel ?? nextClassLevels[0]?.id ?? classLevel);
    setSeries(nextSeries ?? nextSeriesOptions[0]?.id ?? series);
    setSubjects([]);
  };

  async function retryPayment(record: PaymentRecord) {
    setRetryingId(record.id);
    setRetryError(null);
    try {
      const response = await fetch("/api/payments/fapshi/initiate", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          interval: record.billing_interval === "yearly" ? "yearly" : "monthly",
        }),
      });
      const payload = (await response.json()) as { checkoutUrl?: string; error?: string };
      if (response.ok && payload.checkoutUrl) {
        window.location.assign(payload.checkoutUrl);
        return;
      }
      throw new Error(payload.error ?? "Payment could not be started.");
    } catch (error) {
      setRetryError(error instanceof Error ? error.message : "Payment could not be started.");
      setRetryingId(null);
    }
  }

  const systemClassLevels = classLevelsForSystem(educationSystem);
  const systemSeriesOptions = seriesOptionsForSystem(educationSystem);
  const selectedLevel =
    systemClassLevels.find((item) => item.id === classLevel)?.level ?? fallbackProfile.level;
  const availableSeries = useMemo(
    () => systemSeriesOptions.filter((item) => item.level === selectedLevel),
    [selectedLevel, systemSeriesOptions],
  );
  const availableSubjects = useMemo(() => subjectsForSeries(series), [series]);

  const toggleSubject = (s: string) =>
    setSubjects((prev) => (prev.includes(s) ? prev.filter((x) => x !== s) : [...prev, s]));

  useEffect(() => {
    const displayName = getSupabaseDisplayName(user);
    if (!savedProfile && displayName) setName(displayName);
    if (savedProfile) {
      setName(savedProfile.name);
      setLanguage(savedProfile.language);
      setEducationSystem(
        savedProfile.educationSystem ?? educationSystemForLanguage(savedProfile.language),
      );
      setCountry(savedProfile.country);
      setRegion(savedProfile.region);
      setCity(savedProfile.city);
      setLocationVerified(savedProfile.locationVerified);
      setLocationLatitude(savedProfile.locationLatitude);
      setLocationLongitude(savedProfile.locationLongitude);
      setLocationVerifiedAt(savedProfile.locationVerifiedAt);
      setClassLevel(savedProfile.classLevel);
      setSeries(savedProfile.series);
      setSubjects(savedProfile.subjects);
    }
  }, [savedProfile, user]);

  useEffect(() => {
    setSubjects((current) =>
      current.filter((subject): subject is Subject =>
        availableSubjects.includes(subject as Subject),
      ),
    );
  }, [availableSubjects]);

  const hasChanges = useMemo(() => {
    if (!savedProfile) return false;
    return (
      name.trim() !== savedProfile.name ||
      language !== savedProfile.language ||
      educationSystem !==
        (savedProfile.educationSystem ?? educationSystemForLanguage(savedProfile.language)) ||
      country !== savedProfile.country ||
      region !== savedProfile.region ||
      city.trim() !== savedProfile.city ||
      classLevel !== savedProfile.classLevel ||
      series !== savedProfile.series ||
      subjects.length !== savedProfile.subjects.length ||
      subjects.some((subject) => !savedProfile.subjects.includes(subject as Subject))
    );
  }, [
    city,
    classLevel,
    country,
    educationSystem,
    language,
    name,
    region,
    savedProfile,
    series,
    subjects,
  ]);

  const resetForm = () => {
    if (!savedProfile) return;
    setName(savedProfile.name);
    setLanguage(savedProfile.language);
    setEducationSystem(
      savedProfile.educationSystem ?? educationSystemForLanguage(savedProfile.language),
    );
    setCountry(savedProfile.country);
    setRegion(savedProfile.region);
    setCity(savedProfile.city);
    setLocationVerified(savedProfile.locationVerified);
    setLocationLatitude(savedProfile.locationLatitude);
    setLocationLongitude(savedProfile.locationLongitude);
    setLocationVerifiedAt(savedProfile.locationVerifiedAt);
    setClassLevel(savedProfile.classLevel);
    setSeries(savedProfile.series);
    setSubjects(savedProfile.subjects);
    setSaveError(null);
    setSaved(false);
  };

  async function saveStudyProfile() {
    if (supabaseConfigured() && !profile) {
      setSaveError("Your profile has not finished loading. Please wait a moment and try again.");
      return;
    }

    setSaving(true);
    setSaved(false);
    setSaveError(null);
    try {
      await saveProfile({
        ...profile,
        language,
        educationSystem,
        name: name.trim(),
        country,
        region,
        city: city.trim(),
        locationVerified,
        locationLatitude,
        locationLongitude,
        locationVerifiedAt,
        level: selectedLevel,
        classLevel,
        series,
        subjects: subjects as Subject[],
      });
      setSaved(true);
    } catch (err) {
      const message =
        err instanceof Error
          ? err.message
          : typeof err === "object" && err !== null && "message" in err
            ? String(err.message)
            : "The profile could not be saved.";
      setSaveError(message);
    } finally {
      setSaving(false);
    }
  }

  async function deleteAccount() {
    setDeleting(true);
    setDeleteError(null);
    try {
      await deleteCurrentAccount();
      window.location.assign("/");
    } catch (err) {
      const message =
        err instanceof Error
          ? err.message
          : typeof err === "object" && err !== null && "message" in err
            ? String(err.message)
            : "The account could not be deleted.";
      setDeleteError(`${message} Make sure database/supabase/003_delete_current_user.sql has run.`);
      setDeleting(false);
    }
  }

  async function handleSignOut() {
    await signOut();
    await navigate({ to: "/signin", replace: true });
  }

  return (
    <>
      <PageHeader title="Settings" description="Manage your profile, exam prep, and preferences." />

      <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
        {supabaseConfigured() && (!loaded || !profile) ? (
          <section className="rounded-xl border border-border bg-card p-6 text-sm text-muted-foreground">
            Loading your saved study profile...
          </section>
        ) : (
          <>
            <Section title="Profile" description="Customize your learner identity and access.">
              <Row label="Avatar">
                <div className="flex items-center gap-4">
                  <div className="flex h-16 w-16 items-center justify-center rounded-full bg-foreground font-display text-xl text-background">
                    {name.charAt(0).toUpperCase()}
                  </div>
                  <p className="text-sm text-muted-foreground">
                    Generated from your display name for now.
                  </p>
                </div>
              </Row>
              <Row label="Display name">
                <Input
                  value={name}
                  onChange={(e) => setName(e.target.value)}
                  className="max-w-md"
                />
              </Row>
              <Row label="Email" hint="Managed by your sign-in provider">
                <Input value={user?.email ?? ""} disabled type="email" className="max-w-md" />
              </Row>
              <Row label="Language" hint="Controls interface and support messaging language">
                <Select value={language} onValueChange={(value) => setLanguage(value as Language)}>
                  <SelectTrigger className="max-w-md">
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    {LANGUAGES.map((item) => (
                      <SelectItem key={item.id} value={item.id}>
                        {item.label}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </Row>
              <Row
                label="Curriculum path"
                hint="Controls class, series, subjects, and content access"
              >
                <Select
                  value={educationSystem}
                  onValueChange={(value) => resetCurriculumPath(value as EducationSystem)}
                >
                  <SelectTrigger className="max-w-md">
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="gce">GCE Anglophone</SelectItem>
                    <SelectItem value="francophone">Francophone BEPC, Probatoire, Bac</SelectItem>
                  </SelectContent>
                </Select>
              </Row>
              <Row label="Country" hint="Used for national rankings">
                <Select value={country} onValueChange={setCountry}>
                  <SelectTrigger className="max-w-md">
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    {COUNTRIES.map((item) => (
                      <SelectItem key={item} value={item}>
                        {item}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </Row>
              <Row label="Region" hint="Used for regional rankings">
                <Select value={region} onValueChange={setRegion}>
                  <SelectTrigger className="max-w-md">
                    <SelectValue placeholder="Select your region" />
                  </SelectTrigger>
                  <SelectContent>
                    {CAMEROON_REGIONS.map((item) => (
                      <SelectItem key={item} value={item}>
                        {item}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </Row>
              <Row label="Town or city" hint="Used for local rankings when available">
                <Input
                  value={city}
                  onChange={(event) => setCity(event.target.value)}
                  placeholder="Example: Douala, Yaounde, Buea"
                  className="max-w-md"
                />
              </Row>
              <Row
                label="Location verification"
                hint="Uses browser permission to verify this device's location"
              >
                <div className="flex flex-col gap-2">
                  <Button
                    type="button"
                    variant={locationVerified ? "outline" : "default"}
                    disabled={browserLocation.verifying}
                    className="w-fit"
                    onClick={async () => {
                      try {
                        const verified = await browserLocation.verifyLocation();
                        setLocationLatitude(verified.latitude);
                        setLocationLongitude(verified.longitude);
                        setLocationVerifiedAt(verified.verifiedAt);
                        setLocationVerified(true);
                      } catch {
                        setLocationVerified(false);
                      }
                    }}
                  >
                    {browserLocation.verifying
                      ? "Verifying location..."
                      : locationVerified
                        ? "Verify again"
                        : "Verify location"}
                  </Button>
                  <p className="text-xs text-muted-foreground">
                    {locationVerified
                      ? `Verified ${locationVerifiedAt ? new Date(locationVerifiedAt).toLocaleString() : "recently"}`
                      : (browserLocation.error ?? "Not verified yet.")}
                  </p>
                </div>
              </Row>
              <Row label="Class" hint="Determines which structural papers you can access">
                <Select
                  value={classLevel}
                  onValueChange={(value) => {
                    const nextClassLevel = value as ClassLevel;
                    const nextLevel =
                      systemClassLevels.find((item) => item.id === nextClassLevel)?.level ??
                      selectedLevel;
                    const nextSeriesOptions = systemSeriesOptions.filter(
                      (item) => item.level === nextLevel,
                    );

                    setClassLevel(nextClassLevel);
                    if (!nextSeriesOptions.some((item) => item.id === series)) {
                      setSeries(nextSeriesOptions[0]?.id ?? series);
                    }
                  }}
                >
                  <SelectTrigger className="max-w-md">
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    {systemClassLevels.map((item) => (
                      <SelectItem key={item.id} value={item.id}>
                        {item.label}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </Row>
              <Row label="Series">
                <Select
                  value={series}
                  onValueChange={(value) => {
                    const nextSeries = value as Series;
                    setSeries(nextSeries);
                    setSubjects((current) =>
                      current.filter((subject): subject is Subject =>
                        subjectsForSeries(nextSeries).includes(subject as Subject),
                      ),
                    );
                  }}
                >
                  <SelectTrigger className="max-w-md">
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    {availableSeries.map((item) => (
                      <SelectItem key={item.id} value={item.id}>
                        {item.label}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </Row>
              <Row label="Active subjects" hint={`${subjects.length} selected`}>
                <div className="flex flex-wrap gap-2">
                  {availableSubjects.map((s) => {
                    const sel = subjects.includes(s);
                    return (
                      <button
                        key={s}
                        onClick={() => toggleSubject(s)}
                        className={`rounded-full border px-3 py-1.5 text-xs transition-colors ${
                          sel
                            ? "border-foreground bg-foreground text-background"
                            : "border-border bg-background hover:border-foreground/40"
                        }`}
                      >
                        {sel && <Check className="-ml-0.5 mr-1 inline h-3 w-3" />}
                        {s}
                      </button>
                    );
                  })}
                </div>
              </Row>
              {saveError && (
                <p className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
                  Profile could not be saved: {saveError}
                </p>
              )}
              {saved && (
                <p className="rounded-lg border border-success/30 bg-success/10 p-3 text-sm text-success">
                  Profile saved. Your dashboard access has been updated.
                </p>
              )}
              <div className="flex flex-wrap items-center justify-end gap-3">
                {hasChanges && (
                  <span className="text-xs text-muted-foreground">Unsaved changes</span>
                )}
                <Button
                  type="button"
                  variant="outline"
                  onClick={resetForm}
                  disabled={!hasChanges || saving}
                >
                  Reset
                </Button>
                <Button
                  onClick={saveStudyProfile}
                  disabled={
                    !name.trim() ||
                    !country.trim() ||
                    !region.trim() ||
                    subjects.length === 0 ||
                    saving ||
                    !hasChanges
                  }
                >
                  {saving ? "Saving..." : "Save profile"}
                </Button>
              </div>
            </Section>

            <Section
              title="Appearance"
              description="Choose how StudySpark looks on this device. Your preference is saved in the browser."
            >
              <Row label="Color theme" hint="System follows your OS preference automatically">
                <ThemeToggle variant="select" />
              </Row>
            </Section>

            <Section
              title="Notifications"
              description="Choose which learner updates appear in your notification center."
            >
              <div className="space-y-3">
                {NOTIFICATION_OPTIONS.map((option) => (
                  <div
                    key={option.kind}
                    className="flex items-start justify-between gap-4 rounded-lg border border-border bg-background p-4"
                  >
                    <div className="flex min-w-0 gap-3">
                      <div className="mt-0.5 flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-secondary">
                        <Bell className="h-4 w-4" />
                      </div>
                      <div className="min-w-0">
                        <div className="text-sm font-medium">{option.label}</div>
                        <p className="mt-1 text-sm text-muted-foreground">{option.hint}</p>
                      </div>
                    </div>
                    <Switch
                      checked={preferences[option.kind]}
                      onCheckedChange={(checked) => setKindEnabled(option.kind, checked)}
                      aria-label={`${option.label} notifications`}
                      className="mt-1 shrink-0"
                    />
                  </div>
                ))}
              </div>
            </Section>

            <Section title="Plan">
              <div className="flex flex-col items-start gap-3 sm:flex-row sm:items-center sm:justify-between">
                <div>
                  <div className="flex items-center gap-2">
                    <span className="font-medium">
                      {premiumActive ? "Premium plan" : "Free preview plan"}
                    </span>
                    <Badge variant="secondary">Current</Badge>
                  </div>
                  <p className="mt-1 text-sm text-muted-foreground">
                    {premiumActive
                      ? "Your account can access all matching protected papers and premium learner tools."
                      : "Free accounts can open only the preview papers. Upgrade for full access."}
                  </p>
                  <div className="mt-3 grid gap-2 text-sm text-muted-foreground sm:grid-cols-2">
                    <span>
                      Expires:{" "}
                      {subscription?.premiumUntil
                        ? new Date(subscription.premiumUntil).toLocaleDateString()
                        : premiumActive
                          ? "Manual admin grant"
                          : "Not active"}
                    </span>
                    <span>
                      Billing:{" "}
                      {subscription?.billingInterval
                        ? `${subscription.billingInterval} · ${subscription.subscriptionStatus ?? "pending"}`
                        : "None"}
                    </span>
                    <span>
                      Last payment:{" "}
                      {subscription?.lastPaymentStatus
                        ? `${subscription.lastPaymentStatus}${subscription.lastPaymentAmountXaf ? ` · FCFA ${subscription.lastPaymentAmountXaf.toLocaleString()}` : ""}`
                        : "None"}
                    </span>
                    <span>Renewal: {subscription?.autoRenew ? "Automatic" : "Manual"}</span>
                  </div>
                </div>
                <Button asChild>
                  <Link to="/pricing">
                    <Sparkles className="mr-1.5 h-4 w-4" /> Upgrade
                  </Link>
                </Button>
              </div>
            </Section>

            <Section
              title="Payment history"
              description="Your recent Premium payments. Failed or expired payments can be retried."
            >
              {historyError && (
                <p className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
                  {historyError}
                </p>
              )}
              {retryError && (
                <p className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
                  {retryError}
                </p>
              )}
              {!historyLoaded ? (
                <p className="text-sm text-muted-foreground">Loading payment history...</p>
              ) : paymentHistory.length === 0 ? (
                <p className="text-sm text-muted-foreground">No payments yet.</p>
              ) : (
                <div className="space-y-2">
                  {paymentHistory.map((record) => (
                    <div
                      key={record.id}
                      className="flex flex-col gap-2 rounded-lg border border-border bg-background p-4 sm:flex-row sm:items-center sm:justify-between"
                    >
                      <div className="min-w-0">
                        <div className="flex items-center gap-2">
                          <span className="text-sm font-medium">
                            Premium {record.billing_interval} · FCFA{" "}
                            {record.amount_xaf.toLocaleString()}
                          </span>
                          <Badge
                            variant={
                              record.status === "successful"
                                ? "default"
                                : record.status === "failed" || record.status === "expired"
                                  ? "destructive"
                                  : "secondary"
                            }
                          >
                            {record.status}
                          </Badge>
                        </div>
                        <p className="mt-1 text-xs text-muted-foreground">
                          {new Date(record.created_at).toLocaleString()}
                          {record.provider_transaction_id
                            ? ` · Ref ${record.provider_transaction_id}`
                            : ""}
                        </p>
                      </div>
                      {(record.status === "failed" || record.status === "expired") && (
                        <Button
                          size="sm"
                          variant="outline"
                          disabled={retryingId === record.id}
                          onClick={() => retryPayment(record)}
                        >
                          {retryingId === record.id ? "Starting..." : "Retry payment"}
                        </Button>
                      )}
                    </div>
                  ))}
                </div>
              )}
            </Section>

            <Section
              title="Session"
              description="Leave this device and sign in with another account."
            >
              <div className="flex flex-col items-start gap-3 sm:flex-row sm:items-center sm:justify-between">
                <div>
                  <div className="font-medium">Signed in account</div>
                  <p className="mt-1 text-sm text-muted-foreground">
                    Sign out after changing your Supabase admin role so the new role is loaded.
                  </p>
                </div>
                <Button variant="outline" onClick={() => void handleSignOut()}>
                  <LogOut className="mr-1.5 h-4 w-4" />
                  Sign out
                </Button>
              </div>
            </Section>

            <Section
              title="Delete account"
              description="Permanently remove your StudySpark account."
            >
              <div className="rounded-lg border border-destructive/30 bg-destructive/10 p-4">
                <div className="flex items-start gap-3">
                  <TriangleAlert className="mt-0.5 h-4 w-4 text-destructive" />
                  <div>
                    <h3 className="text-sm font-medium text-destructive">This cannot be undone.</h3>
                    <p className="mt-1 text-sm text-muted-foreground">
                      This deletes your Supabase auth user. Your study profile and progress are
                      removed by database cascade rules.
                    </p>
                  </div>
                </div>
              </div>
              <Row label='Type "delete"' hint="Required before the delete button is enabled">
                <Input
                  value={deleteConfirm}
                  onChange={(event) => setDeleteConfirm(event.target.value)}
                  className="max-w-md"
                  placeholder="delete"
                />
              </Row>
              {deleteError && (
                <p className="rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
                  {deleteError}
                </p>
              )}
              <div className="flex justify-end">
                <Button
                  variant="destructive"
                  onClick={deleteAccount}
                  disabled={deleteConfirm !== "delete" || deleting}
                >
                  <Trash2 className="mr-1.5 h-4 w-4" />
                  {deleting ? "Deleting..." : "Delete account"}
                </Button>
              </div>
            </Section>
          </>
        )}
      </div>
    </>
  );
}
