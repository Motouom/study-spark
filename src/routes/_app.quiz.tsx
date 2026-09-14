import { createFileRoute, Navigate } from "@tanstack/react-router";

export const Route = createFileRoute("/_app/quiz")({
  head: () => ({ meta: [{ title: "Papers — StudySpark" }] }),
  component: RetiredQuizRoute,
});

function RetiredQuizRoute() {
  return <Navigate to="/library" replace />;
}
