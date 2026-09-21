import { createFileRoute, useNavigate } from "@tanstack/react-router";
import { useEffect } from "react";

export const Route = createFileRoute("/_app/progress")({
  head: () => ({ meta: [{ title: "Dashboard — StudySpark" }] }),
  component: ProgressRedirect,
});

function ProgressRedirect() {
  const navigate = useNavigate();

  useEffect(() => {
    void navigate({ to: "/dashboard", replace: true });
  }, [navigate]);

  return (
    <div className="flex min-h-[50vh] items-center justify-center px-6 text-sm text-muted-foreground">
      Opening dashboard...
    </div>
  );
}
