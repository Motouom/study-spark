import { useCallback, useEffect, useState } from "react";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import { supabase } from "@/lib/supabase";

export type PaymentRecord = {
  id: string;
  external_id: string;
  provider_transaction_id: string | null;
  billing_interval: string;
  amount_xaf: number;
  status: string;
  checkout_url: string | null;
  created_at: string;
  verified_at: string | null;
};

export function usePaymentHistory() {
  const { user, loaded: userLoaded } = useSupabaseUser();
  const [transactions, setTransactions] = useState<PaymentRecord[]>([]);
  const [loaded, setLoaded] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const refresh = useCallback(async () => {
    if (!user || !supabase) return;
    setError(null);
    try {
      const { data } = await supabase.auth.getSession();
      const token = data.session?.access_token;
      if (!token) throw new Error("You must be signed in to view payment history.");
      const response = await fetch("/api/payments/history", {
        headers: { Authorization: `Bearer ${token}` },
      });
      const payload = (await response.json()) as { transactions?: PaymentRecord[]; error?: string };
      if (!response.ok) throw new Error(payload.error ?? "Could not load payment history.");
      setTransactions(payload.transactions ?? []);
    } catch (err) {
      setError(err instanceof Error ? err.message : "Could not load payment history.");
    } finally {
      setLoaded(true);
    }
  }, [user]);

  useEffect(() => {
    if (!userLoaded) return;
    if (!user) {
      setTransactions([]);
      setLoaded(true);
      return;
    }
    void refresh();
  }, [user, userLoaded, refresh]);

  return { transactions, loaded, error, refresh };
}
