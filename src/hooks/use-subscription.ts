import { useEffect, useState } from "react";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import { useSupabaseUser } from "@/hooks/use-supabase-user";

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
    supabase
      .rpc("refresh_my_subscription_status")
      .then(() => supabase.rpc("list_my_subscription").maybeSingle())
      .then(({ data, error }) => {
        if (error) {
          console.error("Could not load subscription", error);
          setSubscription(null);
          return;
        }

        setSubscription(
          data
            ? {
                plan: data.plan === "premium" ? "premium" : "free",
                premiumUntil: data.premium_until ?? null,
                subscriptionStatus: data.subscription_status ?? null,
                billingInterval: data.billing_interval ?? null,
                currentPeriodEnd: data.current_period_end ?? null,
                autoRenew: Boolean(data.auto_renew),
                lastPaymentStatus: data.last_payment_status ?? null,
                lastPaymentAmountXaf: data.last_payment_amount_xaf ?? null,
                lastPaymentCreatedAt: data.last_payment_created_at ?? null,
              }
            : null,
        );
      })
      .finally(() => setLoaded(true));
  }, [user, userLoaded]);

  return { subscription, loaded };
}
