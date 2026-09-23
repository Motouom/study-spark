import { createFileRoute } from "@tanstack/react-router";
import { applyVerifiedFapshiStatus, fetchFapshiPaymentStatus } from "@/lib/fapshi";
import { getAuthenticatedUser, getServiceSupabase } from "@/lib/server-supabase";
import { rateLimit, rateLimitResponse } from "@/lib/rate-limit";

export const Route = createFileRoute("/api/payments/fapshi/verify")({
  server: {
    handlers: {
      POST: async ({ request }) => {
        try {
          const user = await getAuthenticatedUser(request);
          const limiter = await rateLimit(`payments:verify:${user.id}`, 30, 60 * 60 * 1000);
          if (!limiter.allowed) return rateLimitResponse(limiter.retryAfterSeconds);
          const body = (await request.json().catch(() => ({}))) as { transactionId?: string };
          const supabase = getServiceSupabase();

          let query = supabase
            .from("payment_transactions")
            .select(
              "id, user_id, subscription_id, amount_xaf, billing_interval, provider_transaction_id, status",
            )
            .eq("user_id", user.id)
            .in("status", ["created", "pending"]);

          if (body.transactionId) {
            query = query.eq("provider_transaction_id", body.transactionId);
          }

          const { data: transaction, error } = await query
            .not("provider_transaction_id", "is", null)
            .order("created_at", { ascending: false })
            .limit(1)
            .maybeSingle();
          if (error) throw error;

          if (!transaction?.provider_transaction_id) {
            return Response.json({ status: "not_found" }, { status: 404 });
          }

          const providerStatus = await fetchFapshiPaymentStatus(
            transaction.provider_transaction_id,
          );
          const result = await applyVerifiedFapshiStatus(supabase, transaction, providerStatus);

          return Response.json(result);
        } catch (error) {
          if (error instanceof Response) return error;
          console.error("Fapshi payment verification failed", error);
          return Response.json(
            { error: error instanceof Error ? error.message : "Payment could not be verified." },
            { status: 500 },
          );
        }
      },
    },
  },
});
