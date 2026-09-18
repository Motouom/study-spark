import { json, preflight } from "../_shared/cors.ts";
import {
  applyVerifiedFapshiStatus,
  fetchFapshiPaymentStatus,
  getFapshiWebhookSecret,
} from "../_shared/fapshi.ts";
import { serviceSupabase } from "../_shared/supabase.ts";

Deno.serve(async (request) => {
  if (request.method === "OPTIONS") return preflight();
  if (request.method !== "POST") return json({ error: "Method not allowed." }, 405);

  try {
    const expectedSecret = getFapshiWebhookSecret();
    const receivedSecret = request.headers.get("x-wh-secret");
    if (!receivedSecret || receivedSecret !== expectedSecret) {
      return json({ error: "Invalid webhook secret." }, 401);
    }

    const payload = (await request.json()) as {
      transId?: string;
      externalId?: string;
      status?: string;
    };
    const supabase = serviceSupabase();

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
      return json({ received: true, matched: false });
    }

    const { data: transaction, error } = await query.maybeSingle();
    if (error) throw error;

    if (!transaction) {
      return json({ received: true, matched: false });
    }

    const providerStatus = transaction.provider_transaction_id
      ? await fetchFapshiPaymentStatus(transaction.provider_transaction_id)
      : {
          transId: "",
          status: payload.status ?? "CREATED",
          ...payload,
        };
    const result = await applyVerifiedFapshiStatus(supabase, transaction, providerStatus);

    return json({ received: true, matched: true, status: result.status });
  } catch (error) {
    console.error("Fapshi webhook failed", error);
    return json({ error: "Webhook could not be processed." }, 500);
  }
});
