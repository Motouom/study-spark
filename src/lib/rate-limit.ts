import { getServiceSupabase } from "@/lib/server-supabase";

type RateLimitResult = { allowed: boolean; retryAfterSeconds: number };

// In-memory per-user fixed-window rate limiter. Used only as a fallback when
// the Supabase-backed limiter (migration 053) is unavailable — e.g. before the
// migration is applied or when the service role key is not configured. It is
// per-instance only, so it must not be relied on across serverless instances.
const buckets = new Map<string, { count: number; resetAt: number }>();
const MAX_BUCKETS = 10_000;

function memoryRateLimit(key: string, limit: number, windowMs: number): RateLimitResult {
  const now = Date.now();
  const bucket = buckets.get(key);

  if (!bucket || now >= bucket.resetAt) {
    if (buckets.size >= MAX_BUCKETS) buckets.clear();
    buckets.set(key, { count: 1, resetAt: now + windowMs });
    return { allowed: true, retryAfterSeconds: 0 };
  }

  if (bucket.count >= limit) {
    return {
      allowed: false,
      retryAfterSeconds: Math.max(1, Math.ceil((bucket.resetAt - now) / 1000)),
    };
  }

  bucket.count += 1;
  return { allowed: true, retryAfterSeconds: 0 };
}

export async function rateLimit(
  key: string,
  limit: number,
  windowMs: number,
): Promise<RateLimitResult> {
  try {
    const supabase = getServiceSupabase();
    const { data, error } = await supabase.rpc("rate_limit_check", {
      p_key: key,
      p_limit: limit,
      p_window_ms: windowMs,
    });
    if (error) throw error;
    return {
      allowed: Boolean(data?.allowed),
      retryAfterSeconds: Number(data?.retry_after_seconds ?? 0),
    };
  } catch {
    return memoryRateLimit(key, limit, windowMs);
  }
}

export function rateLimitResponse(retryAfterSeconds: number) {
  return Response.json(
    { error: "Too many requests. Please try again shortly." },
    { status: 429, headers: { "Retry-After": String(retryAfterSeconds) } },
  );
}
