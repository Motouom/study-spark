import { Outlet, Link, createRootRoute, HeadContent, Scripts } from "@tanstack/react-router";

import appCss from "../styles.css?url";

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
            to="/"
            className="inline-flex items-center justify-center rounded-md bg-primary px-4 py-2 text-sm font-medium text-primary-foreground transition-colors hover:bg-primary/90"
          >
            Go home
          </Link>
          <Link
            to="/dashboard"
            className="inline-flex items-center justify-center rounded-md border border-border px-4 py-2 text-sm font-medium text-foreground transition-colors hover:bg-secondary"
          >
            Open app
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
      { title: "StudyFlow — The study app that makes you want to come back" },
      {
        name: "description",
        content:
          "All-in-one study platform for African secondary school students. Past questions, quizzes, and progress analytics — no ads, free answers.",
      },
      { name: "author", content: "StudyFlow" },
      { property: "og:title", content: "StudyFlow — Study smarter for WASSCE, JAMB, KCSE" },
      {
        property: "og:description",
        content: "Free past papers, AI-guided learning paths, and progress that motivates you.",
      },
      { property: "og:type", content: "website" },
      { name: "twitter:card", content: "summary_large_image" },
    ],
    links: [{ rel: "stylesheet", href: appCss }],
  }),
  shellComponent: RootShell,
  component: RootComponent,
  notFoundComponent: NotFoundComponent,
});

function RootShell({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <head>
        <HeadContent />
      </head>
      <body>
        {children}
        <Scripts />
      </body>
    </html>
  );
}

function RootComponent() {
  return <Outlet />;
}
