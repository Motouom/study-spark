import { useCallback, useEffect, useMemo, useState } from "react";
import type { StudentProfile } from "@/lib/study-reference-data";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import { getSupabaseDisplayName, useSupabaseUser } from "@/hooks/use-supabase-user";
import { normalizeProfile, profileFromRow, profileKey, type ProfileRow } from "@/lib/profile";

const SAVE_TIMEOUT_MS = 12000;
const PROFILE_CHANGED_EVENT = "studyspark:profile-changed";
const SUBSCRIPTION_REFRESH_KEY = "studyspark.subscription-refreshed-at";
const SUBSCRIPTION_REFRESH_INTERVAL_MS = 5 * 60 * 1000;

type ProfileChangedDetail = {
  userId: string;
  profile: StudentProfile | null;
};

export function clearStudySparkLocalData() {
  for (const key of Object.keys(localStorage)) {
    if (key.startsWith(profileKey("")) || key === SUBSCRIPTION_REFRESH_KEY) {
      localStorage.removeItem(key);
    }
  }
}

export function shouldRefreshSubscription() {
  const lastRefresh = Number(sessionStorage.getItem(SUBSCRIPTION_REFRESH_KEY) ?? "0");
  return !lastRefresh || Date.now() - lastRefresh > SUBSCRIPTION_REFRESH_INTERVAL_MS;
}

export function markSubscriptionRefreshed() {
  sessionStorage.setItem(SUBSCRIPTION_REFRESH_KEY, String(Date.now()));
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
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    if (!userLoaded) return;

    if (!user) {
      setProfileState(null);
      setLoaded(true);
      setError(null);
      return;
    }

    if (supabaseConfigured() && supabase) {
      setLoaded(false);
      const client = supabase;
      let active = true;

      void (async () => {
        if (shouldRefreshSubscription()) {
          try {
            await client.rpc("refresh_my_subscription_status");
            markSubscriptionRefreshed();
          } catch (rpcError) {
            console.warn("Could not refresh subscription status", rpcError);
          }
        }

        const { data, error: fetchError } = await client
          .from("student_profiles")
          .select(
            "name, language, education_system, country, region, city, location_verified, location_latitude, location_longitude, location_verified_at, level, class_level, series, subjects, plan, premium_until",
          )
          .eq("user_id", user.id)
          .maybeSingle();

        if (!active) return;

        if (fetchError) {
          console.error("Could not load study profile", fetchError);
          // Keep any cached profile and surface the error so callers can
          // distinguish "no profile yet" from "profile fetch failed" — a
          // transient network error must not funnel a signed-in user into
          // onboarding.
          setError(fetchError.message);
          setLoaded(true);
          return;
        }

        const remoteProfile = data ? profileFromRow(data as unknown as ProfileRow) : null;

        if (remoteProfile) {
          localStorage.setItem(profileKey(user.id), JSON.stringify(remoteProfile));
        } else {
          localStorage.removeItem(profileKey(user.id));
        }

        setProfileState(remoteProfile);
        setError(null);
        setLoaded(true);
      })();
      return () => {
        active = false;
      };
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
          Promise.resolve(
            supabase.rpc("update_student_profile", {
              profile_name: nextProfile.name,
              profile_language: nextProfile.language,
              profile_education_system: nextProfile.educationSystem,
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
            }),
          ).then((result) => result),
          "Saving took too long. Check your Supabase connection and database tables.",
        );

        if (error) {
          console.error("Could not save study profile", error);
          throw error;
        }

        const rows = Array.isArray(data) ? data : data ? [data] : [];
        if (rows[0]) {
          nextProfile = profileFromRow(rows[0] as unknown as ProfileRow);
        }
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

  return {
    user,
    loaded: userLoaded && loaded,
    profile,
    profileError: error,
    saveProfile,
    displayName,
  };
}
