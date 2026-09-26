# StudySpark Disaster Recovery Runbook

This document covers how to recover StudySpark from database failures, bad
migrations, broken deploys, lost secrets, payment incidents, and other
platform-level problems.

Cross-reference with `docs/deployment-runbook.md` for normal deployment
procedures and `docs/supabase-migrations.md` for migration discipline.

---

## Incident Severity Levels

| Level | Description | Example | Response target |
|---|---|---|---|
| **P1** | Production down, learners blocked | App returns 500 on all routes | Immediate — within 15 min |
| **P2** | Core feature broken | Payments fail, papers won't open | Within 1 hour |
| **P3** | Non-critical degradation | AI fallback active, chart broken | Within 4 hours |
| **P4** | Cosmetic or minor | Wrong label, missing icon | Next deploy cycle |

---

## 1. Supabase Database Recovery

### 1.1 Enable and verify automatic backups

Supabase Pro and higher plans include daily automated backups with point-in-time
recovery (PITR). Verify:

1. Open **Supabase dashboard → Project settings → Backups**.
2. Confirm automated backups are enabled and the retention period is at least 7 days.
3. Note the most recent backup timestamp.

If backups are not enabled on a paid plan, enable them immediately before any
production changes.

### 1.2 Restore from a Supabase backup (P1/P2)

> **Warning:** A full restore replaces all data in the target project. Never
> run a restore on the production project without first confirming what you are
> restoring to.

Steps using Supabase dashboard:

1. Open **Supabase dashboard → Backups**.
2. Select the backup point closest to before the incident.
3. Click **Restore** and confirm the target project reference
   (`ekqlqsyirsakdxonxmis`).
4. Wait for the restore to complete (typically 5–15 minutes).
5. After restore, re-apply any SQL migrations that ran between the backup
   point and the incident. Check `supabase migration list --linked` to
   identify the gap.
6. Run the verification queries in `docs/supabase-migrations.md`.
7. Smoke test: sign in, open a paper, confirm progress saves, check Premium
   status for a known paid learner.

### 1.3 Point-in-time recovery (PITR)

If the Supabase project has PITR enabled:

1. Open **Supabase dashboard → Backups → Point in Time**.
2. Select the exact timestamp just before the data incident.
3. Follow the same post-restore steps as 1.2.

### 1.4 Partial data recovery (no full restore needed)

For accidental row deletions or incorrect updates:

1. Use the Supabase SQL editor to query the backup via a Supabase snapshot if
   available, or restore to a staging project first.
2. Export the affected rows from the staging restore.
3. Re-insert or update them in production using a safe SQL patch.
4. Log the recovery as an admin audit entry if it affects learner profiles or
   payment records.

### 1.5 Periodic backup verification checklist

Run this monthly or before major schema changes:

- [ ] Supabase dashboard confirms automated backups are enabled.
- [ ] Most recent backup is less than 24 hours old.
- [ ] Restoration to a test project completes without errors.
- [ ] Smoke test on test project passes (sign in, paper open, progress save).
- [ ] Backup retention period is at least 7 days.

---

## 2. Migration Recovery

### 2.1 Preferred approach: forward fix

If a migration introduces a bug, **prefer a new forward-fix migration** over
destructive rollback while users are active. Rollback during live traffic risks
data loss and breaks any data written after the bad migration ran.

Steps:

1. Identify the exact migration file that caused the problem.
2. Write a new migration file (next number in sequence) that corrects the issue
   without dropping data.
3. Test it on a staging/preview Supabase project first.
4. Apply to production:

```bash
supabase db query --linked --file database/supabase/<fix_migration>.sql
```

5. Verify with `supabase migration list --linked` and smoke tests.

### 2.2 When destructive rollback is unavoidable

Only use destructive rollback if:
- The bad migration ran in the last few minutes and no new learner data has been
  written since.
- A backup from before the migration exists.

Steps:

1. Put the app in maintenance mode by deploying a one-line change that returns
   503 on all routes, or pause Vercel deployments temporarily.
2. Restore from backup (see section 1.2).
3. Re-apply all migrations up to (but not including) the bad one.
4. Fix the bad migration file.
5. Apply the fixed migration.
6. Remove maintenance mode and redeploy.

### 2.3 Migration gone wrong in production — fast triage

| Symptom | Likely cause | Fix |
|---|---|---|
| `column does not exist` errors | Migration added a column the app expects but didn't deploy yet | Deploy app or run migration |
| `function does not exist` | RPC dropped or renamed without updating app | Forward-fix: restore/rename function |
| `permission denied` | GRANT/REVOKE changed incorrectly | Forward-fix: re-grant correct permissions |
| `could not serialize access due to concurrent update` | Migration ran during peak traffic | Run again during low-traffic window |
| Learners can't save progress | RLS policy changed incorrectly | Forward-fix: restore correct policy |

---

## 3. Vercel Deployment Rollback

### 3.1 Rollback via Vercel dashboard (recommended)

1. Open **vercel.com → study-spark project → Deployments**.
2. Find the last known-good deployment (before the incident).
3. Click the `...` menu → **Promote to Production** (or **Rollback**).
4. Vercel instantly promotes the old build — no rebuild required.
5. Confirm the production URL returns a 200 and the app works.

This is the fastest path for a bad frontend deploy. It does **not** affect the
database.

### 3.2 Rollback via Git (when Vercel rollback is not enough)

If the issue is in code that needs to be fixed before redeploying:

```bash
# Revert the bad commit
git revert <bad-commit-sha>
git push origin main
```

Vercel auto-deploys on push to `main`. The revert commit is preferred over
`git reset --hard` because it keeps history clean and is safe for
collaborators.

### 3.3 Emergency: all deployments broken

If all recent deployments are broken and rollback is not available:

1. Find the last working commit SHA from `git log`.
2. Create a new branch from that SHA:

```bash
git checkout -b emergency-restore <last-good-sha>
git push origin emergency-restore
```

3. In Vercel, manually trigger a deploy from `emergency-restore`.
4. Once confirmed working, merge `emergency-restore` into `main` via PR.

---

## 4. Environment Variable Recovery

### 4.1 Inventory (no secret values stored here)

The following variables are required for production. If any are missing,
the corresponding feature fails silently or with a 500 error.

| Variable | Required for | Where to get it |
|---|---|---|
| `VITE_SUPABASE_URL` | All Supabase calls | Supabase dashboard → Project settings → API |
| `VITE_SUPABASE_PUBLISHABLE_KEY` | Browser auth | Supabase dashboard → Project settings → API (anon/publishable key) |
| `SUPABASE_SERVICE_ROLE_KEY` | Server-side RPCs and persistent AI quota tracking | Supabase dashboard → Project settings → API (service role — keep secret) |
| `VITE_ADMIN_AUTH_ENDPOINT` | Admin panel auth | Internal config — contact owner |
| `FAPSHI_ENVIRONMENT` | Payments | `sandbox` or `live` |
| `FAPSHI_API_USER` | Payments | Fapshi dashboard |
| `FAPSHI_API_KEY` | Payments | Fapshi dashboard |
| `FAPSHI_WEBHOOK_SECRET` | Payment webhooks | Fapshi dashboard (must match Vercel value) |
| `OPENROUTER_API_KEY` | AI features | OpenRouter dashboard |
| `AI_MODEL` | AI features | Default: `openrouter/free` |
| `AI_BASE_URL` | AI features | Default: `https://openrouter.ai/api/v1` |
| `APP_PUBLIC_URL` | Payment redirects, AI headers | `https://study-spark-237.vercel.app` (production) |

### 4.2 Where secrets are stored

- **Vercel**: all production and preview env vars are in Vercel project
  settings. Access requires Vercel team membership.
- **Supabase**: service role key and anon key are in Supabase project settings.
  Access requires Supabase project owner or admin role.
- **Fapshi**: API credentials are in the Fapshi merchant dashboard.
- **OpenRouter**: API key is in the OpenRouter account dashboard.
- **Local dev**: `.env.local` file (gitignored — never commit this file).

### 4.3 Recovering a lost or rotated secret

1. Generate a new secret from the relevant provider dashboard.
2. Update Vercel env var (Settings → Environment Variables → edit).
3. **Redeploy** — Vercel env var changes require a new deployment to take
   effect on serverless functions.
4. If `FAPSHI_WEBHOOK_SECRET` was rotated, update the matching value in both
   Vercel and the Fapshi webhook configuration.
5. Confirm the feature works end-to-end after the redeploy.

### 4.4 What breaks when each variable is missing

| Missing variable | Visible failure |
|---|---|
| `VITE_SUPABASE_URL` | App loads but auth and all data calls fail |
| `VITE_SUPABASE_PUBLISHABLE_KEY` | Sign-in fails with Supabase config error |
| `SUPABASE_SERVICE_ROLE_KEY` | Server routes (AI, payments) return 500 |
| `FAPSHI_API_KEY` | Checkout initiation returns 500 |
| `FAPSHI_WEBHOOK_SECRET` | Webhook rejected — Premium never activates |
| `OPENROUTER_API_KEY` | AI uses fallback response (not a hard failure) |
| `APP_PUBLIC_URL` | Payment redirect returns to wrong URL |

---

## 5. Payment and Webhook Recovery

### 5.1 Learner paid but Premium did not activate

1. Check Fapshi dashboard → transaction status for the transaction ID.
2. If status is `successful` but Premium is not active, manually call the
   verify endpoint:

```bash
curl -X POST https://study-spark-237.vercel.app/api/payments/fapshi/verify \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <learner-auth-token>" \
  -d '{"transactionId": "<fapshi-transaction-id>"}'
```

3. If verify succeeds, Premium activates immediately.
4. If not, check Vercel function logs for the verify endpoint.
5. As a last resort, use the admin panel Users page to manually set the
   learner's plan to Premium (requires `super_admin` role).
6. Log the manual intervention in `admin_audit_logs` via the Supabase SQL
   editor.

### 5.2 Duplicate Premium activation

Fapshi may deliver webhooks more than once. The webhook handler checks
transaction status before activating Premium. If duplicate activation is
suspected:

1. Query `payment_transactions` in Supabase for the transaction ID.
2. Confirm `status = 'successful'` appears only once.
3. If the premium_until date is unexpectedly extended, correct it with an
   admin SQL patch and log the change.

### 5.3 Webhook not reaching the server

1. Confirm the Fapshi webhook URL is exactly:
   `https://study-spark-237.vercel.app/api/payments/fapshi/webhook`
2. Confirm `FAPSHI_WEBHOOK_SECRET` in Vercel matches the Fapshi dashboard.
3. Check Vercel function logs for `POST /api/payments/fapshi/webhook`.
4. Test with a sandbox payment to confirm end-to-end flow.

### 5.4 Payment incident — protect against data corruption

- Never manually insert rows into `payment_transactions` or `subscriptions`
  without also updating `student_profiles.plan`.
- All plan changes must go through `admin_set_learner_plan()` (requires
  `super_admin`) so they are audited.
- If a payment table row needs correction, write a SQL patch that updates
  both `payment_transactions` and `student_profiles` atomically in a
  transaction.

---

## 6. Auth and OAuth Recovery

### 6.1 Google OAuth stops working

1. Check Supabase Auth logs for the specific error.
2. Confirm the Google OAuth redirect URI in Google Cloud Console points to:
   `https://ekqlqsyirsakdxonxmis.supabase.co/auth/v1/callback`
3. Confirm Supabase Auth provider settings have the matching Google client ID
   and secret.
4. Confirm the Supabase site URL and redirect allowlist include:
   `https://study-spark-237.vercel.app/auth/callback`

### 6.2 All learners signed out unexpectedly

This can happen after a JWT secret rotation in Supabase. Learners simply need
to sign in again. No data is lost. Inform learners via an in-app notification
if needed.

### 6.3 Admin locked out of admin panel

See the emergency owner recovery process in `docs/disaster-recovery-runbook.md`
section 5 (Admin Role Recovery) below, or in
`/control-panel-9k3x/settings` under "Role assignment and recovery process".

---

## 7. Admin Role Recovery (Emergency)

If all admin accounts lose access (e.g. after a JWT metadata issue):

1. Sign in to the **Supabase dashboard** as a project owner.
2. Open **Authentication → Users** and find the target account.
3. Click the user → **Edit** → under **App Metadata**, set:
   ```json
   {"role": "super_admin"}
   ```
4. Save. Role takes effect after sign-out and sign-in (or JWT refresh within 1 hour).
5. Sign in to the admin panel and verify access.

This requires no code change, no deployment, and no database migration.

---

## 8. Dry Run / Drill Checklist

Perform this drill in a staging or preview environment before launch:

### Database restore drill

- [ ] Create a staging Supabase project.
- [ ] Apply all migrations to staging.
- [ ] Add a test learner profile and a test paper session.
- [ ] Take a manual snapshot or note the backup timestamp.
- [ ] Intentionally corrupt a row (e.g. delete a learner profile).
- [ ] Restore the backup to staging.
- [ ] Verify the test learner profile is restored.
- [ ] Verify the paper session is intact.
- [ ] Document the time taken and any issues.

### Vercel rollback drill

- [ ] Deploy a trivial change to production (e.g. a comment).
- [ ] Immediately roll back to the previous deployment using Vercel dashboard.
- [ ] Confirm the rollback completes and the site returns the old version.
- [ ] Document the time taken.

### Env var recovery drill

- [ ] Temporarily rename `OPENROUTER_API_KEY` in Vercel to a wrong value.
- [ ] Confirm AI returns the fallback response (not a hard crash).
- [ ] Restore the correct key, redeploy, confirm AI works again.
- [ ] Note which other variables would cause a hard failure vs graceful fallback.

---

## 9. Post-Incident Review Template

After any P1 or P2 incident, fill this in and store in `docs/incidents/`.

```
Date:
Severity:
Duration:
Summary (one sentence):
Timeline:
  - HH:MM  Incident detected
  - HH:MM  Root cause identified
  - HH:MM  Fix applied
  - HH:MM  Verified resolved
Root cause:
Impact:
  - Learners affected:
  - Features affected:
  - Payments affected:
Fix applied:
Prevented by:
Follow-up actions:
```
