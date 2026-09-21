import { useCallback, useEffect, useMemo, useState } from "react";
import { supabase, supabaseConfigured } from "@/lib/supabase";
import { useSupabaseUser } from "@/hooks/use-supabase-user";
import { localDateKey } from "@/lib/streak";

export type StreakFreeze = {
  id: string;
  userId: string;
  freezeDate: string;
  createdAt: string;
};

type StreakFreezeRow = {
  id: string;
  user_id: string;
  freeze_date: string;
  created_at: string;
};

function mapFreeze(row: StreakFreezeRow): StreakFreeze {
  return {
    id: row.id,
    userId: row.user_id,
    freezeDate: row.freeze_date,
    createdAt: row.created_at,
  };
}

function weekStartKey(date: Date) {
  const copy = new Date(date);
  const day = (copy.getDay() + 6) % 7;
  copy.setDate(copy.getDate() - day);
  return localDateKey(copy);
}

// Module-level cache shared by every instance of the freeze hooks so the
// freeze list is fetched once per user instead of once per mounting component.
type FreezeCache = { userId: string; rows: StreakFreezeRow[] };

let freezeCache: FreezeCache | null = null;

export function useStreakFreezeDays() {
  const { user, loaded: userLoaded } = useSupabaseUser();
  const [freezeDays, setFreezeDays] = useState<Set<string>>(new Set());
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (!userLoaded) return;
    if (!user || !supabaseConfigured() || !supabase) {
      setFreezeDays(new Set());
      setLoading(false);
      return;
    }

    if (freezeCache && freezeCache.userId === user.id) {
      setFreezeDays(new Set(freezeCache.rows.map((row) => row.freeze_date)));
      setLoading(false);
      return;
    }

    let cancelled = false;
    setLoading(true);
    supabase.rpc("list_my_streak_freezes").then(({ data, error }) => {
      if (cancelled) return;
      if (!error) {
        freezeCache = { userId: user.id, rows: (data ?? []) as StreakFreezeRow[] };
        setFreezeDays(new Set(freezeCache.rows.map((row) => row.freeze_date)));
      }
      setLoading(false);
    });

    return () => {
      cancelled = true;
    };
  }, [user, userLoaded]);

  return { freezeDays, loading };
}

export function useStreakFreezes() {
  const { user, loaded: userLoaded } = useSupabaseUser();
  const userLoading = !userLoaded;
  const [freezes, setFreezes] = useState<StreakFreeze[]>([]);
  const [loading, setLoading] = useState(false);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(async () => {
    if (userLoading) return;
    if (!user || !supabaseConfigured() || !supabase) {
      setFreezes([]);
      return;
    }

    if (freezeCache && freezeCache.userId === user.id) {
      setFreezes(freezeCache.rows.map(mapFreeze));
      return;
    }

    setLoading(true);
    setError(null);
    const { data, error } = await supabase.rpc("list_my_streak_freezes");
    if (error) {
      setFreezes([]);
      setError(error.message);
    } else {
      freezeCache = { userId: user.id, rows: (data ?? []) as StreakFreezeRow[] };
      setFreezes(freezeCache.rows.map(mapFreeze));
    }
    setLoading(false);
  }, [user, userLoading]);

  useEffect(() => {
    void load();
  }, [load]);

  const usedThisWeek = useMemo(() => {
    const currentWeek = weekStartKey(new Date());
    return freezes.some((freeze) => weekStartKey(new Date(freeze.freezeDate)) === currentWeek);
  }, [freezes]);

  const useFreeze = useCallback(async () => {
    if (!user || !supabaseConfigured() || !supabase) {
      throw new Error("You must be signed in to use a streak freeze.");
    }

    setSaving(true);
    setError(null);
    const { error } = await supabase.rpc("use_streak_freeze", {
      target_date: localDateKey(new Date()),
    });
    setSaving(false);

    if (error) {
      setError(error.message);
      throw error;
    }

    freezeCache = null;
    await load();
  }, [load, user]);

  return { freezes, loading, saving, error, usedThisWeek, reload: load, useFreeze };
}
