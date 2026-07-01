import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import {
  TrendingUp,
  TrendingDown,
  Users,
  FileText,
  GraduationCap,
  DollarSign,
  AlertTriangle,
  CheckCircle2,
  Activity,
} from "lucide-react";

export const Route = createFileRoute("/control-panel-9k3x/")({
  component: Overview,
});

const STATS = [
  { label: "Total users", value: "48,213", delta: "+12.4%", up: true, icon: Users, sub: "vs. last 30 days" },
  { label: "Active today", value: "6,842", delta: "+3.1%", up: true, icon: Activity, sub: "peak: 9,204" },
  { label: "Papers served", value: "182,340", delta: "+18.2%", up: true, icon: FileText, sub: "downloads + views" },
  { label: "MRR", value: "$24,890", delta: "-2.1%", up: false, icon: DollarSign, sub: "42 refunds this week" },
];

const RECENT_SIGNUPS = [
  { name: "Kwame Asante", email: "kwame.a@gmail.com", country: "🇬🇭 GH", plan: "Free", when: "2m ago" },
  { name: "Fatima Bello", email: "fatima.b@outlook.com", country: "🇳🇬 NG", plan: "Premium", when: "8m ago" },
  { name: "Grace Wanjiku", email: "grace.w@yahoo.com", country: "🇰🇪 KE", plan: "Free", when: "14m ago" },
  { name: "Emmanuel Okafor", email: "emmanuel.o@gmail.com", country: "🇳🇬 NG", plan: "Free", when: "22m ago" },
  { name: "Amara Nkomo", email: "amara.n@gmail.com", country: "🇿🇲 ZM", plan: "Premium", when: "31m ago" },
];

const SYSTEM = [
  { label: "Firebase Auth", status: "ok", latency: "42ms" },
  { label: "Supabase Postgres", status: "ok", latency: "18ms" },
  { label: "Storage CDN", status: "ok", latency: "89ms" },
  { label: "Payment gateway", status: "degraded", latency: "412ms" },
  { label: "Email delivery", status: "ok", latency: "1.2s" },
];

function Overview() {
  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Overview</h1>
          <p className="mt-1 text-sm text-muted-foreground">Real-time platform health and activity.</p>
        </div>
        <div className="flex items-center gap-2">
          <Badge variant="secondary" className="gap-1">
            <span className="h-1.5 w-1.5 rounded-full bg-success" /> Live
          </Badge>
          <Button variant="outline" size="sm">Export report</Button>
        </div>
      </div>

      <div className="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-4">
        {STATS.map((s) => (
          <div key={s.label} className="rounded-xl border border-border bg-card p-5">
            <div className="flex items-center justify-between">
              <span className="text-xs text-muted-foreground">{s.label}</span>
              <s.icon className="h-4 w-4 text-muted-foreground" />
            </div>
            <div className="mt-3 font-display text-2xl">{s.value}</div>
            <div className="mt-1 flex items-center gap-1.5 text-xs">
              {s.up ? (
                <TrendingUp className="h-3 w-3 text-success" />
              ) : (
                <TrendingDown className="h-3 w-3 text-destructive" />
              )}
              <span className={s.up ? "text-success" : "text-destructive"}>{s.delta}</span>
              <span className="text-muted-foreground">{s.sub}</span>
            </div>
          </div>
        ))}
      </div>

      <div className="mt-6 grid grid-cols-1 gap-4 lg:grid-cols-3">
        <div className="rounded-xl border border-border bg-card p-5 lg:col-span-2">
          <div className="mb-4 flex items-center justify-between">
            <h2 className="text-sm font-medium">Traffic — last 14 days</h2>
            <Badge variant="outline" className="text-[10px]">Mock chart</Badge>
          </div>
          <div className="flex h-48 items-end gap-1.5">
            {Array.from({ length: 14 }).map((_, i) => {
              const h = 30 + Math.round(Math.sin(i / 2) * 20 + Math.random() * 40 + i * 2);
              return (
                <div key={i} className="flex-1 rounded-t bg-gradient-to-t from-accent/40 to-accent" style={{ height: `${h}%` }} />
              );
            })}
          </div>
          <div className="mt-2 flex justify-between text-[10px] text-muted-foreground">
            <span>Jun 17</span><span>Jun 24</span><span>Jul 1</span>
          </div>
        </div>

        <div className="rounded-xl border border-border bg-card p-5">
          <h2 className="mb-4 text-sm font-medium">System status</h2>
          <ul className="space-y-2.5">
            {SYSTEM.map((s) => (
              <li key={s.label} className="flex items-center justify-between text-sm">
                <span className="flex items-center gap-2">
                  {s.status === "ok" ? (
                    <CheckCircle2 className="h-3.5 w-3.5 text-success" />
                  ) : (
                    <AlertTriangle className="h-3.5 w-3.5 text-warning" />
                  )}
                  {s.label}
                </span>
                <span className="font-mono text-[11px] text-muted-foreground">{s.latency}</span>
              </li>
            ))}
          </ul>
        </div>
      </div>

      <div className="mt-6 rounded-xl border border-border bg-card">
        <div className="flex items-center justify-between border-b border-border px-5 py-3">
          <h2 className="text-sm font-medium">Recent sign-ups</h2>
          <Button variant="ghost" size="sm">View all</Button>
        </div>
        <table className="w-full text-sm">
          <thead className="text-left text-xs text-muted-foreground">
            <tr className="border-b border-border">
              <th className="px-5 py-2 font-normal">Name</th>
              <th className="px-5 py-2 font-normal">Email</th>
              <th className="px-5 py-2 font-normal">Country</th>
              <th className="px-5 py-2 font-normal">Plan</th>
              <th className="px-5 py-2 font-normal text-right">When</th>
            </tr>
          </thead>
          <tbody>
            {RECENT_SIGNUPS.map((u) => (
              <tr key={u.email} className="border-b border-border last:border-0">
                <td className="px-5 py-3">{u.name}</td>
                <td className="px-5 py-3 text-muted-foreground">{u.email}</td>
                <td className="px-5 py-3">{u.country}</td>
                <td className="px-5 py-3">
                  <Badge variant={u.plan === "Premium" ? "default" : "secondary"}>{u.plan}</Badge>
                </td>
                <td className="px-5 py-3 text-right text-xs text-muted-foreground">{u.when}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      <div className="mt-6 flex items-center justify-between rounded-xl border border-warning/40 bg-warning/10 px-5 py-3 text-sm">
        <div className="flex items-center gap-2">
          <GraduationCap className="h-4 w-4 text-warning" />
          <span>2 quiz submissions flagged for review by the anti-cheating system.</span>
        </div>
        <Button variant="outline" size="sm">Review</Button>
      </div>
    </div>
  );
}
