# StudySpark Analytics — Launch Metrics

Analytics are collected via Vercel Analytics. Page views are automatic.
Custom events are fired through `src/lib/analytics.ts`.

No paper content, user emails, auth tokens, or payment secrets are sent.
Segmentation is by `level`, `language`, `subject`, and `interval` — aggregate only.

---

## Core funnel

| Step | Event | Key props |
|---|---|---|
| Landing | `landing_view` | — |
| Sign-in attempt | `signup_start` | `method` (google/email/password) |
| Sign-in success | `signup_complete` | `method` |
| Sign-in failure | `signin_error` | `reason` |
| Profile created | `onboarding_complete` | `level`, `language` |
| Pricing viewed | `premium_view` | — |
| Checkout started | `checkout_started` | `interval` (monthly/yearly) |
| Payment success | `payment_success` | — |
| Payment failure | `payment_failure` | `reason` |
| Payment pending | `payment_pending` | — |

## Engagement

| Action | Event | Key props |
|---|---|---|
| Subject chosen | `subject_selected` | `subject` |
| Paper opened | `paper_opened` | `subject`, `level`, `isLocked` |
| Checkpoint marked | `checkpoint_marked` | `type` (understood/review/bookmark) |
| AI used | `ai_action_used` | `action` |
| Search used | `search_used` | `hasQuery` |

---

## Vercel Analytics dashboard queries

Open **vercel.com → your project → Analytics → Custom Events**.

### 1. Signup funnel conversion
Compare counts for `signup_start` vs `signup_complete` grouped by `method`.
Drop-off = (start - complete) / start × 100.

### 2. Onboarding completion rate
`onboarding_complete` / `signup_complete` — filter last 30 days.
Break down by `language` to compare EN vs FR cohorts.

### 3. Premium conversion
`checkout_started` / `premium_view` = click-through rate.
`payment_success` / `checkout_started` = checkout completion rate.

### 4. Payment failure rate
`payment_failure` / (`payment_success` + `payment_failure`) — monitor weekly.
Filter by `reason` to identify Fapshi-specific vs network failures.

### 5. Auth failure rate
`signin_error` count by `reason` — spikes indicate Supabase config issues
or OAuth provider problems.

### 6. Paper engagement
`paper_opened` grouped by `subject` and `level` — shows which subjects
students open most. Filter `isLocked: true` to see premium demand signals.

### 7. AI adoption
`ai_action_used` grouped by `action` — shows which AI features are used.
Compare against `premium_view` to assess AI as a conversion driver.

### 8. Language split
`onboarding_complete` grouped by `language` — shows EN/FR learner ratio
without exposing any individual learner data.

---

## Privacy notes

- No paper markdown content is sent in any event.
- No user email, name, or user_id is sent to analytics.
- Payment amounts and transaction IDs are not sent.
- Auth tokens and service keys are never included.
- `subject` and `level` are curriculum metadata, not personally identifying.
