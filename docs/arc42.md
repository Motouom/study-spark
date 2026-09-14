# StudySpark Architecture Documentation

This document follows the arc42 structure for StudySpark, a Cameroon-focused protected study platform.

## 1. Introduction And Goals

### Requirements Overview

StudySpark helps Cameroonian secondary-school students revise with protected, in-app GCE-style study material. Learners create a profile, select their class, series, language, and subjects, then see only relevant papers and learning tools.

Primary capabilities:

- Public landing and pricing pages for discovery and conversion.
- Supabase-backed authentication and learner profiles.
- Class-aware paper library and protected paper reading.
- Reading progress, review checkpoints, bookmarks, streaks, achievements, and analytics.
- Premium subscriptions through Fapshi in FCFA.
- AI progress insight and learning-path generation.
- Admin control panel for content and operational management.

### Quality Goals

| Priority | Quality Goal                      | Reason                                                                |
| -------- | --------------------------------- | --------------------------------------------------------------------- |
| 1        | Secure learner and payment data   | The app handles accounts, subscriptions, and server-side credentials. |
| 2        | Mobile-first usability            | The main audience studies on phones as well as laptops.               |
| 3        | Fast perceived performance        | Slow loading damages trust and makes revision feel harder.            |
| 4        | Curriculum-aware content delivery | Students must only see relevant material for their profile.           |
| 5        | Maintainable product iteration    | The app is evolving quickly and needs clear boundaries.               |

### Stakeholders

| Stakeholder      | Interest                                                          |
| ---------------- | ----------------------------------------------------------------- |
| Learners         | Easy access to relevant papers, progress, and revision guidance.  |
| Parents/sponsors | Clear value for paid Premium access.                              |
| Content admins   | Safe publishing and maintenance of papers.                        |
| Product owner    | Monetization, visibility, growth, and operational control.        |
| Developers       | Clear routes, data model, security rules, and deployment process. |

## 2. Architecture Constraints

- The app is a TypeScript React application using TanStack Start and TanStack Router.
- Supabase provides authentication, Postgres storage, RLS, and service-role server access.
- Browser-safe environment variables must use the `VITE_*` prefix.
- Server-only secrets must never be exposed to browser bundles.
- Payments use Fapshi and must support sandbox and live environments.
- Production deployment targets Vercel.
- Protected papers are displayed in-app; no download-oriented paper delivery is part of the product.
- SEO applies only to public pages. Authenticated learner pages are intentionally blocked from indexing.

## 3. System Scope And Context

### Business Context

```text
Learner
  -> StudySpark web app
  -> Supabase Auth for identity
  -> Supabase Postgres for profiles, content, progress, and subscriptions
  -> Fapshi for FCFA checkout and payment confirmation
  -> OpenRouter-compatible AI provider for study guidance
  -> Vercel for hosting and CDN delivery
```

### External Systems

| System                    | Purpose                                           | Integration                                   |
| ------------------------- | ------------------------------------------------- | --------------------------------------------- |
| Supabase Auth             | Email/Google identity and sessions                | Browser client and server auth helpers.       |
| Supabase Postgres         | App data and RLS-protected records                | SQL migrations and Supabase JS client.        |
| Fapshi                    | Premium payment checkout and webhook confirmation | Server routes under `/api/payments/fapshi/*`. |
| OpenRouter-compatible API | AI insight and learning paths                     | Server routes under `/api/ai/*`.              |
| Vercel                    | Production hosting                                | Git-connected deployment from `main`.         |
| Google Cloud OAuth        | Google sign-in identity provider                  | Configured through Supabase Auth provider.    |

## 4. Solution Strategy

StudySpark uses a single TanStack Start application with route-level separation between public marketing pages, authenticated learner pages, admin pages, and server API endpoints.

Key strategies:

- Keep sensitive operations in server routes.
- Use Supabase RLS and service-role server access for protected data changes.
- Keep learner content access profile-aware.
- Store papers as structured database records while maintaining markdown source files for imports.
- Provide progress tracking through passive sessions and explicit checkpoint actions.
- Keep public pages indexable while blocking private app pages through `robots.txt`.

## 5. Building Block View

### Level 1

```text
StudySpark App
├── Public Experience
├── Learner App Shell
├── Protected Content Reader
├── Progress And Learning Engine
├── Payment Integration
├── AI Integration
├── Admin Control Panel
└── Supabase Data Layer
```

### Level 2

| Building Block    | Main Files                                                                       | Responsibility                                                         |
| ----------------- | -------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| Public Experience | `src/routes/index.tsx`, `src/routes/pricing.tsx`                                 | Landing, pricing, SEO metadata, conversion.                            |
| App Shell         | `src/routes/_app.tsx`                                                            | Authenticated layout, navigation, command menu, sidebar, mobile shell. |
| Profile Flow      | `src/routes/_app.onboarding.tsx`, `src/hooks/use-study-profile.ts`               | Learner profile creation and loading.                                  |
| Content Library   | `src/routes/_app.library.tsx`, `src/hooks/use-study-content.ts`                  | Subject and paper discovery.                                           |
| Protected Reader  | `src/routes/_app.course.$documentId.tsx`, `src/components/ProtectedMarkdown.tsx` | In-app paper rendering and content protection.                         |
| Progress Engine   | `src/hooks/use-paper-study-progress.ts`, `src/hooks/use-structural-progress.ts`  | Sessions, checkpoints, study depth, streaks, progress summaries.       |
| Premium Gate      | `src/components/PremiumGate.tsx`, `src/lib/premium.ts`                           | Feature gating and plan checks.                                        |
| Payments          | `src/lib/fapshi.ts`, `src/routes/api.payments.fapshi.*.ts`                       | Checkout, verification, webhook handling, subscription updates.        |
| AI                | `src/lib/ai.ts`, `src/hooks/use-ai-actions.ts`, `src/routes/api.ai.*.ts`         | Progress insight, learning path, paper formatting.                     |
| Admin             | `src/routes/control-panel-9k3x*.tsx`, `src/hooks/use-admin-data.ts`              | Internal content and operations console.                               |
| Database          | `database/supabase/*.sql`                                                        | Schema, policies, functions, seed data, migrations.                    |

## 6. Runtime View

### Learner Sign-In

```text
Learner clicks Google sign-in
  -> Supabase Auth OAuth provider
  -> Google identity confirmation
  -> Supabase callback
  -> StudySpark /auth/callback
  -> Session stored by Supabase client
  -> Learner redirected to /dashboard
```

### Opening A Paper

```text
Learner opens a paper route
  -> App loads learner profile and permitted documents
  -> Course route checks document availability and lock status
  -> usePaperStudyProgress creates a study session
  -> ProtectedMarkdown renders markdown, diagrams, math, and watermark context
  -> Background sync stores duration and max scroll depth
  -> Checkpoint buttons store understood/review/bookmark events
```

### Premium Purchase

```text
Learner clicks Pay with Fapshi
  -> /api/payments/fapshi/initiate
  -> Server creates subscription and payment transaction
  -> Server calls Fapshi initiate-pay
  -> Learner is redirected to Fapshi checkout
  -> Fapshi redirects learner back to StudySpark
  -> /api/payments/fapshi/verify checks status
  -> Fapshi webhook can also confirm status
  -> Successful matching payment activates Premium
```

### AI Progress Insight

```text
Learner requests AI analysis
  -> Browser calls /api/ai/progress-insight with Supabase bearer token
  -> Server loads profile, sessions, checkpoints, and documents
  -> Server builds constrained prompt
  -> AI provider returns practical study guidance
  -> Local fallback is returned if AI is unavailable
```

## 7. Deployment View

```text
Developer machine
  -> GitHub repository: Motouom/study-spark
  -> Vercel project connected to main branch
  -> Vercel build runs npm install and npm run build
  -> Vercel serves public app and server routes
  -> Supabase hosts auth and database
  -> Fapshi calls production webhook
```

Important deployment files:

- `package.json`: scripts and dependencies.
- `vite.config.ts`: Lovable TanStack Start config wrapper.
- `vercel.json`: cache and security headers.
- `public/robots.txt`: search engine allow/block rules.
- `public/sitemap.xml`: public URL discovery.
- `public/site.webmanifest`: installable app metadata.

## 8. Cross-Cutting Concepts

### Authentication And Authorization

The browser uses Supabase Auth sessions. Server routes authenticate the user from the request and use service-role access only when needed for trusted operations. Supabase RLS remains the primary database safety layer.

### Data Protection

Protected paper delivery disables common copy actions, context menu use, selected keyboard shortcuts, and print display. These controls reduce casual leakage but are not DRM. Server-side access rules and limited content exposure remain more important than client-side blocking.

### Premium Access

`student_profiles.plan` and `premium_until` determine Premium status. Payment routes update subscriptions and profiles only after provider status and amount validation.

### Progress Tracking

The product now favors low-friction progress signals:

- study sessions
- time spent
- scroll depth
- understood checkpoints
- review checkpoints
- bookmarks
- streaks and achievements

Question-level passed/failed tracking has been retired from the learner-facing paper experience.

### SEO

Public pages define route-level metadata. Private learner routes are blocked in `robots.txt`. The sitemap should include only public, indexable URLs. A real production custom domain should replace temporary Vercel URLs before serious search promotion.

## 9. Architecture Decisions

| Decision                            | Rationale                                                               | Consequence                                                  |
| ----------------------------------- | ----------------------------------------------------------------------- | ------------------------------------------------------------ |
| Use TanStack Start                  | Full-stack React routes with server endpoints in one codebase.          | Route files contain both UI and API surfaces.                |
| Use Supabase                        | Fast auth, Postgres, RLS, and dashboard tooling.                        | Migrations and policies must stay disciplined.               |
| Use Fapshi                          | Local FCFA payment fit for Cameroonian users.                           | Payment reliability depends on provider webhooks/status API. |
| Keep protected papers in-app        | Reduces uncontrolled file sharing.                                      | Content UX must be excellent on mobile.                      |
| Gate advanced features with Premium | Supports monetization without blocking initial exploration.             | Premium state must load without flicker.                     |
| Block private pages from indexing   | Prevents student dashboards and app internals from appearing in search. | SEO investment focuses on public pages.                      |

## 10. Quality Requirements

| Scenario                                | Quality Requirement                                                     |
| --------------------------------------- | ----------------------------------------------------------------------- |
| Mobile learner opens dashboard          | Layout must fit without horizontal scrolling or clipped content.        |
| Learner wakes phone screen              | App must not visibly blank or reset the current paper.                  |
| Fapshi confirms payment                 | Premium should activate only for matching amount and transaction.       |
| AI provider fails                       | App should return local fallback guidance instead of a blank response.  |
| Browser requests old asset after deploy | App should recover without trapping the user on a blank page.           |
| Search engine crawls site               | Public pages should be crawlable; private app routes should be blocked. |

## 11. Risks And Technical Debt

| Risk                                  | Impact                                         | Mitigation                                                |
| ------------------------------------- | ---------------------------------------------- | --------------------------------------------------------- |
| Manual SQL migration drift            | Production bugs when schema differs from code. | Track applied migrations and document runbooks.           |
| Client-side content protection limits | Users can still photograph or record papers.   | Use personalization, limited exposure, and audit events.  |
| Temporary Vercel domains              | Weak SEO and brand trust.                      | Add a stable custom domain before launch campaigns.       |
| AI provider variability               | Empty or low-quality responses.                | Keep local fallbacks and constrain prompts.               |
| Large client bundles                  | Slow mobile performance.                       | Continue route-level splitting and audit heavy libraries. |
| Payment provider mismatch             | Wrong Premium activation.                      | Verify provider status and expected amount server-side.   |

## 12. Glossary

| Term       | Meaning                                                             |
| ---------- | ------------------------------------------------------------------- |
| Learner    | A student using StudySpark.                                         |
| Profile    | Learner language, class, series, and subject selection.             |
| Paper      | A protected in-app structural study document.                       |
| Checkpoint | A lightweight learner mark such as understood, review, or bookmark. |
| Premium    | Paid access tier for unlimited and advanced study features.         |
| RLS        | Row Level Security in Supabase Postgres.                            |
| Fapshi     | Payment provider used for FCFA checkout and confirmation.           |
| OpenRouter | AI API-compatible provider used for learning guidance.              |
