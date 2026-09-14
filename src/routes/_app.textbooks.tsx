import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { PremiumGate } from "@/components/PremiumGate";
import { useStudyContent } from "@/hooks/use-study-content";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { countStructuralQuestions } from "@/hooks/use-structural-progress";
import { Badge } from "@/components/ui/badge";
import { BookOpen, FileText, ListChecks } from "lucide-react";

export const Route = createFileRoute("/_app/textbooks")({
  head: () => ({ meta: [{ title: "Digital textbooks — StudySpark" }] }),
  component: TextbooksPage,
});

function TextbooksPage() {
  const { profile } = useStudyProfile();
  const { documents } = useStudyContent(profile);
  const subjects = [...new Set(documents.map((document) => document.subject))].sort();
  const headingPattern = /(?:^|\n)#{1,3}\s+(.+)/g;

  return (
    <>
      <PageHeader
        title="Digital textbooks"
        description="Premium reading collections built from your approved paper library."
      />
      <div className="px-6 py-6 md:px-10 md:py-8">
        <PremiumGate
          title="Premium textbooks"
          description="Upgrade to access full digital textbooks, reading packs, and organized revision notes."
        >
          <div className="grid gap-4 md:grid-cols-2">
            {subjects.map((subject) => {
              const papers = documents.filter((document) => document.subject === subject);
              const headings = [
                ...new Set(
                  papers
                    .flatMap((paper) =>
                      [...paper.markdownContent.matchAll(headingPattern)].map((match) =>
                        String(match[1]).replace(/[*#]/g, "").trim(),
                      ),
                    )
                    .filter(Boolean),
                ),
              ].slice(0, 6);
              const questionCount = papers.reduce(
                (sum, paper) => sum + countStructuralQuestions(paper.markdownContent),
                0,
              );
              return (
                <article key={subject} className="rounded-xl border border-border bg-card p-5">
                  <div className="flex items-start justify-between gap-3">
                    <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary">
                      <BookOpen className="h-5 w-5" />
                    </div>
                    <Badge variant="secondary">{papers.length} sources</Badge>
                  </div>
                  <h2 className="mt-4 text-base font-medium">{subject} textbook</h2>
                  <p className="mt-1 text-sm text-muted-foreground">
                    A paper-linked digital reading pack built from your approved {subject} content.
                  </p>
                  <div className="mt-4 grid grid-cols-2 gap-2 text-xs">
                    <div className="rounded-lg bg-secondary/40 p-3">
                      <div className="flex items-center gap-1.5 text-muted-foreground">
                        <FileText className="h-3.5 w-3.5" /> Papers
                      </div>
                      <div className="mt-1 font-medium">{papers.length}</div>
                    </div>
                    <div className="rounded-lg bg-secondary/40 p-3">
                      <div className="flex items-center gap-1.5 text-muted-foreground">
                        <ListChecks className="h-3.5 w-3.5" /> Questions
                      </div>
                      <div className="mt-1 font-medium">{questionCount}</div>
                    </div>
                  </div>
                  <div className="mt-4 space-y-2">
                    {(headings.length > 0 ? headings : papers.map((paper) => paper.title)).map(
                      (heading) => (
                        <div
                          key={heading}
                          className="rounded-lg border border-border px-3 py-2 text-xs"
                        >
                          {heading}
                        </div>
                      ),
                    )}
                  </div>
                  <Button asChild variant="outline" size="sm" className="mt-5">
                    <Link to="/library">View related papers</Link>
                  </Button>
                </article>
              );
            })}
          </div>
        </PremiumGate>
      </div>
    </>
  );
}
