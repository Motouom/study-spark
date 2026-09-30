import { createFileRoute } from "@tanstack/react-router";
import { getAuthenticatedUser, getServiceSupabase } from "@/lib/server-supabase";
import { rateLimit, rateLimitResponse } from "@/lib/rate-limit";

export const Route = createFileRoute("/api/account/data-export")({
  server: {
    handlers: {
      GET: async ({ request }) => {
        try {
          const user = await getAuthenticatedUser(request);
          const limiter = await rateLimit(`data-export:${user.id}`, 5, 60 * 60 * 1000);
          if (!limiter.allowed) return rateLimitResponse(limiter.retryAfterSeconds);

          const supabase = getServiceSupabase();
          const { data, error } = await supabase.rpc("get_my_data_export");
          if (error) throw error;

          return Response.json({ data });
        } catch (error) {
          if (error instanceof Response) return error;
          console.error("Data export failed", error);
          return Response.json(
            { error: error instanceof Error ? error.message : "Data export unavailable." },
            { status: 500 },
          );
        }
      },
    },
  },
});
