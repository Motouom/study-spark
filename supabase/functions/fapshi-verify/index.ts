import { json, preflight } from "../_shared/cors.ts";
import { applyVerifiedFapshiStatus, fetchFapshiPaymentStatus } from "../_shared/fapshi.ts";
import { getAuthenticatedUser, serviceSupabase } from "../_shared/supabase.ts";

Deno.serve(async (request) => {
  if (request.method === "OPTIONS") return preflight();
  if (request.method !== "POST") return json({ error: "Method not allowed." }, 405);

  try {
    const user = await getAuthenticatedUser(request);
    const body = (await request.json().catch(() => ({}))) as { transactionId?: string };
    const supabase = serviceSupabase();

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
      return json({ status: "not_found" }, 404);
    }

    const providerStatus = await fetchFapshiPaymentStatus(transaction.provider_transaction_id);
    const result = await applyVerifiedFapshiStatus(supabase, transaction, providerStatus);

    return json(result);
  } catch (error) {
    if (error instanceof Response) return error;
    console.error("Fapshi payment verification failed", error);
    return json(
      { error: error instanceof Error ? error.message : "Payment could not be verified." },
      500,
    );
  }
});
