import { createFileRoute } from "@tanstack/react-router";
import { DocumentManager } from "@/components/admin/DocumentManager";

export const Route = createFileRoute("/control-panel-9k3x/cheatsheets")({
  component: CheatsheetsAdmin,
});

function CheatsheetsAdmin() {
  return <DocumentManager kind="cheatsheet" />;
}
