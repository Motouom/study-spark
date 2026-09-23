import { createFileRoute, Link, Outlet, useLocation, useNavigate } from "@tanstack/react-router";
import { Logo } from "@/components/Logo";
import { ThemeToggle } from "@/components/ThemeToggle";
import {
  LayoutDashboard,
  Library,
  Settings,
  Flame,
  Users,
  Bell,
  Search,
  Menu,
  Sparkles,
  ShieldCheck,
  Brain,
  PlayCircle,
  BookMarked,
  LifeBuoy,
} from "lucide-react";
import type { ReactNode } from "react";
import { lazy, Suspense, useEffect, useState } from "react";
import { Button } from "@/components/ui/button";
import { Sheet, SheetContent, SheetTrigger, SheetHeader, SheetTitle } from "@/components/ui/sheet";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { Badge } from "@/components/ui/badge";
import type { StudentProfile } from "@/lib/study-reference-data";
import { supabaseConfigured } from "@/lib/supabase";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useLearnerNotifications } from "@/hooks/use-learner-notifications";
import { useAdminSession } from "@/hooks/use-admin-session";
import { useUnifiedStreak } from "@/hooks/use-unified-streak";
import { NAV } from "@/lib/app-nav";

import { isPremiumActive } from "@/lib/premium";
import { useI18n, useSyncLocaleFromProfile } from "@/lib/i18n";

export const Route = createFileRoute("/_app")({
  component: AppLayout,
});

const CommandMenu = lazy(() => import("@/components/CommandMenu"));

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
      className={`flex min-h-10 items-center gap-2.5 rounded-md px-3 py-2 text-sm transition-colors ${
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

function SidebarContent({
  onNavigate,
  profile,
  displayName,
  unreadCount,
  isAdmin,
}: {
  onNavigate?: () => void;
  profile: StudentProfile | null;
  displayName?: string | null;
  unreadCount: number;
  isAdmin: boolean;
}) {
  const location = useLocation();
  const navigate = useNavigate();
  const { t } = useI18n();
  const { currentStreak } = useUnifiedStreak();

  const shownName = displayName ?? profile?.name ?? "Student";
  const initials = shownName.slice(0, 1).toUpperCase();
  const premium = isPremiumActive(profile);

  return (
    <>
      <div className="px-5 py-5">
        <Logo to="/dashboard" />
      </div>
      <nav className="flex-1 space-y-0.5 overflow-y-auto overscroll-contain px-3">
        {NAV.map((n) => (
          <NavItem
            key={n.to}
            to={n.to}
            icon={n.icon}
            label={t(n.labelKey)}
            active={location.pathname.startsWith(n.to)}
            onClick={onNavigate}
          />
        ))}
        <div className="pt-2">
          <NavItem
            to="/search"
            icon={Search}
            label={t("common.advancedSearch")}
            active={location.pathname.startsWith("/search")}
            onClick={onNavigate}
          />
          <NavItem
            to="/notifications"
            icon={Bell}
            label={
              unreadCount > 0
                ? `${t("common.notifications")} (${unreadCount})`
                : t("common.notifications")
            }
            active={location.pathname.startsWith("/notifications")}
            onClick={onNavigate}
          />
          {premium && (
            <NavItem
              to="/streak"
              icon={Flame}
              label={t("app.streak")}
              active={location.pathname.startsWith("/streak")}
              onClick={onNavigate}
            />
          )}
          <NavItem
            to="/support"
            icon={LifeBuoy}
            label={t("common.support")}
            active={location.pathname.startsWith("/support")}
            onClick={onNavigate}
          />
          <NavItem
            to="/settings"
            icon={Settings}
            label={t("common.settings")}
            active={location.pathname.startsWith("/settings")}
            onClick={onNavigate}
          />
          {isAdmin && (
            <NavItem
              to="/control-panel-9k3x"
              icon={ShieldCheck}
              label={t("app.adminPanel")}
              active={location.pathname.startsWith("/control-panel-9k3x")}
              onClick={onNavigate}
            />
          )}
        </div>
      </nav>

      <div className="border-t border-sidebar-border p-3">
        <div className="flex items-center gap-3 rounded-md px-2 py-2">
          <div className="flex h-9 w-9 items-center justify-center rounded-full bg-foreground font-display text-sm text-background">
            {initials}
          </div>
          <div className="min-w-0 flex-1">
            <div className="truncate text-sm font-medium">{shownName}</div>
          </div>
          <Link
            to="/pricing"
            onClick={onNavigate}
            className="inline-flex items-center gap-1 rounded-full bg-secondary px-2 py-1 text-[10px] font-medium"
          >
            <Sparkles className="h-3.5 w-3.5 text-accent" />
            {isPremiumActive(profile) ? "Premium" : "Free"}
          </Link>
        </div>
        {/* Theme toggle */}
        <div className="mt-2">
          <ThemeToggle />
        </div>
      </div>
    </>
  );
}

function AppLayout() {
  const { t } = useI18n();
  const { user, loaded, profile: savedProfile, profileError, displayName } = useStudyProfile();
  const profile = savedProfile;
  useSyncLocaleFromProfile(profile?.language);
  const [mobileOpen, setMobileOpen] = useState(false);
  const [cmdOpen, setCmdOpen] = useState(false);
  const location = useLocation();
  const navigate = useNavigate();
  const { notifications, unreadCount, markAsRead } = useLearnerNotifications();
  const admin = useAdminSession();
  const showAdminLink = admin.isAdmin;

  const premiumExpiringDays =
    profile?.plan === "premium" && profile.premiumUntil
      ? Math.ceil((new Date(profile.premiumUntil).getTime() - Date.now()) / (1000 * 60 * 60 * 24))
      : null;
  const showExpiryBanner =
    premiumExpiringDays !== null && premiumExpiringDays >= 0 && premiumExpiringDays <= 7;

  useEffect(() => {
    if (supabaseConfigured() && loaded && !user) {
      void navigate({ to: "/signin" });
      return;
    }

    if (
      supabaseConfigured() &&
      loaded &&
      user &&
      !savedProfile &&
      !profileError &&
      location.pathname !== "/onboarding"
    ) {
      void navigate({ to: "/onboarding" });
    }
  }, [loaded, location.pathname, navigate, profileError, savedProfile, user]);

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

  if (supabaseConfigured() && !loaded) {
    return (
      <div className="flex min-h-screen items-center justify-center bg-background px-6 text-center">
        <div>
          <Logo to="/dashboard" />
          <p className="mt-4 text-sm text-muted-foreground">{t("app.checkingProfile")}</p>
        </div>
      </div>
    );
  }

  if (supabaseConfigured() && loaded && !user) {
    return (
      <div className="flex min-h-screen items-center justify-center bg-background px-6 text-center">
        <p className="text-sm text-muted-foreground">{t("app.openingSignIn")}</p>
      </div>
    );
  }

  if (
    supabaseConfigured() &&
    loaded &&
    user &&
    !savedProfile &&
    !profileError &&
    location.pathname !== "/onboarding"
  ) {
    return (
      <div className="flex min-h-screen items-center justify-center bg-background px-6 text-center">
        <p className="text-sm text-muted-foreground">{t("app.openingProfileSetup")}</p>
      </div>
    );
  }

  // Mobile bottom tab bar (compressed to 5 items)
  const mobileNav = NAV.slice(0, 4);

  return (
    <div className="grid h-dvh min-w-0 overflow-hidden bg-background md:grid-cols-[clamp(13.5rem,18vw,16rem)_minmax(0,1fr)]">
      {/* Desktop sidebar */}
      <aside className="hidden h-dvh min-h-0 shrink-0 flex-col border-r border-sidebar-border bg-sidebar md:flex">
        <SidebarContent
          profile={profile}
          displayName={displayName}
          unreadCount={unreadCount}
          isAdmin={showAdminLink}
        />
      </aside>

      {/* Mobile top bar */}
      <div className="fixed inset-x-0 top-0 z-30 flex h-14 items-center justify-between border-b border-border bg-background/90 px-4 backdrop-blur md:hidden">
        <Sheet open={mobileOpen} onOpenChange={setMobileOpen}>
          <SheetTrigger asChild>
            <Button variant="ghost" size="icon" aria-label="Open menu">
              <Menu className="h-5 w-5" />
            </Button>
          </SheetTrigger>
          <SheetContent side="left" className="flex h-full w-[min(18rem,85vw)] flex-col p-0">
            <SheetHeader className="sr-only">
              <SheetTitle>{t("app.navigation")}</SheetTitle>
            </SheetHeader>
            <SidebarContent
              profile={profile}
              displayName={displayName}
              unreadCount={unreadCount}
              isAdmin={showAdminLink}
              onNavigate={() => setMobileOpen(false)}
            />
          </SheetContent>
        </Sheet>
        <Logo to="/dashboard" />
        <div className="flex items-center gap-1">
          <Button variant="ghost" size="icon" aria-label="Search" onClick={() => setCmdOpen(true)}>
            <Search className="h-5 w-5" />
          </Button>
          <Link
            to="/notifications"
            aria-label="Notifications"
            className="relative inline-flex h-9 w-9 items-center justify-center rounded-md hover:bg-secondary"
          >
            <Bell className="h-5 w-5" />
            {unreadCount > 0 && (
              <span className="absolute right-1.5 top-1.5 h-2 w-2 rounded-full bg-accent" />
            )}
          </Link>
        </div>
      </div>

      <main
        className="h-dvh min-w-0 overflow-y-auto overflow-x-hidden pt-14 pb-20 md:pt-0 md:pb-0"
        style={{ paddingBottom: "calc(4rem + env(safe-area-inset-bottom))" } as React.CSSProperties}
      >
        {/* Desktop top utility bar */}
        <div className="hidden h-12 items-center justify-end gap-2 border-b border-border px-6 md:flex md:px-10">
          {showAdminLink && (
            <Button asChild variant="outline" size="sm" className="gap-1.5">
              <Link to="/control-panel-9k3x">
                <ShieldCheck className="h-3.5 w-3.5" />
                Admin panel
              </Link>
            </Button>
          )}
          <button
            onClick={() => setCmdOpen(true)}
            className="flex h-9 items-center gap-2 rounded-md border border-border bg-card px-3 text-xs text-muted-foreground transition-colors hover:text-foreground"
          >
            <Search className="h-3.5 w-3.5" />
            {t("app.searchPlaceholder")}
            <kbd className="ml-3 rounded border border-border bg-secondary px-1.5 py-0.5 font-mono text-[10px]">
              ⌘K
            </kbd>
          </button>
          <DropdownMenu>
            <DropdownMenuTrigger asChild>
              <button
                aria-label="Notifications"
                className="relative inline-flex h-9 w-9 items-center justify-center rounded-md hover:bg-secondary"
              >
                <Bell className="h-4 w-4" />
                {unreadCount > 0 && (
                  <span className="absolute right-2 top-2 h-2 w-2 rounded-full bg-accent" />
                )}
              </button>
            </DropdownMenuTrigger>
            <DropdownMenuContent align="end" className="w-80 p-0">
              <div className="flex items-center justify-between border-b border-border px-4 py-3">
                <span className="text-sm font-medium">{t("common.notifications")}</span>
                {unreadCount > 0 && (
                  <Badge variant="secondary">
                    {t("app.notificationsNew").replace("{count}", String(unreadCount))}
                  </Badge>
                )}
              </div>
              <div className="max-h-80 overflow-y-auto">
                {notifications.length > 0 ? (
                  notifications.slice(0, 5).map((item) => (
                    <button
                      key={item.id}
                      type="button"
                      onClick={() => {
                        markAsRead(item.id);
                        setCmdOpen(false);
                        void navigate({
                          to:
                            item.kind === "content"
                              ? "/library"
                              : item.kind === "progress"
                                ? "/dashboard"
                                : item.kind === "streak"
                                  ? "/streak"
                                  : "/pricing",
                        });
                      }}
                      className={`block w-full border-b border-border px-4 py-3 text-left text-sm transition-colors hover:bg-secondary/70 ${
                        item.read ? "bg-background" : "bg-accent/5"
                      }`}
                    >
                      <div className="flex items-center justify-between gap-3">
                        <span className="font-medium">{item.title}</span>
                        {!item.read && <span className="h-2 w-2 shrink-0 rounded-full bg-accent" />}
                      </div>
                      <p className="mt-0.5 line-clamp-2 text-xs text-muted-foreground">
                        {item.body}
                      </p>
                    </button>
                  ))
                ) : (
                  <div className="px-4 py-8 text-center text-sm text-muted-foreground">
                    {t("notifications.emptyTitle")}
                  </div>
                )}
              </div>
              <Link
                to="/notifications"
                className="block border-t border-border px-4 py-2.5 text-center text-xs text-muted-foreground hover:text-foreground"
              >
                {t("app.viewAllNotifications")}
              </Link>
            </DropdownMenuContent>
          </DropdownMenu>
        </div>

        {showExpiryBanner && (
          <div className="flex flex-col gap-2 border-b border-warning/30 bg-warning/10 px-4 py-3 text-sm sm:flex-row sm:items-center sm:justify-between sm:px-6 md:px-10">
            <span className="text-warning-foreground">
              {premiumExpiringDays === 0
                ? t("notifications.generated.premiumEndsToday.body")
                : t("notifications.generated.premiumEnds.body").replace(
                    "{days}",
                    String(premiumExpiringDays),
                  )}
            </span>
            <Button asChild size="sm" variant="outline" className="shrink-0">
              <Link to="/pricing">{t("app.renewPremium")}</Link>
            </Button>
          </div>
        )}

        <Outlet />
      </main>

      {/* Mobile bottom tab bar */}
      <nav
        className="fixed inset-x-0 bottom-0 z-30 flex items-center justify-around border-t border-border bg-background/95 backdrop-blur md:hidden"
        style={{
          height: "calc(4rem + env(safe-area-inset-bottom))",
          paddingBottom: "env(safe-area-inset-bottom)",
        }}
      >
        {mobileNav.map((n) => {
          const active = location.pathname.startsWith(n.to);
          return (
            <Link
              key={n.to}
              to={n.to}
              aria-current={active ? "page" : undefined}
              className={`flex min-w-0 flex-1 flex-col items-center gap-1 px-1 py-2 text-[10px] ${
                active ? "text-foreground" : "text-muted-foreground"
              }`}
            >
              <n.icon className="h-5 w-5" />
              <span className="max-w-full truncate text-center leading-tight">{t(n.labelKey)}</span>
            </Link>
          );
        })}
      </nav>

      {cmdOpen && (
        <Suspense fallback={null}>
          <CommandMenu open={cmdOpen} setOpen={setCmdOpen} isAdmin={showAdminLink} />
        </Suspense>
      )}
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
    <div className="border-b border-border bg-background px-4 py-5 sm:px-6 md:px-10 md:py-8">
      <div className="flex min-w-0 flex-col gap-4 md:flex-row md:items-end md:justify-between">
        <div className="min-w-0">
          <h1 className="break-words font-display text-2xl text-foreground md:text-4xl">{title}</h1>
          {description && <p className="mt-1.5 text-sm text-muted-foreground">{description}</p>}
        </div>
        {children && <div className="flex flex-wrap items-center gap-2">{children}</div>}
      </div>
    </div>
  );
}
