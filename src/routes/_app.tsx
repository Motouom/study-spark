import { createFileRoute, Link, Outlet, useLocation } from "@tanstack/react-router";
import { Logo } from "@/components/Logo";
import {
  LayoutDashboard,
  Library,
  GraduationCap,
  TrendingUp,
  Settings,
  Home,
  Flame,
} from "lucide-react";
import type { ReactNode } from "react";

export const Route = createFileRoute("/_app")({
  component: AppLayout,
});

const NAV = [
  { to: "/dashboard", label: "Dashboard", icon: LayoutDashboard },
  { to: "/library", label: "Past papers", icon: Library },
  { to: "/quiz", label: "Quiz mode", icon: GraduationCap },
  { to: "/progress", label: "Progress", icon: TrendingUp },
] as const;

function NavItem({
  to,
  icon: Icon,
  label,
  active,
}: {
  to: string;
  icon: typeof LayoutDashboard;
  label: string;
  active: boolean;
}) {
  return (
    <Link
      to={to}
      className={`flex items-center gap-2.5 rounded-md px-3 py-2 text-sm transition-colors ${
        active
          ? "bg-sidebar-accent text-sidebar-accent-foreground font-medium"
          : "text-muted-foreground hover:bg-sidebar-accent/60 hover:text-foreground"
      }`}
    >
      <Icon className="h-4 w-4" />
      {label}
    </Link>
  );
}

function AppLayout() {
  const location = useLocation();
  return (
    <div className="flex min-h-screen bg-background">
      <aside className="hidden w-64 shrink-0 flex-col border-r border-sidebar-border bg-sidebar md:flex">
        <div className="px-5 py-5">
          <Logo />
        </div>
        <nav className="flex-1 space-y-0.5 px-3">
          {NAV.map((n) => (
            <NavItem
              key={n.to}
              to={n.to}
              icon={n.icon}
              label={n.label}
              active={location.pathname.startsWith(n.to)}
            />
          ))}
        </nav>

        <div className="m-3 rounded-lg border border-border bg-card p-4">
          <div className="flex items-center gap-2">
            <Flame className="h-4 w-4 text-accent" />
            <span className="text-sm font-medium">14 day streak</span>
          </div>
          <p className="mt-1.5 text-xs text-muted-foreground">
            Keep it alive — study at least one quiz today.
          </p>
        </div>

        <div className="border-t border-sidebar-border p-3">
          <div className="flex items-center gap-3 rounded-md px-2 py-2">
            <div className="flex h-9 w-9 items-center justify-center rounded-full bg-foreground font-display text-sm text-background">
              A
            </div>
            <div className="min-w-0 flex-1">
              <div className="truncate text-sm font-medium">Akua Mensah</div>
              <div className="truncate text-xs text-muted-foreground">Free plan</div>
            </div>
          </div>
          <div className="mt-1 space-y-0.5">
            <button className="flex w-full items-center gap-2.5 rounded-md px-3 py-2 text-sm text-muted-foreground hover:bg-sidebar-accent hover:text-foreground">
              <Settings className="h-4 w-4" />
              Settings
            </button>
            <Link
              to="/"
              className="flex w-full items-center gap-2.5 rounded-md px-3 py-2 text-sm text-muted-foreground hover:bg-sidebar-accent hover:text-foreground"
            >
              <Home className="h-4 w-4" />
              Back to home
            </Link>
          </div>
        </div>
      </aside>

      <main className="flex-1 overflow-x-hidden">
        <Outlet />
      </main>
    </div>
  );
}

export function PageHeader({
  title,
  description,
  children,
}: {
  title: string;
  description?: string;
  children?: ReactNode;
}) {
  return (
    <div className="border-b border-border bg-background px-6 py-6 md:px-10 md:py-8">
      <div className="flex flex-col gap-4 md:flex-row md:items-end md:justify-between">
        <div>
          <h1 className="font-display text-3xl text-foreground md:text-4xl">{title}</h1>
          {description && <p className="mt-1.5 text-sm text-muted-foreground">{description}</p>}
        </div>
        {children}
      </div>
    </div>
  );
}
