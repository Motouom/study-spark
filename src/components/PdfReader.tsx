import { useState } from "react";
import { Button } from "@/components/ui/button";
import {
  ChevronLeft,
  ChevronRight,
  Maximize2,
  Minimize2,
  Minus,
  Plus,
  Search,
} from "lucide-react";
import { Input } from "@/components/ui/input";
import type { PastPaper } from "@/lib/mock-data";

/**
 * Frontend-only mock in-app PDF reader.
 * Renders one page at a time with zoom + page nav + search highlight.
 * Pages are mocked from the paper metadata.
 */
export function PdfReader({ paper }: { paper: PastPaper }) {
  const [page, setPage] = useState(1);
  const [zoom, setZoom] = useState(1);
  const [fullscreen, setFullscreen] = useState(false);
  const [query, setQuery] = useState("");

  const total = paper.pages;

  const goPrev = () => setPage((p) => Math.max(1, p - 1));
  const goNext = () => setPage((p) => Math.min(total, p + 1));

  const zoomIn = () => setZoom((z) => Math.min(2, +(z + 0.25).toFixed(2)));
  const zoomOut = () => setZoom((z) => Math.max(0.5, +(z - 0.25).toFixed(2)));

  return (
    <div
      className={`overflow-hidden rounded-xl border border-border bg-card ${
        fullscreen ? "fixed inset-2 z-50 flex flex-col" : ""
      }`}
    >
      {/* Toolbar */}
      <div className="flex flex-wrap items-center justify-between gap-2 border-b border-border bg-surface px-3 py-2 text-xs">
        <div className="flex items-center gap-1.5 text-muted-foreground">
          <span className="hidden truncate sm:inline">{paper.title}.pdf</span>
        </div>
        <div className="flex items-center gap-1">
          <div className="relative hidden sm:block">
            <Search className="pointer-events-none absolute left-2 top-1/2 h-3 w-3 -translate-y-1/2 text-muted-foreground" />
            <Input
              value={query}
              onChange={(e) => setQuery(e.target.value)}
              placeholder="Search in document..."
              className="h-7 w-44 pl-6 text-xs"
            />
          </div>
          <div className="flex items-center rounded-md border border-border">
            <Button variant="ghost" size="icon" className="h-7 w-7" onClick={zoomOut} aria-label="Zoom out">
              <Minus className="h-3 w-3" />
            </Button>
            <span className="w-10 text-center font-mono text-[11px]">{Math.round(zoom * 100)}%</span>
            <Button variant="ghost" size="icon" className="h-7 w-7" onClick={zoomIn} aria-label="Zoom in">
              <Plus className="h-3 w-3" />
            </Button>
          </div>
          <div className="flex items-center rounded-md border border-border">
            <Button variant="ghost" size="icon" className="h-7 w-7" onClick={goPrev} disabled={page === 1} aria-label="Previous page">
              <ChevronLeft className="h-3 w-3" />
            </Button>
            <span className="w-16 text-center font-mono text-[11px]">
              {page} / {total}
            </span>
            <Button variant="ghost" size="icon" className="h-7 w-7" onClick={goNext} disabled={page === total} aria-label="Next page">
              <ChevronRight className="h-3 w-3" />
            </Button>
          </div>
          <Button
            variant="ghost"
            size="icon"
            className="h-7 w-7"
            onClick={() => setFullscreen((f) => !f)}
            aria-label={fullscreen ? "Exit fullscreen" : "Fullscreen"}
          >
            {fullscreen ? <Minimize2 className="h-3 w-3" /> : <Maximize2 className="h-3 w-3" />}
          </Button>
        </div>
      </div>

      {/* Scrollable page area */}
      <div
        className={`overflow-auto bg-muted/40 p-4 md:p-8 ${
          fullscreen ? "flex-1" : "max-h-[80vh]"
        }`}
      >
        <div
          className="mx-auto bg-white shadow-elevated transition-transform"
          style={{
            width: `${600 * zoom}px`,
            transformOrigin: "top center",
          }}
        >
          <MockPage paper={paper} pageNum={page} query={query} />
        </div>
      </div>
    </div>
  );
}

function highlight(text: string, q: string) {
  if (!q) return text;
  const idx = text.toLowerCase().indexOf(q.toLowerCase());
  if (idx === -1) return text;
  return (
    <>
      {text.slice(0, idx)}
      <mark className="bg-warning/40 text-foreground">{text.slice(idx, idx + q.length)}</mark>
      {text.slice(idx + q.length)}
    </>
  );
}

function MockPage({ paper, pageNum, query }: { paper: PastPaper; pageNum: number; query: string }) {
  const sectionLetter = String.fromCharCode(64 + Math.min(3, Math.ceil(pageNum / 4)));
  const startQ = (pageNum - 1) * 3 + 1;
  const items = [
    "If 2x + 3 = 11, find the value of x.",
    "Find the area of a circle of radius 7 cm. (Take π = 22/7)",
    "Solve: 3x − 2 = 2x + 5",
    "State Newton's three laws of motion.",
    "Define osmosis and give one biological example.",
    "Balance the equation: H₂ + O₂ → H₂O",
    "Discuss two causes of inflation in West Africa.",
    "Name the longest river in Africa.",
    "Translate the following sentence into formal English: \"He don go.\"",
  ];
  return (
    <div className="aspect-[8.5/11] p-8 text-foreground md:p-12">
      {pageNum === 1 ? (
        <div className="mx-auto max-w-md space-y-6">
          <div className="text-center">
            <p className="text-xs uppercase tracking-widest text-muted-foreground">{paper.examBoard}</p>
            <h2 className="mt-2 font-display text-2xl">{highlight(paper.subject, query)}</h2>
            <p className="mt-1 text-sm text-muted-foreground">{paper.year} Examination</p>
          </div>
          <div className="space-y-1 text-xs text-muted-foreground">
            <p>Time allowed: {paper.duration} minutes</p>
            <p>Total questions: {paper.questions}</p>
            <p>Answer ALL questions in Section A and any FOUR from Section B.</p>
          </div>
          <div className="text-center text-[11px] text-muted-foreground">— Page 1 —</div>
        </div>
      ) : (
        <div className="space-y-5">
          <div className="text-xs font-medium uppercase tracking-wider text-muted-foreground">
            Section {sectionLetter}
          </div>
          {[0, 1, 2].map((i) => {
            const text = items[(startQ + i - 1) % items.length];
            return (
              <div key={i}>
                <p className="text-sm font-medium">{startQ + i}.</p>
                <p className="mt-1 text-sm leading-relaxed">{highlight(text, query)}</p>
                <p className="mt-1 text-xs text-muted-foreground">[5 marks]</p>
              </div>
            );
          })}
          <div className="pt-6 text-center text-[11px] text-muted-foreground">— Page {pageNum} —</div>
        </div>
      )}
    </div>
  );
}
