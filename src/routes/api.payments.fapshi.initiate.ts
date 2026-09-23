import { createFileRoute } from "@tanstack/react-router";
import {
  createExternalPaymentId,
  initiateFapshiPayment,
  PREMIUM_PRICES_XAF,
  type BillingInterval,
} from "@/lib/fapshi";
import { getAuthenticatedUser, getServiceSupabase } from "@/lib/server-supabase";
import { rateLimit, rateLimitResponse } from "@/lib/rate-limit";

export const Route = createFileRoute("/api/payments/fapshi/initiate")({
  server: {
    handlers: {
      POST: async ({ request }) => {
        try {
          const user = await getAuthenticatedUser(request);
          const limiter = await rateLimit(`payments:initiate:${user.id}`, 5, 60 * 60 * 1000);
          if (!limiter.allowed) return rateLimitResponse(limiter.retryAfterSeconds);
          const body = (await request.json().catch(() => ({}))) as { interval?: string };
          const interval: BillingInterval = body.interval === "yearly" ? "yearly" : "monthly";
          const amount = PREMIUM_PRICES_XAF[interval];
          const externalId = createExternalPaymentId(interval);
          const origin = new URL(request.url).origin;
          const supabase = getServiceSupabase();

          // Idempotency: reuse an in-flight checkout for the same user +
          // interval instead of creating duplicate subscription/transaction
          // rows on double-clicks or retries.
          const { data: existing } = await supabase
            .from("payment_transactions")
            .select("id, provider_transaction_id, checkout_url, external_id, created_at")
            .eq("user_id", user.id)
            .eq("billing_interval", interval)
            .in("status", ["created", "pending"])
            .not("provider_transaction_id", "is", null)
            .order("created_at", { ascending: false })
            .limit(1)
            .maybeSingle();
          if (
            existing?.provider_transaction_id &&
            existing.created_at &&
            Date.now() - new Date(existing.created_at).getTime() < 30 * 60 * 1000
          ) {
            return Response.json({
              checkoutUrl: existing.checkout_url,
              transactionId: existing.provider_transaction_id,
              externalId: existing.external_id,
              reused: true,
            });
          }

          const { data: subscription, error: subscriptionError } = await supabase
            .from("subscriptions")
            .insert({
              user_id: user.id,
              billing_interval: interval,
              amount_xaf: amount,
              status: "pending",
            })
            .select("id")
            .single();
          if (subscriptionError) throw subscriptionError;

          const { data: transaction, error: transactionError } = await supabase
            .from("payment_transactions")
            .insert({
              user_id: user.id,
              subscription_id: subscription.id,
              external_id: externalId,
              billing_interval: interval,
              amount_xaf: amount,
              status: "created",
            })
            .select("id")
            .single();
          if (transactionError) throw transactionError;

          let payment;
          try {
            payment = await initiateFapshiPayment({
              amount,
              email: user.email ?? "",
              externalId,
              interval,
              origin,
              userId: user.id,
            });
          } catch (providerError) {
            // Roll back the local rows so no orphan pending subscription or
            // unverifiable transaction is left behind.
            await supabase
              .from("payment_transactions")
              .update({ status: "failed" })
              .eq("id", transaction.id);
            await supabase
              .from("subscriptions")
              .update({ status: "past_due" })
              .eq("id", subscription.id);
            throw providerError;
          }

          const { error: updateError } = await supabase
            .from("payment_transactions")
            .update({
              provider_transaction_id: payment.transId,
              checkout_url: payment.link,
              provider_payload: payment,
            })
            .eq("id", transaction.id);
          if (updateError) {
            // The checkout link exists and is returned to the user, but log
            // loudly: without provider_transaction_id the webhook cannot match.
            console.error(
              `Fapshi initiate: failed to store provider_transaction_id for transaction ${transaction.id}`,
              updateError,
            );
          }

          return Response.json({
            checkoutUrl: payment.link,
            transactionId: payment.transId,
            externalId,
          });
        } catch (error) {
          if (error instanceof Response) return error;
          console.error("Fapshi payment initiation failed", error);
          return Response.json(
            { error: error instanceof Error ? error.message : "Payment could not be started." },
            { status: 500 },
          );
        }
      },
    },
  },
});
