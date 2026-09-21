# StudySpark: Web → Expo (iOS + Android) Migration Plan

> **Guiding principle:** The web app stays exactly as it is — deployed on Vercel, unchanged.
> The mobile app is a **separate Expo project** that reuses the same Supabase backend.
> Nothing in this repo gets deleted or rewritten.

---

## 0. Ground Truth (actual scope, verified in this repo)

| Item                      | Count                   | Notes                                                                                                             |
| ------------------------- | ----------------------- | ----------------------------------------------------------------------------------------------------------------- |
| User-facing screens       | ~25                     | `src/routes/_app.*` (dashboard, courses, quiz, library, streak, etc.)                                             |
| Admin screens             | 7                       | `src/routes/control-panel-9k3x.*`                                                                                 |
| Public screens            | 4                       | `index`, `pricing`, `signin`, `auth.callback`                                                                     |
| TanStack server functions | 6                       | `src/lib/server-api.ts` — **must move to Supabase Edge Functions**                                                |
| API routes (server-only)  | 6                       | AI (format-paper, learning-path, progress-insight), Fapshi payments (initiate, verify, webhook), payments history |
| UI stack                  | shadcn/Radix + Tailwind | Radix primitives have **no RN equivalent** — biggest conversion cost                                              |
| Styling                   | Tailwind                | Survives via NativeWind                                                                                           |
| Backend                   | Supabase                | Reused 100% as-is                                                                                                 |
| Payments                  | Fapshi                  | Needs a mobile strategy (see Phase 6)                                                                             |
| Hardware needs            | Push notifications only | `expo-notifications`                                                                                              |

**Realistic timeline (solo, AI-assisted): 2–4 weeks** for a functional app + store setup.

---

## Phase 1 — Prep & Inventory (Day 1)

- [ ] Audit `src/lib/server-api.ts` — list every server function and what it does
- [ ] Audit the 6 API routes (AI + Fapshi) — these are server-only and must be re-hosted
- [ ] Grep for web-only APIs in routes/components: `window.`, `document.`, `localStorage`, `navigator.`
- [ ] List every shadcn/Radix component actually used (Dialog, DropdownMenu, Select, Sheet, Tabs, Command, Popover, etc.) — this is your conversion workload
- [ ] Decide app identity: name, bundle ID (`com.yourname.studyspark`), icon, splash
- [ ] Create Apple Developer account ($99/yr) and Google Play account ($25 one-time) — start now, verification takes days

## Phase 2 — Backend Moves to Supabase Edge Functions (Days 1–3)

The mobile app cannot call TanStack server functions or Vercel-hosted API routes.
Move all server logic into Supabase Edge Functions (same project, same DB):

- [ ] `format-paper` (AI) → Supabase Edge Function
- [ ] `learning-path` (AI) → Supabase Edge Function
- [ ] `progress-insight` (AI) → Supabase Edge Function
- [ ] `payments/fapshi/initiate` → Edge Function
- [ ] `payments/fapshi/verify` → Edge Function
- [ ] `payments/fapshi/webhook` → Edge Function (keep the existing Vercel one running too — both can point at the same Supabase tables)
- [ ] `payments/history` → replace with direct Supabase client query (RLS-protected) if possible
- [ ] Move AI provider keys + Fapshi secrets into Supabase Edge Function env vars
- [ ] **Verify the web app still works identically on Vercel** (it keeps using its own routes; no changes needed)

## Phase 3 — Scaffold the Expo App (Day 3)

Create a **new repo/folder** (e.g. `studyspark-mobile/`), never inside this Vite project:

- [ ] `npx create-expo-app@latest studyspark-mobile` (TypeScript + Expo Router)
- [ ] Install: `@supabase/supabase-js`, `@react-native-async-storage/async-storage`, `react-native-url-polyfill`
- [ ] Install & configure **NativeWind v4** (Tailwind for RN)
- [ ] Copy over (nearly verbatim): `src/lib/supabase.ts` (swap localStorage → AsyncStorage), `src/lib/auth.ts`, `src/types/`, all Supabase query hooks
- [ ] Configure Supabase Auth redirect/deep-link URL for mobile (`studyspark://auth/callback`) in the Supabase dashboard
- [ ] Set up Expo Router layout: `(auth)` group, `(tabs)` group, `(admin)` group — mirrors your route structure

## Phase 4 — Build the shadcn → RN Component Layer (Days 3–6)

Build these once in `studyspark-mobile/src/components/ui/`, reuse across all screens.
Keep the **same prop names/APIs as your shadcn components** so screen conversion is mostly find-and-replace:

- [ ] `Button` → Pressable + NativeWind
- [ ] `Card`, `Badge`, `Separator`, `Progress`, `Avatar`, `Skeleton`
- [ ] `Input` / `Textarea` → TextInput
- [ ] `Dialog` / `AlertDialog` / `Sheet` → `react-native-bottom-sheet` or modal
- [ ] `DropdownMenu` / `Select` → action sheet or `@react-native-picker/picker`
- [ ] `Tabs` → custom NativeWind tab bar
- [ ] `Toast` / `Sonner` → `burnt` or `react-native-toast-message`
- [ ] `Command` (search palette) → dedicated search screen instead
- [ ] Charts (progress/streak screens) → `react-native-gifted-charts` or `victory-native`

## Phase 5 — Screen Migration (Days 6–14)

Convert in this order, 3–5 files per AI batch, keeping all Supabase logic identical:

**Batch A — Auth flow**

- [ ] `signin` (+ `auth.callback` via deep link)
- [ ] `onboarding`

**Batch B — Core shell**

- [ ] `_app.tsx` layout → `(tabs)/_layout.tsx`
- [ ] `dashboard`
- [ ] `courses` + `course.$documentId`
- [ ] `library` + `textbooks`

**Batch C — Learning features**

- [ ] `quiz.setup` + `quiz`
- [ ] `learning-path`
- [ ] `progress` + `streak` + `achievements`
- [ ] `leaderboard` + `search` + `notifications`

**Batch D — Secondary**

- [ ] `settings` + `support`
- [ ] `pricing` (see Phase 6)
- [ ] `index` (landing — consider a lighter mobile onboarding instead)

**Batch E — Admin (optional for v1)**

- [ ] `control-panel-9k3x.*` — consider shipping v1 without admin on mobile (use web on Vercel for admin instead) ✅ **recommended**

**Per-screen checklist:**

- [ ] No `window`/`document`/`localStorage` references
- [ ] `<div>`→`<View>`, text→`<Text>`, clicks→`onPress`, lists→`FlatList`
- [ ] Tested in Expo Go on a real Android device

## Phase 6 — Payments (Fapshi) Strategy (Day 14–15)

- [ ] Decide: open Fapshi checkout in the system browser (InAppBrowser / `expo-web-browser`) and return via deep link — **recommended** (avoids Apple IAP rules for physical/external services)
- [ ] Wire `initiate` → Edge Function, redirect back to app via deep link, then `verify` → Edge Function
- [ ] Test a full sandbox payment round-trip on device

## Phase 7 — Push Notifications (Days 15–16)

- [ ] `npx expo install expo-notifications`
- [ ] Hook: request permission → get Expo Push Token → save to `profiles.expo_push_token` in Supabase
- [ ] Edge Function (or DB webhook on new notification row) → POST to `https://exp.host/--/api/v2/push/send`
- [ ] Wire your existing `notifications` screen to the same data

## Phase 8 — QA & Polish (Days 16–18)

- [ ] Full flow test on real Android + iOS device (Expo Go / dev build)
- [ ] Offline behavior: graceful errors when Supabase unreachable
- [ ] Auth session persistence across app restarts
- [ ] App icon, splash screen, store screenshots (phone + tablet)
- [ ] Privacy policy page (required by both stores)

## Phase 9 — Play Store Deployment (Days 18–20)

- [ ] `npm i -g eas-cli && eas login && eas build:configure`
- [ ] `app.json`: set `android.package`, `versionCode`, adaptive icon
- [ ] `eas build --platform android --profile production` → produces `.aab` (let Expo manage the keystore)
- [ ] Play Console: Create app → store listing (icon 512×512, feature graphic 1024×500, screenshots)
- [ ] Complete App Content: privacy policy, ads declaration, content rating, target audience, data safety form
- [ ] First release → **Closed testing** with testers → then Production rollout
- [ ] Expect 3–7 days for first review on a new developer account

## Phase 10 — App Store (iOS) Deployment (Days 20–22)

- [ ] `eas build --platform ios --profile production` (cloud build — **no Mac needed**)
- [ ] `eas submit --platform ios` → App Store Connect
- [ ] Screenshots from a real iPhone/simulator (Apple requires device screenshots)
- [ ] Push notification certificate/APNs key via EAS (Expo handles this)
- [ ] Submit for review; expect 1–3 days

## Phase 11 — Ongoing

- [ ] **Web stays on Vercel** — deploy as usual, zero changes
- [ ] Use `eas update` (OTA) for JS-only bug fixes — bypasses store review
- [ ] Bump `versionCode` (Android) / `version` (iOS) for every native-affecting release
- [ ] Admin panel: keep using the web version on Vercel from a browser

---

## Key Risks

| Risk                                               | Mitigation                                                     |
| -------------------------------------------------- | -------------------------------------------------------------- |
| Radix components don't exist in RN                 | Phase 4 builds them once, up front                             |
| Server functions / API routes are web-only         | Phase 2 moves them to Supabase Edge Functions                  |
| Fapshi checkout inside app may violate store rules | Open in system browser + deep-link return                      |
| Apple review rejects wrapper-feeling apps          | Native UI, native navigation, real device testing              |
| OAuth redirect fails on mobile                     | Configure deep links in Supabase Auth settings early (Phase 3) |
