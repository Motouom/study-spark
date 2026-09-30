import { describe, expect, it } from "vitest";
import {
  hasPlatformAdminRole,
  hasStaffRole,
  isContentAdminRole,
  isModeratorRole,
  isPlatformAdminRole,
  isSchoolAdminRole,
  isStaffRole,
  normalizeRole,
  normalizeRoles,
  primaryRole,
  roleLabel,
  roleRank,
} from "./roles";

describe("roles", () => {
  it("normalizes legacy JWT roles onto the new model", () => {
    expect(normalizeRole("super_admin")).toBe("platform_admin");
    expect(normalizeRole("admin")).toBe("content_admin");
    expect(normalizeRole("reviewer")).toBe("moderator");
    expect(normalizeRole("student")).toBe("student");
    expect(normalizeRole("unknown")).toBeNull();
    expect(normalizeRole(undefined)).toBeNull();
  });

  it("normalizes a list of roles, de-duplicated and ranked", () => {
    expect(normalizeRoles(["student", "student", "platform_admin"])).toEqual([
      "student",
      "platform_admin",
    ]);
    expect(normalizeRoles(["super_admin", "reviewer"])).toEqual(["moderator", "platform_admin"]);
  });

  it("identifies staff roles", () => {
    expect(isStaffRole("platform_admin")).toBe(true);
    expect(isStaffRole("content_admin")).toBe(true);
    expect(isStaffRole("moderator")).toBe(true);
    expect(isStaffRole("teacher")).toBe(true);
    expect(isStaffRole("school_admin")).toBe(true);
    expect(isStaffRole("student")).toBe(false);
    expect(isStaffRole("parent")).toBe(false);
  });

  it("hasStaffRole is true when any role is staff", () => {
    expect(hasStaffRole(["student"])).toBe(false);
    expect(hasStaffRole(["student", "teacher"])).toBe(true);
    expect(hasStaffRole(["parent"])).toBe(false);
  });

  it("platform admin checks", () => {
    expect(isPlatformAdminRole("platform_admin")).toBe(true);
    expect(isPlatformAdminRole("content_admin")).toBe(false);
    expect(hasPlatformAdminRole(["content_admin"])).toBe(false);
    expect(hasPlatformAdminRole(["content_admin", "platform_admin"])).toBe(true);
  });

  it("content admin includes platform admin", () => {
    expect(isContentAdminRole("content_admin")).toBe(true);
    expect(isContentAdminRole("platform_admin")).toBe(true);
    expect(isContentAdminRole("moderator")).toBe(false);
  });

  it("moderator includes content and platform admins", () => {
    expect(isModeratorRole("moderator")).toBe(true);
    expect(isModeratorRole("content_admin")).toBe(true);
    expect(isModeratorRole("platform_admin")).toBe(true);
    expect(isModeratorRole("teacher")).toBe(false);
  });

  it("school admin includes platform admin", () => {
    expect(isSchoolAdminRole("school_admin")).toBe(true);
    expect(isSchoolAdminRole("platform_admin")).toBe(true);
    expect(isSchoolAdminRole("teacher")).toBe(false);
  });

  it("primaryRole returns the highest-rank role", () => {
    expect(primaryRole(["student", "content_admin"])).toBe("content_admin");
    expect(primaryRole(["content_admin", "platform_admin"])).toBe("platform_admin");
    expect(primaryRole([])).toBeNull();
  });

  it("roleRank orders roles by privilege", () => {
    expect(roleRank("platform_admin")).toBeGreaterThan(roleRank("content_admin"));
    expect(roleRank("content_admin")).toBeGreaterThan(roleRank("student"));
  });

  it("roleLabel returns a human label", () => {
    expect(roleLabel("platform_admin")).toBe("Platform Admin");
    expect(roleLabel("parent")).toBe("Parent / Guardian");
  });
});
