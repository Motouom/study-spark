/**
 * StudySpark role model (issue #100).
 *
 * Mirrors the database role catalogue in migration 070. Roles are assigned in
 * the `user_roles` table and enforced at the database layer; this module only
 * drives the UI (nav visibility, route guards, labels) and never authorizes
 * data access by itself.
 */

export const ROLES = [
  "student",
  "teacher",
  "parent",
  "school_admin",
  "content_admin",
  "moderator",
  "platform_admin",
] as const;

export type Role = (typeof ROLES)[number];

export const STAFF_ROLES: readonly Role[] = [
  "teacher",
  "school_admin",
  "content_admin",
  "moderator",
  "platform_admin",
];

export const ROLE_LABELS: Record<Role, string> = {
  student: "Student",
  teacher: "Teacher",
  parent: "Parent / Guardian",
  school_admin: "School Admin",
  content_admin: "Content Admin",
  moderator: "Moderator",
  platform_admin: "Platform Admin",
};

// Higher rank = more privilege. Used to pick the "primary" role for display.
const ROLE_RANK: Record<Role, number> = {
  student: 10,
  teacher: 20,
  parent: 30,
  school_admin: 40,
  content_admin: 50,
  moderator: 60,
  platform_admin: 100,
};

// Legacy JWT app_metadata.role values mapped onto the new model so existing
// staff keep working without a data migration.
const LEGACY_ROLE_MAP: Record<string, Role> = {
  reviewer: "moderator",
  admin: "content_admin",
  super_admin: "platform_admin",
};

export function isRole(value: unknown): value is Role {
  return typeof value === "string" && (ROLES as readonly string[]).includes(value);
}

export function isStaffRole(role: Role): boolean {
  return (STAFF_ROLES as readonly string[]).includes(role);
}

export function isPlatformAdminRole(role: Role): boolean {
  return role === "platform_admin";
}

export function isContentAdminRole(role: Role): boolean {
  return role === "content_admin" || role === "platform_admin";
}

export function isModeratorRole(role: Role): boolean {
  return role === "moderator" || role === "content_admin" || role === "platform_admin";
}

export function isSchoolAdminRole(role: Role): boolean {
  return role === "school_admin" || role === "platform_admin";
}

export function roleLabel(role: Role): string {
  return ROLE_LABELS[role] ?? role;
}

export function roleRank(role: Role): number {
  return ROLE_RANK[role] ?? 0;
}

/** Normalize a raw role value (from DB or legacy JWT) into a known Role or null. */
export function normalizeRole(value: unknown): Role | null {
  if (isRole(value)) return value;
  if (typeof value === "string" && LEGACY_ROLE_MAP[value]) return LEGACY_ROLE_MAP[value];
  return null;
}

/** Normalize a list of raw role values, de-duplicated and ordered by rank. */
export function normalizeRoles(values: readonly unknown[]): Role[] {
  const seen = new Set<Role>();
  const roles: Role[] = [];
  for (const value of values) {
    const role = normalizeRole(value);
    if (role && !seen.has(role)) {
      seen.add(role);
      roles.push(role);
    }
  }
  return roles.sort((a, b) => roleRank(a) - roleRank(b));
}

/** True if any of the given roles is a staff role. */
export function hasStaffRole(roles: readonly Role[]): boolean {
  return roles.some(isStaffRole);
}

/** True if the roles include the platform_admin role. */
export function hasPlatformAdminRole(roles: readonly Role[]): boolean {
  return roles.includes("platform_admin");
}

/** Highest-privilege role for display purposes, or null if none. */
export function primaryRole(roles: readonly Role[]): Role | null {
  if (roles.length === 0) return null;
  return [...roles].sort((a, b) => roleRank(b) - roleRank(a))[0];
}
