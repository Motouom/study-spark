# Production Correctness & Launch Smoke QA — Issue #70

> Code-level verification report for the authenticated learner experience on the canonical domain.
> Companion to `docs/launch-readiness-checklist.md`. Items marked **manual** require browser/dashboard
> access to production and cannot be proven from source alone.

| Field                | Value                                |
| -------------------- | ------------------------------------ |
| Date                 | 2026-09-29                           |
| Environment          | Production                           |
| Canonical URL        | `https://studyspark.cm` |
| Supabase project ref | `ekqlqsyirsakdxonxmis`               |
| Branch               | `fix/production-smoke-qa`            |

---

## Checklist

### 1. Latest production deployment serving current `main`

- [ ] **Manual** — Vercel Dashboard → Deployment → confirm latest deployment SHA matches `git rev-parse HEAD` on `main`.
- [ ] **Manual** — `curl -I https://studyspark.cm` returns 200 and current build.

### 2. Sign in + full authenticated learner flow

- [ ] **Manual** — Sign in on production, complete onboarding, land on `/dashboard`, navigate library/courses/cheatsheets/settings.

### 3. Google OAuth branding shows StudySpark

- [ ] **Manual** — Supabase Dashboard → Auth → URL Configuration → Site URL / Redirect URLs point to canonical domain; Google OAuth consent screen branded "StudySpark" (not the Supabase project domain). This is a Supabase dashboard setting, not a code change.

### 4. New Google user creates profile and stays on dashboard

- [x] **Code** — `src/routes/auth.callback.tsx` exchanges the PKCE session and navigates to `/dashboard` on success.
- [x] **Code** — `src/hooks/use-study-profile.ts` distinguishes "no profile yet" from "profile fetch failed" so a transient error does not funnel a signed-in user into onboarding.
- [ ] **Manual** — Create a fresh Google account, sign in, complete onboarding, confirm no local fallback.

### 5. Profile edits save for anglophone and francophone learners

- [x] **Code** — `src/hooks/use-study-profile.ts` `saveProfile` persists the full profile (language, education_system, level, class_level, series, subjects).
- [x] **Code** — Supabase constraints allow all English + French curriculum paths (see §6).
- [ ] **Manual** — Edit a profile as an English GCE learner and as a francophone learner; confirm both save.

### 6. Supabase class/level/series constraints allow all curriculum paths

- [x] **Code** — `supabase/migrations/20260921150015_expand_student_profile_bilingual_constraints.sql`:
  - `class_level` allows `form_3, form_4, form_5, lower_sixth, upper_sixth` (English) and `sixieme, cinquieme, quatrieme, troisieme, seconde, premiere, terminale` (French).
  - `series` allows `general, science, arts, commercial, technical, a_science, a_arts, a_commercial` (English) and `tronc_commun, a1, a2, a4, abi, c, d, e, ti, acc, cg, fig, ses` (French).
  - `education_system` allows `gce, francophone`; `level` allows `ordinary, advanced`; `language` allows `english, french`.

### 7. Notifications unread/read + sidebar count updates

- [x] **Code** — `src/hooks/use-learner-notifications.ts` persists read state per user and emits a `studyspark:notifications-read` event so the sidebar count updates immediately.
- [ ] **Manual** — Mark a notification read, confirm sidebar count updates without reload.

### 8. Support flow uses temporary mailto fallback

- [x] **Code** — `src/routes/_app.support.tsx` builds a `mailto:` link to `SUPPORT_EMAIL` (`motouomvictor@gmail.com`) with subject/body context, plus a WhatsApp fallback. This is the intended temporary fallback until a verified email domain is available.

### 9. Payment return, premium status, premium gates on canonical domain

- [x] **Code** — `src/lib/premium.ts` `isPremiumActive` checks `plan === 'premium'` and `premiumUntil` expiry.
- [ ] **Manual** — Complete a Fapshi checkout on production, confirm premium activates and gates unlock.

### 10. No private learner route indexable or in sitemap

- [x] **Code** — `public/robots.txt` disallows `/dashboard`, `/library`, `/courses`, `/cheatsheets`, `/settings`, `/onboarding`, `/notifications`, `/progress`, `/learning-path`, `/quiz`, `/search`, `/streak`, `/support`, `/signin`, `/course/`, `/textbooks`, `/achievements`, `/leaderboard`, `/auth/`, `/api/`, `/control-panel-9k3x`.
- [x] **Code** — `public/sitemap.xml` contains only public pages: `/`, `/fr`, `/pricing`, `/fr/tarifs`. No private learner routes present.

---

## Summary

| Category                                  | Code-verified | Manual (pending)        |
| ----------------------------------------- | ------------- | ----------------------- |
| Sitemap / robots (private routes blocked) | ✅            | —                       |
| Support mailto fallback                   | ✅            | —                       |
| Supabase curriculum constraints           | ✅            | —                       |
| Auth callback → dashboard                 | ✅            | —                       |
| Profile save (bilingual)                  | ✅            | —                       |
| Premium gate logic                        | ✅            | —                       |
| Notifications read/sidebar                | ✅            | —                       |
| Live deployment serving latest SHA        | —             | ⏳                      |
| Google OAuth branding                     | —             | ⏳ (Supabase dashboard) |
| End-to-end sign-in + learner flow         | —             | ⏳                      |
| Payment return / premium activation       | —             | ⏳                      |

**Code-level items are verified.** The remaining items are manual browser/dashboard checks against production.
