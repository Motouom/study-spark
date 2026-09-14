import { createFileRoute } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Bell, Flame, Library, TrendingUp } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import { useLearnerNotifications } from "@/hooks/use-learner-notifications";

export const Route = createFileRoute("/_app/notifications")({
  head: () => ({ meta: [{ title: "Notifications — StudySpark" }] }),
  component: NotificationsPage,
});

function NotificationsPage() {
  const { notifications, loading, error } = useLearnerNotifications();

  return (
    <>
      <PageHeader
        title="Notifications"
        description="Account reminders and paper progress updates will appear here."
      />

      <div className="px-6 py-6 md:px-10 md:py-8">
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
        {notifications.length > 0 ? (
          <div className="space-y-3">
            {notifications.map((item) => {
              const Icon =
                item.kind === "content" ? Library : item.kind === "progress" ? TrendingUp : Flame;
              return (
                <article key={item.id} className="rounded-xl border border-border bg-card p-5">
                  <div className="flex items-start gap-3">
                    <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary">
                      <Icon className="h-4 w-4" />
                    </div>
                    <div className="min-w-0 flex-1">
                      <div className="flex items-center gap-2">
                        <h2 className="text-sm font-medium">{item.title}</h2>
                        <Badge variant="secondary">New</Badge>
                      </div>
                      <p className="mt-1 text-sm text-muted-foreground">{item.body}</p>
                    </div>
                  </div>
                </article>
              );
            })}
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
