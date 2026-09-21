import { createFileRoute, Link, Outlet, useLocation, useNavigate } from "@tanstack/react-router";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import {
  LayoutDashboard,
  Users,
  FileText,
  Plug,
  ScrollText,
  Settings as SettingsIcon,
  Shield,
  LogOut,
  Search,
  Bell,
  ChevronDown,
  PlayCircle,
  BookMarked,
} from "lucide-react";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { supabase } from "@/lib/supabase";
import { useAdminSession } from "@/hooks/use-admin-session";
import { signOut } from "@/lib/auth";

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
  { to: "/control-panel-9k3x/questions", label: "Papers", icon: FileText },
  { to: "/control-panel-9k3x/courses", label: "Courses", icon: PlayCircle },
  { to: "/control-panel-9k3x/cheatsheets", label: "Cheatsheets", icon: BookMarked },
  { to: "/control-panel-9k3x/integrations", label: "Integrations", icon: Plug },
  { to: "/control-panel-9k3x/logs", label: "Audit logs", icon: ScrollText },
  { to: "/control-panel-9k3x/settings", label: "Settings", icon: SettingsIcon },
];

function AdminShell() {
  const admin = useAdminSession();

  if (admin.loading) {
    return (
      <div className="flex min-h-screen items-center justify-center bg-background text-sm text-muted-foreground">
        Verifying admin session...
      </div>
    );
  }

  if (!admin.isAdmin) {
    return (
      <AdminAccessDenied
        message={admin.error}
        email={admin.user?.email ?? null}
        rawRole={admin.rawRole}
        onRefresh={() => void admin.reload()}
      />
    );
  }
  return <AdminLayout role={admin.role} email={admin.user?.email ?? "admin"} />;
}

function AdminAccessDenied({
  message,
  email,
  rawRole,
  onRefresh,
}: {
  message: string | null;
  email: string | null;
  rawRole: unknown;
  onRefresh: () => void;
}) {
  const navigate = useNavigate();

  async function handleSignOut() {
    await signOut();
    await navigate({ to: "/signin", replace: true });
  }

  return (
    <div className="flex min-h-screen items-center justify-center bg-background p-4">
      <div className="w-full max-w-md">
        <div className="mb-8 flex flex-col items-center gap-3 text-center">
          <div className="flex h-12 w-12 items-center justify-center rounded-xl border border-border bg-card shadow-elevated">
            <Shield className="h-5 w-5 text-accent" />
          </div>
          <div>
            <h1 className="font-display text-2xl">Restricted area</h1>
            <p className="mt-1 text-xs text-muted-foreground">
              Authorized personnel only. Roles are enforced by Supabase.
            </p>
          </div>
        </div>

        <div className="rounded-xl border border-border bg-card p-6 shadow-elevated">
          <p className="text-sm text-muted-foreground">
            {message ??
              "Sign in with an account whose Supabase app metadata role is admin, reviewer, or super_admin."}
          </p>
          <div className="mt-4 rounded-lg border border-border bg-secondary/30 p-3 text-xs">
            <div className="flex justify-between gap-3">
              <span className="text-muted-foreground">Signed-in email</span>
              <span className="max-w-52 truncate font-mono">{email ?? "No active user"}</span>
            </div>
            <div className="mt-2 flex justify-between gap-3">
              <span className="text-muted-foreground">JWT admin role</span>
              <span className="max-w-52 truncate font-mono">
                {typeof rawRole === "string" ? rawRole : "None"}
              </span>
            </div>
          </div>
          <div className="mt-5 grid grid-cols-2 gap-2">
            <Button onClick={onRefresh} variant="outline">
              Refresh role
            </Button>
            <Button onClick={() => void handleSignOut()} variant="outline">
              Sign out
            </Button>
            <Button asChild className="flex-1">
              <Link to="/signin">Sign in</Link>
            </Button>
            <Button asChild variant="outline">
              <Link to="/dashboard">Dashboard</Link>
            </Button>
          </div>
        </div>
      </div>
    </div>
  );
}

function AdminLayout({ role, email }: { role: string | null; email: string }) {
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
            <div className="text-sm font-medium">StudySpark</div>
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
                to={n.to as string}
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
              <Badge variant="secondary" className="ml-auto text-[10px]">
                {role ?? "admin"}
              </Badge>
            </div>
            <p className="mt-1 text-[10px] text-muted-foreground">Supabase enforced</p>
          </div>
        </div>
      </aside>

      {/* Main */}
      <main className="flex-1 overflow-x-hidden">
        <header className="flex h-14 items-center gap-3 border-b border-border bg-background px-6">
          <div className="relative flex-1 max-w-md">
            <Search className="pointer-events-none absolute left-3 top-1/2 h-3.5 w-3.5 -translate-y-1/2 text-muted-foreground" />
            <Input placeholder="Search users, papers, subjects..." className="h-9 pl-9 text-sm" />
          </div>
          <Button variant="ghost" size="icon" aria-label="Notifications" className="relative">
            <Bell className="h-4 w-4" />
            <span className="absolute right-2 top-2 h-1.5 w-1.5 rounded-full bg-accent" />
          </Button>
          <DropdownMenu>
            <DropdownMenuTrigger asChild>
              <button className="flex items-center gap-2 rounded-md border border-border px-2 py-1.5 text-sm hover:bg-secondary">
                <div className="flex h-6 w-6 items-center justify-center rounded-full bg-foreground text-[10px] text-background">
                  AD
                </div>
                <span className="hidden sm:inline">Admin</span>
                <ChevronDown className="h-3 w-3 text-muted-foreground" />
              </button>
            </DropdownMenuTrigger>
            <DropdownMenuContent align="end" className="w-52">
              <DropdownMenuLabel>{email}</DropdownMenuLabel>
              <DropdownMenuSeparator />
              <DropdownMenuItem onClick={() => navigate({ to: "/control-panel-9k3x/settings" })}>
                <SettingsIcon className="mr-2 h-4 w-4" /> Settings
              </DropdownMenuItem>
              <DropdownMenuItem onClick={() => navigate({ to: "/dashboard" })}>
                Return to site
              </DropdownMenuItem>
              <DropdownMenuSeparator />
              <DropdownMenuItem
                onClick={() => {
                  void signOut().then(() => navigate({ to: "/signin", replace: true }));
                }}
                className="text-destructive focus:text-destructive"
              >
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
