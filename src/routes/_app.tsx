import { createFileRoute, Link, Outlet, useLocation, useNavigate } from "@tanstack/react-router";
import { Logo } from "@/components/Logo";
import {
  LayoutDashboard,
  Library,
  GraduationCap,
  TrendingUp,
  Settings,
  Home,
  Flame,
  Trophy,
  Users,
  Bell,
  Search,
  Menu,
  Sparkles,
} from "lucide-react";
import type { ReactNode } from "react";
import { useEffect, useState } from "react";
import { Button } from "@/components/ui/button";
import {
  Sheet,
  SheetContent,
  SheetTrigger,
  SheetHeader,
  SheetTitle,
} from "@/components/ui/sheet";
import {
  CommandDialog,
  CommandEmpty,
  CommandGroup,
  CommandInput,
  CommandItem,
  CommandList,
  CommandSeparator,
} from "@/components/ui/command";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { Badge } from "@/components/ui/badge";
import { NOTIFICATIONS, PAPERS } from "@/lib/mock-data";

export const Route = createFileRoute("/_app")({
  component: AppLayout,
});

const NAV = [
  { to: "/dashboard", label: "Dashboard", icon: LayoutDashboard },
  { to: "/library", label: "Past papers", icon: Library },
  { to: "/quiz", label: "Quiz mode", icon: GraduationCap },
  { to: "/progress", label: "Progress", icon: TrendingUp },
  { to: "/achievements", label: "Achievements", icon: Trophy },
  { to: "/leaderboard", label: "Leaderboard", icon: Users },
] as const;

function NavItem({
  to,
  icon: Icon,
  label,
  active,
  onClick,
}: {
  to: string;
  icon: typeof LayoutDashboard;
  label: string;
  active: boolean;
  onClick?: () => void;
}) {
  return (
    <Link
      to={to}
      onClick={onClick}
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

function SidebarContent({ onNavigate }: { onNavigate?: () => void }) {
  const location = useLocation();
  const unread = NOTIFICATIONS.filter((n) => !n.read).length;
  return (
    <>
      <div className="px-5 py-5">
        <Logo />
      </div>
      <nav className="flex-1 space-y-0.5 overflow-y-auto px-3">
        {NAV.map((n) => (
          <NavItem
            key={n.to}
            to={n.to}
            icon={n.icon}
            label={n.label}
            active={location.pathname.startsWith(n.to)}
            onClick={onNavigate}
          />
        ))}
        <div className="pt-2">
          <NavItem
            to="/notifications"
            icon={Bell}
            label={unread > 0 ? `Notifications (${unread})` : "Notifications"}
            active={location.pathname.startsWith("/notifications")}
            onClick={onNavigate}
          />
          <NavItem
            to="/settings"
            icon={Settings}
            label="Settings"
            active={location.pathname.startsWith("/settings")}
            onClick={onNavigate}
          />
        </div>
      </nav>

      <Link
        to="/streak"
        onClick={onNavigate}
        className="m-3 block rounded-lg border border-border bg-card p-4 transition-colors hover:bg-sidebar-accent/40"
      >
        <div className="flex items-center gap-2">
          <Flame className="h-4 w-4 text-accent" />
          <span className="text-sm font-medium">14 day streak</span>
        </div>
        <p className="mt-1.5 text-xs text-muted-foreground">
          Keep it alive — study at least one quiz today.
        </p>
      </Link>

      <div className="border-t border-sidebar-border p-3">
        <div className="flex items-center gap-3 rounded-md px-2 py-2">
          <div className="flex h-9 w-9 items-center justify-center rounded-full bg-foreground font-display text-sm text-background">
            A
          </div>
          <div className="min-w-0 flex-1">
            <div className="truncate text-sm font-medium">Akua Mensah</div>
            <div className="truncate text-xs text-muted-foreground">Free plan</div>
          </div>
          <Link to="/pricing" onClick={onNavigate}>
            <Sparkles className="h-4 w-4 text-accent" />
          </Link>
        </div>
        <div className="mt-1 space-y-0.5">
          <Link
            to="/"
            onClick={onNavigate}
            className="flex w-full items-center gap-2.5 rounded-md px-3 py-2 text-sm text-muted-foreground hover:bg-sidebar-accent hover:text-foreground"
          >
            <Home className="h-4 w-4" />
            Back to home
          </Link>
        </div>
      </div>
    </>
  );
}

function CommandMenu({ open, setOpen }: { open: boolean; setOpen: (v: boolean) => void }) {
  const navigate = useNavigate();
  const go = (path: string) => {
    setOpen(false);
    // Small timeout so dialog close animation doesn't fight navigation
    setTimeout(() => navigate({ to: path }), 0);
  };
  return (
    <CommandDialog open={open} onOpenChange={setOpen}>
      <CommandInput placeholder="Search papers, subjects, or pages..." />
      <CommandList>
        <CommandEmpty>No results found.</CommandEmpty>
        <CommandGroup heading="Pages">
          {NAV.map((n) => (
            <CommandItem key={n.to} onSelect={() => go(n.to)}>
              <n.icon className="mr-2 h-4 w-4" />
              {n.label}
            </CommandItem>
          ))}
          <CommandItem onSelect={() => go("/settings")}>
            <Settings className="mr-2 h-4 w-4" /> Settings
          </CommandItem>
          <CommandItem onSelect={() => go("/pricing")}>
            <Sparkles className="mr-2 h-4 w-4" /> Upgrade to Premium
          </CommandItem>
        </CommandGroup>
        <CommandSeparator />
        <CommandGroup heading="Past papers">
          {PAPERS.slice(0, 8).map((p) => (
            <CommandItem
              key={p.id}
              onSelect={() => go(`/paper/${p.id}`)}
              value={`${p.title} ${p.subject} ${p.examBoard}`}
            >
              <Library className="mr-2 h-4 w-4" />
              <span className="flex-1">{p.title}</span>
              <span className="text-xs text-muted-foreground">{p.examBoard}</span>
            </CommandItem>
          ))}
        </CommandGroup>
      </CommandList>
    </CommandDialog>
  );
}

function AppLayout() {
  const [mobileOpen, setMobileOpen] = useState(false);
  const [cmdOpen, setCmdOpen] = useState(false);
  const location = useLocation();
  const unread = NOTIFICATIONS.filter((n) => !n.read).length;

  useEffect(() => {
    const handler = (e: KeyboardEvent) => {
      if ((e.metaKey || e.ctrlKey) && e.key === "k") {
        e.preventDefault();
        setCmdOpen((o) => !o);
      }
    };
    window.addEventListener("keydown", handler);
    return () => window.removeEventListener("keydown", handler);
  }, []);

  // Mobile bottom tab bar (compressed to 5 items)
  const mobileNav = NAV.slice(0, 4);

  return (
    <div className="flex min-h-screen bg-background">
      {/* Desktop sidebar */}
      <aside className="hidden w-64 shrink-0 flex-col border-r border-sidebar-border bg-sidebar md:flex">
        <SidebarContent />
      </aside>

      {/* Mobile top bar */}
      <div className="fixed inset-x-0 top-0 z-30 flex h-14 items-center justify-between border-b border-border bg-background/90 px-4 backdrop-blur md:hidden">
        <Sheet open={mobileOpen} onOpenChange={setMobileOpen}>
          <SheetTrigger asChild>
            <Button variant="ghost" size="icon" aria-label="Open menu">
              <Menu className="h-5 w-5" />
            </Button>
          </SheetTrigger>
          <SheetContent side="left" className="flex w-72 flex-col p-0">
            <SheetHeader className="sr-only">
              <SheetTitle>Navigation</SheetTitle>
            </SheetHeader>
            <SidebarContent onNavigate={() => setMobileOpen(false)} />
          </SheetContent>
        </Sheet>
        <Logo />
        <div className="flex items-center gap-1">
          <Button variant="ghost" size="icon" aria-label="Search" onClick={() => setCmdOpen(true)}>
            <Search className="h-5 w-5" />
          </Button>
          <Link to="/notifications" aria-label="Notifications" className="relative inline-flex h-9 w-9 items-center justify-center rounded-md hover:bg-secondary">
            <Bell className="h-5 w-5" />
            {unread > 0 && (
              <span className="absolute right-1.5 top-1.5 h-2 w-2 rounded-full bg-accent" />
            )}
          </Link>
        </div>
      </div>

      <main className="flex-1 overflow-x-hidden pt-14 pb-16 md:pt-0 md:pb-0">
        {/* Desktop top utility bar */}
        <div className="hidden h-12 items-center justify-end gap-2 border-b border-border px-6 md:flex md:px-10">
          <button
            onClick={() => setCmdOpen(true)}
            className="flex h-9 items-center gap-2 rounded-md border border-border bg-card px-3 text-xs text-muted-foreground transition-colors hover:text-foreground"
          >
            <Search className="h-3.5 w-3.5" />
            Search...
            <kbd className="ml-3 rounded border border-border bg-secondary px-1.5 py-0.5 font-mono text-[10px]">⌘K</kbd>
          </button>
          <DropdownMenu>
            <DropdownMenuTrigger asChild>
              <button
                aria-label="Notifications"
                className="relative inline-flex h-9 w-9 items-center justify-center rounded-md hover:bg-secondary"
              >
                <Bell className="h-4 w-4" />
                {unread > 0 && (
                  <span className="absolute right-2 top-2 h-2 w-2 rounded-full bg-accent" />
                )}
              </button>
            </DropdownMenuTrigger>
            <DropdownMenuContent align="end" className="w-80 p-0">
              <div className="flex items-center justify-between border-b border-border px-4 py-3">
                <span className="text-sm font-medium">Notifications</span>
                {unread > 0 && <Badge variant="secondary">{unread} new</Badge>}
              </div>
              <div className="max-h-80 overflow-y-auto">
                {NOTIFICATIONS.slice(0, 5).map((n) => (
                  <div
                    key={n.id}
                    className={`border-b border-border px-4 py-3 text-sm last:border-0 ${
                      !n.read ? "bg-secondary/40" : ""
                    }`}
                  >
                    <div className="font-medium">{n.title}</div>
                    <p className="mt-0.5 text-xs text-muted-foreground line-clamp-2">{n.body}</p>
                    <div className="mt-1 text-[11px] text-muted-foreground">{n.time}</div>
                  </div>
                ))}
              </div>
              <Link
                to="/notifications"
                className="block border-t border-border px-4 py-2.5 text-center text-xs text-muted-foreground hover:text-foreground"
              >
                View all notifications
              </Link>
            </DropdownMenuContent>
          </DropdownMenu>
        </div>

        <Outlet />
      </main>

      {/* Mobile bottom tab bar */}
      <nav className="fixed inset-x-0 bottom-0 z-30 flex h-16 items-center justify-around border-t border-border bg-background/95 backdrop-blur md:hidden">
        {mobileNav.map((n) => {
          const active = location.pathname.startsWith(n.to);
          return (
            <Link
              key={n.to}
              to={n.to}
              className={`flex flex-1 flex-col items-center gap-1 py-2 text-[10px] ${
                active ? "text-foreground" : "text-muted-foreground"
              }`}
            >
              <n.icon className="h-5 w-5" />
              {n.label}
            </Link>
          );
        })}
      </nav>

      <CommandMenu open={cmdOpen} setOpen={setCmdOpen} />
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
