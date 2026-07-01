import { createFileRoute, Link, Outlet, useLocation, useNavigate } from "@tanstack/react-router";
import { useEffect, useState } from "react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Badge } from "@/components/ui/badge";
import {
  LayoutDashboard,
  Users,
  FileText,
  GraduationCap,
  Plug,
  ScrollText,
  Settings as SettingsIcon,
  Shield,
  LogOut,
  Search,
  Bell,
  ChevronDown,
} from "lucide-react";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";

const SESSION_KEY = "sf_admin_session_v1";

export const Route = createFileRoute("/control-panel-9k3x")({
  head: () => ({
    meta: [
      { title: "Admin" },
      { name: "description", content: "Restricted." },
      { name: "robots", content: "noindex,nofollow,noarchive" },
    ],
  }),
  component: AdminShell,
});

const NAV: { to: string; label: string; icon: typeof LayoutDashboard; exact?: boolean }[] = [
  { to: "/control-panel-9k3x", label: "Overview", icon: LayoutDashboard, exact: true },
  { to: "/control-panel-9k3x/users", label: "Users", icon: Users },
  { to: "/control-panel-9k3x/papers", label: "Past papers", icon: FileText },
  { to: "/control-panel-9k3x/quizzes", label: "Quizzes", icon: GraduationCap },
  { to: "/control-panel-9k3x/integrations", label: "Integrations", icon: Plug },
  { to: "/control-panel-9k3x/logs", label: "Audit logs", icon: ScrollText },
  { to: "/control-panel-9k3x/settings", label: "Settings", icon: SettingsIcon },
];

function AdminShell() {
  const [authed, setAuthed] = useState(false);
  const [ready, setReady] = useState(false);

  useEffect(() => {
    setAuthed(sessionStorage.getItem(SESSION_KEY) === "1");
    setReady(true);
  }, []);

  if (!ready) return null;
  if (!authed) return <AdminLogin onAuthed={() => setAuthed(true)} />;
  return <AdminLayout onLogout={() => { sessionStorage.removeItem(SESSION_KEY); setAuthed(false); }} />;
}

function AdminLogin({ onAuthed }: { onAuthed: () => void }) {
  const [email, setEmail] = useState("admin@studyflow.io");
  const [password, setPassword] = useState("");
  const [otp, setOtp] = useState("");
  const [step, setStep] = useState<"creds" | "mfa">("creds");
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  function submitCreds(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    if (password.length < 6) return setError("Invalid credentials.");
    setLoading(true);
    setTimeout(() => {
      setLoading(false);
      setStep("mfa");
    }, 600);
  }

  function submitMfa(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    if (otp.length !== 6) return setError("Enter the 6-digit code.");
    setLoading(true);
    setTimeout(() => {
      sessionStorage.setItem(SESSION_KEY, "1");
      onAuthed();
    }, 500);
  }

  return (
    <div className="flex min-h-screen items-center justify-center bg-gradient-to-br from-background via-background to-secondary/30 p-4">
      <div className="w-full max-w-md">
        <div className="mb-8 flex flex-col items-center gap-3 text-center">
          <div className="flex h-12 w-12 items-center justify-center rounded-xl border border-border bg-card shadow-elevated">
            <Shield className="h-5 w-5 text-accent" />
          </div>
          <div>
            <h1 className="font-display text-2xl">Restricted area</h1>
            <p className="mt-1 text-xs text-muted-foreground">
              Authorized personnel only. All activity is logged.
            </p>
          </div>
        </div>

        <div className="rounded-xl border border-border bg-card p-6 shadow-elevated">
          {step === "creds" ? (
            <form onSubmit={submitCreds} className="space-y-4">
              <div className="space-y-1.5">
                <Label htmlFor="email">Email</Label>
                <Input id="email" type="email" value={email} onChange={(e) => setEmail(e.target.value)} autoComplete="username" />
              </div>
              <div className="space-y-1.5">
                <Label htmlFor="password">Password</Label>
                <Input
                  id="password"
                  type="password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  autoComplete="current-password"
                  placeholder="••••••••"
                />
              </div>
              {error && <p className="text-xs text-destructive">{error}</p>}
              <Button type="submit" className="w-full" disabled={loading}>
                {loading ? "Verifying..." : "Continue"}
              </Button>
              <p className="text-center text-[11px] text-muted-foreground">
                Hint (mock): any password ≥ 6 chars, then any 6-digit code.
              </p>
            </form>
          ) : (
            <form onSubmit={submitMfa} className="space-y-4">
              <div className="space-y-1.5">
                <Label htmlFor="otp">Two-factor code</Label>
                <Input
                  id="otp"
                  inputMode="numeric"
                  maxLength={6}
                  value={otp}
                  onChange={(e) => setOtp(e.target.value.replace(/\D/g, ""))}
                  placeholder="123456"
                  className="text-center font-mono text-lg tracking-widest"
                />
                <p className="text-[11px] text-muted-foreground">
                  A code was sent to your authenticator app.
                </p>
              </div>
              {error && <p className="text-xs text-destructive">{error}</p>}
              <Button type="submit" className="w-full" disabled={loading}>
                {loading ? "Signing in..." : "Sign in"}
              </Button>
              <button
                type="button"
                onClick={() => setStep("creds")}
                className="w-full text-center text-[11px] text-muted-foreground hover:text-foreground"
              >
                ← Use a different account
              </button>
            </form>
          )}
        </div>

        <p className="mt-6 text-center text-[11px] text-muted-foreground">
          Not looking for admin? <Link to="/" className="underline hover:text-foreground">Return home</Link>
        </p>
      </div>
    </div>
  );
}

function AdminLayout({ onLogout }: { onLogout: () => void }) {
  const location = useLocation();
  const navigate = useNavigate();

  return (
    <div className="flex min-h-screen bg-background">
      {/* Sidebar */}
      <aside className="hidden w-60 shrink-0 flex-col border-r border-border bg-sidebar md:flex">
        <div className="flex items-center gap-2 px-5 py-5">
          <div className="flex h-8 w-8 items-center justify-center rounded-md bg-foreground text-background">
            <Shield className="h-4 w-4" />
          </div>
          <div>
            <div className="text-sm font-medium">StudyFlow</div>
            <div className="text-[10px] uppercase tracking-widest text-muted-foreground">Admin</div>
          </div>
        </div>
        <nav className="flex-1 space-y-0.5 px-3">
          {NAV.map((n) => {
            const active = n.exact
              ? location.pathname === n.to
              : location.pathname.startsWith(n.to);
            return (
              <Link
                key={n.to}
                to={n.to}
                className={`flex items-center gap-2.5 rounded-md px-3 py-2 text-sm ${
                  active
                    ? "bg-sidebar-accent font-medium text-sidebar-accent-foreground"
                    : "text-muted-foreground hover:bg-sidebar-accent/60 hover:text-foreground"
                }`}
              >
                <n.icon className="h-4 w-4" />
                {n.label}
              </Link>
            );
          })}
        </nav>
        <div className="border-t border-sidebar-border p-3">
          <div className="rounded-md border border-border bg-card px-3 py-2">
            <div className="flex items-center gap-2">
              <span className="h-2 w-2 rounded-full bg-success" />
              <span className="text-xs">Production</span>
              <Badge variant="secondary" className="ml-auto text-[10px]">v2.4.0</Badge>
            </div>
            <p className="mt-1 text-[10px] text-muted-foreground">All systems normal</p>
          </div>
        </div>
      </aside>

      {/* Main */}
      <main className="flex-1 overflow-x-hidden">
        <header className="flex h-14 items-center gap-3 border-b border-border bg-background px-6">
          <div className="relative flex-1 max-w-md">
            <Search className="pointer-events-none absolute left-3 top-1/2 h-3.5 w-3.5 -translate-y-1/2 text-muted-foreground" />
            <Input placeholder="Search users, papers, transactions..." className="h-9 pl-9 text-sm" />
          </div>
          <Button variant="ghost" size="icon" aria-label="Notifications" className="relative">
            <Bell className="h-4 w-4" />
            <span className="absolute right-2 top-2 h-1.5 w-1.5 rounded-full bg-accent" />
          </Button>
          <DropdownMenu>
            <DropdownMenuTrigger asChild>
              <button className="flex items-center gap-2 rounded-md border border-border px-2 py-1.5 text-sm hover:bg-secondary">
                <div className="flex h-6 w-6 items-center justify-center rounded-full bg-foreground text-[10px] text-background">AD</div>
                <span className="hidden sm:inline">Admin</span>
                <ChevronDown className="h-3 w-3 text-muted-foreground" />
              </button>
            </DropdownMenuTrigger>
            <DropdownMenuContent align="end" className="w-52">
              <DropdownMenuLabel>admin@studyflow.io</DropdownMenuLabel>
              <DropdownMenuSeparator />
              <DropdownMenuItem onClick={() => navigate({ to: "/control-panel-9k3x/settings" })}>
                <SettingsIcon className="mr-2 h-4 w-4" /> Settings
              </DropdownMenuItem>
              <DropdownMenuItem onClick={() => navigate({ to: "/" })}>
                Return to site
              </DropdownMenuItem>
              <DropdownMenuSeparator />
              <DropdownMenuItem onClick={onLogout} className="text-destructive focus:text-destructive">
                <LogOut className="mr-2 h-4 w-4" /> Sign out
              </DropdownMenuItem>
            </DropdownMenuContent>
          </DropdownMenu>
        </header>

        <Outlet />
      </main>
    </div>
  );
}
