import { createFileRoute, Link, notFound } from "@tanstack/react-router";
import { PAPERS } from "@/lib/mock-data";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { ArrowLeft, Clock, Download, FileText, GraduationCap, Lock, Share2, Users } from "lucide-react";

export const Route = createFileRoute("/_app/paper/$paperId")({
  head: ({ params }) => {
    const paper = PAPERS.find((p) => p.id === params.paperId);
    return {
      meta: [{ title: paper ? `${paper.title} — StudyFlow` : "Paper — StudyFlow" }],
    };
  },
  loader: ({ params }) => {
    const paper = PAPERS.find((p) => p.id === params.paperId);
    if (!paper) throw notFound();
    return { paper };
  },
  errorComponent: ({ error }) => (
    <div className="p-10 text-center text-sm text-muted-foreground">
      Couldn't load this paper: {error.message}
    </div>
  ),
  notFoundComponent: () => (
    <div className="p-10 text-center">
      <h2 className="font-display text-3xl">Paper not found</h2>
      <p className="mt-2 text-sm text-muted-foreground">It may have been removed.</p>
      <Button asChild className="mt-6">
        <Link to="/library">Back to library</Link>
      </Button>
    </div>
  ),
  component: PaperDetail,
});

function PaperDetail() {
  const { paper } = Route.useLoaderData();
  const related = PAPERS.filter((p) => p.subject === paper.subject && p.id !== paper.id).slice(0, 4);

  return (
    <>
      <PageHeader title={paper.title} description={`${paper.examBoard} · ${paper.year}`}>
        <div className="flex flex-wrap gap-2">
          <Button variant="outline" asChild>
            <Link to="/library">
              <ArrowLeft className="mr-1 h-4 w-4" /> Library
            </Link>
          </Button>
          <Button variant="outline">
            <Share2 className="mr-1 h-4 w-4" /> Share
          </Button>
          <Button>
            <Download className="mr-1 h-4 w-4" /> Download PDF
          </Button>
        </div>
      </PageHeader>

      <div className="grid gap-6 px-6 py-6 md:px-10 md:py-8 lg:grid-cols-[1fr_320px]">
        <div className="space-y-6">
          {/* Mock PDF preview */}
          <div className="overflow-hidden rounded-xl border border-border bg-card">
            <div className="flex items-center justify-between border-b border-border bg-surface px-4 py-3 text-xs text-muted-foreground">
              <span>{paper.title}.pdf</span>
              <span>Page 1 of 12</span>
            </div>
            <div className="aspect-[8.5/11] bg-white p-10 md:p-16">
              <div className="mx-auto max-w-md space-y-6 text-foreground">
                <div className="text-center">
                  <p className="text-xs uppercase tracking-widest text-muted-foreground">{paper.examBoard}</p>
                  <h2 className="mt-2 font-display text-2xl">{paper.subject}</h2>
                  <p className="mt-1 text-sm text-muted-foreground">{paper.year} Examination</p>
                </div>
                <div className="space-y-1 text-xs text-muted-foreground">
                  <p>Time allowed: {paper.duration} minutes</p>
                  <p>Total questions: {paper.questions}</p>
                  <p>Answer ALL questions in Section A and any FOUR from Section B.</p>
                </div>
                <div className="space-y-3 pt-4">
                  <div>
                    <p className="text-sm font-medium">1.</p>
                    <p className="mt-1 text-sm">If 2x + 3 = 11, find the value of x.</p>
                    <div className="mt-2 ml-4 space-y-1 text-sm text-muted-foreground">
                      <p>(a) 2 &nbsp; (b) 3 &nbsp; (c) 4 &nbsp; (d) 5</p>
                    </div>
                  </div>
                  <div>
                    <p className="text-sm font-medium">2.</p>
                    <p className="mt-1 text-sm">Find the area of a circle of radius 7 cm. (Take π = 22/7)</p>
                  </div>
                  <div>
                    <p className="text-sm font-medium">3.</p>
                    <p className="mt-1 text-sm">Solve: 3x − 2 = 2x + 5</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          {paper.isPremium && (
            <div className="flex items-center gap-3 rounded-xl border border-accent/30 bg-accent/10 p-4">
              <Lock className="h-5 w-5 text-accent" />
              <div className="flex-1">
                <p className="text-sm font-medium">This paper is Premium</p>
                <p className="text-xs text-muted-foreground">Upgrade to download the marking scheme and annotated solutions.</p>
              </div>
              <Button asChild size="sm">
                <Link to="/pricing">Upgrade</Link>
              </Button>
            </div>
          )}
        </div>

        <aside className="space-y-4">
          <div className="rounded-xl border border-border bg-card p-5">
            <Badge variant={paper.isPremium ? "default" : "secondary"} className="gap-1">
              {paper.isPremium && <Lock className="h-3 w-3" />}
              {paper.isPremium ? "Premium" : "Free"}
            </Badge>
            <dl className="mt-5 space-y-3 text-sm">
              <div className="flex items-center justify-between">
                <dt className="flex items-center gap-2 text-muted-foreground"><FileText className="h-4 w-4" /> Questions</dt>
                <dd className="font-medium">{paper.questions}</dd>
              </div>
              <div className="flex items-center justify-between">
                <dt className="flex items-center gap-2 text-muted-foreground"><Clock className="h-4 w-4" /> Duration</dt>
                <dd className="font-medium">{paper.duration} min</dd>
              </div>
              <div className="flex items-center justify-between">
                <dt className="flex items-center gap-2 text-muted-foreground"><Users className="h-4 w-4" /> Downloads</dt>
                <dd className="font-medium">{paper.downloads.toLocaleString()}</dd>
              </div>
            </dl>
            <Button asChild className="mt-5 w-full">
              <Link to="/quiz/setup" search={{ subject: paper.subject, board: paper.examBoard }}>
                <GraduationCap className="mr-1.5 h-4 w-4" /> Start quiz from paper
              </Link>
            </Button>
          </div>

          <div className="rounded-xl border border-border bg-card p-5">
            <h3 className="text-sm font-medium">Related papers</h3>
            <ul className="mt-3 divide-y divide-border">
              {related.map((p) => (
                <li key={p.id}>
                  <Link
                    to="/paper/$paperId"
                    params={{ paperId: p.id }}
                    className="flex items-center justify-between py-2.5 text-sm hover:text-foreground"
                  >
                    <span className="truncate">{p.title}</span>
                    <span className="ml-3 text-xs text-muted-foreground">{p.year}</span>
                  </Link>
                </li>
              ))}
            </ul>
          </div>
        </aside>
      </div>
    </>
  );
}
