# Bilingual Mobile UX QA

Issue: #23

This QA pass checks StudySpark at the mobile widths called out in the ticket, plus tablet and desktop, with the app locale forced to English and French through `localStorage`.

## How to Run

Start the local app first:

```bash
npm run dev -- --host 127.0.0.1 --port 8080
```

Then run:

```bash
node scripts/qa-mobile-layout.mjs
```

Optional:

```bash
QA_BASE_URL=http://127.0.0.1:8080 CHROME_BIN=/path/to/chrome node scripts/qa-mobile-layout.mjs
```

## Coverage

The script checks these widths:

- 360px
- 390px
- 414px
- 768px
- 1366px

The script checks these routes in both `en` and `fr` locale modes:

- `/signin`
- `/pricing`
- `/dashboard`
- `/library`
- `/courses`
- `/cheatsheets`
- `/learning-path`
- `/notifications`
- `/settings`
- `/support`

For each route, the script records:

- viewport width
- page title
- final path after navigation
- document scroll width
- horizontal overflow status
- first overflowing element candidates, if any
- screenshot path

## Latest Result

Latest local run:

- `100` route/locale/viewport combinations checked.
- `0` horizontal overflow failures.
- Screenshots are stored in `docs/qa/bilingual-mobile-ux/screenshots/`.
- Machine-readable results are stored in `docs/qa/bilingual-mobile-ux/latest-results.json`.

## Fixes Included With This Pass

- Mobile bottom navigation labels now truncate inside their tab instead of stretching the bar when French labels are long.
- Course subject cards now wrap long subject names and keep metric badges from squeezing content.
- Cheatsheet subject cards now wrap long subject names instead of truncating them.
- Topic/status badges on course and cheatsheet cards now stay compact and avoid forcing horizontal overflow.

## Known Gaps

- This branch starts from `main`. At the time of this QA pass, the issue #22 branch with deeper payment/support/notification localization was not merged into `main`, so those new French strings are not represented in these screenshots yet.
- The script verifies layout and horizontal overflow. It does not complete real Fapshi payment flows, Google OAuth, or a real Supabase production session.
- Some non-ticket English copy still exists in onboarding, command menu, and auth helper messages. Those should be handled by the bilingual localization tickets rather than hidden by this QA pass.
