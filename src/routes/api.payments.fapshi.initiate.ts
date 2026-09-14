import { createFileRoute } from "@tanstack/react-router";
import {
  createExternalPaymentId,
  initiateFapshiPayment,
  PREMIUM_PRICES_XAF,
  type BillingInterval,
} from "@/lib/fapshi";
import { getAuthenticatedUser, getServiceSupabase } from "@/lib/server-supabase";

export const Route = createFileRoute("/api/payments/fapshi/initiate")({
  server: {
    handlers: {
      POST: async ({ request }) => {
        try {
          const user = await getAuthenticatedUser(request);
          const body = (await request.json().catch(() => ({}))) as { interval?: string };
          const interval: BillingInterval = body.interval === "yearly" ? "yearly" : "monthly";
          const amount = PREMIUM_PRICES_XAF[interval];
          const externalId = createExternalPaymentId(interval);
          const origin = new URL(request.url).origin;
          const supabase = getServiceSupabase();

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

          const payment = await initiateFapshiPayment({
            amount,
            email: user.email ?? "",
            externalId,
            interval,
            origin,
            userId: user.id,
          });

          await supabase
            .from("payment_transactions")
            .update({
              provider_transaction_id: payment.transId,
              checkout_url: payment.link,
              provider_payload: payment,
            })
            .eq("id", transaction.id);

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
