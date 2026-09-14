import { useCallback, useEffect, useMemo, useState } from "react";
import type { StudentProfile } from "@/lib/study-reference-data";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import { getSupabaseDisplayName, useSupabaseUser } from "@/hooks/use-supabase-user";

const PROFILE_PREFIX = "studyspark.profile.";
const SAVE_TIMEOUT_MS = 12000;
const PROFILE_CHANGED_EVENT = "studyspark:profile-changed";

type ProfileChangedDetail = {
  userId: string;
  profile: StudentProfile | null;
};

type ProfileRow = {
  name: string;
  language: string;
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

function profileKey(userId: string) {
  return `${PROFILE_PREFIX}${userId}`;
}

function readLocalProfile(userId: string) {
  const saved = localStorage.getItem(profileKey(userId));
  if (!saved) return null;

  try {
    return normalizeProfile(JSON.parse(saved) as Partial<StudentProfile>);
  } catch {
    localStorage.removeItem(profileKey(userId));
    return null;
  }
}

function normalizeProfile(profile: Partial<StudentProfile>): StudentProfile {
  return {
    name: profile.name ?? "",
    language: profile.language ?? "english",
    country: profile.country ?? "Cameroon",
    region: profile.region ?? "Not set",
    city: profile.city ?? "",
    locationVerified: profile.locationVerified ?? false,
    locationLatitude: profile.locationLatitude ?? null,
    locationLongitude: profile.locationLongitude ?? null,
    locationVerifiedAt: profile.locationVerifiedAt ?? null,
    level: profile.level ?? "ordinary",
    classLevel: profile.classLevel ?? "form_5",
    series: profile.series ?? "science",
    subjects: profile.subjects ?? [],
    plan: profile.plan ?? "free",
    premiumUntil: profile.premiumUntil ?? null,
  };
}

function profileFromRow(row: ProfileRow): StudentProfile {
  return normalizeProfile({
    name: row.name,
    language: row.language as StudentProfile["language"],
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
    subjects: row.subjects ?? [],
    plan: row.plan === "premium" ? "premium" : "free",
    premiumUntil: row.premium_until ?? null,
  });
}

function withTimeout<T>(promise: Promise<T>, message: string): Promise<T> {
  return new Promise((resolve, reject) => {
    const timeout = window.setTimeout(() => reject(new Error(message)), SAVE_TIMEOUT_MS);
    promise
      .then(resolve)
      .catch(reject)
      .finally(() => window.clearTimeout(timeout));
  });
}

export function useStudyProfile() {
  const { user, loaded: userLoaded } = useSupabaseUser();
  const [profile, setProfileState] = useState<StudentProfile | null>(null);
  const [loaded, setLoaded] = useState(false);

  useEffect(() => {
    if (!userLoaded) return;

    if (!user) {
      setProfileState(null);
      setLoaded(true);
      return;
    }

    if (supabaseConfigured() && supabase) {
      setLoaded(false);
      supabase.rpc("refresh_my_subscription_status").then(() =>
        supabase
        .from("student_profiles")
        .select(
          "name, language, country, region, city, location_verified, location_latitude, location_longitude, location_verified_at, level, class_level, series, subjects, plan, premium_until",
        )
        .eq("user_id", user.id)
        .maybeSingle()
      )
        .then(({ data, error }) => {
          if (error) {
            console.error("Could not load study profile", error);
            setProfileState(null);
            setLoaded(true);
            return;
          }

          const remoteProfile = data ? profileFromRow(data as ProfileRow) : null;

          if (remoteProfile) {
            localStorage.setItem(profileKey(user.id), JSON.stringify(remoteProfile));
          } else {
            localStorage.removeItem(profileKey(user.id));
          }

          setProfileState(remoteProfile);
          setLoaded(true);
        });
      return;
    }

    setProfileState(readLocalProfile(user.id));
    setLoaded(true);
  }, [user, userLoaded]);

  useEffect(() => {
    if (!user) return;

    const handleProfileChanged = (event: Event) => {
      const detail = (event as CustomEvent<ProfileChangedDetail>).detail;
      if (detail?.userId !== user.id) return;
      setProfileState(detail.profile);
      setLoaded(true);
    };

    window.addEventListener(PROFILE_CHANGED_EVENT, handleProfileChanged);
    return () => window.removeEventListener(PROFILE_CHANGED_EVENT, handleProfileChanged);
  }, [user]);

  const saveProfile = useCallback(
    async (nextProfile: StudentProfile) => {
      if (!user) throw new Error("You must be signed in before creating a study profile.");

      if (supabaseConfigured() && supabase) {
        const { data, error } = await withTimeout(
          supabase
            .rpc("update_student_profile", {
              profile_name: nextProfile.name,
              profile_language: nextProfile.language,
              profile_country: nextProfile.country,
              profile_region: nextProfile.region,
              profile_city: nextProfile.city,
              profile_location_verified: nextProfile.locationVerified,
              profile_location_latitude: nextProfile.locationLatitude,
              profile_location_longitude: nextProfile.locationLongitude,
              profile_location_verified_at: nextProfile.locationVerifiedAt,
              profile_level: nextProfile.level,
              profile_class_level: nextProfile.classLevel,
              profile_series: nextProfile.series,
              profile_subjects: nextProfile.subjects,
            })
            .single(),
          "Saving took too long. Check your Supabase connection and database tables.",
        );

        if (error) {
          console.error("Could not save study profile", error);
          throw error;
        }

        nextProfile = profileFromRow(data as ProfileRow);
      }

      localStorage.setItem(profileKey(user.id), JSON.stringify(nextProfile));
      setProfileState(nextProfile);
      window.dispatchEvent(
        new CustomEvent<ProfileChangedDetail>(PROFILE_CHANGED_EVENT, {
          detail: { userId: user.id, profile: nextProfile },
        }),
      );
    },
    [user],
  );

  const displayName = useMemo(
    () => profile?.name ?? getSupabaseDisplayName(user) ?? null,
    [profile, user],
  );

  return { user, loaded: userLoaded && loaded, profile, saveProfile, displayName };
}
