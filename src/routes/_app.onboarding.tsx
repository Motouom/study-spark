import { createFileRoute, useNavigate } from "@tanstack/react-router";
import { useEffect, useState } from "react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import {
  CAMEROON_REGIONS,
  COUNTRIES,
  LANGUAGES,
  classLevelsForSystem,
  classCycleLabel,
  educationSystemForLanguage,
  examLabelForClassLevel,
  levelLabelForSystem,
  seriesOptionsForSystem,
  subjectsForSeries,
  type ClassLevel,
  type EducationSystem,
  type Language,
  type Level,
  type Series,
  type Subject,
} from "@/lib/study-reference-data";
import { ArrowRight, Check, GraduationCap, Languages, BookOpen, MapPin } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { getSupabaseDisplayName } from "@/hooks/use-supabase-user";
import { supabase } from "@/lib/supabase";
import { track } from "@/lib/analytics";
import { useBrowserLocation } from "@/hooks/use-browser-location";
import { useI18n } from "@/lib/i18n";

export const Route = createFileRoute("/_app/onboarding")({
  head: () => ({ meta: [{ title: "Welcome — StudySpark" }] }),
  component: Onboarding,
});

function Onboarding() {
  const navigate = useNavigate();
  const { t } = useI18n();
  const { user, profile, saveProfile } = useStudyProfile();
  const [step, setStep] = useState(0);
  const [name, setName] = useState("");
  const [language, setLanguage] = useState<Language | null>(null);
  const [educationSystem, setEducationSystem] = useState<EducationSystem>("gce");
  const [country, setCountry] = useState("Cameroon");
  const [region, setRegion] = useState("");
  const [city, setCity] = useState("");
  const [locationVerified, setLocationVerified] = useState(false);
  const [locationLatitude, setLocationLatitude] = useState<number | null>(null);
  const [locationLongitude, setLocationLongitude] = useState<number | null>(null);
  const [locationVerifiedAt, setLocationVerifiedAt] = useState<string | null>(null);
  const [level, setLevel] = useState<Level | null>(null);
  const [classLevel, setClassLevel] = useState<ClassLevel | null>(null);
  const [series, setSeries] = useState<Series | null>(null);
  const [subjects, setSubjects] = useState<Subject[]>([]);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const browserLocation = useBrowserLocation();

  const toggleSubject = (s: Subject) =>
    setSubjects((prev) => (prev.includes(s) ? prev.filter((x) => x !== s) : [...prev, s]));

  const resetCurriculumPath = (nextSystem: EducationSystem) => {
    setEducationSystem(nextSystem);
    setLevel(null);
    setClassLevel(null);
    setSeries(null);
    setSubjects([]);
  };

  const next = () => setStep((s) => s + 1);
  const handleUseAnotherAccount = async () => {
    setError(null);
    if (supabase) await supabase.auth.signOut();
    await navigate({ to: "/signin" });
  };

  const finish = async () => {
    if (!language || !level || !classLevel || !series) return;
    setSaving(true);
    setError(null);
    const nextProfile = {
      name: name.trim(),
      language,
      educationSystem,
      country,
      region,
      city: city.trim(),
      locationVerified,
      locationLatitude,
      locationLongitude,
      locationVerifiedAt,
      level,
      classLevel,
      series,
      subjects,
    };

    try {
      await saveProfile(nextProfile);
      track({
        name: "onboarding_complete",
        props: { level: String(level), language: String(language) },
      });
      await navigate({ to: "/dashboard" });
    } catch (err) {
      const message =
        err instanceof Error
          ? err.message
          : typeof err === "object" && err !== null && "message" in err
            ? String(err.message)
            : "The profile could not be saved.";
      setError(
        `${message} Please make sure the Supabase database setup SQL has been run, then try again.`,
      );
    } finally {
      setSaving(false);
    }
  };

  useEffect(() => {
    const displayName = getSupabaseDisplayName(user);
    if (!name && displayName) setName(displayName);
  }, [name, user]);

  useEffect(() => {
    if (profile) void navigate({ to: "/dashboard" });
  }, [navigate, profile]);

  const stepValid =
    (step === 0 && name.trim().length > 0) ||
    (step === 1 && language !== null && educationSystem !== null) ||
    (step === 2 && country.trim().length > 0 && region.trim().length > 0) ||
    (step === 3 && level !== null && classLevel !== null) ||
    (step === 4 && series !== null && subjects.length >= 1);

  const systemClassLevels = classLevelsForSystem(educationSystem);
  const systemSeriesOptions = seriesOptionsForSystem(educationSystem);

  const availableClasses = systemClassLevels.filter((item) => !level || item.level === level);
  const availableSeries = systemSeriesOptions.filter((item) => item.level === level);
  const availableSubjects = subjectsForSeries(series);

  useEffect(() => {
    setSubjects((current) => current.filter((subject) => availableSubjects.includes(subject)));
  }, [availableSubjects]);

  const levelOptions: Level[] = ["ordinary", "advanced"];

  return (
    <div className="min-h-[calc(100dvh-7.5rem)] bg-surface px-4 py-6 md:min-h-[calc(100dvh-3rem)] md:py-10">
      <div className="mx-auto max-w-xl">
        <div className="mb-6 flex items-center gap-2">
          {[0, 1, 2, 3, 4].map((i) => (
            <div
              key={i}
              className={`h-1 flex-1 rounded-full transition-colors ${
                i <= step ? "bg-foreground" : "bg-border"
              }`}
            />
          ))}
        </div>

        <AnimatePresence mode="wait">
          <motion.div
            key={step}
            initial={{ opacity: 0, y: 12 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: -12 }}
            transition={{ duration: 0.25 }}
            className="rounded-2xl border border-border bg-card p-6 md:p-8"
          >
            {step === 0 && (
              <div>
                <h1 className="font-display text-3xl text-foreground md:text-4xl">
                  {t("onboarding.welcomeTitle")}
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  {t("onboarding.welcomeDescription")}
                </p>
                <label className="mt-6 block text-sm font-medium">
                  {t("onboarding.nameLabel")}
                </label>
                <Input
                  autoFocus
                  value={name}
                  onChange={(e) => setName(e.target.value)}
                  placeholder={t("onboarding.namePlaceholder")}
                  className="mt-2 h-11"
                />
              </div>
            )}

            {step === 1 && (
              <div>
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary text-foreground">
                  <Languages className="h-5 w-5" />
                </div>
                <h1 className="mt-5 font-display text-3xl text-foreground md:text-4xl">
                  {t("onboarding.languageTitle")}
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  {t("onboarding.languageDescription")}
                </p>
                <div
                  className="mt-5 grid grid-cols-2 gap-2"
                  role="radiogroup"
                  aria-label="Study language"
                >
                  {LANGUAGES.map((item) => {
                    const sel = language === item.id;
                    const sysLabel =
                      item.id === "english"
                        ? t("onboarding.englishInterface")
                        : t("onboarding.frenchInterface");
                    return (
                      <button
                        key={item.id}
                        type="button"
                        role="radio"
                        aria-checked={sel}
                        onClick={() => {
                          setLanguage(item.id);
                          resetCurriculumPath(educationSystemForLanguage(item.id));
                        }}
                        className={`flex flex-col items-start gap-1 rounded-lg border p-3 text-left transition-colors ${
                          sel
                            ? "border-foreground bg-secondary"
                            : "border-border bg-background hover:border-foreground/40"
                        }`}
                      >
                        <span className="text-sm font-medium">{item.label}</span>
                        <span className="text-xs text-muted-foreground">{sysLabel}</span>
                      </button>
                    );
                  })}
                </div>
                <p className="mt-6 text-sm font-medium">{t("onboarding.curriculumPath")}</p>
                <div
                  className="mt-2 grid grid-cols-1 gap-2 sm:grid-cols-2"
                  role="radiogroup"
                  aria-label="Curriculum path"
                >
                  {[
                    {
                      id: "gce" as EducationSystem,
                      title: "GCE Anglophone",
                      hint: t("onboarding.gceHint"),
                    },
                    {
                      id: "francophone" as EducationSystem,
                      title: "Francophone",
                      hint: t("onboarding.frHint"),
                    },
                  ].map((item) => {
                    const sel = educationSystem === item.id;
                    return (
                      <button
                        key={item.id}
                        type="button"
                        role="radio"
                        aria-checked={sel}
                        onClick={() => resetCurriculumPath(item.id)}
                        className={`flex flex-col items-start gap-1 rounded-lg border p-3 text-left transition-colors ${
                          sel
                            ? "border-foreground bg-secondary"
                            : "border-border bg-background hover:border-foreground/40"
                        }`}
                      >
                        <span className="text-sm font-medium">{item.title}</span>
                        <span className="text-xs text-muted-foreground">{item.hint}</span>
                      </button>
                    );
                  })}
                </div>
              </div>
            )}

            {step === 2 && (
              <div>
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary text-foreground">
                  <MapPin className="h-5 w-5" />
                </div>
                <h1 className="mt-5 font-display text-3xl text-foreground md:text-4xl">
                  {t("onboarding.locationTitle")}
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  {t("onboarding.locationDescription")}
                </p>
                <label className="mt-6 block text-sm font-medium">{t("onboarding.country")}</label>
                <div className="mt-2 grid grid-cols-1 gap-2">
                  {COUNTRIES.map((item) => (
                    <button
                      key={item}
                      type="button"
                      onClick={() => setCountry(item)}
                      className={`flex items-center justify-between rounded-lg border p-4 text-left transition-colors ${
                        country === item
                          ? "border-foreground bg-secondary"
                          : "border-border bg-background hover:border-foreground/40"
                      }`}
                    >
                      <span className="font-medium">{item}</span>
                      {country === item && <Check className="h-4 w-4" />}
                    </button>
                  ))}
                </div>
                <label className="mt-5 block text-sm font-medium">{t("onboarding.region")}</label>
                <div className="mt-2 grid grid-cols-2 gap-2">
                  {CAMEROON_REGIONS.map((item) => (
                    <button
                      key={item}
                      type="button"
                      onClick={() => setRegion(item)}
                      className={`rounded-lg border p-3 text-left text-sm transition-colors ${
                        region === item
                          ? "border-foreground bg-secondary"
                          : "border-border bg-background hover:border-foreground/40"
                      }`}
                    >
                      {item}
                    </button>
                  ))}
                </div>
                <label className="mt-5 block text-sm font-medium">{t("onboarding.city")}</label>
                <Input
                  value={city}
                  onChange={(event) => setCity(event.target.value)}
                  placeholder={t("onboarding.cityPlaceholder")}
                  className="mt-2 h-11"
                />
                <Button
                  type="button"
                  variant={locationVerified ? "outline" : "default"}
                  className="mt-4"
                  disabled={browserLocation.verifying}
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
                    ? t("onboarding.verifyingLocation")
                    : locationVerified
                      ? t("onboarding.locationVerified")
                      : t("onboarding.verifyLocation")}
                </Button>
                {(browserLocation.error || locationVerified) && (
                  <p className="mt-2 text-xs text-muted-foreground">
                    {locationVerified
                      ? t("onboarding.locationVerifiedHint")
                      : browserLocation.error}
                  </p>
                )}
              </div>
            )}

            {step === 3 && (
              <div>
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary text-foreground">
                  <GraduationCap className="h-5 w-5" />
                </div>
                <h1 className="mt-5 font-display text-3xl text-foreground md:text-4xl">
                  {t("onboarding.classTitle")}
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  {educationSystem === "francophone"
                    ? t("onboarding.classDescriptionFr")
                    : t("onboarding.classDescriptionGce")}
                </p>
                <div className="mt-5 grid grid-cols-2 gap-2" role="radiogroup" aria-label="Level">
                  {levelOptions.map((item) => (
                    <button
                      key={item}
                      type="button"
                      role="radio"
                      aria-checked={level === item}
                      onClick={() => {
                        setLevel(item);
                        setClassLevel(null);
                        setSeries(null);
                        setSubjects([]);
                      }}
                      className={`rounded-lg border p-4 text-left text-sm transition-colors ${
                        level === item
                          ? "border-foreground bg-secondary"
                          : "border-border bg-background hover:border-foreground/40"
                      }`}
                    >
                      {levelLabelForSystem(item, educationSystem)}
                    </button>
                  ))}
                </div>
                <div
                  className="mt-3 grid grid-cols-1 gap-2 sm:grid-cols-2"
                  role="radiogroup"
                  aria-label="Class"
                >
                  {availableClasses.map((item) => {
                    const sel = classLevel === item.id;
                    return (
                      <button
                        key={item.id}
                        type="button"
                        role="radio"
                        aria-checked={sel}
                        onClick={() => {
                          setLevel(item.level);
                          setClassLevel(item.id);
                        }}
                        className={`flex items-center justify-between rounded-lg border p-4 text-left transition-colors ${
                          sel
                            ? "border-foreground bg-secondary"
                            : "border-border bg-background hover:border-foreground/40"
                        }`}
                      >
                        <span>
                          <span className="block font-medium">{item.label}</span>
                          <span className="mt-1 block text-xs text-muted-foreground">
                            {classCycleLabel(item.id)} · {examLabelForClassLevel(item.id)}
                          </span>
                        </span>
                        {sel && <Check className="h-4 w-4" />}
                      </button>
                    );
                  })}
                </div>
              </div>
            )}

            {step === 4 && (
              <div>
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary text-foreground">
                  <BookOpen className="h-5 w-5" />
                </div>
                <h1 className="mt-5 font-display text-3xl text-foreground md:text-4xl">
                  {educationSystem === "francophone"
                    ? t("onboarding.subjectTitleFr")
                    : t("onboarding.subjectTitleGce")}
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  {educationSystem === "francophone"
                    ? t("onboarding.subjectDescriptionFr")
                    : t("onboarding.subjectDescriptionGce")}
                </p>
                <div
                  className="mt-5 grid grid-cols-1 gap-2 sm:grid-cols-2"
                  role="radiogroup"
                  aria-label="Series"
                >
                  {availableSeries.map((item) => {
                    const sel = series === item.id;
                    return (
                      <button
                        key={item.id}
                        type="button"
                        role="radio"
                        aria-checked={sel}
                        onClick={() => {
                          setSeries(item.id);
                          setSubjects((current) =>
                            current.filter((subject) =>
                              subjectsForSeries(item.id).includes(subject),
                            ),
                          );
                        }}
                        className={`flex items-center justify-between rounded-lg border p-4 text-left transition-colors ${
                          sel
                            ? "border-foreground bg-secondary"
                            : "border-border bg-background hover:border-foreground/40"
                        }`}
                      >
                        <span className="font-medium">{item.label}</span>
                        {sel && <Check className="h-4 w-4" />}
                      </button>
                    );
                  })}
                </div>
                <div className="mt-5 flex flex-wrap gap-2">
                  {availableSubjects.map((s) => {
                    const sel = subjects.includes(s);
                    return (
                      <button
                        key={s}
                        type="button"
                        aria-pressed={sel}
                        onClick={() => toggleSubject(s)}
                        className={`rounded-full border px-4 py-2 text-sm transition-colors ${
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
                {subjects.length > 0 && (
                  <Badge variant="secondary" className="mt-5">
                    {subjects.length} {t("onboarding.selected")}
                  </Badge>
                )}
              </div>
            )}
          </motion.div>
        </AnimatePresence>

        {error && (
          <div className="mt-4 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
            {error}
          </div>
        )}

        <div className="mt-5 flex items-center justify-between">
          <Button variant="ghost" onClick={() => void handleUseAnotherAccount()}>
            {t("onboarding.useAnotherAccount")}
          </Button>
          {step < 4 ? (
            <Button onClick={next} disabled={!stepValid}>
              {t("common.continue")} <ArrowRight className="ml-1 h-4 w-4" />
            </Button>
          ) : (
            <Button onClick={finish} disabled={!stepValid || saving}>
              {saving ? t("onboarding.saving") : t("onboarding.getStarted")}{" "}
              <ArrowRight className="ml-1 h-4 w-4" />
            </Button>
          )}
        </div>
      </div>
    </div>
  );
}
