import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { PremiumGate } from "@/components/PremiumGate";
import { useStudyContent } from "@/hooks/use-study-content";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { Badge } from "@/components/ui/badge";
import { BookMarked, FileText, ListChecks } from "lucide-react";

export const Route = createFileRoute("/_app/cheatsheets")({
  head: () => ({ meta: [{ title: "Cheatsheets — StudySpark" }] }),
  component: CheatsheetsPage,
});

function CheatsheetsPage() {
  const { profile } = useStudyProfile();
  const { documents } = useStudyContent(profile);
  const cheatsheets = documents.filter((document) => document.contentKind === "cheatsheet");
  const subjects = [...new Set(cheatsheets.map((document) => document.subject))].sort();

  return (
    <>
      <PageHeader
        title="Cheatsheets"
        description="Fast GCE revision cards for formulas, definitions, exam traps, and last-minute practice."
      />
      <div className="px-4 py-6 md:px-10 md:py-8">
        <PremiumGate
          title="Premium cheatsheets"
          description="Upgrade to access focused revision cards across your selected subjects."
        >
          {subjects.length === 0 ? (
            <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
              <BookMarked className="mx-auto h-10 w-10 text-muted-foreground" />
              <h2 className="mt-4 text-base font-medium">No cheatsheets for your profile yet</h2>
              <p className="mx-auto mt-1 max-w-md text-sm text-muted-foreground">
                Cheatsheets will appear here when revision cards match your class, series, language,
                and selected subjects.
              </p>
            </div>
          ) : (
            <div className="grid gap-4 md:grid-cols-2">
              {subjects.map((subject) => {
                const subjectSheets = cheatsheets
                  .filter((document) => document.subject === subject)
                  .sort((a, b) => a.title.localeCompare(b.title));

                return (
                  <article key={subject} className="rounded-xl border border-border bg-card p-5">
                    <div className="flex items-start justify-between gap-3">
                      <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary">
                        <BookMarked className="h-5 w-5" />
                      </div>
                      <Badge variant="secondary">{subjectSheets.length} cards</Badge>
                    </div>
                    <h2 className="mt-4 min-w-0 truncate text-base font-medium">
                      {subject} cheatsheets
                    </h2>
                    <p className="mt-1 text-sm text-muted-foreground">
                      Quick recall sheets for definitions, formulas, diagrams, traps, and short
                      practice.
                    </p>
                    <div className="mt-4 grid grid-cols-2 gap-2 text-xs">
                      <div className="rounded-lg bg-secondary/40 p-3">
                        <div className="flex items-center gap-1.5 text-muted-foreground">
                          <FileText className="h-3.5 w-3.5" /> Sheets
                        </div>
                        <div className="mt-1 font-medium">{subjectSheets.length}</div>
                      </div>
                      <div className="rounded-lg bg-secondary/40 p-3">
                        <div className="flex items-center gap-1.5 text-muted-foreground">
                          <ListChecks className="h-3.5 w-3.5" /> Focus
                        </div>
                        <div className="mt-1 font-medium">Revision</div>
                      </div>
                    </div>
                    <div className="mt-4 space-y-2">
                      {subjectSheets.slice(0, 6).map((sheet) => (
                        <Button
                          key={sheet.id}
                          asChild
                          variant="outline"
                          size="sm"
                          className="h-auto w-full justify-between gap-3 whitespace-normal py-2 text-left"
                        >
                          <Link to="/course/$documentId" params={{ documentId: sheet.id }}>
                            <span className="min-w-0 flex-1">{sheet.title}</span>
                            {sheet.isLocked && <Badge variant="secondary">Premium</Badge>}
                          </Link>
                        </Button>
                      ))}
                      {subjectSheets.length > 6 && (
                        <p className="text-xs text-muted-foreground">
                          +{subjectSheets.length - 6} more cheatsheets
                        </p>
                      )}
                    </div>
                  </article>
                );
              })}
            </div>
          )}
        </PremiumGate>
      </div>
    </>
  );
}
