import { json, preflight } from "../_shared/cors.ts";
import {
  PREMIUM_PRICES_XAF,
  createExternalPaymentId,
  initiateFapshiPayment,
  type BillingInterval,
} from "../_shared/fapshi.ts";
import { getAuthenticatedUser, serviceSupabase } from "../_shared/supabase.ts";

Deno.serve(async (request) => {
  if (request.method === "OPTIONS") return preflight();
  if (request.method !== "POST") return json({ error: "Method not allowed." }, 405);

  try {
    const user = await getAuthenticatedUser(request);
    const body = (await request.json().catch(() => ({}))) as { interval?: string };
    const interval: BillingInterval = body.interval === "yearly" ? "yearly" : "monthly";
    const amount = PREMIUM_PRICES_XAF[interval];
    const externalId = createExternalPaymentId(interval);
    const origin = Deno.env.get("APP_PUBLIC_URL") ?? "https://studyspark.cm";
    const supabase = serviceSupabase();

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

    return json({
      checkoutUrl: payment.link,
      transactionId: payment.transId,
      externalId,
    });
  } catch (error) {
    if (error instanceof Response) return error;
    console.error("Fapshi payment initiation failed", error);
    return json(
      { error: error instanceof Error ? error.message : "Payment could not be started." },
      500,
    );
  }
});
