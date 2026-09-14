import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { AlertTriangle, CheckCircle2, Database, ShieldCheck, UserCog } from "lucide-react";
import { useAdminSession } from "@/hooks/use-admin-session";
import type { ReactNode } from "react";

export const Route = createFileRoute("/control-panel-9k3x/settings")({
  component: AdminSettings,
});

function AdminSettings() {
  const { user, role, reload } = useAdminSession();

  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Admin settings</h1>
          <p className="mt-1 text-sm text-muted-foreground">
            Security posture and operational controls.
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
          <Row label="User ID" value={user?.id ?? "Unknown"} />
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
          <Status ok={false} text="Create a documented super-admin role assignment process." />
        </Card>

        <section className="rounded-xl border border-destructive/30 bg-card p-5 lg:col-span-3">
          <div className="flex items-start gap-3">
            <AlertTriangle className="mt-0.5 h-4 w-4 text-destructive" />
            <div>
              <h2 className="text-sm font-medium text-destructive">Sensitive operations</h2>
              <p className="mt-1 text-sm text-muted-foreground">
                Role changes, account recovery, OAuth secret rotation, service-role key rotation,
                and production database resets should stay outside this browser UI until dedicated
                server-side workflows and approvals exist.
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
