import { createFileRoute } from "@tanstack/react-router";
import { DocumentManager } from "@/components/admin/DocumentManager";

export const Route = createFileRoute("/control-panel-9k3x/questions")({
  component: PapersAdmin,
});

function PapersAdmin() {
  return <DocumentManager kind="paper" />;
}
