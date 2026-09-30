import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { RefreshCw, ShieldAlert } from "lucide-react";
import { useCallback, useEffect, useState } from "react";
import { useAdminData, type AbuseReport } from "@/hooks/use-admin-data";

export const Route = createFileRoute("/control-panel-9k3x/abuse")({
  component: AbuseAdmin,
});

const STATUS_OPTIONS = ["open", "reviewing", "resolved", "rejected", "archived"] as const;

function AbuseAdmin() {
  const { listAbuseReports, updateAbuseReport } = useAdminData();
  const [reports, setReports] = useState<AbuseReport[]>([]);
  const [filter, setFilter] = useState<string>("open");
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [notes, setNotes] = useState<Record<string, string>>({});

  const load = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const rows = await listAbuseReports(filter);
      setReports(
        rows.map((row) => ({
          id: String(row.id),
          reporterId: String(row.reporter_id ?? ""),
          targetType: String(row.target_type ?? ""),
          targetId: String(row.target_id ?? ""),
          category: String(row.category ?? ""),
          description: String(row.description ?? ""),
          status: String(row.status ?? "open"),
          moderatorNotes: String(row.moderator_notes ?? ""),
          createdAt: String(row.created_at ?? ""),
          updatedAt: String(row.updated_at ?? ""),
        })),
      );
    } catch (err) {
      setError(err instanceof Error ? err.message : "Could not load abuse reports.");
    } finally {
      setLoading(false);
    }
  }, [filter, listAbuseReports]);

  useEffect(() => {
    void load();
  }, [load]);

  const handleStatus = async (reportId: string, status: string) => {
    setError(null);
    try {
      await updateAbuseReport(reportId, status, notes[reportId] ?? "");
      await load();
    } catch (err) {
      setError(err instanceof Error ? err.message : "Could not update report.");
    }
  };

  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Abuse reports</h1>
          <p className="mt-1 text-sm text-muted-foreground">
            Moderation queue for reported content and behavior.
          </p>
        </div>
        <Button variant="outline" size="sm" onClick={() => void load()}>
          <RefreshCw className="mr-1.5 h-3.5 w-3.5" />
          Refresh
        </Button>
      </div>

      {error && (
        <div className="mb-4 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
          {error}
        </div>
      )}

      <div className="mb-4 flex flex-wrap items-center gap-2">
        {STATUS_OPTIONS.map((status) => (
          <Button
            key={status}
            variant={filter === status ? "default" : "outline"}
            size="sm"
            onClick={() => setFilter(status)}
          >
            {status}
          </Button>
        ))}
      </div>

      {loading ? (
        <p className="text-sm text-muted-foreground">Loading reports...</p>
      ) : reports.length === 0 ? (
        <div className="rounded-xl border border-border bg-card p-10 text-center text-sm text-muted-foreground">
          No {filter} reports.
        </div>
      ) : (
        <div className="space-y-4">
          {reports.map((report) => (
            <div key={report.id} className="rounded-xl border border-border bg-card p-5">
              <div className="flex flex-wrap items-center gap-2">
                <ShieldAlert className="h-4 w-4 text-warning" />
                <Badge variant="secondary">{report.category}</Badge>
                <Badge variant="outline">{report.status}</Badge>
                <span className="ml-auto font-mono text-xs text-muted-foreground">
                  {new Date(report.createdAt).toLocaleString()}
                </span>
              </div>
              <div className="mt-3 text-sm">
                <span className="text-muted-foreground">Target:</span>{" "}
                <span className="font-mono text-xs">
                  {report.targetType} / {report.targetId}
                </span>
              </div>
              <p className="mt-2 text-sm text-muted-foreground">{report.description}</p>
              <div className="mt-4 flex flex-col gap-2 sm:flex-row sm:items-center">
                <input
                  value={notes[report.id] ?? report.moderatorNotes}
                  onChange={(e) => setNotes((n) => ({ ...n, [report.id]: e.target.value }))}
                  placeholder="Moderator notes..."
                  className="h-9 flex-1 rounded-md border border-border bg-background px-3 text-sm"
                />
                <div className="flex gap-2">
                  <Button
                    variant="outline"
                    size="sm"
                    onClick={() => void handleStatus(report.id, "reviewing")}
                  >
                    Reviewing
                  </Button>
                  <Button
                    variant="outline"
                    size="sm"
                    onClick={() => void handleStatus(report.id, "resolved")}
                  >
                    Resolve
                  </Button>
                  <Button
                    variant="outline"
                    size="sm"
                    onClick={() => void handleStatus(report.id, "rejected")}
                  >
                    Reject
                  </Button>
                </div>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
