import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Search, RefreshCw } from "lucide-react";
import { useMemo, useState } from "react";
import { useAdminData } from "@/hooks/use-admin-data";

export const Route = createFileRoute("/control-panel-9k3x/logs")({
  component: Logs,
});

function Logs() {
  const { logs, protectedEvents, loading, error, reload } = useAdminData();
  const [q, setQ] = useState("");
  const filtered = useMemo(() => {
    const needle = q.trim().toLowerCase();
    return logs.filter((log) =>
      needle
        ? [log.actorEmail, log.action, log.targetTable, log.targetId]
            .join(" ")
            .toLowerCase()
            .includes(needle)
        : true,
    );
  }, [logs, q]);

  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Audit logs</h1>
          <p className="mt-1 text-sm text-muted-foreground">
            Immutable record of administrator actions.
          </p>
        </div>
        <Button variant="outline" size="sm" onClick={() => void reload()}>
          <RefreshCw className="mr-1.5 h-3.5 w-3.5" />
          Refresh
        </Button>
      </div>

      {error && (
        <div className="mb-4 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
          {error}
        </div>
      )}

      <div className="mb-4 flex items-center gap-2">
        <div className="relative max-w-md flex-1">
          <Search className="pointer-events-none absolute left-3 top-1/2 h-3.5 w-3.5 -translate-y-1/2 text-muted-foreground" />
          <Input
            value={q}
            onChange={(e) => setQ(e.target.value)}
            placeholder="Filter by actor, action, or target..."
            className="h-9 pl-9"
          />
        </div>
      </div>

      <div className="overflow-hidden rounded-xl border border-border bg-card">
        <table className="w-full text-sm">
          <thead className="bg-secondary/40 text-left text-xs text-muted-foreground">
            <tr>
              <th className="px-4 py-3 font-normal">Timestamp</th>
              <th className="px-4 py-3 font-normal">Actor</th>
              <th className="px-4 py-3 font-normal">Action</th>
              <th className="px-4 py-3 font-normal">Target</th>
              <th className="px-4 py-3 font-normal">Details</th>
            </tr>
          </thead>
          <tbody>
            {filtered.map((log) => (
              <tr key={log.id} className="border-t border-border hover:bg-secondary/20">
                <td className="px-4 py-3 font-mono text-xs text-muted-foreground">
                  {new Date(log.createdAt).toLocaleString()}
                </td>
                <td className="px-4 py-3 text-xs">{log.actorEmail}</td>
                <td className="px-4 py-3">
                  <code className="rounded bg-secondary px-1.5 py-0.5 font-mono text-[11px]">
                    {log.action}
                  </code>
                </td>
                <td className="px-4 py-3 text-xs">
                  {log.targetTable}:{log.targetId}
                </td>
                <td className="max-w-md truncate px-4 py-3 text-xs text-muted-foreground">
                  {JSON.stringify(log.details)}
                </td>
              </tr>
            ))}
            {!loading && filtered.length === 0 && (
              <tr>
                <td colSpan={5} className="px-4 py-10 text-center text-sm text-muted-foreground">
                  No audit entries yet.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>

      <div className="mt-6 overflow-hidden rounded-xl border border-border bg-card">
        <div className="border-b border-border p-4">
          <h2 className="text-sm font-medium">Protected paper events</h2>
          <p className="mt-1 text-xs text-muted-foreground">
            Traceable learner view, copy-block, print-block, and tab-hidden events.
          </p>
        </div>
        <table className="w-full text-sm">
          <thead className="bg-secondary/40 text-left text-xs text-muted-foreground">
            <tr>
              <th className="px-4 py-3 font-normal">Timestamp</th>
              <th className="px-4 py-3 font-normal">Event</th>
              <th className="px-4 py-3 font-normal">Learner</th>
              <th className="px-4 py-3 font-normal">Paper</th>
              <th className="px-4 py-3 font-normal">Details</th>
            </tr>
          </thead>
          <tbody>
            {protectedEvents.map((event) => (
              <tr key={event.id} className="border-t border-border hover:bg-secondary/20">
                <td className="px-4 py-3 font-mono text-xs text-muted-foreground">
                  {new Date(event.createdAt).toLocaleString()}
                </td>
                <td className="px-4 py-3">
                  <code className="rounded bg-secondary px-1.5 py-0.5 font-mono text-[11px]">
                    {event.eventType}
                  </code>
                </td>
                <td className="px-4 py-3 font-mono text-xs">{event.userId.slice(0, 8)}</td>
                <td className="px-4 py-3 font-mono text-xs">
                  {event.documentId?.slice(0, 8) ?? "none"}
                </td>
                <td className="max-w-md truncate px-4 py-3 text-xs text-muted-foreground">
                  {JSON.stringify(event.details)}
                </td>
              </tr>
            ))}
            {!loading && protectedEvents.length === 0 && (
              <tr>
                <td colSpan={5} className="px-4 py-10 text-center text-sm text-muted-foreground">
                  No protected paper events yet.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  );
}
