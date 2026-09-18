import { createFileRoute, Navigate } from "@tanstack/react-router";

export const Route = createFileRoute("/_app/quiz/setup")({
  head: () => ({ meta: [{ title: "Structural papers - StudySpark" }] }),
  component: StructuralSetupRedirect,
});

function StructuralSetupRedirect() {
  return <Navigate to="/library" replace />;
}
