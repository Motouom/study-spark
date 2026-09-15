# StudySpark Deployment Runbook

This runbook describes how to prepare, deploy, and verify StudySpark on Vercel with Supabase, Fapshi, and AI integrations.

## 1. Pre-Deployment Checklist

- Confirm `main` contains the intended changes.
- Run `npm run lint`.
- Run `npm run build`.
- Confirm `.env.local` and any real secrets are not staged.
- Confirm Supabase migrations have been applied in order.
- Confirm Vercel environment variables are set for Production and Preview.

## 2. Vercel Environment Variables

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

## 3. Supabase Setup

1. Open Supabase Dashboard.
2. Apply SQL files in `database/supabase/` in numeric order for new environments.
3. Configure Auth providers.
4. Configure allowed redirect URLs:

```text
https://YOUR_PUBLIC_DOMAIN/auth/callback
http://127.0.0.1:8082/auth/callback
```

5. Confirm RLS policies are enabled for learner-owned data.

## 4. Fapshi Setup

1. Open the Fapshi service for StudySpark.
2. Use sandbox credentials for testing or live credentials for production.
3. Set the webhook URL:

```text
https://YOUR_PUBLIC_DOMAIN/api/payments/fapshi/webhook
```

4. Set the webhook secret to the same value stored as `FAPSHI_WEBHOOK_SECRET` in Vercel.
5. Confirm the app uses `FAPSHI_ENVIRONMENT=live` only when real payments should move.

## 5. Deploy

Push to `main`:

```bash
git push origin main
```

Vercel should build and deploy automatically.

## 6. Smoke Test

After deployment:

- Open the public landing page.
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
- In Android Chrome, install the app and confirm it opens within the `study-spark-uruh.vercel.app` scope.
- Turn network offline and confirm navigation shows the StudySpark offline message instead of a blank page.

## 7. PWA Behavior

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

## 8. Troubleshooting

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

## 9. Rollback

Use Vercel's rollback feature from the project dashboard if a production deployment breaks. If the database schema changed, confirm whether rollback also needs a forward-compatible SQL patch. Avoid destructive database rollback during active user traffic.
