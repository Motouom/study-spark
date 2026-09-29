# StudySpark master TODO

This is the working checklist for StudySpark. Keep it honest: mark an item done only after it is implemented, verified, and pushed where required.

## Current status

- [x] Core learner app is live on the canonical production domain.
- [x] English learner shell exists for sign-in, onboarding, dashboard, papers, courses, cheatsheets, leaderboard, support, notifications, and settings.
- [x] French UI foundation exists across core routes.
- [x] Bilingual onboarding supports anglophone and francophone curriculum paths.
- [x] PWA install flow and stale deployment recovery have been added.
- [x] Protected Markdown rendering supports richer math and study content formatting.
- [x] Papers, courses, and cheatsheets have topic-level learner actions instead of scroll-only progress.
- [x] AI learning path uses learner signals such as failed questions, slow questions, review marks, and study history.
- [x] AI provider handling retries bad/non-answer JSON responses before local fallback.
- [x] Database migration discipline, content quality, and admin publishing docs exist.
- [x] Latest production branch state is pushed to `main`.

## Priority 0: production correctness

- [ ] Confirm the latest production Vercel deployment is serving the current `main` commit.
- [ ] Sign in on production and test the full authenticated learner flow end to end.
- [ ] Confirm Google OAuth branding shows StudySpark instead of the Supabase project domain after manual Google/Supabase setup.
- [ ] Confirm a new Google user can create a profile and stay on the dashboard without local fallback.
- [ ] Confirm profile edits save correctly for anglophone and francophone learners.
- [ ] Confirm Supabase class/level/series constraints allow all supported English and French curriculum paths.
- [ ] Confirm notifications become unread/read correctly and sidebar counts update immediately.
- [ ] Confirm support flow uses the temporary mailto fallback until a verified email domain is available.
- [ ] Confirm payment return, premium status, and premium gates work on the canonical domain.
- [ ] Confirm no private learner route is indexable or present in the sitemap.

## Priority 1: Supabase and migrations

- [ ] Audit production schema against every committed migration.
- [ ] Apply any missing normal migrations through the agreed Supabase process.
- [ ] Separate normal migrations from one-off repair scripts.
- [ ] Review untracked generated migration files before either committing or deleting them.
- [ ] Confirm `student_profiles`, `course_documents`, `paper_study_sessions`, `paper_study_checkpoints`, `structural_question_progress`, topic progress, notifications, payments, and admin audit tables all match app expectations.
- [ ] Confirm RLS policies prevent anonymous access to protected content.
- [ ] Confirm account deletion works after the delete-user migration is applied.
- [ ] Keep `docs/supabase-migrations.md` updated whenever a migration is added or applied.

## Priority 2: English learner quality

- [ ] Run full English UI QA on desktop and mobile.
- [ ] Confirm papers load by level, class, series, and subject.
- [ ] Confirm every question label is uniform, using `Q1`, `Q2`, etc.
- [ ] Confirm question started/passed/failed actions are visible beside the relevant question without cluttering the page.
- [ ] Confirm paper progress is based on question outcomes, not scroll percentage.
- [ ] Confirm course progress is based on topic understood/need-review actions.
- [ ] Confirm cheatsheet progress is based on topic understood/need-review actions.
- [ ] Confirm dashboard and progress content are merged without redundancy.
- [ ] Confirm leaderboard shows the top 50 students and handles the current learner rank correctly.
- [ ] Remove or redesign any remaining repeated streak/achievement widgets that do not add value.

## Priority 3: French parity

- [ ] Run full French UI QA on desktop and mobile.
- [ ] Fix language switching so selecting French reliably changes the interface and persists after reload.
- [ ] Compare every French route against the English route and list missing copy, missing states, and broken labels.
- [ ] Add enough real French/francophone content so the French side does not feel empty.
- [ ] Add francophone papers for Sixieme, Cinquieme, Quatrieme, Troisieme, Seconde, Premiere, Terminale, BEPC, Probatoire, and Baccalaureat where available.
- [ ] Add French courses per topic, grouped inside subject cards.
- [ ] Add French cheatsheets per topic, grouped inside subject cards.
- [ ] Confirm French subject names, class labels, series labels, and exam labels are first-class, not forced into English GCE terms.
- [ ] Confirm French SEO pages and metadata are natural and not keyword-stuffed.

## Priority 4: content depth and formatting

- [ ] Expand English courses so each topic is detailed enough for Cameroon GCE study, not short notes.
- [ ] Expand English cheatsheets into dense formula/reference sheets, especially Mathematics, Further Mathematics, Physics, Chemistry, Biology, ICT, and Economics.
- [ ] Ensure courses and cheatsheets are separate content types, not mixed under the same view.
- [ ] Ensure courses and cheatsheets are browsed per topic, grouped by subject card.
- [ ] Add search for courses and cheatsheet topics.
- [ ] Review math and chemistry formatting across papers, courses, and cheatsheets.
- [ ] Confirm legacy LaTeX delimiters render correctly.
- [ ] Confirm watermark text says `StudySpark` only.
- [ ] Complete editorial review for each published content batch.
- [ ] Track source, language, curriculum path, subject, class/exam, year, reviewer, status, and version for every published paper.

## Priority 5: AI reliability and usefulness

- [ ] Test authenticated production AI learning path while signed in with a premium learner.
- [ ] Confirm AI learning path returns `source: "ai"` when providers are healthy.
- [ ] Confirm local fallback is used only when AI is missing, rate-limited, invalid, or timed out.
- [ ] Add visible but calm messaging when AI fallback is used.
- [ ] Confirm AI learning path is grounded in failed questions, slow questions, review marks, and weak subjects.
- [ ] Add admin-only AI configuration/health check if it is not already sufficient.
- [ ] Add provider failure logs that distinguish missing config, HTTP failure, timeout, parse failure, moderation/non-answer, and empty response.
- [ ] Plan future AI tutor features separately from official exam content.

## Priority 6: daily study system

- [ ] Build a “What should I study today?” home/dashboard section.
- [ ] Add topic mastery percentages instead of only subject-level percentages.
- [ ] Add weak-topic detection from failed questions and need-review topics.
- [ ] Add strength detection from passed questions and understood topics.
- [ ] Add daily revision queue.
- [ ] Add spaced repetition for weak topics, failed questions, and saved review items.
- [ ] Add exam countdown and weekly study targets.
- [ ] Add “continue where you stopped” across papers, courses, and cheatsheets.
- [ ] Add recently viewed content.
- [ ] Add bookmarks/highlights/personal notes where they are genuinely useful.

## Priority 7: serious exam practice

- [ ] Add a clean exam selector: exam, level, subject, year, paper.
- [ ] Add timed practice mode.
- [ ] Add submit exam flow.
- [ ] Add automatic marking where possible.
- [ ] Add score, time spent, correct/incorrect breakdown, and topic breakdown.
- [ ] Add explanations or marking-guide links for each answer where available.
- [ ] Add retry incorrect questions.
- [ ] Add MCQ practice and structured-question practice as separate modes where appropriate.
- [ ] Ensure students must start a question before marking it passed or failed.

## Priority 8: admin and content operations

- [ ] Verify admin draft, preview, publish, unpublish, archive, and correction flows end to end.
- [ ] Confirm learner-reported content issues can be reviewed and resolved by admins.
- [ ] Confirm all admin actions are auditable.
- [ ] Add validation for language, curriculum path, exam, class, series, subject, year, title, and content kind.
- [ ] Confirm draft/unpublished/archived content is never visible to learners.
- [ ] Keep `docs/content-publishing-workflow.md` and `docs/content-quality-sourcing.md` aligned with the actual admin UI.

## Priority 9: SEO, launch, and trust

- [ ] Confirm sitemap uses the final production domain only.
- [ ] Confirm robots blocks private app routes and allows public pages.
- [ ] Confirm public pages have strong Cameroon GCE titles/descriptions.
- [ ] Confirm social previews show a professional StudySpark title, description, and image.
- [ ] Configure Google OAuth consent branding manually.
- [ ] Configure Supabase Auth URL settings manually for the canonical domain.
- [ ] Configure Fapshi webhook and return URLs manually for the canonical domain.
- [ ] Configure a verified email/domain provider before re-enabling direct support email sending.

## Priority 10: cleanup and engineering hygiene

- [ ] Review or remove untracked generated scripts:
  - [ ] `scripts/apply-math-conversion.mjs`
  - [ ] `scripts/convert-math.mjs`
  - [ ] `scripts/create_migration.py`
  - [ ] `scripts/generate_missing_papers.py`
  - [ ] `scripts/update_manifest.py`
- [ ] Review or remove untracked generated Supabase migrations:
  - [ ] `supabase/migrations/20260925134141_complete_gce_paper_coverage.sql`
  - [ ] `supabase/migrations/20260925134209_complete_gce_paper_coverage.sql`
  - [ ] `supabase/migrations/20260925153000_targeted_gce_paper_coverage.sql`
- [ ] Add regression tests for profile saving, notifications read state, learning path fallback behavior, and question progress.
- [ ] Add UI tests for English and French critical flows.
- [ ] Watch bundle size and split heavy dependencies where it materially improves load speed.
- [ ] Confirm app shell caching, PWA behavior, and stale asset recovery do not fight each other.

## Priority 11: Android app with Tauri v2

Goal: ship StudySpark as a polished Android app first. Ignore iOS until Android is stable, tested, and store-ready.

### Phase 1: feasibility and architecture

- [ ] Confirm the Android app should use Tauri v2 rather than Capacitor, React Native, Flutter, or a pure Trusted Web Activity.
- [ ] Decide whether the Android app bundles the built frontend or loads the production web app remotely.
- [ ] Prefer bundled frontend for app-store polish, faster launch, and controlled offline/stale-asset behavior.
- [ ] Confirm TanStack Start/Vite output can be served correctly inside the Tauri Android WebView.
- [ ] Identify every route that depends on browser-only behavior, including OAuth redirects, install prompts, mailto support, downloads, notifications, local storage, and service worker behavior.
- [ ] Define the Android app package name, display name, launcher name, and internal app ID.
- [ ] Define supported Android versions and minimum SDK.
- [ ] Decide whether the Android app should support phones only at first, or phones plus tablets.
- [ ] Write an Android-specific risk note covering auth, payments, offline content, protected content caching, and Play Store review.

### Phase 2: local Android toolchain

- [ ] Install and verify Rust stable, Tauri CLI, Android Studio, Android SDK, Android NDK, Java/Kotlin requirements, and emulator tooling.
- [ ] Configure Android environment variables required by Tauri, including `ANDROID_HOME`, `ANDROID_NDK_HOME`, and Java path where needed.
- [ ] Add Android Rust targets required by Tauri.
- [ ] Confirm `pnpm install`, `pnpm build`, and `pnpm typecheck` pass before adding the native shell.
- [ ] Confirm an Android emulator can boot and connect through `adb`.
- [ ] Confirm a physical Android device can connect through USB debugging.
- [ ] Document the local Android setup in the deployment/runbook docs so the process is repeatable.

### Phase 3: Tauri v2 scaffold

- [ ] Add Tauri v2 to the repo without disrupting the existing web deployment.
- [ ] Generate `src-tauri` and initialize Android target support.
- [ ] Configure Tauri to use the existing Vite/TanStack build output.
- [ ] Add Android-specific Tauri config for app ID, product name, icons, splash/background color, permissions, and build settings.
- [ ] Add Android scripts to `package.json`, such as Android dev, Android build, and Android open commands.
- [ ] Make sure web-only Vercel builds do not accidentally require Android/Tauri dependencies.
- [ ] Keep Android native generated files committed only when they are required and stable.
- [ ] Confirm `pnpm build` still works for the web app after Tauri is added.

### Phase 4: branding and app assets

- [ ] Create Android launcher icons for all required densities.
- [ ] Create adaptive icon foreground/background assets.
- [ ] Configure app label as `StudySpark`.
- [ ] Configure splash screen, status bar, navigation bar, and theme colors to match StudySpark light/dark modes.
- [ ] Remove browser/PWA install prompts from the Android native build.
- [ ] Ensure app metadata, version code, version name, and package name are correct.
- [ ] Confirm the app name and icon look professional on the launcher, recent apps screen, and Android settings.

### Phase 5: auth and deep links

- [ ] Test email/password sign-in in the Android app.
- [ ] Test Google sign-in from the Android WebView.
- [ ] Configure Supabase redirect URLs for the Android app callback/deep link.
- [ ] Add Android app links or custom scheme redirects if needed for Supabase OAuth.
- [ ] Confirm Google OAuth does not strand the learner in an external browser tab.
- [ ] Confirm auth callback returns the learner to the right in-app route.
- [ ] Confirm session persistence after app close, app restart, and device reboot.
- [ ] Confirm sign-out clears the session and protected data correctly.
- [ ] Confirm account deletion still works from Android.

### Phase 6: mobile UI and responsiveness

- [ ] Run full Android UI QA at 360px, 390px, 414px, small tablet, and large tablet widths.
- [ ] Confirm no route has horizontal scrolling, clipped controls, overlapping text, tiny tap targets, or broken wrapping.
- [ ] Confirm bottom sheets, dialogs, dropdowns, select menus, and popovers work well inside Android WebView.
- [ ] Confirm app navigation feels native enough on Android and does not rely on desktop sidebar assumptions.
- [ ] Confirm long English and French labels fit on Android screens.
- [ ] Confirm papers, courses, cheatsheets, dashboard, learning path, leaderboard, notifications, support, settings, and pricing are comfortable on mobile.
- [ ] Confirm protected markdown, KaTeX/math, chemistry notation, tables, and long questions render correctly on Android.
- [ ] Confirm keyboard behavior does not hide active inputs on sign-in, onboarding, settings, support, and admin forms.
- [ ] Confirm Android back button behavior is intentional across nested routes, dialogs, content pages, and sign-in.
- [ ] Capture Android screenshots for the main learner flows.

### Phase 7: offline, caching, and storage

- [ ] Decide what the Android app supports offline for first launch: app shell only, cached public pages, or selected learner study content.
- [ ] Disable or adapt the web PWA install prompt and service-worker behavior for the native Android build.
- [ ] Confirm stale deployment recovery does not fight Tauri's bundled app shell.
- [ ] Confirm protected/private learner content is not cached in a way that leaks across accounts.
- [ ] Confirm local storage and Supabase session storage behave correctly on Android.
- [ ] Add safe offline fallback messaging for Android when network is missing.
- [ ] Test airplane mode on sign-in, dashboard, papers, courses, cheatsheets, and learning path.
- [ ] Test slow network and flaky network behavior.
- [ ] Confirm app startup works without a blank screen if the network is unavailable.

### Phase 8: Android permissions and native capabilities

- [ ] Keep Android permissions minimal for the first release.
- [ ] Add network access only if it is not already covered by default config.
- [ ] Avoid camera, contacts, location, storage, microphone, and notification permissions unless the feature truly needs them.
- [ ] If push notifications are planned, define them as a separate ticket and add Firebase/FCM only after the base app is stable.
- [ ] If downloads are supported, test PDF/content download behavior and Android storage permissions carefully.
- [ ] If file upload is supported, test file picker behavior inside the Android app.
- [ ] Confirm app links, external links, mailto links, WhatsApp/social links, and payment links open safely.

### Phase 9: payments and premium access

- [ ] Review Google Play policy for StudySpark premium access and digital educational content.
- [ ] Decide whether Android premium payments continue through Fapshi/web checkout or use Google Play Billing.
- [ ] Test pricing page, checkout launch, payment return, webhook status update, and premium gate refresh on Android.
- [ ] Confirm failed/cancelled payment flows return the learner to a calm in-app state.
- [ ] Confirm premium status persists after app restart.
- [ ] Add clear policy notes to the deployment runbook before Play Store submission.

### Phase 10: AI, Supabase, and backend flows

- [ ] Test AI learning path in the Android app with a real signed-in learner.
- [ ] Confirm AI does not always fall back locally on Android.
- [ ] Test Supabase reads/writes for profile, papers, courses, cheatsheets, topic progress, question progress, notifications, leaderboard, and premium access.
- [ ] Confirm RLS-protected content is accessible only after sign-in.
- [ ] Confirm server-side errors show calm learner-facing messages on Android.
- [ ] Confirm analytics/speed insights are either supported, disabled, or replaced appropriately for native Android.

### Phase 11: performance and reliability

- [ ] Measure cold start time on emulator and physical low-end Android device.
- [ ] Measure route transition speed for dashboard, papers, course detail, cheatsheet detail, learning path, and settings.
- [ ] Reduce heavy initial JavaScript where it materially improves Android startup.
- [ ] Confirm markdown/math rendering does not freeze older Android devices.
- [ ] Confirm large papers scroll smoothly.
- [ ] Confirm memory usage is acceptable after reading multiple long papers.
- [ ] Confirm app recovers from background/foreground transitions.
- [ ] Confirm app recovers after Android kills it in the background.
- [ ] Add crash/error logging plan for Android builds.

### Phase 12: QA matrix

- [ ] Test Android emulator with latest stable Android.
- [ ] Test one low-end physical Android phone.
- [ ] Test one mid-range/normal physical Android phone.
- [ ] Test light mode and dark mode.
- [ ] Test English learner onboarding and core flow.
- [ ] Test French learner onboarding and core flow.
- [ ] Test new learner, existing free learner, and existing premium learner.
- [ ] Test signed-out public pages.
- [ ] Test no network, slow network, and network switching.
- [ ] Test app update scenario from one Android build to the next.
- [ ] Test logout/login with another account on the same device.
- [ ] Record screenshots or videos for the full smoke path.

### Phase 13: Play Store preparation

- [ ] Create Google Play Console app entry.
- [ ] Prepare app name, short description, full description, category, contact email, privacy policy URL, and support URL.
- [ ] Prepare feature graphic and screenshots for phone and tablet if tablet is supported.
- [ ] Prepare content rating questionnaire.
- [ ] Complete Data Safety form based on actual Supabase/auth/analytics/payment data collection.
- [ ] Confirm privacy policy explains account data, learning progress, payments, AI usage, and protected content.
- [ ] Confirm account deletion is available and documented.
- [ ] Build signed Android App Bundle (`.aab`) for internal testing.
- [ ] Upload to internal testing track.
- [ ] Run internal tester smoke tests before production release.

### Phase 14: release and maintenance

- [ ] Define Android versioning rules for version code and version name.
- [ ] Document how to build, sign, and upload Android releases.
- [ ] Document rollback strategy and emergency fixes.
- [ ] Decide whether Android releases follow every web release or only selected stable releases.
- [ ] Add Android release checklist to `docs/deployment-runbook.md`.
- [ ] Keep Android-specific known issues documented.
- [ ] Create follow-up tickets for push notifications, offline study packs, native downloads, and Play Billing only after the base Android app works well.

## Later vision

- [ ] University course support by institution, faculty, department, level, and semester.
- [ ] Teacher/admin content review marketplace.
- [ ] Parent/school/institution views.
- [ ] AI tutor with hints, step-by-step explanations, answer comparison, essay feedback, voice, and image questions.
- [ ] Offline download/study packs.
- [ ] Flashcards generated from notes and mistakes.
