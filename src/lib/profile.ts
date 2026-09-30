import type { EducationSystem, StudentProfile } from "@/lib/study-reference-data";
import { educationSystemForLanguage } from "@/lib/study-reference-data";

export const PROFILE_PREFIX = "studyspark.profile.";

export type ProfileRow = {
  name: string;
  language: string;
  education_system?: string | null;
  country: string;
  region: string;
  city: string;
  location_verified: boolean;
  location_latitude: number | null;
  location_longitude: number | null;
  location_verified_at: string | null;
  level: string;
  class_level: string;
  series: string;
  subjects: string[] | null;
  plan?: string | null;
  premium_until?: string | null;
};

export function profileKey(userId: string) {
  return `${PROFILE_PREFIX}${userId}`;
}

export function normalizeProfile(profile: Partial<StudentProfile>): StudentProfile {
  const language = profile.language ?? "english";
  const educationSystem = profile.educationSystem ?? educationSystemForLanguage(language);
  const defaultClassLevel = educationSystem === "francophone" ? "troisieme" : "form_5";
  const defaultSeries = educationSystem === "francophone" ? "tronc_commun" : "science";
  return {
    name: profile.name ?? "",
    language,
    educationSystem,
    country: profile.country ?? "Cameroon",
    region: profile.region ?? "Not set",
    city: profile.city ?? "",
    locationVerified: profile.locationVerified ?? false,
    locationLatitude: profile.locationLatitude ?? null,
    locationLongitude: profile.locationLongitude ?? null,
    locationVerifiedAt: profile.locationVerifiedAt ?? null,
    level: profile.level ?? "ordinary",
    classLevel: profile.classLevel ?? defaultClassLevel,
    series: profile.series ?? defaultSeries,
    subjects: profile.subjects ?? [],
    plan: profile.plan ?? "free",
    premiumUntil: profile.premiumUntil ?? null,
  };
}

export function profileFromRow(row: ProfileRow): StudentProfile {
  return normalizeProfile({
    name: row.name,
    language: row.language as StudentProfile["language"],
    educationSystem: row.education_system as EducationSystem | undefined,
    country: row.country,
    region: row.region,
    city: row.city,
    locationVerified: row.location_verified,
    locationLatitude: row.location_latitude,
    locationLongitude: row.location_longitude,
    locationVerifiedAt: row.location_verified_at,
    level: row.level as StudentProfile["level"],
    classLevel: row.class_level as StudentProfile["classLevel"],
    series: row.series as StudentProfile["series"],
    subjects: (row.subjects ?? []) as StudentProfile["subjects"],
    plan: row.plan === "premium" ? "premium" : "free",
    premiumUntil: row.premium_until ?? null,
  });
}
