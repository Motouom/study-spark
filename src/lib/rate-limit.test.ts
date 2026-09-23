import { describe, expect, it, vi } from "vitest";

vi.mock("@/lib/server-supabase", () => ({
  getServiceSupabase: () => {
    throw new Error("service role key not configured in tests");
  },
}));

import { rateLimit } from "./rate-limit";

describe("rateLimit (memory fallback)", () => {
  it("allows requests up to the limit", async () => {
    for (let i = 0; i < 3; i++) {
      const result = await rateLimit("test:user1", 3, 60_000);
      expect(result.allowed).toBe(true);
      expect(result.retryAfterSeconds).toBe(0);
    }
  });

  it("blocks requests beyond the limit", async () => {
    for (let i = 0; i < 3; i++) await rateLimit("test:user2", 3, 60_000);
    const blocked = await rateLimit("test:user2", 3, 60_000);
    expect(blocked.allowed).toBe(false);
    expect(blocked.retryAfterSeconds).toBeGreaterThan(0);
  });

  it("resets after the window elapses", async () => {
    for (let i = 0; i < 3; i++) await rateLimit("test:user3", 3, 10);
    expect((await rateLimit("test:user3", 3, 10)).allowed).toBe(false);
    await new Promise((resolve) => setTimeout(resolve, 20));
    expect((await rateLimit("test:user3", 3, 10)).allowed).toBe(true);
  });

  it("tracks keys independently", async () => {
    await rateLimit("test:user4", 1, 60_000);
    expect((await rateLimit("test:user4", 1, 60_000)).allowed).toBe(false);
    expect((await rateLimit("test:user5", 1, 60_000)).allowed).toBe(true);
  });
});
