import { useCallback, useEffect, useState } from "react";
import { useSupabaseUser } from "@/hooks/use-supabase-user";

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
    if (!user) return;
    setError(null);
    try {
      const response = await fetch("/api/payments/history");
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
