# StudySpark Deployment Runbook

This runbook describes how to prepare, deploy, and verify StudySpark on Vercel with Supabase, Fapshi, and AI integrations.

## 1. Pre-Deployment Checklist

- Confirm `main` contains the intended changes.
- Run `npm run lint`.
- Run `npm run build`.
- Confirm `.env.local` and any real secrets are not staged.
- Confirm Supabase migrations have been applied in order.
- Confirm the canonical Vercel project below is the only StudySpark project connected to `Motouom/study-spark` on `main`.
- Confirm Vercel environment variables are set for Production and Preview on the canonical project.

## 2. Canonical Production Deployment

StudySpark must have exactly one production Vercel project connected to the GitHub repository.

Canonical production project:

```text
Vercel team: motouoms-projects
Vercel project: study-spark
Git repository: Motouom/study-spark
Production branch: main
Production URL: https://study-spark-237.vercel.app
```

Ignore or remove these duplicate StudySpark projects after confirming they no longer hold needed domains, environment variables, analytics, or deployment history:

```text
study-spark-uruh
study-spark-s329
any other Vercel project connected to Motouom/study-spark on main
```

External services must point to the canonical production URL:

```text
APP_PUBLIC_URL=https://study-spark-237.vercel.app
Fapshi webhook=https://study-spark-237.vercel.app/api/payments/fapshi/webhook
Supabase site URL=https://study-spark-237.vercel.app
Supabase redirect URL=https://study-spark-237.vercel.app/auth/callback
Google OAuth redirect URL=https://ekqlqsyirsakdxonxmis.supabase.co/auth/v1/callback
Sitemap=https://study-spark-237.vercel.app/sitemap.xml
```

### Duplicate Vercel Project Cleanup

Before deleting anything, open each duplicate Vercel project and check:

- Domains: move any needed custom domain to the canonical `study-spark` project first.
- Environment variables: copy any missing values into the canonical project.
- Webhooks/integrations: confirm Fapshi, Supabase Auth, Google OAuth, analytics, and monitoring point to the canonical URL.
- Deployment history: export or note anything needed for audit/debugging.

Then disconnect Git deployments from each duplicate project:

1. Open Vercel > duplicate project > Settings > Git.
2. Disconnect `Motouom/study-spark` or disable production deployments from `main`.
3. Save.
4. Push or redeploy once and confirm only `study-spark` creates a production deployment.
5. Delete the duplicate project only after the canonical deployment has passed smoke tests.

Success condition: one push to `main` creates exactly one production deployment in Vercel, under `study-spark`.

## 3. Vercel Environment Variables

Add these in Vercel Project Settings > Environment Variables:

```text
VITE_SUPABASE_URL
VITE_SUPABASE_PUBLISHABLE_KEY
VITE_ADMIN_AUTH_ENDPOINT
SUPABASE_SERVICE_ROLE_KEY
FAPSHI_ENVIRONMENT
FAPSHI_API_USER
FAPSHI_API_KEY
FAPSHI_WEBHOOK_SECRET
OPENROUTER_API_KEY
AI_MODEL
AI_BASE_URL
APP_PUBLIC_URL
```

Use `Production and Preview` unless a value must differ per environment.

For production, set:

```text
APP_PUBLIC_URL=https://study-spark-237.vercel.app
```

## 4. Supabase Setup

1. Open Supabase Dashboard.
2. Apply SQL files in `database/supabase/` in numeric order for new environments.
3. Configure Auth providers.
4. Configure allowed redirect URLs:

```text
https://study-spark-237.vercel.app/auth/callback
http://127.0.0.1:8082/auth/callback
```

5. Set the production site URL:

```text
https://study-spark-237.vercel.app
```

6. Confirm RLS policies are enabled for learner-owned data.

## 5. Fapshi Setup

1. Open the Fapshi service for StudySpark.
2. Use sandbox credentials for testing or live credentials for production.
3. Set the webhook URL:

```text
https://study-spark-237.vercel.app/api/payments/fapshi/webhook
```

4. Set the webhook secret to the same value stored as `FAPSHI_WEBHOOK_SECRET` in Vercel.
5. Confirm the app uses `FAPSHI_ENVIRONMENT=live` only when real payments should move.

## 6. Deploy

Push to `main`:

```bash
git push origin main
```

Only the canonical `study-spark` Vercel project should build and deploy automatically.

## 7. Smoke Test

After deployment:

- Open the public landing page at `https://study-spark-237.vercel.app`.
- Confirm the install prompt shows `StudySpark`, the StudySpark icon, and the Cameroon GCE practice description.
- Leave the public page open long enough to confirm the StudySpark install nudge appears only when the browser reports the app is installable.
- Open `/pricing`.
- Sign in with Google.
- Complete or confirm learner onboarding.
- Open `/dashboard`.
- Open `/library` and confirm subject cards match the learner profile.
- Open a paper and confirm protected markdown renders.
- Tap `I understand this`, `Need review`, and `Bookmark`.
- Open `/progress` and confirm checkpoints appear.
- Request AI progress analysis and confirm either AI or fallback content appears.
- Start a sandbox Fapshi payment and verify the payment return path.
- Confirm private pages are not listed in `public/sitemap.xml`.
- In Android Chrome, install the app and confirm it opens within the `study-spark-237.vercel.app` scope.
- Turn network offline and confirm navigation shows the StudySpark offline message instead of a blank page.
- Confirm Vercel shows one new production deployment for the pushed commit, not multiple deployments across duplicate projects.

## 8. PWA Behavior

StudySpark is installable, but offline behavior is intentionally conservative.

Cached by the service worker:

- `/offline.html`
- `/site.webmanifest`
- `/favicon.ico`
- StudySpark install icons under `/icons/`

Not cached by the service worker:

- Authenticated routes such as `/dashboard`, `/library`, `/course/:documentId`, `/progress`, and `/settings`
- Supabase API responses
- Protected paper markdown/content
- Payment routes and Fapshi responses
- AI-generated responses

This protects learner data on shared phones and avoids stale private study material after sign-out or account switching. Offline users see an explicit reconnect message. Full offline paper reading should only be added later with per-user encrypted storage, sign-out cache clearing, and a clear sync/conflict strategy.

Service worker update strategy:

- `public/service-worker.js` uses a versioned cache name.
- Change `CACHE_VERSION` whenever cached PWA assets change.
- `service-worker.js` is served with `no-store` so browsers check for updates after deploy.
- Build assets remain immutable under `/assets/`; they are not cached by the service worker.

Install prompt strategy:

- `public/pwa-install-prompt.js` listens for the browser `beforeinstallprompt` event.
- The app shows a small install nudge after a short randomized delay instead of forcing an immediate prompt.
- Dismissed prompts stay quiet for 7 days.
- `Later` pauses the prompt for 8 hours.
- The nudge is hidden after installation or when the app is already running in standalone mode.

## 9. Troubleshooting

### Every push creates multiple Vercel deployments

Likely cause:

- Multiple Vercel projects are connected to `Motouom/study-spark` on branch `main`.

Actions:

- Keep only the canonical `study-spark` project connected to Git.
- Disconnect Git deployments from duplicate projects before deleting them.
- Confirm `APP_PUBLIC_URL`, Supabase Auth URLs, Fapshi webhook, sitemap, and robots all point to `https://study-spark-237.vercel.app`.
- Push a harmless commit and confirm Vercel shows one production deployment.

### Blank page after deploy

Likely causes:

- Browser cached an old JavaScript chunk.
- CSP blocks a runtime script.
- Vercel deployed with missing environment variables.

Actions:

- Hard refresh the page.
- Check browser console for 404 asset names.
- Check Vercel deployment logs.
- Confirm `vercel.json` CSP allows required runtime scripts and API hosts.
- Confirm the service worker cache name was bumped if offline assets changed.

### Google sign-in fails

Check:

- Google OAuth redirect URI points to Supabase callback.
- Supabase provider has the matching Google client ID and secret.
- Supabase URL Configuration includes the StudySpark `/auth/callback` URL.

### Payment does not activate Premium

Check:

- `FAPSHI_ENVIRONMENT` matches the credentials being used.
- `FAPSHI_API_USER` and `FAPSHI_API_KEY` belong to the correct service.
- The webhook URL includes `/api/payments/fapshi/webhook`.
- `FAPSHI_WEBHOOK_SECRET` matches the Fapshi webhook secret.
- The paid amount matches the expected FCFA price.

### AI returns empty response

Check:

- `OPENROUTER_API_KEY` is valid.
- `AI_MODEL` exists and is available to the account.
- `AI_BASE_URL` is correct.
- Server logs show whether the fallback path was used.

## 10. Rollback

Use Vercel's rollback feature from the project dashboard if a production deployment breaks. If the database schema changed, confirm whether rollback also needs a forward-compatible SQL patch. Avoid destructive database rollback during active user traffic.
