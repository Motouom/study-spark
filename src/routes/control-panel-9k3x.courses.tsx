import { createFileRoute } from "@tanstack/react-router";
import { DocumentManager } from "@/components/admin/DocumentManager";

export const Route = createFileRoute("/control-panel-9k3x/courses")({
  component: CoursesAdmin,
});

function CoursesAdmin() {
  return <DocumentManager kind="course" />;
}
