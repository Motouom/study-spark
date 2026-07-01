import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Plus, Search, Sparkles, Wand2 } from "lucide-react";

export const Route = createFileRoute("/control-panel-9k3x/quizzes")({
  component: QuizzesAdmin,
});

const QUIZZES = [
  { id: "qz_001", title: "Photosynthesis fundamentals", subject: "Biology", questions: 15, difficulty: "Easy", plays: 3421, avgScore: 78, updated: "2 days ago", status: "live" },
  { id: "qz_002", title: "Algebra: quadratic equations", subject: "Mathematics", questions: 20, difficulty: "Medium", plays: 5820, avgScore: 64, updated: "6 hours ago", status: "live" },
  { id: "qz_003", title: "Newton's laws of motion", subject: "Physics", questions: 18, difficulty: "Medium", plays: 2140, avgScore: 71, updated: "1 week ago", status: "live" },
  { id: "qz_004", title: "Great expectations - Chapter 1-5", subject: "English", questions: 12, difficulty: "Easy", plays: 890, avgScore: 82, updated: "3 days ago", status: "draft" },
  { id: "qz_005", title: "Organic chemistry: alkenes", subject: "Chemistry", questions: 25, difficulty: "Hard", plays: 1240, avgScore: 52, updated: "5 hours ago", status: "live" },
  { id: "qz_006", title: "West African independence movements", subject: "History", questions: 22, difficulty: "Hard", plays: 780, avgScore: 68, updated: "2 weeks ago", status: "archived" },
];

function QuizzesAdmin() {
  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Quizzes</h1>
          <p className="mt-1 text-sm text-muted-foreground">Manage question banks, difficulty tuning, and daily challenges.</p>
        </div>
        <div className="flex gap-2">
          <Button variant="outline" size="sm"><Wand2 className="mr-1.5 h-3.5 w-3.5" />Generate with AI</Button>
          <Button size="sm"><Plus className="mr-1.5 h-3.5 w-3.5" />New quiz</Button>
        </div>
      </div>

      <div className="mb-6 grid grid-cols-1 gap-4 md:grid-cols-4">
        <MiniStat label="Live quizzes" value="284" />
        <MiniStat label="Total plays" value="1.4M" />
        <MiniStat label="Avg. score" value="68%" />
        <MiniStat label="Reports open" value="3" tone="warn" />
      </div>

      <div className="mb-6 rounded-xl border border-accent/30 bg-accent/5 p-5">
        <div className="flex items-start gap-3">
          <div className="flex h-9 w-9 items-center justify-center rounded-lg bg-accent/15">
            <Sparkles className="h-4 w-4 text-accent" />
          </div>
          <div className="flex-1">
            <div className="text-sm font-medium">Today's daily challenge</div>
            <p className="mt-1 text-xs text-muted-foreground">
              "Cell biology speed round" · 10 questions · scheduled for 08:00 GMT · 4,281 signed up
            </p>
          </div>
          <Button variant="outline" size="sm">Change challenge</Button>
        </div>
      </div>

      <div className="mb-4 flex items-center gap-2">
        <div className="relative flex-1 max-w-md">
          <Search className="pointer-events-none absolute left-3 top-1/2 h-3.5 w-3.5 -translate-y-1/2 text-muted-foreground" />
          <Input placeholder="Search quizzes..." className="h-9 pl-9" />
        </div>
        <Button variant="outline" size="sm">Subject</Button>
        <Button variant="outline" size="sm">Difficulty</Button>
        <Button variant="outline" size="sm">Status</Button>
      </div>

      <div className="overflow-hidden rounded-xl border border-border bg-card">
        <table className="w-full text-sm">
          <thead className="bg-secondary/40 text-left text-xs text-muted-foreground">
            <tr>
              <th className="px-4 py-3 font-normal">Quiz</th>
              <th className="px-4 py-3 font-normal">Subject</th>
              <th className="px-4 py-3 font-normal text-right">Qs</th>
              <th className="px-4 py-3 font-normal">Difficulty</th>
              <th className="px-4 py-3 font-normal text-right">Plays</th>
              <th className="px-4 py-3 font-normal text-right">Avg score</th>
              <th className="px-4 py-3 font-normal">Status</th>
              <th className="px-4 py-3 font-normal">Updated</th>
            </tr>
          </thead>
          <tbody>
            {QUIZZES.map((q) => (
              <tr key={q.id} className="border-t border-border hover:bg-secondary/20">
                <td className="px-4 py-3 font-medium">{q.title}</td>
                <td className="px-4 py-3">{q.subject}</td>
                <td className="px-4 py-3 text-right font-mono text-xs">{q.questions}</td>
                <td className="px-4 py-3">
                  <Badge variant="outline" className={
                    q.difficulty === "Hard" ? "border-destructive/30 text-destructive" :
                    q.difficulty === "Medium" ? "border-warning/30 text-warning" :
                    "border-success/30 text-success"
                  }>{q.difficulty}</Badge>
                </td>
                <td className="px-4 py-3 text-right font-mono text-xs">{q.plays.toLocaleString()}</td>
                <td className="px-4 py-3 text-right font-mono text-xs">{q.avgScore}%</td>
                <td className="px-4 py-3">
                  <span className={`inline-flex items-center gap-1.5 text-xs capitalize ${
                    q.status === "live" ? "text-success" : q.status === "draft" ? "text-warning" : "text-muted-foreground"
                  }`}>
                    <span className={`h-1.5 w-1.5 rounded-full ${
                      q.status === "live" ? "bg-success" : q.status === "draft" ? "bg-warning" : "bg-muted-foreground"
                    }`} />
                    {q.status}
                  </span>
                </td>
                <td className="px-4 py-3 text-xs text-muted-foreground">{q.updated}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

function MiniStat({ label, value, tone }: { label: string; value: string; tone?: "warn" }) {
  return (
    <div className="rounded-xl border border-border bg-card p-4">
      <div className="text-xs text-muted-foreground">{label}</div>
      <div className={`mt-1.5 font-display text-2xl ${tone === "warn" ? "text-warning" : ""}`}>{value}</div>
    </div>
  );
}
