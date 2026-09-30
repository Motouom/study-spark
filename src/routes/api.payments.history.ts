import { createFileRoute } from "@tanstack/react-router";
import { getAuthenticatedUser, getServiceSupabase } from "@/lib/server-supabase";
import { rateLimit, rateLimitResponse } from "@/lib/rate-limit";

export const Route = createFileRoute("/api/payments/history")({
  server: {
    handlers: {
      GET: async ({ request }) => {
        try {
          const user = await getAuthenticatedUser(request);
          const limiter = await rateLimit(`payments:history:${user.id}`, 30, 60 * 60 * 1000);
          if (!limiter.allowed) return rateLimitResponse(limiter.retryAfterSeconds);

          const supabase = getServiceSupabase();

          const { data, error } = await supabase
            .from("payment_transactions")
            .select(
              "id, external_id, provider_transaction_id, billing_interval, amount_xaf, status, checkout_url, created_at, verified_at",
            )
            .eq("user_id", user.id)
            .order("created_at", { ascending: false })
            .limit(50);
          if (error) throw error;

          return Response.json({ transactions: data ?? [] });
        } catch (error) {
          if (error instanceof Response) return error;
          console.error("Payment history failed", error);
          return Response.json(
            { error: error instanceof Error ? error.message : "History unavailable." },
            { status: 500 },
          );
        }
      },
    },
  },
});
