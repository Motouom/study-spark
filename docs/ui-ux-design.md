# StudySpark UI/UX Design System

This document describes the UI/UX design language used across StudySpark: design philosophy, color system, typography, component libraries, layout, motion, theming, and accessibility rules. Follow it whenever building or modifying UI.

## 1. Design Philosophy

- **Notion-style warm minimalism** — warm off-white backgrounds, deep ink text, generous whitespace, soft borders instead of heavy shadows.
- **Content first** — the study material (papers, questions, KaTeX math) is the hero; chrome stays quiet and neutral.
- **Amber used sparingly** — the warm amber accent highlights streaks, premium/CTA moments, and key actions only. It is never a background for large surfaces.
- **Calm, editorial feel** — serif display headings paired with clean sans-serif body text gives a "textbook" character.
- **Full dark-mode parity** — every screen must look intentional in both light and dark themes.

## 2. Tech Stack & Libraries

| Concern                               | Library                                                                                      |
| ------------------------------------- | -------------------------------------------------------------------------------------------- |
| Framework                             | TanStack Start (React 19, SSR) + TanStack Router                                             |
| Styling                               | Tailwind CSS v4 (CSS-first config via `@theme` in `src/styles.css`)                          |
| Component primitives                  | Radix UI (`@radix-ui/react-*`) wrapped as shadcn/ui-style components in `src/components/ui/` |
| Component variants                    | `class-variance-authority` (cva)                                                             |
| Class merging                         | `clsx` + `tailwind-merge` via `cn()` (`src/lib/utils.ts`)                                    |
| Icons                                 | `lucide-react`                                                                               |
| Animations                            | `framer-motion`, `tw-animate-css`                                                            |
| Charts                                | `recharts` (uses `--chart-1..5` tokens)                                                      |
| Toasts                                | `sonner`                                                                                     |
| Forms                                 | `react-hook-form` + `zod` + `@hookform/resolvers`                                            |
| Drawers / carousels / command palette | `vaul`, `embla-carousel-react`, `cmdk`                                                       |
| Math rendering                        | `katex` + `rehype-katex` + `remark-math`                                                     |
| Dates                                 | `date-fns`, `react-day-picker`                                                               |

### Component conventions

- All primitives live in `src/components/ui/` and follow shadcn/ui patterns: Radix behavior + cva variants + `cn()` for class composition.
- Feature components compose these primitives; never hand-roll a dialog, dropdown, or tooltip.
- Use semantic tokens (`bg-background`, `text-muted-foreground`, `border-border`) — never raw hex/oklch values in components.

## 3. Color System

All colors are defined as CSS custom properties in **OKLCH** in `src/styles.css`, exposed to Tailwind through `@theme inline`. Two palettes: `:root` (light) and `.dark`.

### Light theme

| Token                  | Value                   | Usage                                    |
| ---------------------- | ----------------------- | ---------------------------------------- |
| `--background`         | `oklch(0.992 0.002 80)` | Page background (warm off-white)         |
| `--foreground`         | `oklch(0.18 0.01 60)`   | Primary text (deep warm ink)             |
| `--surface`            | `oklch(0.975 0.003 80)` | Subtle section background                |
| `--card`               | `oklch(1 0 0)`          | Card surfaces (pure white)               |
| `--primary`            | `oklch(0.22 0.015 60)`  | Primary buttons / key actions (deep ink) |
| `--primary-foreground` | `oklch(0.985 0.003 80)` | Text on primary                          |
| `--secondary`          | `oklch(0.955 0.005 80)` | Secondary buttons                        |
| `--muted`              | `oklch(0.96 0.004 80)`  | Muted backgrounds                        |
| `--muted-foreground`   | `oklch(0.5 0.012 60)`   | Secondary text                           |
| `--accent`             | `oklch(0.78 0.14 60)`   | Warm amber accent (sparing)              |
| `--destructive`        | `oklch(0.58 0.2 27)`    | Errors / destructive actions             |
| `--success`            | `oklch(0.65 0.14 155)`  | Success states, "passed"                 |
| `--warning`            | `oklch(0.78 0.15 75)`   | Warnings                                 |
| `--border` / `--input` | `oklch(0.91 0.005 80)`  | Borders, input borders                   |
| `--ring`               | `oklch(0.65 0.05 60)`   | Focus rings                              |

### Dark theme

| Token                     | Value                                                |
| ------------------------- | ---------------------------------------------------- |
| `--background`            | `oklch(0.16 0.008 60)`                               |
| `--foreground`            | `oklch(0.96 0.004 80)`                               |
| `--card` / `--popover`    | `oklch(0.21 0.01 60)`                                |
| `--primary`               | `oklch(0.96 0.004 80)` (inverted: light ink on dark) |
| `--secondary` / `--muted` | `oklch(0.26 0.012 60)`                               |
| `--border`                | `oklch(1 0 0 / 10%)`                                 |
| `--input`                 | `oklch(1 0 0 / 12%)`                                 |

### Chart palette (`--chart-1..5`, both themes)

Blue `oklch(0.55 0.16 250)`, Green `oklch(0.65 0.14 155)`, Amber `oklch(0.78 0.14 60)`, Magenta `oklch(0.6 0.18 320)`, Orange `oklch(0.7 0.14 30)`.

### Brand / platform colors

- `theme-color` meta: light `#fdf8f0`, dark `#272016` (also in `public/site.webmanifest`).
- Favicon/logo ink: `#282622` with `#fff7ed` strokes.

## 4. Typography

- **Body / UI:** system sans stack — `ui-sans-serif, system-ui, sans-serif` (no webfont; fast and native-feeling).
- **Display / headings:** serif stack — `"Iowan Old Style", Georgia, serif`, applied via the `font-display` utility class with `letter-spacing: -0.01em`.
- Headings use `tracking-tight` and large scale steps (`text-4xl`–`text-7xl` on landing/hero, `text-3xl` for stat values).
- Body text is `text-sm`/`text-base`; helper text uses `text-muted-foreground`.

## 5. Shape, Elevation & Backgrounds

- **Base radius:** `--radius: 0.75rem`, with derived steps `sm` (−4px) → `3xl` (+12px). Rounded, friendly shapes everywhere.
- **Shadows** (defined as `--shadow-*` tokens, very subtle):
  - `--shadow-soft` — inputs, small elements.
  - `--shadow-card` — cards.
  - `--shadow-elevated` — popovers, dialogs, floating UI.
- **Decorative backgrounds:** `.grid-bg` (32px grid lines) and `.dot-bg` (16px dot pattern) utilities built from `--color-border` — used on hero/empty sections.

## 6. Layout & Responsive

- App shell: `_app.tsx` layout route wraps authenticated pages; root route (`__root.tsx`) owns `<head>`, theme bootstrap script, and global scripts.
- Mobile-first Tailwind breakpoints; content is centered with `max-w-*` containers and `px-4` gutters.
- Bottom/side navigation adapts per viewport; PWA install prompts and offline page (`public/offline.html`) follow the same tokens.

## 7. Motion

- `framer-motion` for entrance/interaction animations (fade/slide-in cards, stat counters).
- `tw-animate-css` provides Tailwind animation utilities for Radix enter/exit states.
- Keep motion subtle and fast (~150–300ms); respect reduced motion where feasible.

## 8. Theming

- Three-state theme: `light | dark | system`, stored in `localStorage` under `studyspark-theme` (`src/hooks/use-theme.ts`), toggled via `ThemeToggle` component.
- An inline script in `RootShell` (`__root.tsx`) applies the `.dark` class synchronously before first paint to prevent flash of wrong theme; `<html>` carries `suppressHydrationWarning`.
- Dark mode variant: `@custom-variant dark (&:is(.dark *))`.
- KaTeX gets explicit dark-mode overrides in `styles.css` (bundled stylesheet hardcodes ink colors).

## 9. Content Protection UX

Protected GCE papers use dedicated utilities/classes:

- `.protected-content` — disables selection and touch-callout.
- `body.protected-content-hidden .protected-content` — 18px blur when access is locked.
- `@media print` — replaces the page with a "protected content" notice when printing is attempted.
- `.protected-markdown` — overflow-safe rules for markdown/KaTeX/images inside papers.

## 10. Accessibility

- Focus rings via `--ring` token on all interactive elements (Radix primitives handle keyboard/focus behavior).
- Color contrast: ink-on-off-white and inverted dark palette both meet WCAG AA for body text; amber is decorative/CTA only, never body text on white.
- Semantic HTML and labeled form controls via Radix `Label` + `react-hook-form`.
- `lang="en"`, viewport meta, `color-scheme` set per theme.

## 11. Do / Don't

**Do**

- Use semantic tokens and `cn()` for all styling.
- Use `font-display` for headings, sans for everything else.
- Keep cards on `bg-card` with `border-border` and `shadow-card`.
- Test every screen in light and dark mode.

**Don't**

- Hardcode hex/oklch colors in components.
- Use amber (`--accent`) for large surfaces or body text.
- Introduce new UI libraries without updating this document.
- Add shadows heavier than `--shadow-elevated`.
