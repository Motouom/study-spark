import type { StudentProfile } from "@/lib/study-reference-data";

export function isPremiumPlan(plan: string | null | undefined) {
  return plan === "premium";
}

export function isPremiumActive(
  profile: Pick<StudentProfile, "plan" | "premiumUntil"> | null | undefined,
) {
  if (profile?.plan !== "premium") return false;
  if (!profile.premiumUntil) return true;
  const expiry = new Date(profile.premiumUntil).getTime();
  return Number.isFinite(expiry) && expiry > Date.now();
}
