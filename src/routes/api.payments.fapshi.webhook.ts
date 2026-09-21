import { createFileRoute } from "@tanstack/react-router";
import {
  applyVerifiedFapshiStatus,
  fetchFapshiPaymentStatus,
  getFapshiWebhookSecret,
} from "@/lib/fapshi";
import { getServiceSupabase } from "@/lib/server-supabase";

function timingSafeEqual(a: string, b: string) {
  if (a.length !== b.length) return false;
  let mismatch = 0;
  for (let i = 0; i < a.length; i++) {
    mismatch |= a.charCodeAt(i) ^ b.charCodeAt(i);
  }
  return mismatch === 0;
}

export const Route = createFileRoute("/api/payments/fapshi/webhook")({
  server: {
    handlers: {
      POST: async ({ request }) => {
        try {
          let expectedSecret: string;
          try {
            expectedSecret = getFapshiWebhookSecret();
          } catch {
            // Secret not configured: reject rather than crash with a 500.
            console.error("Fapshi webhook: FAPSHI_WEBHOOK_SECRET is not configured");
            return Response.json({ error: "Webhook not configured." }, { status: 503 });
          }
          const receivedSecret = request.headers.get("x-wh-secret") ?? "";
          if (
            !receivedSecret ||
            receivedSecret.length !== expectedSecret.length ||
            !timingSafeEqual(receivedSecret, expectedSecret)
          ) {
            return Response.json({ error: "Invalid webhook secret." }, { status: 401 });
          }

          const payload = (await request.json().catch(() => null)) as {
            transId?: string;
            externalId?: string;
            status?: string;
          } | null;
          if (!payload || typeof payload !== "object") {
            return Response.json({ error: "Malformed webhook payload." }, { status: 400 });
          }
          const supabase = getServiceSupabase();

          let query = supabase
            .from("payment_transactions")
            .select(
              "id, user_id, subscription_id, amount_xaf, billing_interval, provider_transaction_id, status",
            )
            .limit(1);

          if (payload.transId) {
            query = query.eq("provider_transaction_id", payload.transId);
          } else if (payload.externalId) {
            query = query.eq("external_id", payload.externalId);
          } else {
            console.warn("Fapshi webhook: payload has no transId or externalId");
            return Response.json({ received: true, matched: false });
          }

          const { data: transaction, error } = await query.maybeSingle();
          if (error) throw error;

          if (!transaction) {
            console.warn(
              `Fapshi webhook: no transaction matched (transId=${payload.transId ?? "none"}, externalId=${payload.externalId ?? "none"})`,
            );
            return Response.json({ received: true, matched: false });
          }

          // Never finalize from the webhook body alone: always confirm the
          // status server-to-server with Fapshi. If the transaction has no
          // provider id yet, adopt the webhook's transId (verified against
          // Fapshi) and backfill it.
          let providerTransactionId = transaction.provider_transaction_id;
          if (!providerTransactionId && payload.transId) {
            providerTransactionId = payload.transId;
            await supabase
              .from("payment_transactions")
              .update({ provider_transaction_id: providerTransactionId })
              .eq("id", transaction.id);
          }
          if (!providerTransactionId) {
            console.warn(
              `Fapshi webhook: transaction ${transaction.id} has no provider id and payload carried none; skipping finalization`,
            );
            return Response.json({ received: true, matched: true, status: transaction.status });
          }

          const providerStatus = await fetchFapshiPaymentStatus(providerTransactionId);
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
