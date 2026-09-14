import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { AlertTriangle, CheckCircle2, FileText, ScrollText, Target, Users } from "lucide-react";
import { useAdminData } from "@/hooks/use-admin-data";

export const Route = createFileRoute("/control-panel-9k3x/")({
  component: Overview,
});

function Overview() {
  const { documents, learners, logs, loading, error, reload } = useAdminData();
  const published = documents.filter((item) => item.status === "published").length;
  const archived = documents.filter((item) => item.status === "archived").length;
  const started = learners.reduce((sum, learner) => sum + learner.questionsStarted, 0);

  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Overview</h1>
          <p className="mt-1 text-sm text-muted-foreground">
            Secure operational view from Supabase.
          </p>
        </div>
        <div className="flex items-center gap-2">
          <Badge variant="secondary" className="gap-1">
            <span className="h-1.5 w-1.5 rounded-full bg-success" /> Live
          </Badge>
          <Button variant="outline" size="sm" onClick={() => void reload()}>
            Refresh
          </Button>
        </div>
      </div>

      {error && (
        <div className="mb-5 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
          {error}
        </div>
      )}

      <div className="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-4">
        <Stat label="Learners" value={learners.length} icon={Users} loading={loading} />
        <Stat label="Papers" value={documents.length} icon={FileText} loading={loading} />
        <Stat label="Published" value={published} icon={CheckCircle2} loading={loading} />
        <Stat label="Questions marked" value={started} icon={Target} loading={loading} />
      </div>

      <div className="mt-6 grid grid-cols-1 gap-4 lg:grid-cols-3">
        <div className="rounded-xl border border-border bg-card p-5 lg:col-span-2">
          <div className="mb-4 flex items-center justify-between">
            <h2 className="text-sm font-medium">Content workflow</h2>
            <Badge variant={archived > 0 ? "outline" : "secondary"}>{archived} archived</Badge>
          </div>
          <div className="grid gap-3 sm:grid-cols-3">
            <Mini
              label="Draft"
              value={documents.filter((item) => item.status === "draft").length}
            />
            <Mini label="Published" value={published} />
            <Mini label="Archived" value={archived} />
          </div>
          <p className="mt-4 text-xs text-muted-foreground">
            Admin actions must go through Supabase RPCs and are recorded in the audit log.
          </p>
        </div>

        <div className="rounded-xl border border-border bg-card p-5">
          <h2 className="mb-4 text-sm font-medium">System status</h2>
          <ul className="space-y-2.5">
            <li className="flex items-center justify-between text-sm">
              <span className="flex items-center gap-2">
                <CheckCircle2 className="h-3.5 w-3.5 text-success" /> Supabase Auth
              </span>
              <span className="text-xs text-success">enforced</span>
            </li>
            <li className="flex items-center justify-between text-sm">
              <span className="flex items-center gap-2">
                <CheckCircle2 className="h-3.5 w-3.5 text-success" /> Content RPCs
              </span>
              <span className="text-xs text-success">active</span>
            </li>
            <li className="flex items-center justify-between text-sm">
              <span className="flex items-center gap-2">
                <AlertTriangle className="h-3.5 w-3.5 text-warning" /> Admin roles
              </span>
              <span className="text-xs text-muted-foreground">app metadata</span>
            </li>
          </ul>
        </div>
      </div>

      <div className="mt-6 rounded-xl border border-border bg-card">
        <div className="flex items-center justify-between border-b border-border px-5 py-3">
          <h2 className="text-sm font-medium">Recent audit activity</h2>
          <ScrollText className="h-4 w-4 text-muted-foreground" />
        </div>
        <div className="divide-y divide-border">
          {logs.slice(0, 6).map((log) => (
            <div key={log.id} className="flex items-center justify-between gap-4 px-5 py-3 text-sm">
              <div>
                <div className="font-medium">{log.action}</div>
                <div className="text-xs text-muted-foreground">
                  {log.actorEmail} · {log.targetTable}:{log.targetId}
                </div>
              </div>
              <div className="text-xs text-muted-foreground">
                {new Date(log.createdAt).toLocaleString()}
              </div>
            </div>
          ))}
          {logs.length === 0 && (
            <div className="px-5 py-8 text-center text-sm text-muted-foreground">
              No admin actions recorded yet.
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

function Stat({
  label,
  value,
  icon: Icon,
  loading,
}: {
  label: string;
  value: number;
  icon: typeof Users;
  loading: boolean;
}) {
  return (
    <div className="rounded-xl border border-border bg-card p-5">
      <div className="flex items-center justify-between">
        <span className="text-xs text-muted-foreground">{label}</span>
        <Icon className="h-4 w-4 text-muted-foreground" />
      </div>
      <div className="mt-3 font-display text-2xl">{loading ? "..." : value.toLocaleString()}</div>
    </div>
  );
}

function Mini({ label, value }: { label: string; value: number }) {
  return (
    <div className="rounded-lg border border-border p-4">
      <div className="text-xs text-muted-foreground">{label}</div>
      <div className="mt-1 font-display text-2xl">{value}</div>
    </div>
  );
}
