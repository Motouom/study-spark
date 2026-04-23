import { createFileRoute, Link, notFound } from "@tanstack/react-router";
import { COUNTRIES, PAPERS } from "@/lib/mock-data";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  ArrowLeft,
  Clock,
  Download,
  FileText,
  GraduationCap,
  Lock,
  Share2,
  Users,
} from "lucide-react";
import { PdfReader } from "@/components/PdfReader";

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
  const data = Route.useLoaderData();
  const paper = data!.paper;
  const related = PAPERS.filter((p) => p.subject === paper.subject && p.id !== paper.id).slice(0, 4);
  const country = COUNTRIES.find((c) => c.code === paper.country);

  return (
    <>
      <PageHeader title={paper.title} description={`${country?.flag ?? ""} ${paper.examBoard} · ${paper.year}`}>
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
          <PdfReader paper={paper} />

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
            <p className="mt-3 text-sm text-muted-foreground">{paper.description}</p>
            <div className="mt-3 flex flex-wrap gap-1.5">
              {paper.tags.map((t: string) => (
                <Badge key={t} variant="outline" className="text-[10px] uppercase tracking-wider">
                  {t}
                </Badge>
              ))}
            </div>
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
              <Link to="/quiz/setup" search={{ subject: paper.subject, board: paper.examBoard, difficulty: undefined, count: undefined, timed: undefined, mode: undefined }}>
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
