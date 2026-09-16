import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import { PremiumGate } from "@/components/PremiumGate";
import { useStudyContent } from "@/hooks/use-study-content";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { FileText, Search } from "lucide-react";
import { useMemo, useState } from "react";

export const Route = createFileRoute("/_app/search")({
  head: () => ({ meta: [{ title: "Advanced search — StudySpark" }] }),
  component: AdvancedSearchPage,
});

function AdvancedSearchPage() {
  const { profile } = useStudyProfile();
  const { documents } = useStudyContent(profile);
  const [query, setQuery] = useState("");
  const results = useMemo(() => {
    const needle = query.trim().toLowerCase();
    if (!needle) return documents.slice(0, 20);
    return documents
      .filter((document) =>
        [document.title, document.subject, document.markdownContent]
          .join(" ")
          .toLowerCase()
          .includes(needle),
      )
      .slice(0, 50);
  }, [documents, query]);

  return (
    <>
      <PageHeader
        title="Advanced search"
        description="Search paper titles, subjects, and protected Markdown content."
      />
      <div className="px-6 py-6 md:px-10 md:py-8">
        <PremiumGate
          title="Premium search"
          description="Upgrade to search deeply across all matching protected papers and revision content."
        >
          <div className="relative">
            <Search className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
            <Input
              value={query}
              onChange={(event) => setQuery(event.target.value)}
              placeholder="Search concepts, papers, subjects, or question text..."
              className="h-11 pl-9"
            />
          </div>
          <div className="mt-5 space-y-3">
            {results.map((document) => (
              <Link
                key={document.id}
                to="/course/$documentId"
                params={{ documentId: document.id }}
                className="flex items-center justify-between rounded-xl border border-border bg-card p-4 hover:bg-secondary/30"
              >
                <div className="flex items-center gap-3">
                  <FileText className="h-5 w-5" />
                  <div>
                    <div className="text-sm font-medium">{document.title}</div>
                    <p className="text-xs text-muted-foreground">{document.subject}</p>
                  </div>
                </div>
                <Badge variant="secondary">{document.level}</Badge>
              </Link>
            ))}
          </div>
        </PremiumGate>
      </div>
    </>
  );
}
