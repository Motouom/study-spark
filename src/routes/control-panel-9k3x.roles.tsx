import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { RefreshCw, ShieldCheck, UserCog } from "lucide-react";
import { useCallback, useEffect, useState } from "react";
import { useAdminData, type AppRole, type UserRoleAssignment } from "@/hooks/use-admin-data";
import { roleLabel, type Role } from "@/lib/roles";

export const Route = createFileRoute("/control-panel-9k3x/roles")({
  component: RolesAdmin,
});

const ROLE_OPTIONS: Role[] = [
  "student",
  "teacher",
  "parent",
  "school_admin",
  "content_admin",
  "moderator",
  "platform_admin",
];

function RolesAdmin() {
  const { listRoles, listUserRoles, assignRole, removeRole } = useAdminData();
  const [roles, setRoles] = useState<AppRole[]>([]);
  const [userId, setUserId] = useState("");
  const [selectedRole, setSelectedRole] = useState<Role>("content_admin");
  const [assignments, setAssignments] = useState<UserRoleAssignment[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [notice, setNotice] = useState<string | null>(null);

  const loadRoles = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const rows = await listRoles();
      setRoles(
        rows.map((row) => ({
          id: String(row.id),
          label: String(row.label ?? row.id),
          description: String(row.description ?? ""),
          isStaff: Boolean(row.is_staff),
          rank: Number(row.rank ?? 0),
        })),
      );
    } catch (err) {
      setError(err instanceof Error ? err.message : "Could not load roles.");
    } finally {
      setLoading(false);
    }
  }, [listRoles]);

  const loadAssignments = useCallback(async () => {
    if (!userId.trim()) {
      setAssignments([]);
      return;
    }
    setError(null);
    try {
      const rows = await listUserRoles(userId.trim());
      setAssignments(
        rows.map((row) => ({
          userId: String(row.user_id),
          role: String(row.role),
          schoolId: row.school_id ? String(row.school_id) : null,
          grantedBy: row.granted_by ? String(row.granted_by) : null,
          createdAt: String(row.created_at ?? ""),
        })),
      );
    } catch (err) {
      setError(err instanceof Error ? err.message : "Could not load role assignments.");
    }
  }, [listUserRoles, userId]);

  useEffect(() => {
    void loadRoles();
  }, [loadRoles]);

  const handleAssign = async () => {
    if (!userId.trim()) return;
    setError(null);
    setNotice(null);
    try {
      await assignRole(userId.trim(), selectedRole);
      setNotice(`Assigned ${roleLabel(selectedRole)}.`);
      await loadAssignments();
    } catch (err) {
      setError(err instanceof Error ? err.message : "Could not assign role.");
    }
  };

  const handleRemove = async (role: string) => {
    setError(null);
    setNotice(null);
    try {
      await removeRole(userId.trim(), role);
      setNotice(`Removed ${roleLabel(role as Role)}.`);
      await loadAssignments();
    } catch (err) {
      setError(err instanceof Error ? err.message : "Could not remove role.");
    }
  };

  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Roles &amp; permissions</h1>
          <p className="mt-1 text-sm text-muted-foreground">
            Assign and revoke roles. Role changes take effect immediately (DB-backed, migration
            070).
          </p>
        </div>
        <Button variant="outline" size="sm" onClick={() => void loadRoles()}>
          <RefreshCw className="mr-1.5 h-3.5 w-3.5" />
          Refresh
        </Button>
      </div>

      {error && (
        <div className="mb-4 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
          {error}
        </div>
      )}
      {notice && (
        <div className="mb-4 rounded-lg border border-success/30 bg-success/10 p-3 text-sm text-success">
          {notice}
        </div>
      )}

      <div className="grid grid-cols-1 gap-6 lg:grid-cols-3">
        <section className="rounded-xl border border-border bg-card p-5 lg:col-span-2">
          <h2 className="mb-4 flex items-center gap-2 text-sm font-medium">
            <UserCog className="h-4 w-4 text-muted-foreground" /> Assign a role
          </h2>
          <div className="flex flex-col gap-3 sm:flex-row">
            <Input
              value={userId}
              onChange={(e) => setUserId(e.target.value)}
              placeholder="User UUID"
              className="h-9 flex-1 font-mono text-xs"
            />
            <select
              value={selectedRole}
              onChange={(e) => setSelectedRole(e.target.value as Role)}
              className="h-9 rounded-md border border-border bg-background px-3 text-sm"
            >
              {ROLE_OPTIONS.map((role) => (
                <option key={role} value={role}>
                  {roleLabel(role)}
                </option>
              ))}
            </select>
            <Button onClick={() => void handleAssign()} disabled={!userId.trim()}>
              Assign
            </Button>
          </div>

          <div className="mt-6">
            <h3 className="mb-2 text-xs font-medium text-muted-foreground">
              Current assignments for this user
            </h3>
            {assignments.length === 0 ? (
              <p className="text-sm text-muted-foreground">
                {userId.trim()
                  ? "No role assignments found for this user."
                  : "Enter a user UUID above to view their roles."}
              </p>
            ) : (
              <ul className="divide-y divide-border rounded-lg border border-border">
                {assignments.map((assignment) => (
                  <li
                    key={assignment.role}
                    className="flex items-center justify-between gap-3 px-4 py-3"
                  >
                    <div className="flex items-center gap-2">
                      <Badge variant="secondary">{roleLabel(assignment.role as Role)}</Badge>
                      <span className="font-mono text-xs text-muted-foreground">
                        {assignment.role}
                      </span>
                    </div>
                    <Button
                      variant="outline"
                      size="sm"
                      onClick={() => void handleRemove(assignment.role)}
                    >
                      Remove
                    </Button>
                  </li>
                ))}
              </ul>
            )}
          </div>
        </section>

        <section className="rounded-xl border border-border bg-card p-5">
          <h2 className="mb-4 flex items-center gap-2 text-sm font-medium">
            <ShieldCheck className="h-4 w-4 text-muted-foreground" /> Role catalogue
          </h2>
          {loading ? (
            <p className="text-sm text-muted-foreground">Loading roles...</p>
          ) : (
            <ul className="space-y-2">
              {roles.map((role) => (
                <li
                  key={role.id}
                  className="flex items-start justify-between gap-3 rounded-lg border border-border bg-secondary/30 px-3 py-2"
                >
                  <div>
                    <div className="text-sm font-medium">{role.label}</div>
                    <div className="text-xs text-muted-foreground">{role.description}</div>
                  </div>
                  <Badge variant={role.isStaff ? "default" : "secondary"}>
                    {role.isStaff ? "Staff" : "Member"}
                  </Badge>
                </li>
              ))}
            </ul>
          )}
        </section>
      </div>
    </div>
  );
}
