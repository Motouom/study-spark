import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Search, Download } from "lucide-react";

export const Route = createFileRoute("/control-panel-9k3x/logs")({
  component: Logs,
});

const LOGS = [
  { t: "2026-07-01 14:32:11", actor: "akua.m@studyflow.io", action: "user.suspend", target: "u_004 (emmanuel.o)", ip: "41.204.12.88", level: "warn" },
  { t: "2026-07-01 14:28:42", actor: "system", action: "paper.publish", target: "pp_2024_math_wassce_p2", ip: "internal", level: "info" },
  { t: "2026-07-01 14:15:03", actor: "admin@studyflow.io", action: "integration.rotate_key", target: "stripe.publishable_key", ip: "89.234.12.4", level: "warn" },
  { t: "2026-07-01 13:58:19", actor: "system", action: "quiz.flag", target: "session_9d2a4b7c (anti-cheat)", ip: "internal", level: "warn" },
  { t: "2026-07-01 13:44:52", actor: "akua.m@studyflow.io", action: "user.role_change", target: "u_005 → moderator", ip: "41.204.12.88", level: "info" },
  { t: "2026-07-01 13:22:08", actor: "system", action: "backup.snapshot", target: "supabase.postgres (12.4 GB)", ip: "internal", level: "info" },
  { t: "2026-07-01 12:59:41", actor: "admin@studyflow.io", action: "auth.login", target: "control-panel", ip: "89.234.12.4", level: "info" },
  { t: "2026-07-01 12:45:12", actor: "system", action: "payment.refund", target: "sub_1PxK2m ($9.99)", ip: "internal", level: "warn" },
  { t: "2026-07-01 12:12:03", actor: "system", action: "auth.failed", target: "unknown@evil.com (5 attempts)", ip: "185.220.101.42", level: "error" },
  { t: "2026-07-01 11:44:29", actor: "akua.m@studyflow.io", action: "paper.delete", target: "pp_2019_bio_neco_p1", ip: "41.204.12.88", level: "error" },
];

function Logs() {
  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Audit logs</h1>
          <p className="mt-1 text-sm text-muted-foreground">Immutable record of every administrator action · retained 365 days.</p>
        </div>
        <Button variant="outline" size="sm"><Download className="mr-1.5 h-3.5 w-3.5" />Export</Button>
      </div>

      <div className="mb-4 flex items-center gap-2">
        <div className="relative flex-1 max-w-md">
          <Search className="pointer-events-none absolute left-3 top-1/2 h-3.5 w-3.5 -translate-y-1/2 text-muted-foreground" />
          <Input placeholder="Filter by actor, action, target..." className="h-9 pl-9" />
        </div>
        <Button variant="outline" size="sm">All levels</Button>
        <Button variant="outline" size="sm">Last 24h</Button>
      </div>

      <div className="overflow-hidden rounded-xl border border-border bg-card">
        <table className="w-full text-sm">
          <thead className="bg-secondary/40 text-left text-xs text-muted-foreground">
            <tr>
              <th className="px-4 py-3 font-normal">Timestamp</th>
              <th className="px-4 py-3 font-normal">Level</th>
              <th className="px-4 py-3 font-normal">Actor</th>
              <th className="px-4 py-3 font-normal">Action</th>
              <th className="px-4 py-3 font-normal">Target</th>
              <th className="px-4 py-3 font-normal">IP</th>
            </tr>
          </thead>
          <tbody>
            {LOGS.map((l, i) => (
              <tr key={i} className="border-t border-border hover:bg-secondary/20">
                <td className="px-4 py-3 font-mono text-xs text-muted-foreground">{l.t}</td>
                <td className="px-4 py-3">
                  <Badge
                    variant="outline"
                    className={
                      l.level === "error" ? "border-destructive/30 text-destructive" :
                      l.level === "warn" ? "border-warning/30 text-warning" :
                      "border-border text-muted-foreground"
                    }
                  >
                    {l.level}
                  </Badge>
                </td>
                <td className="px-4 py-3 text-xs">{l.actor}</td>
                <td className="px-4 py-3"><code className="rounded bg-secondary px-1.5 py-0.5 font-mono text-[11px]">{l.action}</code></td>
                <td className="px-4 py-3 text-xs">{l.target}</td>
                <td className="px-4 py-3 font-mono text-xs text-muted-foreground">{l.ip}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
