import { createFileRoute } from "@tanstack/react-router";
import {
  applyVerifiedFapshiStatus,
  fetchFapshiPaymentStatus,
  getFapshiWebhookSecret,
} from "@/lib/fapshi";
import { getServiceSupabase } from "@/lib/server-supabase";

export const Route = createFileRoute("/api/payments/fapshi/webhook")({
  server: {
    handlers: {
      POST: async ({ request }) => {
        try {
          const expectedSecret = getFapshiWebhookSecret();
          const receivedSecret = request.headers.get("x-wh-secret");
          if (!receivedSecret || receivedSecret !== expectedSecret) {
            return Response.json({ error: "Invalid webhook secret." }, { status: 401 });
          }

          const payload = (await request.json()) as {
            transId?: string;
            externalId?: string;
            status?: string;
          };
          const supabase = getServiceSupabase();

          let query = supabase
            .from("payment_transactions")
            .select("id, user_id, subscription_id, amount_xaf, billing_interval, provider_transaction_id, status")
            .limit(1);

          if (payload.transId) {
            query = query.eq("provider_transaction_id", payload.transId);
          } else if (payload.externalId) {
            query = query.eq("external_id", payload.externalId);
          } else {
            return Response.json({ received: true, matched: false });
          }

          const { data: transaction, error } = await query.maybeSingle();
          if (error) throw error;

          if (!transaction) {
            return Response.json({ received: true, matched: false });
          }

          const providerStatus = payload.transId
            ? await fetchFapshiPaymentStatus(payload.transId)
            : {
                transId: transaction.provider_transaction_id ?? "",
                status: payload.status ?? "CREATED",
                ...payload,
              };
          const result = await applyVerifiedFapshiStatus(supabase, transaction, providerStatus);

          return Response.json({ received: true, matched: true, status: result.status });
        } catch (error) {
          console.error("Fapshi webhook failed", error);
          return Response.json({ error: "Webhook could not be processed." }, { status: 500 });
        }
      },
    },
  },
});
