import { createFileRoute } from "@tanstack/react-router";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Checkbox } from "@/components/ui/checkbox";
import { Search, Filter, Download, MoreHorizontal, Ban, Mail, Shield } from "lucide-react";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { useState } from "react";

export const Route = createFileRoute("/control-panel-9k3x/users")({
  component: UsersAdmin,
});

const USERS = [
  { id: "u_001", name: "Kwame Asante", email: "kwame.a@gmail.com", country: "🇬🇭 GH", plan: "Free", role: "user", status: "active", joined: "2025-11-14", quizzes: 42, streak: 14 },
  { id: "u_002", name: "Fatima Bello", email: "fatima.b@outlook.com", country: "🇳🇬 NG", plan: "Premium", role: "user", status: "active", joined: "2025-08-02", quizzes: 187, streak: 62 },
  { id: "u_003", name: "Grace Wanjiku", email: "grace.w@yahoo.com", country: "🇰🇪 KE", plan: "Free", role: "user", status: "active", joined: "2026-01-09", quizzes: 8, streak: 3 },
  { id: "u_004", name: "Emmanuel Okafor", email: "emmanuel.o@gmail.com", country: "🇳🇬 NG", plan: "Free", role: "user", status: "suspended", joined: "2025-06-21", quizzes: 92, streak: 0 },
  { id: "u_005", name: "Amara Nkomo", email: "amara.n@gmail.com", country: "🇿🇲 ZM", plan: "Premium", role: "moderator", status: "active", joined: "2024-12-03", quizzes: 412, streak: 128 },
  { id: "u_006", name: "Tunde Adeyemi", email: "tunde.a@gmail.com", country: "🇳🇬 NG", plan: "Premium", role: "user", status: "active", joined: "2025-03-18", quizzes: 234, streak: 44 },
  { id: "u_007", name: "Akua Mensah", email: "akua.m@studyflow.io", country: "🇬🇭 GH", plan: "Premium", role: "admin", status: "active", joined: "2024-01-10", quizzes: 891, streak: 302 },
  { id: "u_008", name: "David Mwangi", email: "david.m@gmail.com", country: "🇰🇪 KE", plan: "Free", role: "user", status: "pending", joined: "2026-06-30", quizzes: 0, streak: 0 },
];

function UsersAdmin() {
  const [q, setQ] = useState("");
  const [selected, setSelected] = useState<string[]>([]);
  const filtered = USERS.filter((u) =>
    q ? (u.name + u.email).toLowerCase().includes(q.toLowerCase()) : true
  );
  const allSelected = filtered.length > 0 && selected.length === filtered.length;

  return (
    <div className="p-6 md:p-8">
      <div className="mb-6 flex items-end justify-between">
        <div>
          <h1 className="font-display text-3xl">Users</h1>
          <p className="mt-1 text-sm text-muted-foreground">{USERS.length.toLocaleString()} total accounts across all plans.</p>
        </div>
        <div className="flex gap-2">
          <Button variant="outline" size="sm"><Download className="mr-1.5 h-3.5 w-3.5" />Export CSV</Button>
          <Button size="sm">Invite admin</Button>
        </div>
      </div>

      <div className="mb-4 flex flex-wrap items-center gap-2">
        <div className="relative flex-1 min-w-64">
          <Search className="pointer-events-none absolute left-3 top-1/2 h-3.5 w-3.5 -translate-y-1/2 text-muted-foreground" />
          <Input value={q} onChange={(e) => setQ(e.target.value)} placeholder="Search by name or email..." className="h-9 pl-9" />
        </div>
        <Button variant="outline" size="sm"><Filter className="mr-1.5 h-3.5 w-3.5" />Plan</Button>
        <Button variant="outline" size="sm"><Filter className="mr-1.5 h-3.5 w-3.5" />Country</Button>
        <Button variant="outline" size="sm"><Filter className="mr-1.5 h-3.5 w-3.5" />Status</Button>
      </div>

      {selected.length > 0 && (
        <div className="mb-3 flex items-center gap-2 rounded-md border border-border bg-secondary/50 px-4 py-2 text-sm">
          <span>{selected.length} selected</span>
          <div className="ml-auto flex gap-1">
            <Button variant="ghost" size="sm"><Mail className="mr-1.5 h-3.5 w-3.5" />Email</Button>
            <Button variant="ghost" size="sm" className="text-destructive"><Ban className="mr-1.5 h-3.5 w-3.5" />Suspend</Button>
          </div>
        </div>
      )}

      <div className="overflow-hidden rounded-xl border border-border bg-card">
        <table className="w-full text-sm">
          <thead className="bg-secondary/40 text-left text-xs text-muted-foreground">
            <tr>
              <th className="w-10 px-4 py-3">
                <Checkbox
                  checked={allSelected}
                  onCheckedChange={(v) => setSelected(v ? filtered.map((u) => u.id) : [])}
                />
              </th>
              <th className="px-4 py-3 font-normal">User</th>
              <th className="px-4 py-3 font-normal">Country</th>
              <th className="px-4 py-3 font-normal">Plan</th>
              <th className="px-4 py-3 font-normal">Role</th>
              <th className="px-4 py-3 font-normal">Status</th>
              <th className="px-4 py-3 font-normal text-right">Quizzes</th>
              <th className="px-4 py-3 font-normal">Joined</th>
              <th className="w-10 px-4 py-3" />
            </tr>
          </thead>
          <tbody>
            {filtered.map((u) => (
              <tr key={u.id} className="border-t border-border hover:bg-secondary/20">
                <td className="px-4 py-3">
                  <Checkbox
                    checked={selected.includes(u.id)}
                    onCheckedChange={(v) => setSelected((s) => v ? [...s, u.id] : s.filter((x) => x !== u.id))}
                  />
                </td>
                <td className="px-4 py-3">
                  <div className="flex items-center gap-2.5">
                    <div className="flex h-8 w-8 items-center justify-center rounded-full bg-foreground text-[10px] text-background">
                      {u.name.split(" ").map((n) => n[0]).slice(0, 2).join("")}
                    </div>
                    <div>
                      <div className="font-medium">{u.name}</div>
                      <div className="text-xs text-muted-foreground">{u.email}</div>
                    </div>
                  </div>
                </td>
                <td className="px-4 py-3">{u.country}</td>
                <td className="px-4 py-3">
                  <Badge variant={u.plan === "Premium" ? "default" : "secondary"}>{u.plan}</Badge>
                </td>
                <td className="px-4 py-3">
                  {u.role === "admin" ? (
                    <span className="inline-flex items-center gap-1 text-xs"><Shield className="h-3 w-3 text-accent" /> Admin</span>
                  ) : (
                    <span className="text-xs capitalize text-muted-foreground">{u.role}</span>
                  )}
                </td>
                <td className="px-4 py-3">
                  <span className={`inline-flex items-center gap-1.5 text-xs ${
                    u.status === "active" ? "text-success" : u.status === "suspended" ? "text-destructive" : "text-warning"
                  }`}>
                    <span className={`h-1.5 w-1.5 rounded-full ${
                      u.status === "active" ? "bg-success" : u.status === "suspended" ? "bg-destructive" : "bg-warning"
                    }`} />
                    {u.status}
                  </span>
                </td>
                <td className="px-4 py-3 text-right font-mono text-xs">{u.quizzes}</td>
                <td className="px-4 py-3 text-xs text-muted-foreground">{u.joined}</td>
                <td className="px-4 py-3">
                  <DropdownMenu>
                    <DropdownMenuTrigger asChild>
                      <Button variant="ghost" size="icon" className="h-7 w-7"><MoreHorizontal className="h-4 w-4" /></Button>
                    </DropdownMenuTrigger>
                    <DropdownMenuContent align="end">
                      <DropdownMenuItem>View profile</DropdownMenuItem>
                      <DropdownMenuItem>Impersonate</DropdownMenuItem>
                      <DropdownMenuItem>Reset password</DropdownMenuItem>
                      <DropdownMenuSeparator />
                      <DropdownMenuItem className="text-destructive focus:text-destructive">Suspend account</DropdownMenuItem>
                    </DropdownMenuContent>
                  </DropdownMenu>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
        <div className="flex items-center justify-between border-t border-border px-4 py-3 text-xs text-muted-foreground">
          <span>Showing {filtered.length} of {USERS.length}</span>
          <div className="flex gap-1">
            <Button variant="outline" size="sm" disabled>Previous</Button>
            <Button variant="outline" size="sm">Next</Button>
          </div>
        </div>
      </div>
    </div>
  );
}
