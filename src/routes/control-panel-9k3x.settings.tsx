import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { AlertTriangle, CheckCircle2, Database, ShieldCheck, UserCog } from "lucide-react";
import { useAdminSession } from "@/hooks/use-admin-session";
import type { ReactNode } from "react";

export const Route = createFileRoute("/control-panel-9k3x/settings")({
  component: AdminSettings,
});

const ROLE_MATRIX = [
  {
    role: "reviewer",
    canRead: true,
    canWriteContent: false,
    canManagePlans: false,
    canManageSettings: false,
  },
  {
    role: "admin",
    canRead: true,
    canWriteContent: true,
    canManagePlans: false,
    canManageSettings: false,
  },
  {
    role: "super_admin",
    canRead: true,
    canWriteContent: true,
    canManagePlans: true,
    canManageSettings: true,
  },
] as const;

function AdminSettings() {
  const { user, role, reload } = useAdminSession();

  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Admin settings</h1>
          <p className="mt-1 text-sm text-muted-foreground">
            Security posture, role matrix, and operational controls.
          </p>
        </div>
        <Button variant="outline" size="sm" onClick={() => void reload()}>
          Refresh session
        </Button>
      </div>

      <div className="grid grid-cols-1 gap-6 lg:grid-cols-3">
        <Card title="Current admin session" icon={UserCog}>
          <Row label="Email" value={user?.email ?? "Unknown"} />
          <Row label="Role" value={role ?? "Not authorized"} />
          <Row label="User ID" value={user?.id ? `${user.id.slice(0, 16)}…` : "Unknown"} />
          <Status ok={Boolean(role)} text="Role is read from Supabase app metadata." />
        </Card>

        <Card title="Database controls" icon={Database}>
          <Row label="Question reads" value="Learner-safe RPC" />
          <Row label="Admin writes" value="Validated RPC" />
          <Row label="Audit table" value="admin_audit_logs" />
          <Status ok text="RLS and RPCs enforce access on the database side." />
        </Card>

        <Card title="Production checklist" icon={ShieldCheck}>
          <Status ok text="No service-role key is rendered in the browser." />
          <Status ok text="Admin pages require app metadata roles." />
          <Status ok text="Question answers are not fetched through learner content lists." />
          <Status ok text="Role matrix enforced at DB level (migration 044)." />
          <Status ok text="Audit triggers on course document and issue report mutations." />
        </Card>

        {/* Role matrix */}
        <section className="rounded-xl border border-border bg-card p-5 lg:col-span-3">
          <h2 className="mb-4 text-sm font-medium">Role permission matrix</h2>
          <div className="overflow-x-auto">
            <table className="w-full text-sm">
              <thead className="border-b border-border text-left text-xs text-muted-foreground">
                <tr>
                  <th className="pb-2 pr-6 font-normal">Role</th>
                  <th className="pb-2 pr-6 font-normal">Read all data</th>
                  <th className="pb-2 pr-6 font-normal">Write / publish content</th>
                  <th className="pb-2 pr-6 font-normal">Change user plans</th>
                  <th className="pb-2 font-normal">Platform settings</th>
                </tr>
              </thead>
              <tbody>
                {ROLE_MATRIX.map((r) => (
                  <tr
                    key={r.role}
                    className={`border-b border-border ${role === r.role ? "bg-accent/5" : ""}`}
                  >
                    <td className="py-2.5 pr-6 font-mono text-xs font-medium">
                      {r.role}
                      {role === r.role && (
                        <Badge variant="secondary" className="ml-2">
                          You
                        </Badge>
                      )}
                    </td>
                    <td className="py-2.5 pr-6">{r.canRead ? "✅" : "—"}</td>
                    <td className="py-2.5 pr-6">{r.canWriteContent ? "✅" : "❌"}</td>
                    <td className="py-2.5 pr-6">{r.canManagePlans ? "✅" : "❌"}</td>
                    <td className="py-2.5">{r.canManageSettings ? "✅" : "❌"}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <p className="mt-3 text-xs text-muted-foreground">
            Enforced at the database layer via{" "}
            <code className="rounded bg-secondary px-1">assert_content_writer()</code> and{" "}
            <code className="rounded bg-secondary px-1">assert_super_admin()</code> in migration
            044.
          </p>
        </section>

        {/* Role assignment process */}
        <section className="rounded-xl border border-border bg-card p-5 lg:col-span-3">
          <h2 className="mb-3 text-sm font-medium">Role assignment and recovery process</h2>
          <ol className="space-y-2 text-sm text-muted-foreground list-decimal list-inside">
            <li>Sign in to the Supabase dashboard as a project owner.</li>
            <li>
              Open <strong>Authentication → Users</strong> and find the target account.
            </li>
            <li>
              Click the user → Edit → under <strong>App Metadata</strong>, set{" "}
              <code className="rounded bg-secondary px-1">{`{"role": "admin"}`}</code> (or{" "}
              <code className="rounded bg-secondary px-1">reviewer</code> /{" "}
              <code className="rounded bg-secondary px-1">super_admin</code>).
            </li>
            <li>
              Save. The change takes effect on the next JWT refresh (up to 1 hour) or immediately
              after sign-out and sign-in.
            </li>
            <li>
              To revoke: set <code className="rounded bg-secondary px-1">{`{"role": null}`}</code>{" "}
              or remove the key entirely.
            </li>
          </ol>
          <div className="mt-4 rounded-lg border border-warning/30 bg-warning/10 p-3 text-xs text-warning-foreground">
            <strong>Emergency owner recovery:</strong> If all super_admin accounts are locked out, a
            Supabase project owner can restore access directly from the Supabase dashboard using the
            steps above without requiring a code change or deployment.
          </div>
        </section>

        <section className="rounded-xl border border-destructive/30 bg-card p-5 lg:col-span-3">
          <div className="flex items-start gap-3">
            <AlertTriangle className="mt-0.5 h-4 w-4 text-destructive" />
            <div>
              <h2 className="text-sm font-medium text-destructive">Sensitive operations</h2>
              <p className="mt-1 text-sm text-muted-foreground">
                OAuth secret rotation, service-role key rotation, and production database resets
                must be performed directly in the Supabase dashboard or through a secure server-side
                workflow — never through this browser UI.
              </p>
            </div>
          </div>
        </section>
      </div>
    </div>
  );
}

function Card({
  title,
  icon: Icon,
  children,
}: {
  title: string;
  icon: typeof ShieldCheck;
  children: ReactNode;
}) {
  return (
    <section className="rounded-xl border border-border bg-card">
      <div className="flex items-center gap-2 border-b border-border px-5 py-3">
        <Icon className="h-4 w-4 text-muted-foreground" />
        <h2 className="text-sm font-medium">{title}</h2>
      </div>
      <div className="space-y-3 p-5">{children}</div>
    </section>
  );
}

function Row({ label, value }: { label: string; value: string }) {
  return (
    <div className="flex items-center justify-between gap-3 text-sm">
      <span className="text-muted-foreground">{label}</span>
      <span className="max-w-48 truncate text-right font-mono text-xs">{value}</span>
    </div>
  );
}

function Status({ ok, text }: { ok: boolean; text: string }) {
  return (
    <div className="flex items-start gap-2 rounded-lg border border-border bg-secondary/30 p-3 text-xs">
      {ok ? (
        <CheckCircle2 className="mt-0.5 h-3.5 w-3.5 shrink-0 text-success" />
      ) : (
        <AlertTriangle className="mt-0.5 h-3.5 w-3.5 shrink-0 text-warning" />
      )}
      <span className="text-muted-foreground">{text}</span>
      <Badge variant={ok ? "secondary" : "outline"} className="ml-auto">
        {ok ? "Done" : "Action"}
      </Badge>
    </div>
  );
}
