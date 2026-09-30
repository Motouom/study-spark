import { createFileRoute } from "@tanstack/react-router";
import { getAiQuotaStatus, getMultiAiConfigStatus } from "@/lib/ai-providers";
import { getAuthenticatedUser, userHasAnyRole } from "@/lib/server-supabase";

export const Route = createFileRoute("/api/ai/health")({
  server: {
    handlers: {
      GET: async ({ request }) => {
        try {
          const user = await getAuthenticatedUser(request);
          const authorized = await userHasAnyRole(user, [
            "content_admin",
            "moderator",
            "platform_admin",
          ]);
          if (!authorized) {
            return Response.json({ error: "Admin access required." }, { status: 403 });
          }

          const status = getMultiAiConfigStatus();
          const quota = getAiQuotaStatus();
          return Response.json({
            ok: status.configured,
            providers: status.providers,
            quota,
            priorityOrder: ["gemini", "groq", "cerebras", "openrouter"],
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
