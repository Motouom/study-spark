import { useEffect, useState } from "react";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import { markSubscriptionRefreshed, shouldRefreshSubscription } from "@/hooks/use-study-profile";

export type SubscriptionSummary = {
  plan: "free" | "premium";
  premiumUntil: string | null;
  subscriptionStatus: string | null;
  billingInterval: string | null;
  currentPeriodEnd: string | null;
  autoRenew: boolean;
  lastPaymentStatus: string | null;
  lastPaymentAmountXaf: number | null;
  lastPaymentCreatedAt: string | null;
};

type SubscriptionRow = {
  plan?: string | null;
  premium_until?: string | null;
  subscription_status?: string | null;
  billing_interval?: string | null;
  current_period_end?: string | null;
  auto_renew?: boolean | null;
  last_payment_status?: string | null;
  last_payment_amount_xaf?: number | null;
  last_payment_created_at?: string | null;
};

export function useSubscription() {
  const { user, loaded: userLoaded } = useSupabaseUser();
  const [subscription, setSubscription] = useState<SubscriptionSummary | null>(null);
  const [loaded, setLoaded] = useState(false);

  useEffect(() => {
    if (!userLoaded) return;
    if (!user || !supabaseConfigured() || !supabase) {
      setSubscription(null);
      setLoaded(true);
      return;
    }

    setLoaded(false);
    const client = supabase;
    let active = true;
    void (async () => {
      try {
        // Share the same 5-minute throttle as the profile hook so the RPC
        // runs once per session window, not once per mounting hook.
        if (shouldRefreshSubscription()) {
          await client.rpc("refresh_my_subscription_status");
          markSubscriptionRefreshed();
        }
        const { data, error } = await client.rpc("list_my_subscription").maybeSingle();

        if (!active) return;
        if (error) {
          console.error("Could not load subscription", error);
          setSubscription(null);
          return;
        }

        const row = data as SubscriptionRow | null;
        setSubscription(
          row
            ? {
                plan: row.plan === "premium" ? "premium" : "free",
                premiumUntil: row.premium_until ?? null,
                subscriptionStatus: row.subscription_status ?? null,
                billingInterval: row.billing_interval ?? null,
                currentPeriodEnd: row.current_period_end ?? null,
                autoRenew: Boolean(row.auto_renew),
                lastPaymentStatus: row.last_payment_status ?? null,
                lastPaymentAmountXaf: row.last_payment_amount_xaf ?? null,
                lastPaymentCreatedAt: row.last_payment_created_at ?? null,
              }
            : null,
        );
      } catch (fetchError) {
        console.error("Could not load subscription", fetchError);
        if (active) setSubscription(null);
      } finally {
        if (active) setLoaded(true);
      }
    })();
    return () => {
      active = false;
    };
  }, [user, userLoaded]);

  return { subscription, loaded };
}
