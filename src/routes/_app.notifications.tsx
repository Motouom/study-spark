import { createFileRoute } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { NOTIFICATIONS } from "@/lib/mock-data";
import { Bell, Flame, Trophy, Info } from "lucide-react";
import { Button } from "@/components/ui/button";
import { useState } from "react";

export const Route = createFileRoute("/_app/notifications")({
  head: () => ({ meta: [{ title: "Notifications — StudyFlow" }] }),
  component: NotificationsPage,
});

const iconMap = {
  reminder: Flame,
  achievement: Trophy,
  system: Info,
  streak: Flame,
};

function NotificationsPage() {
  const [items, setItems] = useState(NOTIFICATIONS);
  const markAll = () => setItems((s) => s.map((n) => ({ ...n, read: true })));

  return (
    <>
      <PageHeader title="Notifications" description="Reminders, achievements, and updates from StudyFlow.">
        <Button variant="outline" size="sm" onClick={markAll}>Mark all as read</Button>
      </PageHeader>

      <div className="px-6 py-6 md:px-10 md:py-8">
        {items.length === 0 ? (
          <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
            <Bell className="mx-auto h-10 w-10 text-muted-foreground" />
            <h3 className="mt-4 text-base font-medium">All caught up</h3>
            <p className="mt-1 text-sm text-muted-foreground">No new notifications. Come back after your next quiz.</p>
          </div>
        ) : (
          <div className="overflow-hidden rounded-xl border border-border bg-card">
            {items.map((n) => {
              const Icon = iconMap[n.type] ?? Info;
              return (
                <div
                  key={n.id}
                  className={`flex gap-4 border-b border-border p-5 last:border-0 ${
                    !n.read ? "bg-secondary/40" : ""
                  }`}
                >
                  <div
                    className={`flex h-10 w-10 shrink-0 items-center justify-center rounded-lg ${
                      n.type === "reminder" ? "bg-accent/15 text-accent" :
                      n.type === "achievement" ? "bg-success/15 text-success" :
                      "bg-secondary text-foreground"
                    }`}
                  >
                    <Icon className="h-5 w-5" />
                  </div>
                  <div className="flex-1 min-w-0">
                    <div className="flex items-start justify-between gap-3">
                      <h3 className="text-sm font-medium">{n.title}</h3>
                      <span className="shrink-0 text-xs text-muted-foreground">{n.time}</span>
                    </div>
                    <p className="mt-1 text-sm text-muted-foreground">{n.body}</p>
                  </div>
                  {!n.read && <span className="mt-1.5 h-2 w-2 shrink-0 rounded-full bg-accent" />}
                </div>
              );
            })}
          </div>
        )}
      </div>
    </>
  );
}
