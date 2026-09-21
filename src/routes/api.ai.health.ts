import { createFileRoute } from "@tanstack/react-router";
import { getAiConfigStatus } from "@/lib/ai";
import { getAuthenticatedUser } from "@/lib/server-supabase";

export const Route = createFileRoute("/api/ai/health")({
  server: {
    handlers: {
      GET: async ({ request }) => {
        try {
          const user = await getAuthenticatedUser(request);
          const role = user.app_metadata?.role;
          if (role !== "admin" && role !== "reviewer" && role !== "super_admin") {
            return Response.json({ error: "Admin access required." }, { status: 403 });
          }

          const status = getAiConfigStatus();
          return Response.json({
            ok: status.configured,
            issues: status.issues,
            model: status.model,
            baseUrl: status.baseUrl,
            timeoutMs: status.timeoutMs,
            hasApiKey: status.hasApiKey,
          });
        } catch (error) {
          if (error instanceof Response) return error;
          console.error("AI health check failed", error);
          return Response.json({ error: "AI health check failed." }, { status: 500 });
        }
      },
    },
  },
});
