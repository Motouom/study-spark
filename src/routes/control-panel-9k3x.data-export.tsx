import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { RefreshCw, DownloadCloud } from "lucide-react";
import { useCallback, useEffect, useState } from "react";
import { useAdminData, type DataExportRequest } from "@/hooks/use-admin-data";

export const Route = createFileRoute("/control-panel-9k3x/data-export")({
  component: DataExportAdmin,
});

function DataExportAdmin() {
  const { listDataExportRequests } = useAdminData();
  const [requests, setRequests] = useState<DataExportRequest[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const rows = await listDataExportRequests();
      setRequests(
        rows.map((row) => ({
          id: String(row.id),
          userId: String(row.user_id ?? ""),
          status: String(row.status ?? "requested"),
          requestedAt: String(row.requested_at ?? ""),
          completedAt: row.completed_at ? String(row.completed_at) : null,
          downloadUrl: row.download_url ? String(row.download_url) : null,
        })),
      );
    } catch (err) {
      setError(err instanceof Error ? err.message : "Could not load export requests.");
    } finally {
      setLoading(false);
    }
  }, [listDataExportRequests]);

  useEffect(() => {
    void load();
  }, [load]);

  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Data export</h1>
          <p className="mt-1 text-sm text-muted-foreground">
            GDPR-style data export requests from learners.
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

      {loading ? (
        <p className="text-sm text-muted-foreground">Loading export requests...</p>
      ) : requests.length === 0 ? (
        <div className="rounded-xl border border-border bg-card p-10 text-center text-sm text-muted-foreground">
          No data export requests yet.
        </div>
      ) : (
        <div className="overflow-hidden rounded-xl border border-border bg-card">
          <table className="w-full text-sm">
            <thead className="bg-secondary/40 text-left text-xs text-muted-foreground">
              <tr>
                <th className="px-4 py-3 font-normal">User</th>
                <th className="px-4 py-3 font-normal">Status</th>
                <th className="px-4 py-3 font-normal">Requested</th>
                <th className="px-4 py-3 font-normal">Completed</th>
                <th className="px-4 py-3 font-normal text-right">Download</th>
              </tr>
            </thead>
            <tbody>
              {requests.map((request) => (
                <tr key={request.id} className="border-t border-border hover:bg-secondary/20">
                  <td className="px-4 py-3 font-mono text-xs">{request.userId.slice(0, 16)}…</td>
                  <td className="px-4 py-3">
                    <Badge variant={request.status === "completed" ? "default" : "secondary"}>
                      {request.status}
                    </Badge>
                  </td>
                  <td className="px-4 py-3 text-xs text-muted-foreground">
                    {new Date(request.requestedAt).toLocaleString()}
                  </td>
                  <td className="px-4 py-3 text-xs text-muted-foreground">
                    {request.completedAt ? new Date(request.completedAt).toLocaleString() : "—"}
                  </td>
                  <td className="px-4 py-3 text-right">
                    {request.downloadUrl ? (
                      <Button asChild variant="outline" size="sm">
                        <a href={request.downloadUrl} target="_blank" rel="noreferrer">
                          <DownloadCloud className="mr-1.5 h-3.5 w-3.5" /> Download
                        </a>
                      </Button>
                    ) : (
                      <span className="text-xs text-muted-foreground">Pending</span>
                    )}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}
    </div>
  );
}
