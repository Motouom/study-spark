# StudySpark

StudySpark is a protected Cameroon GCE study platform for students from Form 3 through Upper Sixth. It delivers class-aware structural papers inside the app, tracks study activity, supports premium subscriptions through Fapshi, and uses AI assistance for learner progress insights and learning paths.

The product is designed for Cameroonian learners who need focused revision without downloadable exam files, noisy ads, or generic international study flows.

## What The App Does

- Lets students sign in with Supabase Auth and complete a study profile.
- Filters papers by language, class level, series, and selected subjects.
- Presents protected in-app markdown papers with diagrams and math rendering.
- Tracks reading sessions, scroll depth, bookmarks, review checkpoints, streaks, and achievements.
- Provides premium-gated dashboards, learning paths, textbooks, courses, advanced search, and analytics.
- Accepts FCFA payments through Fapshi and upgrades accounts after payment verification.
- Provides AI progress insights and learning-path planning through an OpenRouter-compatible API.
- Includes a hidden admin control panel for content, user, log, and integration management.

## Tech Stack

- **Frontend:** React 19, TypeScript, TanStack Router, TanStack Start, Vite
- **UI:** Tailwind CSS v4, shadcn/Radix primitives, lucide-react, Recharts
- **Backend/runtime:** TanStack Start server routes with Nitro output
- **Database/auth:** Supabase Auth, Postgres, RLS, SQL migrations
- **Payments:** Fapshi live or sandbox API
- **AI:** OpenRouter-compatible chat completions
- **Deployment:** Vercel, with security and cache headers in `vercel.json`

## Repository Layout

```text
.
├── content/papers/                 # Source markdown papers and import SQL
├── database/supabase/              # Ordered Supabase schema and data migrations
├── docs/                           # Product, setup, architecture, and runbook docs
├── public/                         # Static assets, diagrams, robots, sitemap, PWA manifest
├── scripts/                        # Paper import and diagram helper scripts
├── src/components/                 # App and UI components
├── src/hooks/                      # Auth, content, progress, subscription, and learner hooks
├── src/lib/                        # Supabase, auth, AI, payment, premium, and utility modules
└── src/routes/                     # TanStack routes and server API endpoints
```

## Getting Started

Install dependencies:

```bash
npm install
```

Create local environment variables:

```bash
cp .env.example .env.local
```

Fill `.env.local` with your Supabase, Fapshi, and AI values. Do not commit `.env.local`.

Start the local app:

```bash
npm run dev
```

Build for production:

```bash
npm run build
```

Run lint:

```bash
npm run lint
```

## Required Environment Variables

| Variable                        | Used By        | Notes                                               |
| ------------------------------- | -------------- | --------------------------------------------------- |
| `VITE_SUPABASE_URL`             | Browser client | Supabase project URL.                               |
| `VITE_SUPABASE_PUBLISHABLE_KEY` | Browser client | Browser-safe publishable or anon key.               |
| `VITE_ADMIN_AUTH_ENDPOINT`      | Admin access   | Optional admin auth endpoint value.                 |
| `SUPABASE_SERVICE_ROLE_KEY`     | Server routes  | Server-only key. Never expose in browser code.      |
| `FAPSHI_ENVIRONMENT`            | Payments       | `sandbox` or `live`.                                |
| `FAPSHI_API_USER`               | Payments       | Fapshi service API user.                            |
| `FAPSHI_API_KEY`                | Payments       | Fapshi service API key.                             |
| `FAPSHI_WEBHOOK_SECRET`         | Payments       | Shared webhook secret sent as `x-wh-secret`.        |
| `OPENROUTER_API_KEY`            | AI             | Preferred AI provider key.                          |
| `AI_MODEL`                      | AI             | Defaults to `openrouter/free` when not set.         |
| `AI_BASE_URL`                   | AI             | Defaults to `https://openrouter.ai/api/v1`.         |
| `APP_PUBLIC_URL`                | AI/payments    | Public app origin used in redirects and AI headers. |

## Production Deployment

Canonical production deployment:

```text
Vercel project: study-spark
Production URL: https://study-spark-237.vercel.app
Git repository: Motouom/study-spark
Production branch: main
```

Do not connect duplicate Vercel projects such as `study-spark-uruh` or `study-spark-s329` to the same repository and branch. One push to `main` should create exactly one production deployment.

## Database Setup

Supabase schema is managed through SQL files in `database/supabase/`. Apply migrations in numeric order for a fresh project.

For the current architecture, the important domains are:

- learner profiles and curriculum access
- published course documents
- protected content events
- structural question progress
- reading sessions and checkpoints
- subscriptions and payment transactions
- admin access and audit logs

See [Supabase auth setup](docs/supabase-auth-setup.md), [content and database plan](docs/content-and-database-plan.md), and [deployment runbook](docs/deployment-runbook.md).

## Authentication

StudySpark uses Supabase Auth. Google OAuth is configured in Supabase, not directly in the Vite app. Google Cloud should point to the Supabase provider callback URL, while Supabase redirects learners back to `/auth/callback`.

## Payments

Premium payments are handled through Fapshi:

- `POST /api/payments/fapshi/initiate` creates a subscription and payment transaction, then returns a checkout URL.
- `POST /api/payments/fapshi/verify` verifies a returning learner's latest payment.
- `POST /api/payments/fapshi/webhook` accepts Fapshi webhook callbacks and upgrades the learner when payment is successful.

The production webhook URL should be:

```text
https://study-spark-237.vercel.app/api/payments/fapshi/webhook
```

## SEO And Public Visibility

The public landing page and pricing page define route metadata for titles, descriptions, and Open Graph tags. Static visibility assets live in `public/`:

- `robots.txt`
- `sitemap.xml`
- `site.webmanifest`
- `favicon.ico`

Canonical production URLs currently use `https://study-spark-237.vercel.app`. Keep `robots.txt`, `sitemap.xml`, `APP_PUBLIC_URL`, Supabase Auth URLs, Google OAuth, and Fapshi webhook settings aligned with that production origin unless a future custom domain replaces it.

## Security Notes

- Browser code only receives `VITE_*` values.
- Service role, Fapshi, and AI keys must stay server-side.
- Supabase RLS should enforce learner-level data isolation.
- Protected content measures reduce casual copying but cannot prevent photos or screen recording.
- `vercel.json` applies strict security headers and immutable caching for static assets.

## Architecture Documentation

The full architecture reference is in [docs/arc42.md](docs/arc42.md). It covers goals, constraints, runtime views, building blocks, deployment, risks, and glossary.

## License

This repository is private product code unless a separate license file is added.
