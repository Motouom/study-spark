// @lovable.dev/vite-tanstack-config already includes the following — do NOT add them manually
// or the app will break with duplicate plugins:
//   - tanstackStart, viteReact, tailwindcss, tsConfigPaths, cloudflare (build-only),
//     componentTagger (dev-only), VITE_* env injection, @ path alias, React/TanStack dedupe,
//     error logger plugins, and sandbox detection (port/host/strictPort).
// You can pass additional config via defineConfig({ vite: { ... } }) if needed.
import { defineConfig } from "@lovable.dev/vite-tanstack-config";

// Hard guard: the app must always run on port 8080. Reject any attempt to
// start it on another port, including explicit CLI flags like --port 5173.
const APP_PORT = 8080;
const portFlagIndex = process.argv.indexOf("--port");
const cliPort = portFlagIndex !== -1 ? Number(process.argv[portFlagIndex + 1]) : undefined;
if (cliPort !== undefined && cliPort !== APP_PORT) {
  throw new Error(
    `This app must run on port ${APP_PORT}. Port ${cliPort} was requested via --port and is not allowed.`,
  );
}

export default defineConfig({
  vite: {
    // The app must always run on port 8080 — never another port. strictPort
    // makes the dev server fail instead of silently hopping to 8081+.
    server: {
      port: 8080,
      strictPort: true,
    },
    preview: {
      port: 8080,
      strictPort: true,
    },
  },
});
