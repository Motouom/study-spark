import { describe, expect, it } from "vitest";
import { normalizeProfile, profileFromRow, profileKey } from "./profile";

describe("normalizeProfile", () => {
  it("fills defaults for an empty profile", () => {
    const profile = normalizeProfile({});
    expect(profile).toMatchObject({
      name: "",
      language: "english",
      educationSystem: "gce",
      country: "Cameroon",
      region: "Not set",
      city: "",
      locationVerified: false,
      level: "ordinary",
      classLevel: "form_5",
      series: "science",
      subjects: [],
      plan: "free",
      premiumUntil: null,
    });
  });

  it("uses francophone defaults when language is french", () => {
    const profile = normalizeProfile({ language: "french" });
    expect(profile.educationSystem).toBe("francophone");
    expect(profile.classLevel).toBe("troisieme");
    expect(profile.series).toBe("tronc_commun");
  });

  it("preserves provided values", () => {
    const profile = normalizeProfile({
      name: "Amina",
      language: "english",
      classLevel: "form_4",
      series: "arts",
      subjects: ["English Language", "History"],
      plan: "premium",
    });
    expect(profile.name).toBe("Amina");
    expect(profile.classLevel).toBe("form_4");
    expect(profile.series).toBe("arts");
    expect(profile.subjects).toEqual(["English Language", "History"]);
    expect(profile.plan).toBe("premium");
  });

  it("maps a premium row plan to premium", () => {
    const profile = profileFromRow({
      name: "Amina",
      language: "english",
      country: "Cameroon",
      region: "Centre",
      city: "Yaoundé",
      location_verified: false,
      location_latitude: null,
      location_longitude: null,
      location_verified_at: null,
      level: "ordinary",
      class_level: "form_5",
      series: "science",
      subjects: ["mathematics"],
      plan: "premium",
      premium_until: "2027-01-01T00:00:00Z",
    });
    expect(profile.plan).toBe("premium");
    expect(profile.premiumUntil).toBe("2027-01-01T00:00:00Z");
  });

  it("maps a non-premium row plan to free", () => {
    const profile = profileFromRow({
      name: "B",
      language: "english",
      country: "Cameroon",
      region: "Littoral",
      city: "Douala",
      location_verified: false,
      location_latitude: null,
      location_longitude: null,
      location_verified_at: null,
      level: "advanced",
      class_level: "upper_sixth",
      series: "science",
      subjects: ["physics"],
      plan: null,
      premium_until: null,
    });
    expect(profile.plan).toBe("free");
    expect(profile.premiumUntil).toBeNull();
  });
});

describe("profileKey", () => {
  it("scopes the storage key by user id", () => {
    expect(profileKey("user-1")).toBe("studyspark.profile.user-1");
  });
});
