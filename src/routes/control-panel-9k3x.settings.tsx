import { createFileRoute } from "@tanstack/react-router";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Switch } from "@/components/ui/switch";
import { Textarea } from "@/components/ui/textarea";
import { Badge } from "@/components/ui/badge";
import { AlertTriangle } from "lucide-react";

export const Route = createFileRoute("/control-panel-9k3x/settings")({
  component: AdminSettings,
});

function AdminSettings() {
  return (
    <div className="p-6 md:p-8">
      <div className="mb-6">
        <h1 className="font-display text-3xl">Admin settings</h1>
        <p className="mt-1 text-sm text-muted-foreground">Global platform configuration.</p>
      </div>

      <div className="grid grid-cols-1 gap-6 lg:grid-cols-3">
        <div className="space-y-6 lg:col-span-2">
          <Card title="Platform">
            <Row label="Platform name" hint="Shown across site & emails">
              <Input defaultValue="StudyFlow" className="h-9" />
            </Row>
            <Row label="Support email">
              <Input defaultValue="support@studyflow.io" className="h-9" />
            </Row>
            <Row label="Marketing banner" hint="Empty to hide">
              <Textarea defaultValue="🎓 New: WASSCE 2025 papers now available." rows={2} />
            </Row>
          </Card>

          <Card title="Feature flags">
            <Flag label="AI question generation" hint="Let admins auto-generate quizzes from papers" on />
            <Flag label="Peer study groups" hint="Group chat + shared decks (V2)" />
            <Flag label="Voice notes in quiz review" hint="Beta · 4% rollout" on />
            <Flag label="Regional leaderboards" hint="Country-level ranking widget" on />
            <Flag label="AI tutor chat" hint="GPT-powered explanations · gated to Premium" on />
          </Card>

          <Card title="Content moderation">
            <Flag label="Auto-flag adult language" hint="Runs on user-submitted quiz answers" on />
            <Flag label="Manual review for uploads" hint="All new papers require admin approval" on />
            <Row label="Report threshold" hint="Auto-hide after N reports">
              <Input type="number" defaultValue={5} className="h-9 w-24" />
            </Row>
          </Card>

          <Card title="Danger zone" tone="danger">
            <div className="rounded-md border border-destructive/40 bg-destructive/5 p-4">
              <div className="flex items-start gap-3">
                <AlertTriangle className="mt-0.5 h-4 w-4 shrink-0 text-destructive" />
                <div className="flex-1">
                  <div className="text-sm font-medium">Maintenance mode</div>
                  <p className="mt-1 text-xs text-muted-foreground">
                    Displays a maintenance page to all non-admin users. Existing sessions will be terminated.
                  </p>
                  <Button variant="destructive" size="sm" className="mt-3">Enable maintenance mode</Button>
                </div>
              </div>
            </div>
            <div className="mt-3 rounded-md border border-destructive/40 bg-destructive/5 p-4">
              <div className="flex items-start gap-3">
                <AlertTriangle className="mt-0.5 h-4 w-4 shrink-0 text-destructive" />
                <div className="flex-1">
                  <div className="text-sm font-medium">Purge cache</div>
                  <p className="mt-1 text-xs text-muted-foreground">Clears CDN + Redis caches. Traffic may spike for ~2 minutes.</p>
                  <Button variant="outline" size="sm" className="mt-3">Purge all caches</Button>
                </div>
              </div>
            </div>
          </Card>
        </div>

        <div className="space-y-6">
          <Card title="Environment">
            <div className="flex items-center justify-between text-sm">
              <span className="text-muted-foreground">Environment</span>
              <Badge>Production</Badge>
            </div>
            <div className="flex items-center justify-between text-sm">
              <span className="text-muted-foreground">Build</span>
              <span className="font-mono text-xs">v2.4.0 · a9f3e2d</span>
            </div>
            <div className="flex items-center justify-between text-sm">
              <span className="text-muted-foreground">Node</span>
              <span className="font-mono text-xs">20.11.1</span>
            </div>
            <div className="flex items-center justify-between text-sm">
              <span className="text-muted-foreground">Deployed</span>
              <span className="text-xs">2 hours ago</span>
            </div>
          </Card>

          <Card title="Admin team">
            {[
              { n: "Akua Mensah", e: "akua.m@studyflow.io", r: "Owner" },
              { n: "David Osei", e: "david.o@studyflow.io", r: "Admin" },
              { n: "Lena Park", e: "lena.p@studyflow.io", r: "Moderator" },
            ].map((a) => (
              <div key={a.e} className="flex items-center justify-between text-sm">
                <div>
                  <div>{a.n}</div>
                  <div className="text-xs text-muted-foreground">{a.e}</div>
                </div>
                <Badge variant="secondary">{a.r}</Badge>
              </div>
            ))}
            <Button variant="outline" size="sm" className="w-full">Invite teammate</Button>
          </Card>

          <Card title="Session">
            <Label className="text-xs">Auto-lock after (minutes)</Label>
            <Input type="number" defaultValue={15} className="h-9" />
            <Button variant="outline" size="sm" className="w-full">Sign out all admin sessions</Button>
          </Card>
        </div>
      </div>
    </div>
  );
}

function Card({ title, children, tone }: { title: string; children: React.ReactNode; tone?: "danger" }) {
  return (
    <div className="rounded-xl border border-border bg-card">
      <div className={`border-b border-border px-5 py-3 text-sm font-medium ${tone === "danger" ? "text-destructive" : ""}`}>
        {title}
      </div>
      <div className="space-y-4 p-5">{children}</div>
    </div>
  );
}

function Row({ label, hint, children }: { label: string; hint?: string; children: React.ReactNode }) {
  return (
    <div className="space-y-1.5">
      <Label className="text-xs">{label}</Label>
      {children}
      {hint && <p className="text-[11px] text-muted-foreground">{hint}</p>}
    </div>
  );
}

function Flag({ label, hint, on }: { label: string; hint: string; on?: boolean }) {
  return (
    <div className="flex items-start justify-between gap-4 rounded-md border border-border p-3">
      <div>
        <div className="text-sm">{label}</div>
        <div className="text-xs text-muted-foreground">{hint}</div>
      </div>
      <Switch defaultChecked={on} />
    </div>
  );
}
