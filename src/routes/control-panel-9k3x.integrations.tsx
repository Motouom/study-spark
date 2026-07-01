import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Switch } from "@/components/ui/switch";
import {
  CheckCircle2,
  AlertTriangle,
  Copy,
  Eye,
  EyeOff,
  RefreshCw,
  ExternalLink,
  Database,
  Flame,
  CreditCard,
  Mail,
  BarChart3,
} from "lucide-react";
import { useState } from "react";

export const Route = createFileRoute("/control-panel-9k3x/integrations")({
  component: Integrations,
});

function Integrations() {
  return (
    <div className="p-6 md:p-8">
      <div className="mb-6">
        <h1 className="font-display text-3xl">Integrations</h1>
        <p className="mt-1 text-sm text-muted-foreground">Backend services, secrets, and third-party keys. All values are mocked.</p>
      </div>

      <div className="grid grid-cols-1 gap-5 lg:grid-cols-2">
        <FirebasePanel />
        <SupabasePanel />
        <StripePanel />
        <ResendPanel />
        <PostHogPanel />
      </div>
    </div>
  );
}

function Panel({
  icon: Icon,
  name,
  status,
  tint,
  children,
}: {
  icon: typeof Database;
  name: string;
  status: "connected" | "degraded" | "disconnected";
  tint: string;
  children: React.ReactNode;
}) {
  return (
    <div className="rounded-xl border border-border bg-card">
      <div className="flex items-center justify-between border-b border-border p-5">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg" style={{ background: tint }}>
            <Icon className="h-5 w-5 text-white" />
          </div>
          <div>
            <div className="text-sm font-medium">{name}</div>
            <div className="mt-0.5 flex items-center gap-1.5 text-xs">
              {status === "connected" ? (
                <><CheckCircle2 className="h-3 w-3 text-success" /><span className="text-success">Connected</span></>
              ) : status === "degraded" ? (
                <><AlertTriangle className="h-3 w-3 text-warning" /><span className="text-warning">Degraded</span></>
              ) : (
                <><AlertTriangle className="h-3 w-3 text-destructive" /><span className="text-destructive">Disconnected</span></>
              )}
            </div>
          </div>
        </div>
        <Button variant="outline" size="sm"><RefreshCw className="mr-1.5 h-3.5 w-3.5" />Test</Button>
      </div>
      <div className="space-y-4 p-5">{children}</div>
    </div>
  );
}

function Secret({ label, value }: { label: string; value: string }) {
  const [show, setShow] = useState(false);
  const [copied, setCopied] = useState(false);
  return (
    <div className="space-y-1.5">
      <Label className="text-xs">{label}</Label>
      <div className="flex gap-1">
        <div className="flex-1 rounded-md border border-border bg-secondary/40 px-3 py-2 font-mono text-xs">
          {show ? value : "•".repeat(Math.min(32, value.length))}
        </div>
        <Button variant="outline" size="icon" className="h-9 w-9" onClick={() => setShow((s) => !s)} aria-label="Toggle visibility">
          {show ? <EyeOff className="h-3.5 w-3.5" /> : <Eye className="h-3.5 w-3.5" />}
        </Button>
        <Button
          variant="outline"
          size="icon"
          className="h-9 w-9"
          onClick={() => {
            navigator.clipboard?.writeText(value);
            setCopied(true);
            setTimeout(() => setCopied(false), 1200);
          }}
          aria-label="Copy"
        >
          <Copy className="h-3.5 w-3.5" />
        </Button>
      </div>
      {copied && <span className="text-[10px] text-success">Copied</span>}
    </div>
  );
}

function Field({ label, value }: { label: string; value: string }) {
  return (
    <div className="space-y-1.5">
      <Label className="text-xs">{label}</Label>
      <Input value={value} readOnly className="h-9 font-mono text-xs" />
    </div>
  );
}

function Toggle({ label, hint, defaultChecked = true }: { label: string; hint: string; defaultChecked?: boolean }) {
  return (
    <div className="flex items-start justify-between gap-4 rounded-md border border-border p-3">
      <div>
        <div className="text-sm">{label}</div>
        <div className="text-xs text-muted-foreground">{hint}</div>
      </div>
      <Switch defaultChecked={defaultChecked} />
    </div>
  );
}

function FirebasePanel() {
  return (
    <Panel icon={Flame} name="Firebase" status="connected" tint="#f59e0b">
      <div className="grid grid-cols-2 gap-3">
        <Field label="Project ID" value="studyflow-prod-9k3x" />
        <Field label="Region" value="europe-west1" />
      </div>
      <Field label="Auth domain" value="studyflow-prod-9k3x.firebaseapp.com" />
      <Secret label="Web API key" value="AIzaSyD-3f9K2mL7pQ8vN4jX1wR6bT5hY2kU8oZ" />
      <Secret label="App ID" value="1:840293712:web:a3f7e29d4b8c1e6f9d2a4b" />
      <Secret label="Messaging sender ID" value="840293712445" />
      <div className="space-y-2">
        <Toggle label="Email / password auth" hint="Native email + password sign-in" />
        <Toggle label="Google OAuth" hint="Sign in with Google enabled" />
        <Toggle label="Apple sign-in" hint="Requires paid Apple developer account" defaultChecked={false} />
        <Toggle label="Cloud Messaging (push)" hint="Streak and reminder push notifications" />
      </div>
      <Button variant="outline" size="sm" className="w-full">
        Open Firebase console <ExternalLink className="ml-1.5 h-3.5 w-3.5" />
      </Button>
    </Panel>
  );
}

function SupabasePanel() {
  return (
    <Panel icon={Database} name="Supabase" status="connected" tint="#10b981">
      <div className="grid grid-cols-2 gap-3">
        <Field label="Project ref" value="wkfdmlq2yzxjptahnbvc" />
        <Field label="Region" value="eu-west-2 (London)" />
      </div>
      <Field label="Project URL" value="https://wkfdmlq2yzxjptahnbvc.supabase.co" />
      <Secret label="anon public key" value="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsInJlZiI6Indr" />
      <Secret label="service_role key (server only)" value="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoic2VydmljZV9yb2xl" />
      <Secret label="Database URL" value="postgresql://postgres:•••@db.wkfdmlq2yzxjptahnbvc.supabase.co:5432/postgres" />
      <div className="rounded-md border border-border bg-secondary/40 p-3">
        <div className="mb-2 text-xs font-medium">Tables (12)</div>
        <div className="grid grid-cols-2 gap-1 font-mono text-[11px] text-muted-foreground">
          <span>users</span><span>subjects</span>
          <span>papers</span><span>quiz_sessions</span>
          <span>quiz_answers</span><span>bookmarks</span>
          <span>streaks</span><span>achievements</span>
          <span>subscriptions</span><span>devices</span>
          <span>notifications</span><span>audit_logs</span>
        </div>
      </div>
      <Toggle label="Row-level security" hint="RLS enforced on all public tables" />
      <Toggle label="Realtime subscriptions" hint="Live updates for leaderboards & chat" />
      <Button variant="outline" size="sm" className="w-full">
        Open Supabase dashboard <ExternalLink className="ml-1.5 h-3.5 w-3.5" />
      </Button>
    </Panel>
  );
}

function StripePanel() {
  return (
    <Panel icon={CreditCard} name="Stripe" status="degraded" tint="#635bff">
      <div className="grid grid-cols-2 gap-3">
        <Field label="Account" value="acct_1PxK2mLBw9d4T3vN" />
        <Field label="Mode" value="Live" />
      </div>
      <Secret label="Publishable key" value="pk_live_51PxK2mLBw9d4T3vNhY2kU8oZa3f7e29d4b8c1e6f9d2a4b7c" />
      <Secret label="Secret key" value="sk_live_51PxK2mLBw9d4T3vN••••••••" />
      <Secret label="Webhook signing secret" value="whsec_9d2a4b7c1e6f8a3d5b2c9e4f6a1b3d5e7c9f" />
      <div className="rounded-md border border-warning/30 bg-warning/10 p-3 text-xs">
        <div className="flex items-center gap-1.5 font-medium text-warning">
          <AlertTriangle className="h-3.5 w-3.5" /> Webhook delivery slow
        </div>
        <p className="mt-1 text-muted-foreground">3 events queued · average delivery 8.2s (target &lt; 2s)</p>
      </div>
    </Panel>
  );
}

function ResendPanel() {
  return (
    <Panel icon={Mail} name="Resend" status="connected" tint="#000000">
      <Field label="From address" value="StudyFlow <hello@studyflow.io>" />
      <Secret label="API key" value="re_9d2a4b7c_1e6f8a3d5b2c9e4f6a1b3d5e7c9f" />
      <div className="grid grid-cols-3 gap-2 text-center">
        <div className="rounded-md border border-border p-2">
          <div className="font-display text-lg">12,842</div>
          <div className="text-[10px] text-muted-foreground">sent · 24h</div>
        </div>
        <div className="rounded-md border border-border p-2">
          <div className="font-display text-lg">99.4%</div>
          <div className="text-[10px] text-muted-foreground">delivered</div>
        </div>
        <div className="rounded-md border border-border p-2">
          <div className="font-display text-lg">0.2%</div>
          <div className="text-[10px] text-muted-foreground">bounced</div>
        </div>
      </div>
    </Panel>
  );
}

function PostHogPanel() {
  return (
    <Panel icon={BarChart3} name="PostHog" status="connected" tint="#1d4aff">
      <Field label="Host" value="https://eu.posthog.com" />
      <Secret label="Project API key" value="phc_9d2a4b7c1e6f8a3d5b2c9e4f6a1b3d5e7c9f8a2b" />
      <Toggle label="Autocapture events" hint="Track clicks, form fills, pageviews" />
      <Toggle label="Session replay" hint="1% sampling · GDPR mask on inputs" />
      <Toggle label="Feature flags" hint="14 flags active" />
      <div className="flex items-center justify-between text-xs">
        <span className="text-muted-foreground">Events today</span>
        <Badge variant="secondary" className="font-mono">248,102</Badge>
      </div>
    </Panel>
  );
}
