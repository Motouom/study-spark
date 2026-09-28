# StudySpark Launch Readiness Checklist

> Cameroon public launch — Cameroon GCE / BEPC / Probatoire / Baccalauréat revision.  
> Reusable for every major launch. Run **once against Preview/Staging** then **once against Production** before promotion. Record pass/fail and blockers inline.

**How to use:** Check each box only when you have **evidence** (URL, screenshot, log, or command output). Leave unchecked = blocker. Do not promote while any `Go/No-Go = NO-GO` row is red.

| Field | Value |
|---|---|
| Date | YYYY-MM-DD |
| Environment | Preview / Production |
| Checklist version | v1 — 2026-09-23 |
| Owner / DRI |  |
| Build SHA | `git rev-parse HEAD` |
| Vercel deployment URL |  |
| Canonical URL under test | `https://study-spark-237.vercel.app` (until custom domain replaces it) |
| Supabase project ref | `ekqlqsyirsakdxonxmis` |

Related docs: `docs/deployment-runbook.md`, `docs/supabase-migrations.md`, `docs/supabase-auth-setup.md`, `docs/arc42.md`, `docs/qa/bilingual-mobile-ux/`, `docs/analytics-launch-queries.md`.

---

## 0) Preconditions

- [ ] `main` contains only reviewed commits. Evidence: `git log --oneline -10` + PR approvals.
- [ ] `npm run lint` passes.
- [ ] `npm run build` passes locally and on Vercel (no duplicate Vercel projects building `main`). See `deployment-runbook.md` §2 canonical project `motouoms-projects/study-spark`.
- [ ] No `.env.local` or secrets staged. `git status --porcelain` clean except intentional.
- [ ] `routeTree.gen.ts` committed (generated from `fr.terms`, `fr.privacy`, `fr.refund`, etc.).

## 1) Domain & Canonical URL

| Check | How to verify | Pass/Fail | Notes |
|---|---|---|---|
| Single production Vercel project `study-spark` connected to `Motouom/study-spark@main` | Vercel Dashboard → Project → Settings → Git |  |  |
| Exactly one production deployment per push to `main` | Push harmless commit, count deployments |  |  |
| `APP_PUBLIC_URL=https://study-spark-237.vercel.app` (or custom domain when live) | Vercel Env Vars + `src/lib/seo.ts:1` `SITE_URL` + `vercel.json` |  |  |
| `canonicalUrl("/")`, `alternateLinks("/","/fr")` return production URL | View source `<link rel="canonical">` on `/`, `/pricing`, `/terms`, `/fr/terms` |  |  |
| `public/sitemap.xml` and `public/robots.txt` point to canonical, private routes blocked | `curl https://<canonical>/sitemap.xml`, `curl .../robots.txt` |  |  |
| Custom domain (when ready, see #8) — DNS, SSL, HSTS, redirect `www` → apex | `dig`, `curl -I https://<custom>` |  |  |
| External services all point to canonical (see below) | Check Supabase, Fapshi, Google, sitemap |  |  |

Blocker if: duplicate Vercel project still builds `main`, or canonical mismatched across SEO/sitemap/Fapshi/Supabase.

## 2) Environment Variables & Secrets

Verify in **Vercel → Project → Settings → Environment Variables** (Production and Preview unless noted):

- [ ] `VITE_SUPABASE_URL` — matches `ekqlqsyirsakdxonxmis.supabase.co`
- [ ] `VITE_SUPABASE_PUBLISHABLE_KEY` (anon)
- [ ] `VITE_ADMIN_AUTH_ENDPOINT` (if used)
- [ ] `SUPABASE_SERVICE_ROLE_KEY` — server-only, not exposed in bundle (`vercel.json` no client leak)
- [ ] `FAPSHI_ENVIRONMENT` — `sandbox` for preview, `live` for production (see §5)
- [ ] `FAPSHI_API_USER` + `FAPSHI_API_KEY` — belong to correct Fapshi service
- [ ] `FAPSHI_WEBHOOK_SECRET` — same as Fapshi dashboard webhook secret
- [ ] `OPENROUTER_API_KEY` / `AI_API_KEY` + `AI_MODEL` + `AI_BASE_URL` + `AI_TIMEOUT_MS`
- [ ] `APP_PUBLIC_URL` — production canonical
- [ ] No secrets in `src/lib/*` client bundle (`grep -r SERVICE_ROLE src/` must be 0).

## 3) Supabase & Database Migrations

See `docs/supabase-migrations.md` for ordered list.

- [ ] `supabase link --project-ref ekqlqsyirsakdxonxmis` succeeds.
- [ ] `supabase migration list --linked` shows expected history (no unapplied prod migrations).
- [ ] Pending SQL reviewed file-by-file, applied one at a time: `supabase db query --linked --file database/supabase/<file>.sql` (or `supabase db push --linked` for timestamp migrations).
- [ ] Verification queries from `supabase-migrations.md` pass: objects, functions (`refresh_my_subscription_status`, `list_my_subscription`), RLS enabled for learner-owned data.
- [ ] Backup exists for high-risk schema changes.
- [ ] Seed/protected content present: subject cards match profile filters (library), papers render via `ProtectedMarkdown`.

## 4) Supabase Auth & Google OAuth

Config per `docs/supabase-auth-setup.md`:

- [ ] Supabase Dashboard → Auth → URL Configuration: `Site URL = https://<canonical>` , `Redirect URLs` include `https://<canonical>/auth/callback` and `http://127.0.0.1:8082/auth/callback`.
- [ ] Supabase → Auth → Providers → Google: enabled, correct Client ID/Secret, redirect URI = `https://ekqlqsyirsakdxonxmis.supabase.co/auth/v1/callback`.
- [ ] Google Cloud Console → Credentials → OAuth: authorized redirect = same Supabase callback; JS origin = `https://<canonical>`.
- [ ] Smoke: `/signin` → Continue with Google → returns to `/dashboard` or `/onboarding`, no blank page/CSP error (see #15).
- [ ] Smoke: magic link + password flows work, error `error_description` shows friendly message (`src/routes/signin.tsx:44`).
- [ ] RLS: unauthenticated cannot read `student_profiles`/`progress`; authenticated can only read own.

## 5) Payments — Fapshi

See `docs/deployment-runbook.md` §5 + `supabase/functions/_shared/fapshi.ts`.

- [ ] Fapshi dashboard: service for StudySpark, webhook URL `https://<canonical>/api/payments/fapshi/webhook`, secret = `FAPSHI_WEBHOOK_SECRET`.
- [ ] `FAPSHI_ENVIRONMENT` matches credentials (sandbox vs live). Never `live` on preview.
- [ ] Initiate: `POST /api/payments/fapshi/initiate` (behind Supabase auth) creates transaction and returns `checkoutUrl`.
- [ ] Verify: `POST /api/payments/fapshi/verify` with `provider_transaction_id` polls Fapshi, checks amount `1500`/`12000` FCFA before activating `premiumUntil` (`supabase/functions/fapshi-verify`).
- [ ] Webhook: Fapshi `POST /api/payments/fapshi/webhook` with secret header activates Premium even if learner closed tab.
- [ ] Smoke (sandbox): pricing → Pay with Fapshi → Fapshi sandbox → pay → redirect with `?payment_return` → `pricing.tsx:100` poll shows `paymentConfirmed` and `Settings → Payment history` shows `successful` + premium active; `payment_pending`/`paymentNotConfirmed` paths handled.
- [ ] No card/bank stored client-side; only `billing_interval`, `amount_xaf`, `status`, `provider_transaction_id` stored.

## 6) AI — OpenRouter

- [ ] `OPENROUTER_API_KEY` valid, `AI_MODEL` exists (e.g., `google/gemini-2.5-flash` or configured), `AI_BASE_URL` correct (see `src/lib/ai-providers.ts`).
- [ ] Server routes `POST /api/ai/progress-insight`, `POST /api/ai/learning-path`, `POST /api/ai/format-paper` authenticate via Supabase bearer token, send only aggregated signals (weakest subjects, difficulty ranking) — no paper markdown/email (`src/lib/ai.ts:80`).
- [ ] Fallback works: stop AI key or force timeout, request insight → deterministic `fallbackInsight`/`fallbackLearningPath` returned, not blank.
- [ ] Logs: `logAiFailure` emits structured warning, not 500 to user.

## 7) Content & Bilingual Data

- [ ] Migrations for `francophone` curriculum applied (`docs/francophone-curriculum.md`, `docs/french-content-workflow.md`).
- [ ] Library filters: GCE (`/dashboard`) vs Francophone (`/fr`) show only profile-matching papers. Verify one GCE profile (Form 5 C) and one Francophone profile (Terminale D) each see correct subjects.
- [ ] Protected delivery: `library` shows `library.protectedNotice` (`src/lib/i18n.tsx:95`), no download/PDF export, bulk blocked.
- [ ] No private paper leaked to `sitemap.xml`.

## 8) Policies & Legal (#29)

- [ ] Pages load publicly (no auth): `/terms`, `/privacy`, `/refund` + `/fr/terms`, `/fr/privacy`, `/fr/refund` (SEO `canonicalUrl`/`alternateLinks`, `og:locale`).
- [ ] Pricing/checkout shows refund disclaimer **before** `Pay with Fapshi` (`pricing.tsx:315`, `fr.tarifs.tsx:110`) linking Refund/Terms/Privacy + Fapshi role.
- [ ] Footers: `/` (`index.tsx:444`), `/fr` (`fr.tsx:265`), `/pricing`, `/fr/tarifs`, `/settings` Legal section (`_app.settings.tsx:764`) all link Terms/Privacy/Refund.
- [ ] Sign in `/signin` linked agreement bilingual (`signin.tsx:257`) — EN Terms/Privacy/Refund, FR Conditions/Confidentialité/Remboursement.
- [ ] Copy reviewed: FCFA pricing, Fapshi sole method (MTN/Orange via Fapshi channels), manual renewal (no auto-charge), 7-day refund via Support → Fapshi approval, analytics/AI high-level disclosure, Cameroon governing law (Yaoundé), contact `support@studyspark.cm`. No promise of unimplemented self-serve cancel.

## 9) SEO

Per `docs/arc42.md` §8 + `src/lib/seo.ts`:

- [ ] Public: `/`, `/fr`, `/pricing`, `/fr/tarifs`, `/terms`, `/privacy`, `/refund`, `/fr/terms`, `/fr/privacy`, `/fr/refund` have `<title>`, `description`, `og:title/description/url/image`, `twitter:*`, `<link rel="canonical">`, `hreflang en-CM/fr-CM/x-default`.
- [ ] Private: `/dashboard`, `/library`, `/course/*`, `/progress`, `/settings`, `/admin` blocked via `robots.txt` and noindex, not in `sitemap.xml`.
- [ ] `sitemap.xml` + `robots.txt` served with correct canonical, `site.webmanifest` present.
- [ ] `pricingSchema()`/`frenchPricingSchema()` valid JSON-LD.
- [ ] After custom domain, old Vercel URL 301 → custom, `SITE_URL` updated.

## 10) PWA

See `deployment-runbook.md` §8:

- [ ] `public/site.webmanifest` name `StudySpark`, icons `/icons/*`, `start_url`.
- [ ] `public/service-worker.js` `CACHE_VERSION` bumped if offline assets changed, offline page `/offline.html` cached, authenticated/API/AI/payment routes **not** cached (shared phone protection).
- [ ] Install prompt: `public/pwa-install-prompt.js` shows nudge after `beforeinstallprompt` with delay, dismiss 7d, later 8h, hidden in standalone.
- [ ] Offline: airplane mode → navigate shows StudySpark offline message, not blank.
- [ ] Android Chrome → Install → opens within `study-spark-237.vercel.app` scope.

## 11) Analytics

See `docs/analytics-launch-queries.md` + `src/lib/analytics.ts`:

- [ ] Vercel Analytics enabled, custom events anonymized/debounced 1200ms: `landing_view`, `signup_start/complete`, `paper_opened` (subject/level/locked only), `checkpoint_marked`, `ai_action_used`, `search_used`, `premium_view`, `checkout_started`, `payment_success/failure/pending`, `signin_error` — no paper content/email/userId/tokens.
- [ ] Funnel query run against preview data, no PII leak.

## 12) Support & Contact

- [ ] `/support` loads, pre-fills plan/level/subjects, `Send via email` + `Send via WhatsApp` open with body, `support@studyspark.cm` visible.
- [ ] Refund/cancel requests route to support, reply SLA 48h documented in refund policy.
- [ ] On-call contact + escalation listed in rollback plan below.

## 13) Mobile QA & Bilingual Readiness

- [ ] Layouts tested at 375px, 768px, 1280px: no horizontal scroll on dashboard, library, course reader, pricing, policies. Sidebar → sheet on mobile (`_app.tsx:393`).
- [ ] Bilingual: EN default, FR via `localStorage studyspark.locale` or `/fr` prefix (`useSyncLocaleFromProfile`). Verify `pricing` ↔ `fr/tarifs`, `terms` ↔ `fr/terms` switch, support messages localized.
- [ ] Copy accents correct (FR), exam terms (BEPC, Probatoire, Bac C/D) accurate.

## 14) SMOKE TESTS (run in order)

Run against **Preview** then **Production**. Record pass/fail + SHA.

| # | Path | Steps | Expected | Pass/Fail |
|---|---|---|---|---|
| 1 | `/` | Open canonical, check hero, Features, How it works, Pricing preview, CTA, footer links | Renders, no CSP blank, footer has Terms/Privacy/Refund |  |
| 2 | `/fr` | Same as `/` but French + `/fr/tarifs` CTA | FR copy, nav has Tarifs/Conditions |  |
| 3 | `/pricing` + `/fr/tarifs` | Toggle Monthly/Yearly, see FCFA 1500/12000, features, FAQ, refund disclaimer under Pay button | Disclaimer links refund before payment |  |
| 4 | `/signin` | See Google + email magic link + password, agreement links to Terms/Privacy/Refund | Links work, bilingual |  |
| 5 | `/signin` → Google OAuth | Sign in with Google | Returns to `/dashboard` or `/onboarding`, no blank/CSP |  |
| 6 | `/onboarding` | Create profile (name, language, GCE/Francophone, class/series/subjects, country/region/city, optional verify location) | Save succeeds, `useStudyProfile` persists, redirect to `/dashboard` |  |
| 7 | `/dashboard` | Check streak, papersOpened, topicsMarked, weeklyPerformance, masteryBySubject | Signals from 0 → updates after marks |  |
| 8 | `/library` | Filter subject, open paper, see protected notice `library.protectedNotice` | Only profile-matching papers shown |  |
| 9 | `/course/:id` | Open protected paper, rendering `ProtectedMarkdown` (KaTeX, diagrams), mark `I understand` / `Need review` / `Bookmark`, scroll depth | Checkpoints saved, `Paper activity` updates, copy/bulk blocked |  |
| 10 | `/progress` / `/dashboard` analytics | Confirm Premium gate shows analytics preview for free, full for premium |  |  |
| 11 | AI | Request `Progress insight` + `Learning path` | Returns AI or deterministic fallback, not blank |  |
| 12 | Payment (sandbox) | As authenticated user, Pricing → Pay with Fapshi (monthly) → sandbox pay → `?payment_return` → verify poll `paymentConfirmed` → Settings Payment history `successful` + premium active until date | `fapshi-verify` amount check passes |  |
| 13 | Payment history | Settings → Payment history shows transaction, retry for `failed/expired` works |  |  |
| 14 | `/settings` | Edit profile, change language/system/class/series/subjects, save, Legal links, sign out, delete account (type `delete`) cascade | All persist, Legal links present |  |
| 15 | `/admin` (`/control-panel-9k3x`) | Sign in as admin (Supabase app metadata role), open control panel | Gated, non-admin redirected |  |
| 16 | SEO/PWA | Check `sitemap.xml` (only public), `robots.txt` (blocks private), standalone install, offline message |  |  |
| 17 | Policies | Open `/terms`, `/privacy`, `/refund`, `/fr/*` directly (no auth) on mobile + desktop | All 6 load, links work |  |

## 15) Explicit GO / NO-GO Criteria

**GO only if ALL are green.** Any single NO-GO blocks promotion.

| System | GO requires | NO-GO if |
|---|---|---|
| Build | `main` builds on canonical Vercel, `npm run build` + `npx tsc --noEmit` (policy routes) pass | Build fails or duplicate project builds `main` |
| Domain | Canonical URL is single source of truth across SEO, Supabase, Fapshi, sitemap | Mismatch or SSL fail |
| Supabase | Migrations applied, verification queries pass, RLS enforced | Unapplied migration or RLS disabled |
| Auth | Google + magic link/password all succeed, no blank/CSP | Google blank page or redirect loop |
| Payments | Sandbox Fapshi → verify + webhook activates Premium for correct amount | Payment verifies without amount check or webhook secret mismatch |
| AI | Insight/learning path returns AI **or** fallback, never blank 500 | Blank or 500 without fallback |
| Content | Library scoped to profile, no private URL in sitemap | Wrong papers or leak |
| Policies | 6 policy pages + pricing/signin/settings links present, copy reviewed | Any 404 or unlinked checkout |
| SEO/PWA | Public indexable, private blocked, PWA install + offline message works | Private indexed or offline blank |
| Analytics | Events firing anonymized, no PII | PII leaked or double-counted | 
| Support | `/support` reachable, reply contact known | No contact or SLA unknown |
| Mobile/Bilingual | No horizontal scroll at 375px, EN/FR toggle works, CSP not blocked | Clipped layout or CSP runtime error |

## 16) Rollback / Incident Plan

**If launch fails (critical smoke or NO-GO):**

1. **Stop promotion** — pause social/ads, pin status.
2. **Vercel rollback:** Dashboard → `study-spark` → Deployments → select last known good deployment → Rollback. (Do **not** destructive DB rollback during active traffic — prefer forward fix per `supabase-migrations.md`.)
3. **DB forward fix:** If schema broken, prepare patch SQL, review, apply via `supabase db query --linked --file ...`, re-verify.
4. **Fapshi:** If `live` webhook failing, switch `FAPSHI_ENVIRONMENT=sandbox` temporarily, disable checkout button copy ("Payments paused"), keep already-active Premium until fixed.
5. **Auth:** If Google OAuth down, keep email magic link + password enabled, update `/support` banner.
6. **Contacts:** List here before launch —
   - Vercel owner: motouoms-projects
   - Supabase project: `ekqlqsyirsakdxonxmis`
   - Fapshi support: Fapshi dashboard + webhook logs
   - OpenRouter status: `status.openrouter.ai`
   - On-call:  (fill name/phone/Slack)
7. **Communication:** Template — "StudySpark launch paused due to [system]. Existing Premium remains active until [date]. Fix ETA [time]. Contact support@studyspark.cm / /support."

Reusability: copy this checklist for next launch — update `Date`, `SHA`, `Canonical URL`, and `Blockers` only.

---

## 17) Sign-off & Blocker Log

### Preview run (staging)

| Date | Tester | SHA | Result | Blockers / notes |
|---|---|---|---|---|
|  |  |  | GO / NO-GO |  |

### Production run (before public promotion)

| Date | Tester | SHA | Result | Blockers / notes |
|---|---|---|---|---|
|  |  |  | GO / NO-GO |  |

### Known blockers before promotion

| # | Blocker | Severity | Owner | ETA |
|---|---|---|---|---|
|  |  | P0/P1/P2 |  |  |

### Final GO / NO-GO

- [ ] **GO** — all verifications pass, no P0/P1 blockers, rollback contacts filled.
- [ ] **NO-GO** — reasons: 

**Approvers:**
- [ ] Tech DRI:
- [ ] Product/owner (Motouom):
- [ ] Support on-call:

---

## Appendix: Useful Commands & URLs

```bash
npm run lint
npm run build
npx tsc --noEmit
supabase link --project-ref ekqlqsyirsakdxonxmis
supabase migration list --linked
supabase db query --linked --file database/supabase/<file>.sql
# verification queries: see docs/supabase-migrations.md
curl -I https://study-spark-237.vercel.app/terms
curl https://study-spark-237.vercel.app/sitemap.xml
curl https://study-spark-237.vercel.app/robots.txt
```

Public URLs to check: `/`, `/fr`, `/pricing`, `/fr/tarifs`, `/terms`, `/privacy`, `/refund`, `/fr/terms`, `/fr/privacy`, `/fr/refund`, `/signin`, `/dashboard`, `/library`, `/progress`, `/settings`, `/support`, `/_app` shell.

