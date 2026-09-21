import type { SupabaseClient } from "npm:@supabase/supabase-js@2";

export type BillingInterval = "monthly" | "yearly";
export type PaymentStatus = "created" | "pending" | "successful" | "failed" | "expired";

export const PREMIUM_PRICES_XAF: Record<BillingInterval, number> = {
  monthly: 1500,
  yearly: 12000,
};

type FapshiInitiateResponse = {
  message: string;
  link: string;
  transId: string;
  dateInitiated?: string;
};

type FapshiStatusResponse = {
  transId: string;
  status: string;
  amount?: number | string;
  medium?: string;
  serviceName?: string;
  email?: string;
  userId?: string;
  externalId?: string;
  financialTransId?: string;
  dateInitiated?: string;
  dateConfirmed?: string;
};

function requireEnv(name: string) {
  const value = Deno.env.get(name);
  if (!value) throw new Error(`${name} is not configured.`);
  return value;
}

function fapshiBaseUrl() {
  return Deno.env.get("FAPSHI_ENVIRONMENT") === "sandbox"
    ? "https://sandbox.fapshi.com"
    : "https://live.fapshi.com";
}

function fapshiHeaders() {
  return {
    "Content-Type": "application/json",
    apiuser: requireEnv("FAPSHI_API_USER"),
    apikey: requireEnv("FAPSHI_API_KEY"),
  };
}

export function createExternalPaymentId(interval: BillingInterval) {
  return `studyspark_${interval}_${crypto.randomUUID().replaceAll("-", "")}`;
}

export function normalizePaymentStatus(status: string | null | undefined): PaymentStatus {
  switch (status?.toUpperCase()) {
    case "SUCCESSFUL":
      return "successful";
    case "FAILED":
      return "failed";
    case "EXPIRED":
      return "expired";
    case "PENDING":
      return "pending";
    case "CREATED":
    default:
      return "created";
  }
}

export async function initiateFapshiPayment(input: {
  amount: number;
  email: string;
  externalId: string;
  interval: BillingInterval;
  origin: string;
  userId: string;
}) {
  const response = await fetch(`${fapshiBaseUrl()}/initiate-pay`, {
    method: "POST",
    headers: fapshiHeaders(),
    body: JSON.stringify({
      amount: input.amount,
      email: input.email,
      externalId: input.externalId,
      userId: input.userId,
      redirectUrl: `${input.origin}/pricing?payment_return=1`,
      message:
        input.interval === "yearly"
          ? "StudySpark Premium yearly subscription"
          : "StudySpark Premium monthly subscription",
    }),
  });

  const payload = (await response.json().catch(() => null)) as FapshiInitiateResponse | null;
  if (!response.ok || !payload?.link || !payload?.transId) {
    throw new Error(payload?.message ?? "Fapshi could not create the payment link.");
  }

  return payload;
}

export async function fetchFapshiPaymentStatus(transId: string) {
  const response = await fetch(`${fapshiBaseUrl()}/payment-status/${encodeURIComponent(transId)}`, {
    method: "GET",
    headers: fapshiHeaders(),
  });
  const payload = (await response.json().catch(() => null)) as FapshiStatusResponse | null;
  if (!response.ok || !payload?.status) {
    throw new Error("Fapshi payment status could not be verified.");
  }
  return payload;
}

function calculatePeriodEnd(interval: BillingInterval, start = new Date()) {
  const end = new Date(start);
  if (interval === "yearly") {
    end.setFullYear(end.getFullYear() + 1);
  } else {
    end.setMonth(end.getMonth() + 1);
  }
  return end.toISOString();
}

export async function applyVerifiedFapshiStatus(
  supabase: SupabaseClient,
  transaction: {
    id: string;
    user_id: string;
    subscription_id: string | null;
    amount_xaf: number;
    billing_interval: BillingInterval;
    status: PaymentStatus;
  },
  providerPayload: FapshiStatusResponse,
) {
  const status = normalizePaymentStatus(providerPayload.status);
  const providerAmount =
    typeof providerPayload.amount === "number"
      ? providerPayload.amount
      : Number(providerPayload.amount);
  const amountMatches =
    Number.isFinite(providerAmount) && providerAmount === transaction.amount_xaf;
  const verifiedAt = status === "successful" && amountMatches ? new Date().toISOString() : null;
  let premiumUntil: string | null = null;

  if (transaction.status === "successful") {
    return {
      status: "successful" as PaymentStatus,
      premiumUntil,
      alreadyProcessed: true,
    };
  }

  await supabase
    .from("payment_transactions")
    .update({
      status: status === "successful" && !amountMatches ? "failed" : status,
      provider_financial_transaction_id: providerPayload.financialTransId ?? null,
      provider_payload: providerPayload,
      verified_at: verifiedAt,
    })
    .eq("id", transaction.id);

  if (status === "successful" && amountMatches) {
    const periodStart = new Date();
    const periodEnd = calculatePeriodEnd(transaction.billing_interval, periodStart);
    premiumUntil = periodEnd;

    if (transaction.subscription_id) {
      await supabase
        .from("subscriptions")
        .update({
          status: "active",
          current_period_start: periodStart.toISOString(),
          current_period_end: periodEnd,
          last_payment_transaction_id: transaction.id,
        })
        .eq("id", transaction.subscription_id);
    }

    await supabase
      .from("student_profiles")
      .update({ plan: "premium", premium_until: periodEnd })
      .eq("user_id", transaction.user_id);
  } else if (status === "failed" || status === "expired" || !amountMatches) {
    if (transaction.subscription_id) {
      await supabase
        .from("subscriptions")
        .update({ status: status === "expired" ? "expired" : "past_due" })
        .eq("id", transaction.subscription_id);
    }
  }

  return {
    status: status === "successful" && !amountMatches ? "failed" : status,
    premiumUntil,
  };
}

export function getFapshiWebhookSecret() {
  return requireEnv("FAPSHI_WEBHOOK_SECRET");
}
