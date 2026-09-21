import { Outlet, Link, createRootRoute, HeadContent, Scripts } from "@tanstack/react-router";
import { Analytics } from "@vercel/analytics/react";
import { useEffect } from "react";

import appCss from "../styles.css?url";
import { isStaleAssetError, requestStaleAssetRecovery } from "@/lib/stale-asset-recovery";

const siteUrl = "https://study-spark-237.vercel.app";
const siteTitle = "StudySpark - Cameroon GCE practice and progress";
const siteDescription =
  "StudySpark helps Cameroon students practise protected GCE structural papers by class, series, subject, and topic with progress tracking and AI-guided revision.";

function NotFoundComponent() {
  return (
    <div className="flex min-h-screen items-center justify-center bg-background px-4">
      <div className="max-w-md text-center">
        <p className="text-xs uppercase tracking-widest text-muted-foreground">404</p>
        <h1 className="mt-3 font-display text-6xl text-foreground md:text-7xl">
          Page <span className="italic text-muted-foreground">not found</span>
        </h1>
        <p className="mt-3 text-sm text-muted-foreground">
          The page you're looking for doesn't exist or has been moved.
        </p>
        <div className="mt-8 flex items-center justify-center gap-3">
          <Link
            to="/dashboard"
            className="inline-flex items-center justify-center rounded-md bg-primary px-4 py-2 text-sm font-medium text-primary-foreground transition-colors hover:bg-primary/90"
          >
            Open app
          </Link>
        </div>
      </div>
    </div>
  );
}

function ErrorComponent({ error }: { error: unknown }) {
  const staleAsset = isStaleAssetError(error);
  const message = staleAsset
    ? "StudySpark was updated while this page was open. We are refreshing the app so it can load the newest files."
    : error instanceof Error
      ? error.message
      : "Please try again.";

  useEffect(() => {
    requestStaleAssetRecovery(error);
  }, [error]);

  return (
    <div className="flex min-h-screen items-center justify-center bg-background px-4">
      <div className="max-w-md text-center">
        <p className="text-xs uppercase tracking-widest text-muted-foreground">
          {staleAsset ? "StudySpark updated" : "Something broke"}
        </p>
        <h1 className="mt-3 font-display text-4xl text-foreground md:text-5xl">
          {staleAsset ? (
            <>
              Refreshing the <span className="italic text-muted-foreground">new version</span>
            </>
          ) : (
            <>
              An unexpected <span className="italic text-muted-foreground">error</span> occurred
            </>
          )}
        </h1>
        <p className="mt-3 text-sm text-muted-foreground">{message}</p>
        <div className="mt-8 flex items-center justify-center gap-3">
          <button
            type="button"
            onClick={() => window.location.reload()}
            className="inline-flex items-center justify-center rounded-md border border-border bg-card px-4 py-2 text-sm font-medium transition-colors hover:bg-secondary"
          >
            Reload page
          </button>
          <Link
            to="/dashboard"
            className="inline-flex items-center justify-center rounded-md bg-primary px-4 py-2 text-sm font-medium text-primary-foreground transition-colors hover:bg-primary/90"
          >
            Go to dashboard
          </Link>
        </div>
      </div>
    </div>
  );
}

export const Route = createRootRoute({
  head: () => ({
    meta: [
      { charSet: "utf-8" },
      { name: "viewport", content: "width=device-width, initial-scale=1" },
      { title: siteTitle },
      { name: "description", content: siteDescription },
      { name: "robots", content: "index, follow" },
      { name: "googlebot", content: "index, follow, max-image-preview:large" },
      {
        name: "keywords",
        content:
          "StudySpark, Cameroon GCE, Cameroon past questions, GCE Advanced Level, GCE Ordinary Level, Cameroon secondary school, structural papers, Form 3, Form 4, Form 5, Lower Sixth, Upper Sixth, revision app Cameroon",
      },
      { name: "author", content: "StudySpark" },
      { name: "application-name", content: "StudySpark" },
      { name: "apple-mobile-web-app-title", content: "StudySpark" },
      { name: "mobile-web-app-capable", content: "yes" },
      { name: "apple-mobile-web-app-capable", content: "yes" },
      { name: "apple-mobile-web-app-status-bar-style", content: "default" },
      { name: "theme-color", media: "(prefers-color-scheme: light)", content: "#fdf8f0" },
      { name: "theme-color", media: "(prefers-color-scheme: dark)", content: "#272016" },
      { name: "geo.region", content: "CM" },
      { name: "geo.placename", content: "Cameroon" },
      { property: "og:title", content: siteTitle },
      { property: "og:description", content: siteDescription },
      { property: "og:type", content: "website" },
      { property: "og:url", content: siteUrl },
      { property: "og:site_name", content: "StudySpark" },
      { property: "og:locale", content: "en_CM" },
      { name: "twitter:card", content: "summary_large_image" },
      { name: "twitter:title", content: siteTitle },
      { name: "twitter:description", content: siteDescription },
    ],
    links: [
      { rel: "stylesheet", href: appCss },
      { rel: "canonical", href: siteUrl },
      { rel: "manifest", href: "/site.webmanifest" },
      { rel: "apple-touch-icon", sizes: "180x180", href: "/icons/apple-touch-icon.png" },
      {
        rel: "icon",
        type: "image/svg+xml",
        href: "data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 64 64'%3E%3Crect width='64' height='64' rx='14' fill='%23282622'/%3E%3Cpath d='M18 17h28v30H18z' fill='none' stroke='%23fff7ed' stroke-width='5'/%3E%3Cpath d='M25 28h14M25 38h10' stroke='%23fff7ed' stroke-width='4' stroke-linecap='round'/%3E%3C/svg%3E",
      },
    ],
  }),
  shellComponent: RootShell,
  component: RootComponent,
  notFoundComponent: NotFoundComponent,
  errorComponent: ErrorComponent,
});

function RootShell({ children }: { children: React.ReactNode }) {
  // Inline script runs synchronously before first paint to prevent flash of wrong theme
  const themeScript = `
    (function(){
      try {
        var t = localStorage.getItem('studyspark-theme');
        var prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
        if (t === 'dark' || (t !== 'light' && prefersDark)) {
          document.documentElement.classList.add('dark');
        }
      } catch(e){}
    })();
  `.trim();

  const pwaCaptureScript = `
    (function(){
      window.__pwaInstallPrompt = null;
      window.addEventListener('beforeinstallprompt', function (e) {
        e.preventDefault();
        window.__pwaInstallPrompt = e;
      });
    })();
  `.trim();

  return (
    <html lang="en" suppressHydrationWarning>
      <head>
        <script dangerouslySetInnerHTML={{ __html: pwaCaptureScript }} />
        <HeadContent />
      </head>
      <body>
        <script dangerouslySetInnerHTML={{ __html: themeScript }} />
        {children}
        <script src="/chunk-reload.js" defer />
        <script src="/pwa-register.js" defer />
        <script src="/pwa-install-prompt.js" defer />
        <Analytics />
        <Scripts />
      </body>
    </html>
  );
}

function RootComponent() {
  return <Outlet />;
}
