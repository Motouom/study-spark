import { createFileRoute } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Bell, CheckCheck, CreditCard, Flame, Library, TrendingUp } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Tabs, TabsList, TabsTrigger } from "@/components/ui/tabs";
import {
  useLearnerNotifications,
  type LearnerNotificationKind,
} from "@/hooks/use-learner-notifications";
import { useMemo, useState } from "react";

export const Route = createFileRoute("/_app/notifications")({
  head: () => ({ meta: [{ title: "Notifications — StudySpark" }] }),
  component: NotificationsPage,
});

function NotificationsPage() {
  const { notifications, loading, error, markAsRead, markAllAsRead, unreadCount } =
    useLearnerNotifications();
  const [filter, setFilter] = useState<"all" | LearnerNotificationKind>("all");
  const filteredNotifications = useMemo(
    () => notifications.filter((item) => filter === "all" || item.kind === filter),
    [filter, notifications],
  );

  return (
    <>
      <PageHeader
        title="Notifications"
        description="Account reminders and paper progress updates will appear here."
      >
        {notifications.length > 0 && (
          <Button
            type="button"
            variant="outline"
            size="sm"
            onClick={markAllAsRead}
            disabled={unreadCount === 0}
            className="gap-1.5"
          >
            <CheckCheck className="h-4 w-4" />
            Mark all read
          </Button>
        )}
      </PageHeader>

      <div className="space-y-4 px-4 py-5 sm:px-6 md:px-10 md:py-8">
        {error && (
          <div className="mb-4 rounded-lg border border-destructive/30 bg-destructive/10 p-3 text-sm text-destructive">
            Notifications could not be loaded: {error}
          </div>
        )}
        {loading && (
          <div className="mb-4 rounded-lg border border-border bg-card p-3 text-sm text-muted-foreground">
            Checking your latest learner updates...
          </div>
        )}

        {notifications.length > 0 && (
          <Tabs value={filter} onValueChange={(value) => setFilter(value as typeof filter)}>
            <TabsList className="h-auto max-w-full flex-wrap justify-start">
              <TabsTrigger value="all">All</TabsTrigger>
              <TabsTrigger value="content">Papers</TabsTrigger>
              <TabsTrigger value="progress">Progress</TabsTrigger>
              <TabsTrigger value="streak">Streaks</TabsTrigger>
              <TabsTrigger value="membership">Account</TabsTrigger>
            </TabsList>
          </Tabs>
        )}

        {filteredNotifications.length > 0 ? (
          <div className="space-y-3">
            {filteredNotifications.map((item) => {
              const Icon =
                item.kind === "content"
                  ? Library
                  : item.kind === "progress"
                    ? TrendingUp
                    : item.kind === "membership"
                      ? CreditCard
                      : Flame;
              return (
                <article
                  key={item.id}
                  className={`rounded-xl border p-4 sm:p-5 ${
                    item.read ? "border-border bg-card" : "border-accent/40 bg-accent/5"
                  }`}
                >
                  <div className="flex items-start gap-3">
                    <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary">
                      <Icon className="h-4 w-4" />
                    </div>
                    <div className="min-w-0 flex-1">
                      <div className="flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
                        <div className="min-w-0">
                          <div className="flex flex-wrap items-center gap-2">
                            <h2 className="break-words text-sm font-medium">{item.title}</h2>
                            {!item.read && <Badge variant="secondary">New</Badge>}
                            <Badge variant="outline" className="capitalize">
                              {item.kind}
                            </Badge>
                          </div>
                          <p className="mt-1 text-xs text-muted-foreground">
                            {new Date(item.createdAt).toLocaleString(undefined, {
                              dateStyle: "medium",
                              timeStyle: "short",
                            })}
                          </p>
                        </div>
                        {!item.read && (
                          <Button
                            type="button"
                            variant="ghost"
                            size="sm"
                            onClick={() => markAsRead(item.id)}
                            className="w-fit shrink-0"
                          >
                            Mark read
                          </Button>
                        )}
                      </div>
                      <p className="mt-1 text-sm text-muted-foreground">{item.body}</p>
                    </div>
                  </div>
                </article>
              );
            })}
          </div>
        ) : notifications.length > 0 ? (
          <div className="rounded-xl border border-dashed border-border bg-card p-8 text-center">
            <Bell className="mx-auto h-9 w-9 text-muted-foreground" />
            <h3 className="mt-4 text-base font-medium">No notifications in this group</h3>
            <p className="mt-1 text-sm text-muted-foreground">
              Try another category or check back after your next study activity.
            </p>
          </div>
        ) : (
          <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
            <Bell className="mx-auto h-10 w-10 text-muted-foreground" />
            <h3 className="mt-4 text-base font-medium">No notifications yet</h3>
            <p className="mt-1 text-sm text-muted-foreground">
              You will only see real profile, paper, and account updates here.
            </p>
          </div>
        )}
      </div>
    </>
  );
}
