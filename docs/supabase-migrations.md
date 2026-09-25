# StudySpark Supabase Migration Discipline

This document is the source of truth for StudySpark database change discipline. It explains how to classify SQL files, how to apply them safely, how to know what ran in production, and how to verify critical app features after a database change.

## Current State

StudySpark currently keeps SQL files in `database/supabase/`. These files predate a strict Supabase CLI migration folder and are named with numeric prefixes instead of Supabase timestamp migration IDs.

Important consequences:

- Treat the current files as the legacy ordered migration set.
- Apply them in lexical order for a fresh environment, except where a file is explicitly marked as an alternative one-shot setup or one-off repair.
- Do not assume `supabase migration list` knows about these legacy files unless production migration history has been repaired/imported deliberately.
- Future schema changes should use the Supabase CLI migration workflow with timestamped files.

Tracking decision: StudySpark should standardize on Supabase CLI migration history for future migrations instead of adding a second custom tracking table. A separate app-owned migration table would create two sources of truth. Until the legacy files are imported/repaired into Supabase migration history, use the verification SQL below plus PR/deployment records to confirm legacy production state.

## Required Workflow For New Database Changes

1. Create a new branch for the ticket.
2. Confirm CLI command shape:

```bash
supabase --version
supabase migration --help
supabase db --help
```

3. Create future migration files with the CLI:

```bash
supabase migration new short_descriptive_name
```

4. Put schema-changing SQL in the generated timestamped file.
5. Prefer forward-only fixes. Do not write destructive rollback SQL for production unless explicitly approved.
6. For exposed `public` tables, enable RLS and add ownership policies before granting `anon` or `authenticated` access.
7. Run local checks where possible:

```bash
supabase db lint
supabase db advisors
supabase migration list
```

8. Apply to production only after the pre-checks in the production runbook.
9. Commit the SQL file and update this document if the migration introduces a new domain area.

## How To Tell What Ran In Production

For Supabase CLI-managed migrations, use:

```bash
supabase link --project-ref ekqlqsyirsakdxonxmis
supabase migration list --linked
```

For the current legacy SQL files, also verify by schema state because older manual SQL editor runs may not have written CLI migration history.

Use this production verification query:

```sql
select 'student_profiles' as object_name, to_regclass('public.student_profiles') is not null as exists
union all select 'course_documents', to_regclass('public.course_documents') is not null
union all select 'structural_question_progress', to_regclass('public.structural_question_progress') is not null
union all select 'paper_study_sessions', to_regclass('public.paper_study_sessions') is not null
union all select 'paper_study_checkpoints', to_regclass('public.paper_study_checkpoints') is not null
union all select 'paper_study_reflections', to_regclass('public.paper_study_reflections') is not null
union all select 'learner_notification_state', to_regclass('public.learner_notification_state') is not null
union all select 'learner_notification_preferences', to_regclass('public.learner_notification_preferences') is not null
union all select 'streak_freezes', to_regclass('public.streak_freezes') is not null
union all select 'fapshi_payment_transactions', to_regclass('public.fapshi_payment_transactions') is not null
union all select 'topic_understanding_progress', to_regclass('public.topic_understanding_progress') is not null;
```

Verify important RPC functions:

```sql
select proname, pg_get_function_identity_arguments(oid) as args
from pg_proc
where pronamespace = 'public'::regnamespace
  and proname in (
    'update_student_profile',
    'list_allowed_course_documents',
    'mark_structural_question_progress',
    'list_level_leaderboard',
    'admin_set_learner_plan',
    'create_fapshi_payment_intent',
    'record_fapshi_payment_event'
  )
order by proname, args;
```

Check content classification:

```sql
select content_kind, doc_type, count(*) as documents
from public.course_documents
group by content_kind, doc_type
order by content_kind, doc_type;
```

Check RLS on app tables:

```sql
select schemaname, tablename, rowsecurity
from pg_tables
where schemaname = 'public'
  and tablename in (
    'student_profiles',
    'topics',
    'questions',
    'practice_attempts',
    'course_documents',
    'structural_question_progress',
    'paper_study_sessions',
    'paper_study_checkpoints',
    'paper_study_reflections',
    'learner_notification_state',
    'learner_notification_preferences',
    'topic_understanding_progress'
  )
order by tablename;
```

## File Classification

Use these categories:

- `baseline`: creates foundational schema/functions/policies.
- `seed`: inserts demo or curriculum/content data.
- `feature`: introduces a normal product feature.
- `hardening`: tightens production security, grants, policies, or access boundaries.
- `repair`: fixes a production bug or schema drift.
- `one-shot`: alternative setup bundle. Do not run blindly with the normal chain.
- `content refresh`: updates catalog/content rows and may be safe to rerun if IDs are stable.

## Migration Inventory

| File                                                      | Category          | Purpose                                                                                                            | Rerun Guidance                                                                               |
| --------------------------------------------------------- | ----------------- | ------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------- |
| `000_full_studyspark_setup.sql`                           | one-shot baseline | Full early setup bundle for learner tables, RLS, seed content, account deletion, grants, and schema cache refresh. | One-time only. Do not run on an existing production database unless rebuilding from scratch. |
| `001_studyspark_schema.sql`                               | baseline          | Creates learner profile, topics, questions, practice attempts, triggers, RLS, policies, and indexes.               | Mostly idempotent, but treat as baseline only.                                               |
| `002_seed_sample_content.sql`                             | seed              | Adds initial sample topics/questions.                                                                              | Rerunnable because it uses upserts, but not production-critical.                             |
| `003_delete_current_user.sql`                             | feature           | Adds account deletion RPC.                                                                                         | Rerunnable function replacement.                                                             |
| `004_learner_api_grants.sql`                              | hardening         | Grants authenticated learner API access to required tables.                                                        | Rerunnable grants.                                                                           |
| `005_attempt_details.sql`                                 | feature           | Adds detail fields to practice attempts.                                                                           | Rerunnable because columns are added with `if not exists`.                                   |
| `006_safe_learner_questions.sql`                          | hardening         | Adds learner-safe question listing/grading without answer-key exposure.                                            | Rerunnable function/policy refresh.                                                          |
| `007_secure_admin_layer.sql`                              | hardening         | Adds admin audit logs, admin role helpers, admin RPCs, and admin policies.                                         | Rerunnable with caution; replaces many admin functions.                                      |
| `008_course_markdown_documents.sql`                       | feature           | Adds protected Markdown course/paper documents and admin document RPCs.                                            | Rerunnable with caution; replaces document functions.                                        |
| `009_cameroon_curriculum_topics.sql`                      | seed              | Adds Cameroon curriculum topic rows.                                                                               | Rerunnable upsert seed.                                                                      |
| `010_course_document_publish_defaults.sql`                | feature           | Sets course document publish defaults.                                                                             | Rerunnable.                                                                                  |
| `011_structural_paper_progress.sql`                       | feature           | Adds structural paper question progress and retires legacy quiz progress in learner flow.                          | One-time feature migration; rerun only after reviewing current data.                         |
| `012_structural_progress_timing.sql`                      | feature           | Adds timing columns to structural question progress.                                                               | Rerunnable column/update migration.                                                          |
| `013_level_leaderboard.sql`                               | feature           | Adds level-based leaderboard from structural paper progress.                                                       | Rerunnable function replacement.                                                             |
| `014_profile_location_leaderboard.sql`                    | feature           | Adds location fields and location-aware leaderboard output.                                                        | Rerunnable with care; updates profile defaults.                                              |
| `015_progress_aware_course_documents.sql`                 | feature           | Keeps started papers visible even after profile changes.                                                           | Rerunnable function replacement.                                                             |
| `016_location_verification_fields.sql`                    | feature           | Adds browser-permission location verification fields.                                                              | Rerunnable column migration.                                                                 |
| `017_protected_content_events.sql`                        | hardening         | Adds protected content view audit events.                                                                          | Rerunnable schema/policy migration.                                                          |
| `018_retire_legacy_quiz_api.sql`                          | hardening         | Revokes retired MCQ/quiz API access.                                                                               | Rerunnable revokes.                                                                          |
| `019_production_hardening.sql`                            | hardening         | Locks down retired quiz access, progress writes, profile updates, and admin reporting.                             | One-time production hardening; rerun only after reviewing effects.                           |
| `020_premium_paper_access.sql`                            | feature           | Adds premium paper access gate.                                                                                    | Rerunnable function/policy refresh.                                                          |
| `021_premium_features.sql`                                | feature           | Adds streak freezes and admin plan management.                                                                     | Rerunnable with care; creates tables/functions.                                              |
| `022_premium_setup_one_shot.sql`                          | one-shot          | Bundles premium access, premium tools, and Fapshi setup for environments that missed those pieces.                 | Alternative one-shot. Do not run if `020`, `021`, and `023` already ran.                     |
| `023_fapshi_payments.sql`                                 | feature           | Adds Fapshi payment tracking and webhook/payment RPCs.                                                             | Rerunnable with care; payment tables must preserve production records.                       |
| `024_fix_structural_progress_ambiguous_document_id.sql`   | repair            | Fixes ambiguous `document_id` references in structural progress RPC.                                               | Rerunnable function replacement.                                                             |
| `025_require_started_before_completion.sql`               | feature           | Requires `started` before marking structural questions passed/failed.                                              | Rerunnable function replacement.                                                             |
| `026_fix_structural_progress_constraint_name.sql`         | repair            | Uses actual unique constraint name in structural progress upsert.                                                  | Rerunnable function replacement.                                                             |
| `027_reading_progress_tracking.sql`                       | feature           | Adds reading sessions, checkpoints, and reflections.                                                               | Rerunnable schema/policy migration.                                                          |
| `028_learner_notification_state.sql`                      | feature           | Adds cross-device notification state and preferences.                                                              | Rerunnable schema/policy migration.                                                          |
| `029_mobile_push_token.sql`                               | feature           | Adds Expo push token column and scoped grant.                                                                      | Rerunnable column/grant migration.                                                           |
| `030_course_doc_types.sql`                                | feature           | Adds document type metadata for course documents.                                                                  | Rerunnable column/index migration.                                                           |
| `030_reviewer_role_split.sql`                             | hardening         | Splits reviewer read-only access from admin write access.                                                          | Rerunnable function replacement. Note duplicate `030` prefix.                                |
| `031_course_content_kinds.sql`                            | feature           | Splits course/textbook content kinds and updates admin document RPC.                                               | Rerunnable with care; changes constraints/functions.                                         |
| `032_paper_content_kind.sql`                              | repair            | Reclassifies question papers separately from courses/textbooks.                                                    | Rerunnable content repair with care.                                                         |
| `033_expanded_gce_course_catalog.sql`                     | content refresh   | Adds/refreshes detailed Cameroon GCE course documents.                                                             | Rerunnable upsert content refresh. Large file; apply during low traffic.                     |
| `034_cheatsheets_content_kind.sql`                        | feature           | Adds cheatsheet content kind and keeps revision sheets out of full courses.                                        | Rerunnable with care; changes constraints/functions/content rows.                            |
| `035_stable_course_document_ids.sql`                      | repair            | Stabilizes course document IDs and foreign keys for reading/protected events.                                      | One-off repair. Rerun only after checking FK state and duplicate rows.                       |
| `036_stable_cheatsheet_document_ids.sql`                  | repair            | Stabilizes cheatsheet document IDs and removes duplicates.                                                         | One-off repair. Rerun only after checking duplicate rows.                                    |
| `037_fix_profile_update_lock_blank_city.sql`              | repair            | Fixes profile lock false failures when city is blank/null.                                                         | Rerunnable function replacement.                                                             |
| `038_preserve_locked_profile_fields_after_progress.sql`   | repair            | Allows harmless profile settings saves after progress while preserving locked fields.                              | Rerunnable function replacement. Superseded by `040` for track updates.                      |
| `039_keep_blank_profile_city_not_null.sql`                | repair            | Keeps blank city values non-null while preserving harmless saves.                                                  | Rerunnable function replacement. Superseded by `040` for track updates.                      |
| `040_allow_profile_study_track_updates.sql`               | feature           | Allows learners to correct class/series/subjects after progress exists.                                            | Rerunnable function replacement.                                                             |
| `041_topic_understanding_progress.sql`                    | feature           | Adds per-topic understood/needs-review tracking for courses and cheatsheets.                                       | Rerunnable schema/policy migration.                                                          |
| `042_advanced_level_cheatsheets_and_progress_signals.sql` | content refresh   | Adds A-Level cheatsheets and progress signal content.                                                              | Rerunnable upsert content refresh.                                                           |
| `043_enrich_cheatsheet_formula_content.sql`               | content refresh   | Enriches A-Level cheatsheets with formula-heavy markdown/KaTeX content.                                            | Rerunnable content update.                                                                   |

### CLI-tracked migrations applied to production

These timestamped files live in `supabase/migrations/` and are recorded in the linked project's `supabase_migrations.schema_migrations` history (via `supabase migration repair --status applied` after direct apply).

| Version                                                 | Purpose                                                                                                                                                                                       |
| ------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `20260924161116_v2_detailed_cheatsheets_all_levels.sql` | Adds 163 v2 per-topic cheatsheets (109 ordinary + 54 advanced) with level-aware topic IDs.                                                                                                    |
| `20260925084507_fix_paper_class_levels_series.sql`      | Repairs paper `class_levels`/`series` to match `content/papers/manifest.csv` (the one-shot import had seeded the first 3 sets of each subject with broad class levels/series).                |
| `20260925084558_fix_orphaned_advanced_math_papers.sql`  | Scopes the two orphaned advanced "Mathematics" P2 papers (not in the manifest) to `upper_sixth`/`a_science`.                                                                                  |
| `20260925085337_broaden_paper_class_levels.sql`         | Makes English papers visible to all classes in their level (ordinary → `form_3,form_4,form_5`; advanced → `lower_sixth,upper_sixth`), matching cheatsheets/courses. Series scoping preserved. |

## Domain Map

| Domain                       | Relevant Files                                                                                      |
| ---------------------------- | --------------------------------------------------------------------------------------------------- |
| Auth and profiles            | `001`, `003`, `007`, `014`, `016`, `019`, `037`, `038`, `039`, `040`                                |
| Premium access               | `020`, `021`, `022`, `023`                                                                          |
| Fapshi payments              | `023`, or `022` only as an alternative one-shot setup                                               |
| Protected content            | `008`, `010`, `015`, `017`, `019`, `020`, `031`, `032`, `034`, `035`, `036`                         |
| Structural question progress | `011`, `012`, `013`, `014`, `019`, `024`, `025`, `026`, `035`                                       |
| Reading progress             | `027`, `035`                                                                                        |
| Topic understanding progress | `041`, `042`                                                                                        |
| Notifications and push       | `028`, `029`                                                                                        |
| Courses and cheatsheets      | `008`, `009`, `010`, `030_course_doc_types`, `031`, `032`, `033`, `034`, `035`, `036`, `042`, `043` |
| Admin/reviewer controls      | `007`, `019`, `021`, `030_reviewer_role_split`                                                      |

## Fresh Environment Setup

For a fresh development or preview database:

1. Link the intended project:

```bash
supabase link --project-ref <project-ref>
```

2. Apply legacy SQL in lexical order, but skip alternative one-shot files unless that is the chosen path:

```bash
for file in database/supabase/*.sql; do
  case "$file" in
    *000_full_studyspark_setup.sql|*022_premium_setup_one_shot.sql)
      echo "Skipping alternative one-shot bundle: $file"
      ;;
    *)
      echo "Applying $file"
      supabase db query --linked --file "$file"
      ;;
  esac
done
```

3. Run the verification SQL in this document.
4. Run the app smoke tests in `docs/deployment-runbook.md`.

For production, do not use the loop blindly. Follow the production runbook and apply only the reviewed pending files.

## Production Apply Runbook

### Pre-Checks

1. Confirm the target project:

```bash
supabase projects list
supabase link --project-ref ekqlqsyirsakdxonxmis
```

2. Confirm current migration history:

```bash
supabase migration list --linked
```

3. Check for unexpected local changes:

```bash
git status --short
```

4. Read the SQL file end to end.
5. Confirm whether the SQL is schema, data, repair, or content refresh.
6. For payment/profile/progress changes, make sure the app code that depends on the SQL is already merged or deployable immediately after.
7. Take or confirm a recent Supabase backup before high-risk production changes.

### Apply

Apply one reviewed file at a time:

```bash
supabase db query --linked --file database/supabase/043_enrich_cheatsheet_formula_content.sql
```

If using a future CLI-managed timestamp migration:

```bash
supabase db push --linked
```

Never paste multiple unrelated SQL files into the SQL editor without recording exactly what ran.

### Verify

Run the object/function/RLS verification SQL above, then run targeted checks for the changed domain.

For structural question progress:

```sql
select count(*) as structural_rows from public.structural_question_progress;
select proname, pg_get_function_identity_arguments(oid)
from pg_proc
where proname = 'mark_structural_question_progress';
```

For reading progress:

```sql
select count(*) as sessions from public.paper_study_sessions;
select count(*) as checkpoints from public.paper_study_checkpoints;
select count(*) as reflections from public.paper_study_reflections;
```

For premium/Fapshi:

```sql
select to_regclass('public.fapshi_payment_transactions') is not null as has_fapshi_transactions;
select user_id, plan, premium_until
from public.student_profiles
order by updated_at desc
limit 5;
```

For protected content:

```sql
select content_kind, doc_type, status, count(*)
from public.course_documents
group by content_kind, doc_type, status
order by content_kind, doc_type, status;
```

For notifications:

```sql
select to_regclass('public.learner_notification_state') is not null as has_state,
       to_regclass('public.learner_notification_preferences') is not null as has_preferences;
```

### App Smoke Test

After production SQL and deploy:

- Sign in with Google.
- Save profile settings.
- Open `/courses`, `/cheatsheets`, `/library`, `/learning-path`, `/leaderboard`, and `/settings`.
- Open a paper and mark a question as passed/failed.
- Open a course topic and mark understood/needs review.
- Open a cheatsheet topic and mark understood/needs review.
- Start a Fapshi sandbox/live payment only in the matching environment.
- Confirm server logs do not show repeated Supabase 400/500 errors.

## Forward-Fix And Rollback Guidance

StudySpark should prefer forward-only database fixes:

- If a function is wrong, replace it with `create or replace function`.
- If a policy is too broad, create a tighter replacement policy in a new migration.
- If content was misclassified, write an idempotent update that targets the exact wrong rows.
- If a content refresh inserted duplicate rows, deduplicate by stable IDs and preserve rows referenced by learner progress.

Avoid these in production unless explicitly approved:

- `drop table`.
- `truncate`.
- `delete` without a precise predicate and a reviewed backup plan.
- Reverting the database to an older snapshot while the app continues accepting traffic.

If a bad migration is already applied:

1. Stop and capture the exact error, affected route, and SQL file.
2. Do not rerun the same file repeatedly.
3. Write a forward repair migration.
4. Verify with targeted SQL.
5. Deploy app-side compatibility fixes if needed.

## Known Cleanup Work

- Move future migrations to Supabase CLI timestamped files.
- Decide whether to import legacy history into `supabase_migrations.schema_migrations` using `supabase migration repair`.
- Rename or supersede the duplicate `030` prefix during a future cleanup. Do not rename already-applied legacy files without a migration-history plan.
- Split large content refreshes from schema migrations where practical.
