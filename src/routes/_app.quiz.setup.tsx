import { createFileRoute, useNavigate } from "@tanstack/react-router";
import { useEffect } from "react";
import { BookOpen } from "lucide-react";
import { Button } from "@/components/ui/button";
import { PageHeader } from "./_app";

export const Route = createFileRoute("/_app/quiz/setup")({
  head: () => ({ meta: [{ title: "Structural papers - StudySpark" }] }),
  component: StructuralSetupRedirect,
});

function StructuralSetupRedirect() {
  const navigate = useNavigate();

  useEffect(() => {
    void navigate({ to: "/library", replace: true });
  }, [navigate]);

  return (
    <>
      <PageHeader
        title="Structural papers"
        description="Practice now happens through protected uploaded papers."
      />

      <div className="px-6 py-6 md:px-10 md:py-8">
        <div className="mx-auto max-w-xl rounded-xl border border-border bg-card p-8 text-center">
          <BookOpen className="mx-auto h-10 w-10 text-muted-foreground" />
          <h2 className="mt-4 text-base font-medium">Opening your paper library</h2>
          <p className="mt-1 text-sm text-muted-foreground">
            The old question setup has been replaced by structural papers.
          </p>
          <Button className="mt-5" onClick={() => void navigate({ to: "/library", replace: true })}>
            Go to papers
          </Button>
        </div>
      </div>
    </>
  );
}
