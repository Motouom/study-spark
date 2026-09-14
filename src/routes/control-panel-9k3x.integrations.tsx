import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { CheckCircle2, Database, KeyRound, Lock, RefreshCw, ShieldCheck } from "lucide-react";
import { supabaseConfigured } from "@/lib/supabase";
import { useAdminData } from "@/hooks/use-admin-data";
import type { ReactNode } from "react";

export const Route = createFileRoute("/control-panel-9k3x/integrations")({
  component: Integrations,
});

function Integrations() {
  const { documents, learners, logs, loading, reload } = useAdminData();

  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Integrations</h1>
          <p className="mt-1 text-sm text-muted-foreground">
            Secure service configuration without exposing secrets in the browser.
          </p>
        </div>
        <Button variant="outline" size="sm" onClick={() => void reload()}>
          <RefreshCw className="mr-1.5 h-3.5 w-3.5" />
          Refresh
        </Button>
      </div>

      <div className="grid grid-cols-1 gap-5 lg:grid-cols-2">
        <Panel
          icon={Database}
          title="Supabase"
          status={supabaseConfigured() ? "connected" : "missing"}
          description="Auth, Postgres, RLS, RPCs, learner profiles, structural papers, progress, and audit logs."
        >
          <Row label="Project URL" value={import.meta.env.VITE_SUPABASE_URL ?? "Not configured"} />
          <Row
            label="Client key"
            value={supabaseConfigured() ? "Publishable key loaded" : "Missing"}
          />
          <Row
            label="Papers visible to admin"
            value={loading ? "Checking..." : String(documents.length)}
          />
          <Row label="Learner profiles" value={loading ? "Checking..." : String(learners.length)} />
          <Row label="Audit entries" value={loading ? "Checking..." : String(logs.length)} />
        </Panel>

        <Panel
          icon={ShieldCheck}
          title="Admin security"
          status="connected"
          description="Admin access is controlled through Supabase app metadata and database-side role checks."
        >
          <Row label="Allowed roles" value="admin, reviewer, super_admin" />
          <Row label="Role source" value="auth.users.raw_app_meta_data.role" />
          <Row label="Admin writes" value="Supabase RPC only" />
          <Row label="Audit trail" value="admin_audit_logs" />
        </Panel>

        <Panel
          icon={Lock}
          title="Paper protection"
          status="connected"
          description="Learners open protected structural papers and progress is tracked per question mark."
        >
          <Row label="Paper loading" value="list_allowed_course_documents()" />
          <Row label="Progress tracking" value="structural_question_progress" />
          <Row label="Direct draft access" value="Blocked by RLS" />
        </Panel>

        <Panel
          icon={KeyRound}
          title="Secrets"
          status="connected"
          description="Secrets must stay in Supabase, server environments, or provider dashboards."
        >
          <div className="rounded-lg border border-warning/30 bg-warning/10 p-3 text-xs text-warning-foreground">
            This admin console intentionally never prints OAuth secrets, service-role keys, database
            URLs, or payment keys.
          </div>
        </Panel>
      </div>
    </div>
  );
}

function Panel({
  icon: Icon,
  title,
  status,
  description,
  children,
}: {
  icon: typeof Database;
  title: string;
  status: "connected" | "missing";
  description: string;
  children: ReactNode;
}) {
  return (
    <section className="rounded-xl border border-border bg-card">
      <div className="flex items-start justify-between gap-4 border-b border-border p-5">
        <div className="flex items-start gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary">
            <Icon className="h-5 w-5" />
          </div>
          <div>
            <div className="text-sm font-medium">{title}</div>
            <p className="mt-1 text-xs text-muted-foreground">{description}</p>
          </div>
        </div>
        <Badge variant={status === "connected" ? "secondary" : "destructive"} className="gap-1">
          <CheckCircle2 className="h-3 w-3" />
          {status === "connected" ? "Configured" : "Missing"}
        </Badge>
      </div>
      <div className="space-y-3 p-5">{children}</div>
    </section>
  );
}

function Row({ label, value }: { label: string; value: string }) {
  return (
    <div className="flex items-center justify-between gap-4 text-sm">
      <span className="text-muted-foreground">{label}</span>
      <span className="max-w-sm truncate text-right font-mono text-xs">{value}</span>
    </div>
  );
}
