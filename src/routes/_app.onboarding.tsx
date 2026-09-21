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
import { useBrowserLocation } from "@/hooks/use-browser-location";

export const Route = createFileRoute("/_app/onboarding")({
  head: () => ({ meta: [{ title: "Welcome — StudySpark" }] }),
  component: Onboarding,
});

function Onboarding() {
  const navigate = useNavigate();
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
                  Welcome to StudySpark
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  Let's set up your study space. Takes 30 seconds.
                </p>
                <label className="mt-6 block text-sm font-medium">What should we call you?</label>
                <Input
                  autoFocus
                  value={name}
                  onChange={(e) => setName(e.target.value)}
                  placeholder="Your first name"
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
                  Choose your study language
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  Choose your interface language and the Cameroon curriculum you follow.
                </p>
                <div
                  className="mt-5 grid grid-cols-2 gap-2"
                  role="radiogroup"
                  aria-label="Study language"
                >
                  {LANGUAGES.map((item) => {
                    const sel = language === item.id;
                    const sysLabel =
                      item.id === "english" ? "English interface" : "Interface en français";
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
                <p className="mt-6 text-sm font-medium">Curriculum path</p>
                <div
                  className="mt-2 grid grid-cols-1 gap-2 sm:grid-cols-2"
                  role="radiogroup"
                  aria-label="Curriculum path"
                >
                  {[
                    {
                      id: "gce" as EducationSystem,
                      title: "GCE Anglophone",
                      hint: "Forms, O-Level, Lower Sixth, Upper Sixth",
                    },
                    {
                      id: "francophone" as EducationSystem,
                      title: "Francophone",
                      hint: "Sixième to Terminale, BEPC, Probatoire, Bac",
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
                  Add your location
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  This places you in the right country, regional, and local leaderboard.
                </p>
                <label className="mt-6 block text-sm font-medium">Country</label>
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
                <label className="mt-5 block text-sm font-medium">Region</label>
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
                <label className="mt-5 block text-sm font-medium">Town or city</label>
                <Input
                  value={city}
                  onChange={(event) => setCity(event.target.value)}
                  placeholder="Example: Douala, Yaounde, Buea"
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
                    ? "Verifying location..."
                    : locationVerified
                      ? "Location verified"
                      : "Verify with browser location"}
                </Button>
                {(browserLocation.error || locationVerified) && (
                  <p className="mt-2 text-xs text-muted-foreground">
                    {locationVerified
                      ? "Your device location was captured for leaderboard verification."
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
                  Choose your class
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  {educationSystem === "francophone"
                    ? "Select your cycle (Collège or Lycée), then your class."
                    : "Select Ordinary or Advanced Level, then your class."}
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
                  {educationSystem === "francophone" ? "Choisis ta filière" : "Pick your subjects"}
                </h1>
                <p className="mt-2 text-sm text-muted-foreground">
                  {educationSystem === "francophone"
                    ? "Choisis ta série et les matières pour ton tableau de bord."
                    : "Choose your series and the subjects you want on your dashboard."}
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
                    {subjects.length} selected
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
            Use another account
          </Button>
          {step < 4 ? (
            <Button onClick={next} disabled={!stepValid}>
              Continue <ArrowRight className="ml-1 h-4 w-4" />
            </Button>
          ) : (
            <Button onClick={finish} disabled={!stepValid || saving}>
              {saving ? "Saving..." : "Get started"} <ArrowRight className="ml-1 h-4 w-4" />
            </Button>
          )}
        </div>
      </div>
    </div>
  );
}
