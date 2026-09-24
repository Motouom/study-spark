import { createFileRoute, Link } from "@tanstack/react-router";
import { PageHeader } from "./_app";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { useStudyContent } from "@/hooks/use-study-content";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { Badge } from "@/components/ui/badge";
import type { CourseDocument } from "@/hooks/use-study-content";
import { ArrowLeft, BookMarked, FileText, ListChecks, Search, X } from "lucide-react";
import { useMemo, useState } from "react";
import { useI18n } from "@/lib/i18n";

export const Route = createFileRoute("/_app/cheatsheets")({
  head: () => ({ meta: [{ title: "Cheatsheets — StudySpark" }] }),
  component: CheatsheetsPage,
});

function CheatsheetsPage() {
  const { t } = useI18n();
  const { profile } = useStudyProfile();
  const { documents } = useStudyContent(profile, { includeContent: false });
  const [subject, setSubject] = useState<string | null>(null);
  const [q, setQ] = useState("");

  const cheatsheets = useMemo(
    () =>
      documents
        .filter((document) => document.contentKind === "cheatsheet")
        .sort((a, b) => a.subject.localeCompare(b.subject) || a.title.localeCompare(b.title)),
    [documents],
  );
  const subjectCards = useMemo(
    () =>
      [...new Set(cheatsheets.map((document) => document.subject))]
        .map((name) => {
          const subjectSheets = cheatsheets.filter((document) => document.subject === name);
          const freeSheets = subjectSheets.filter((document) => !document.isLocked);
          return {
            name,
            total: subjectSheets.length,
            free: freeSheets.length,
          };
        })
        .sort((a, b) => b.total - a.total || a.name.localeCompare(b.name)),
    [cheatsheets],
  );
  const needle = q.trim().toLowerCase();
  const searchActive = needle.length > 0;
  const filteredSheets = useMemo(
    () =>
      cheatsheets
        .filter((sheet) => {
          if (!searchActive && subject && sheet.subject !== subject) return false;
          if (!needle) return true;
          return [sheet.title, sheet.subject, sheet.language, ...sheet.series]
            .join(" ")
            .toLowerCase()
            .includes(needle);
        })
        .sort((a, b) => a.subject.localeCompare(b.subject) || a.title.localeCompare(b.title)),
    [cheatsheets, needle, searchActive, subject],
  );

  const clearSearch = () => setQ("");

  return (
    <>
      <PageHeader title={t("cheatsheets.title")} description={t("cheatsheets.description")} />
      <div className="px-4 py-6 md:px-10 md:py-8">
        {cheatsheets.length === 0 ? (
            <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
              <BookMarked className="mx-auto h-10 w-10 text-muted-foreground" />
              <h2 className="mt-4 text-base font-medium">{t("cheatsheets.emptyTitle")}</h2>
              <p className="mx-auto mt-1 max-w-md text-sm text-muted-foreground">
                {t("cheatsheets.emptyDescription")}
              </p>
            </div>
          ) : (
            <div className="space-y-6">
              <SearchBox
                value={q}
                onChange={setQ}
                onClear={clearSearch}
                placeholder={t("cheatsheets.searchPlaceholder")}
              />

              {searchActive ? (
                <CheatsheetResults sheets={filteredSheets} query={q} onClear={clearSearch} />
              ) : !subject ? (
                <section className="space-y-3">
                  <div className="flex items-center justify-between">
                    <h2 className="text-sm font-medium">{t("common.subjects")}</h2>
                    <Badge variant="secondary">{subjectCards.length}</Badge>
                  </div>
                  <div className="grid gap-3 sm:grid-cols-2 xl:grid-cols-3">
                    {subjectCards.map((item) => (
                      <button
                        key={item.name}
                        type="button"
                        onClick={() => setSubject(item.name)}
                        className="rounded-xl border border-border bg-card p-5 text-left transition-shadow hover:shadow-card"
                      >
                        <div className="flex min-w-0 flex-wrap items-start justify-between gap-3">
                          <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary">
                            <BookMarked className="h-5 w-5" />
                          </div>
                          <Badge variant="secondary" className="shrink-0 whitespace-nowrap">
                            {item.total} {t("common.topic")}
                          </Badge>
                        </div>
                        <h3 className="mt-4 min-w-0 break-words text-base font-medium leading-snug">
                          {item.name} {t("common.cheatsheets")}
                        </h3>
                        <p className="mt-2 text-xs text-muted-foreground">
                          {item.free} {t("common.availableNow")} · {item.total - item.free}{" "}
                          {t("common.premium")}
                        </p>
                      </button>
                    ))}
                  </div>
                </section>
              ) : filteredSheets.length > 0 ? (
                <section className="space-y-3">
                  <div className="flex flex-col gap-3 rounded-xl border border-border bg-card p-4">
                    <div className="flex items-center justify-between gap-3">
                      <Button
                        type="button"
                        variant="ghost"
                        size="sm"
                        onClick={() => setSubject(null)}
                      >
                        <ArrowLeft className="mr-1.5 h-4 w-4" />
                        {t("common.subjects")}
                      </Button>
                      <Badge variant="secondary">
                        {filteredSheets.length} {t("common.topic")}
                      </Badge>
                    </div>
                    <h2 className="text-lg font-medium">{subject}</h2>
                  </div>
                  <div className="grid gap-3 md:grid-cols-2">
                    {filteredSheets.map((sheet) => (
                      <CheatsheetCard key={sheet.id} sheet={sheet} />
                    ))}
                  </div>
                </section>
              ) : (
                <EmptyFiltered
                  onClear={() => setSubject(null)}
                  label={t("cheatsheets.emptyTitle")}
                />
              )}
            </div>
          )}
      </div>
    </>
  );
}

function SearchBox({
  value,
  onChange,
  onClear,
  placeholder,
}: {
  value: string;
  onChange: (value: string) => void;
  onClear: () => void;
  placeholder: string;
}) {
  const { t } = useI18n();
  const active = value.trim().length > 0;
  return (
    <div className="relative">
      <Search className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
      <Input
        value={value}
        onChange={(event) => onChange(event.target.value)}
        placeholder={placeholder}
        className="h-11 pl-9 pr-10"
        aria-label={t("cheatsheets.searchPlaceholder")}
      />
      {active && (
        <button
          type="button"
          onClick={onClear}
          aria-label="Clear search"
          className="absolute right-3 top-1/2 -translate-y-1/2 rounded p-1 text-muted-foreground transition-colors hover:text-foreground"
        >
          <X className="h-4 w-4" />
        </button>
      )}
    </div>
  );
}

function CheatsheetResults({
  sheets,
  query,
  onClear,
}: {
  sheets: CourseDocument[];
  query: string;
  onClear: () => void;
}) {
  const { t } = useI18n();
  if (sheets.length === 0) {
    return (
      <EmptyFiltered
        onClear={onClear}
        label={t("cheatsheets.noSearchResults").replace("{query}", query)}
      />
    );
  }
  return (
    <section className="space-y-3">
      <div className="flex items-center justify-between">
        <h2 className="text-sm font-medium">{t("common.searchResults")}</h2>
        <Badge variant="secondary">{sheets.length}</Badge>
      </div>
      <div className="grid gap-3 md:grid-cols-2">
        {sheets.map((sheet) => (
          <CheatsheetCard key={sheet.id} sheet={sheet} />
        ))}
      </div>
    </section>
  );
}

function CheatsheetCard({ sheet }: { sheet: CourseDocument }) {
  const { t } = useI18n();
  return (
    <Link
      to="/course/$documentId"
      params={{ documentId: sheet.id }}
      className="group rounded-xl border border-border bg-card p-4 transition-shadow hover:shadow-card"
    >
      <div className="flex items-start justify-between gap-3">
        <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-secondary">
          <FileText className="h-5 w-5" />
        </div>
        <Badge
          variant={sheet.isLocked ? "outline" : "secondary"}
          className="shrink-0 whitespace-nowrap"
        >
          {sheet.isLocked
            ? t("common.premium")
            : sheet.accessStatus === "free_preview"
              ? t("common.free")
              : t("common.topic")}
        </Badge>
      </div>
      <h3 className="mt-4 line-clamp-2 text-sm font-medium leading-snug group-hover:text-accent">
        {sheet.title}
      </h3>
      <p className="mt-2 text-xs text-muted-foreground">
        {sheet.subject} · {sheet.language === "french" ? "Français" : "English"} ·{" "}
        {t("common.quickRevision")}
      </p>
      <div className="mt-3 grid grid-cols-2 gap-2 text-xs">
        <div className="rounded-lg bg-secondary/40 p-3">
          <div className="flex items-center gap-1.5 text-muted-foreground">
            <FileText className="h-3.5 w-3.5" /> {t("common.sheet")}
          </div>
          <div className="mt-1 font-medium">{t("common.cheatsheet")}</div>
        </div>
        <div className="rounded-lg bg-secondary/40 p-3">
          <div className="flex items-center gap-1.5 text-muted-foreground">
            <ListChecks className="h-3.5 w-3.5" /> {t("common.focus")}
          </div>
          <div className="mt-1 font-medium">{t("common.topic")}</div>
        </div>
      </div>
    </Link>
  );
}

function EmptyFiltered({ label, onClear }: { label: string; onClear: () => void }) {
  const { t } = useI18n();
  return (
    <div className="rounded-xl border border-dashed border-border bg-card p-12 text-center">
      <p className="text-sm text-muted-foreground">{label}</p>
      <Button variant="outline" size="sm" className="mt-4" onClick={onClear}>
        {t("common.clearFilters")}
      </Button>
    </div>
  );
}
