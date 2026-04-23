import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import {
  PAPERS,
  SUBJECTS,
  EXAM_BOARDS,
  COUNTRIES,
  type Subject,
  type ExamBoard,
  type CountryCode,
} from "@/lib/mock-data";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Download, FileText, Lock, Search, Share2 } from "lucide-react";
import { useMemo, useState } from "react";

export const Route = createFileRoute("/_app/library")({
  head: () => ({ meta: [{ title: "Past papers — StudyFlow" }] }),
  component: LibraryPage,
});

function LibraryPage() {
  const [q, setQ] = useState("");
  const [subject, setSubject] = useState<Subject | "all">("all");
  const [board, setBoard] = useState<ExamBoard | "all">("all");
  const [country, setCountry] = useState<CountryCode | "all">("all");
  const [year, setYear] = useState<string>("all");

  const years = useMemo(
    () => Array.from(new Set(PAPERS.map((p) => p.year))).sort((a, b) => b - a),
    [],
  );

  const filtered = useMemo(() => {
    const needle = q.trim().toLowerCase();
    return PAPERS.filter((p) => {
      if (subject !== "all" && p.subject !== subject) return false;
      if (board !== "all" && p.examBoard !== board) return false;
      if (country !== "all" && p.country !== country) return false;
      if (year !== "all" && String(p.year) !== year) return false;
      if (needle) {
        const haystack = [p.title, p.description, ...p.tags, p.subject, p.examBoard]
          .join(" ")
          .toLowerCase();
        if (!haystack.includes(needle)) return false;
      }
      return true;
    });
  }, [q, subject, board, country, year]);

  const clear = () => {
    setQ("");
    setSubject("all");
    setBoard("all");
    setCountry("all");
    setYear("all");
  };

  return (
    <>
      <PageHeader
        title="Past papers"
        description={`${PAPERS.length}+ papers across WASSCE, JAMB, KCSE, NECTA & GCE.`}
      />

      <div className="space-y-6 px-6 py-6 md:px-10 md:py-8">
        <div className="rounded-xl border border-border bg-card p-4">
          <div className="flex flex-col gap-3 lg:flex-row lg:items-center">
            <div className="relative flex-1">
              <Search className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
              <Input
                value={q}
                onChange={(e) => setQ(e.target.value)}
                placeholder="Search title, description, tags..."
                className="h-11 pl-9"
              />
            </div>
            <div className="grid grid-cols-2 gap-2 lg:flex lg:gap-2">
              <Select value={country} onValueChange={(v) => setCountry(v as CountryCode | "all")}>
                <SelectTrigger className="h-11 w-full lg:w-40">
                  <SelectValue placeholder="Country" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="all">All countries</SelectItem>
                  {COUNTRIES.map((c) => (
                    <SelectItem key={c.code} value={c.code}>
                      {c.flag} {c.name}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
              <Select value={subject} onValueChange={(v) => setSubject(v as Subject | "all")}>
                <SelectTrigger className="h-11 w-full lg:w-40">
                  <SelectValue placeholder="Subject" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="all">All subjects</SelectItem>
                  {SUBJECTS.map((s) => (
                    <SelectItem key={s} value={s}>
                      {s}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
              <Select value={board} onValueChange={(v) => setBoard(v as ExamBoard | "all")}>
                <SelectTrigger className="h-11 w-full lg:w-32">
                  <SelectValue placeholder="Exam" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="all">All exams</SelectItem>
                  {EXAM_BOARDS.map((b) => (
                    <SelectItem key={b} value={b}>
                      {b}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
              <Select value={year} onValueChange={setYear}>
                <SelectTrigger className="h-11 w-full lg:w-28">
                  <SelectValue placeholder="Year" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="all">All years</SelectItem>
                  {years.map((y) => (
                    <SelectItem key={y} value={String(y)}>
                      {y}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>
          </div>
        </div>

        <div className="flex items-center justify-between text-xs text-muted-foreground">
          <span>
            Showing <span className="text-foreground">{filtered.length}</span> papers
          </span>
          {(q || subject !== "all" || board !== "all" || country !== "all" || year !== "all") && (
            <button onClick={clear} className="text-foreground underline-offset-4 hover:underline">
              Clear filters
            </button>
          )}
        </div>

        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {filtered.map((p) => {
            const country = COUNTRIES.find((c) => c.code === p.country);
            return (
              <article
                key={p.id}
                className="group flex flex-col rounded-xl border border-border bg-card p-5 transition-shadow hover:shadow-card"
              >
                <div className="flex items-start justify-between">
                  <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-secondary text-foreground">
                    <FileText className="h-5 w-5" />
                  </div>
                  {p.isPremium ? (
                    <Badge className="gap-1 bg-foreground text-background">
                      <Lock className="h-3 w-3" /> Premium
                    </Badge>
                  ) : (
                    <Badge variant="secondary">Free</Badge>
                  )}
                </div>
                <Link
                  to="/paper/$paperId"
                  params={{ paperId: p.id }}
                  className="mt-4 text-base font-medium leading-snug text-foreground hover:underline"
                >
                  {p.title}
                </Link>
                <p className="mt-1 line-clamp-2 text-xs text-muted-foreground">{p.description}</p>
                <div className="mt-3 flex flex-wrap gap-1.5 text-xs text-muted-foreground">
                  {country && <span>{country.flag}</span>}
                  <span>{p.examBoard}</span>·<span>{p.year}</span>·
                  <span>{p.questions} questions</span>
                </div>
                <div className="mt-4 flex items-center justify-between text-xs text-muted-foreground">
                  <span>{p.downloads.toLocaleString()} downloads</span>
                </div>
                <div className="mt-4 flex gap-2">
                  <Button asChild size="sm" className="flex-1">
                    <Link to="/paper/$paperId" params={{ paperId: p.id }}>Open paper</Link>
                  </Button>
                  <Button size="icon" variant="outline" aria-label="Download">
                    <Download className="h-4 w-4" />
                  </Button>
                  <Button size="icon" variant="outline" aria-label="Share">
                    <Share2 className="h-4 w-4" />
                  </Button>
                </div>
              </article>
            );
          })}
        </div>

        {filtered.length === 0 && (
          <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
            <p className="text-sm text-muted-foreground">
              No papers match your filters. Try clearing them.
            </p>
            <Button variant="outline" size="sm" className="mt-4" onClick={clear}>
              Clear filters
            </Button>
          </div>
        )}
      </div>
    </>
  );
}
