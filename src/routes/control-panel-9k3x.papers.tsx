import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Upload, Search, FileText, Eye, Pencil, Trash2, Plus, CheckCircle2, Clock } from "lucide-react";
import { useState } from "react";
import { PAPERS } from "@/lib/mock-data";

export const Route = createFileRoute("/control-panel-9k3x/papers")({
  component: PapersAdmin,
});

function PapersAdmin() {
  const [q, setQ] = useState("");
  const [showUpload, setShowUpload] = useState(false);
  const filtered = PAPERS.filter((p) =>
    q ? (p.title + p.subject).toLowerCase().includes(q.toLowerCase()) : true
  ).slice(0, 20);

  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Past papers</h1>
          <p className="mt-1 text-sm text-muted-foreground">
            {PAPERS.length} papers indexed · storage: 12.4 GB / 100 GB
          </p>
        </div>
        <Button size="sm" onClick={() => setShowUpload((v) => !v)}>
          <Plus className="mr-1.5 h-3.5 w-3.5" />Upload paper
        </Button>
      </div>

      {showUpload && (
        <div className="mb-6 rounded-xl border-2 border-dashed border-border bg-card p-8 text-center">
          <Upload className="mx-auto h-8 w-8 text-muted-foreground" />
          <p className="mt-3 text-sm font-medium">Drop PDF files here or click to browse</p>
          <p className="mt-1 text-xs text-muted-foreground">
            Supports .pdf, .docx · max 25 MB per file · OCR runs automatically
          </p>
          <div className="mt-4 flex justify-center gap-2">
            <Button size="sm">Choose files</Button>
            <Button size="sm" variant="outline" onClick={() => setShowUpload(false)}>Cancel</Button>
          </div>
        </div>
      )}

      <div className="mb-4 flex items-center gap-2">
        <div className="relative flex-1 max-w-md">
          <Search className="pointer-events-none absolute left-3 top-1/2 h-3.5 w-3.5 -translate-y-1/2 text-muted-foreground" />
          <Input value={q} onChange={(e) => setQ(e.target.value)} placeholder="Search papers..." className="h-9 pl-9" />
        </div>
        <Button variant="outline" size="sm">All subjects</Button>
        <Button variant="outline" size="sm">All boards</Button>
        <Button variant="outline" size="sm">All years</Button>
      </div>

      <div className="overflow-hidden rounded-xl border border-border bg-card">
        <table className="w-full text-sm">
          <thead className="bg-secondary/40 text-left text-xs text-muted-foreground">
            <tr>
              <th className="px-4 py-3 font-normal">Paper</th>
              <th className="px-4 py-3 font-normal">Subject</th>
              <th className="px-4 py-3 font-normal">Board</th>
              <th className="px-4 py-3 font-normal">Year</th>
              <th className="px-4 py-3 font-normal">Status</th>
              <th className="px-4 py-3 font-normal text-right">Views</th>
              <th className="px-4 py-3 font-normal text-right">Actions</th>
            </tr>
          </thead>
          <tbody>
            {filtered.map((p, i) => {
              const status = i % 7 === 0 ? "processing" : "published";
              const views = 200 + ((i * 137) % 4200);
              return (
                <tr key={p.id} className="border-t border-border hover:bg-secondary/20">
                  <td className="px-4 py-3">
                    <div className="flex items-center gap-2.5">
                      <div className="flex h-8 w-8 items-center justify-center rounded-md bg-secondary">
                        <FileText className="h-4 w-4 text-muted-foreground" />
                      </div>
                      <div>
                        <div className="font-medium">{p.title}</div>
                        <div className="text-xs text-muted-foreground">ID {p.id} · PDF · 2.4 MB</div>
                      </div>
                    </div>
                  </td>
                  <td className="px-4 py-3">{p.subject}</td>
                  <td className="px-4 py-3">{p.examBoard}</td>
                  <td className="px-4 py-3 font-mono text-xs">{p.year}</td>
                  <td className="px-4 py-3">
                    {status === "published" ? (
                      <span className="inline-flex items-center gap-1 text-xs text-success">
                        <CheckCircle2 className="h-3 w-3" /> Published
                      </span>
                    ) : (
                      <span className="inline-flex items-center gap-1 text-xs text-warning">
                        <Clock className="h-3 w-3" /> Processing
                      </span>
                    )}
                  </td>
                  <td className="px-4 py-3 text-right font-mono text-xs">{views.toLocaleString()}</td>
                  <td className="px-4 py-3">
                    <div className="flex justify-end gap-1">
                      <Button variant="ghost" size="icon" className="h-7 w-7"><Eye className="h-3.5 w-3.5" /></Button>
                      <Button variant="ghost" size="icon" className="h-7 w-7"><Pencil className="h-3.5 w-3.5" /></Button>
                      <Button variant="ghost" size="icon" className="h-7 w-7 text-destructive"><Trash2 className="h-3.5 w-3.5" /></Button>
                    </div>
                  </td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>

      <div className="mt-4 grid grid-cols-1 gap-4 md:grid-cols-3">
        <StatCard label="Total downloads" value="182,340" />
        <StatCard label="Avg. paper rating" value="4.6 / 5" />
        <StatCard label="Awaiting moderation" value="7" tone="warn" />
      </div>
    </div>
  );
}

function StatCard({ label, value, tone }: { label: string; value: string; tone?: "warn" }) {
  return (
    <div className="rounded-xl border border-border bg-card p-4">
      <div className="text-xs text-muted-foreground">{label}</div>
      <div className={`mt-1.5 font-display text-2xl ${tone === "warn" ? "text-warning" : ""}`}>{value}</div>
    </div>
  );
}
