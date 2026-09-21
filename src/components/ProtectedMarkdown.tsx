import { Badge } from "@/components/ui/badge";
import type { CourseDocument } from "@/hooks/use-study-content";
import { BookOpenCheck, FlaskConical, GraduationCap, ListChecks, ShieldCheck } from "lucide-react";
import type { ReactNode } from "react";
import { Children, isValidElement } from "react";
import ReactMarkdown from "react-markdown";
import rehypeKatex from "rehype-katex";
import remarkGfm from "remark-gfm";
import remarkMath from "remark-math";
import "katex/dist/katex.min.css";

export function slugifyHeading(value: string) {
  return value
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "")
    .slice(0, 60);
}

const CHEMICAL_FORMULA_PATTERN =
  /\b(?:H|He|Li|Be|B|C|N|O|F|Ne|Na|Mg|Al|Si|P|S|Cl|Ar|K|Ca|Fe|Cu|Zn|Ag|I|Ba|Pb|Mn|Cr|Br|Hg|Au|Sn|Co|Ni|NH4|OH|NO3|SO4|CO3|PO4)(?:\d+)?(?:(?:H|He|Li|Be|B|C|N|O|F|Ne|Na|Mg|Al|Si|P|S|Cl|Ar|K|Ca|Fe|Cu|Zn|Ag|I|Ba|Pb|Mn|Cr|Br|Hg|Au|Sn|Co|Ni|NH4|OH|NO3|SO4|CO3|PO4)(?:\d+)?)+(?:[+-])?\b/g;
const QUESTION_LABEL_PATTERN = /^(?:question|q)\.?\s*(\d+)\s*[:.)-]?\s*/i;

function renderFormula(value: string) {
  const parts = value.split(/(\d+)/g);
  return (
    <span className="chem-formula" aria-label={value}>
      {parts.map((part, index) =>
        /^\d+$/.test(part) ? <sub key={`${part}-${index}`}>{part}</sub> : part,
      )}
    </span>
  );
}

function formatInlineText(value: string): ReactNode[] {
  const nodes: ReactNode[] = [];
  let lastIndex = 0;
  for (const match of value.matchAll(CHEMICAL_FORMULA_PATTERN)) {
    const formula = match[0];
    const index = match.index ?? 0;
    if (index > lastIndex) nodes.push(value.slice(lastIndex, index));
    nodes.push(renderFormula(formula));
    lastIndex = index + formula.length;
  }
  if (lastIndex < value.length) nodes.push(value.slice(lastIndex));
  return nodes;
}

function formatStudyInline(children: ReactNode): ReactNode {
  return Children.map(children, (child) => {
    if (typeof child === "string") return formatInlineText(child);
    if (!isValidElement<{ children?: ReactNode }>(child)) return child;
    if (!child.props.children) return child;
    return {
      ...child,
      props: {
        ...child.props,
        children: formatStudyInline(child.props.children),
      },
    };
  });
}

function plainText(children: ReactNode, seen = new WeakSet<object>()): string {
  if (typeof children === "string" || typeof children === "number") return String(children);
  if (Array.isArray(children)) return children.map((child) => plainText(child, seen)).join("");
  if (isValidElement<{ children?: ReactNode }>(children)) {
    if (seen.has(children)) return "";
    seen.add(children);
    return plainText(children.props.children, seen);
  }
  return "";
}

function splitSimpleQuestionLabel(children: ReactNode) {
  const splitText = (value: string) => {
    const match = value.match(QUESTION_LABEL_PATTERN);
    if (!match) return null;
    return {
      questionNumber: Number(match[1]),
      rest: value.slice(match[0].length).trimStart(),
    };
  };

  if (typeof children === "string") {
    return splitText(children);
  }

  if (
    isValidElement<{ children?: ReactNode }>(children) &&
    (children.type === "strong" || children.type === "em") &&
    typeof children.props.children === "string"
  ) {
    return splitText(children.props.children);
  }

  if (!Array.isArray(children)) return null;

  const items = Children.toArray(children);
  if (items.length === 0) return null;
  const first = splitSimpleQuestionLabel(items[0]);
  if (!first) return null;
  return {
    questionNumber: first.questionNumber,
    rest: [first.rest, ...items.slice(1).map(plainText)].join("").trimStart(),
  };
}

function questionNumberFromChildren(children: ReactNode) {
  const text = plainText(children).trim();
  const match = text.match(QUESTION_LABEL_PATTERN);
  return match ? Number(match[1]) : null;
}

export default function ProtectedMarkdown({
  document,
  owner,
  userId,
  renderQuestionControls,
}: {
  document: CourseDocument;
  owner: string;
  userId: string;
  renderQuestionControls?: (questionNumber: number) => ReactNode;
}) {
  const trace = `${owner} · ${userId.slice(0, 8)} · ${document.id.slice(0, 8)} · ${new Date().toLocaleDateString()}`;
  const isCourse = document.contentKind === "course";
  const isCheatsheet = document.contentKind === "cheatsheet";
  const markdownClass = isCourse
    ? "protected-markdown course-markdown relative font-sans text-[0.95rem] leading-7 sm:text-base"
    : isCheatsheet
      ? "protected-markdown cheatsheet-markdown relative font-sans text-[0.95rem] leading-7 sm:text-base"
      : "protected-markdown relative font-serif text-[0.95rem] leading-7 sm:text-base";

  return (
    <article
      className={`protected-content relative min-w-0 select-none overflow-hidden rounded-xl border border-border bg-card p-4 sm:p-5 md:p-8 ${
        isCourse
          ? "bg-[linear-gradient(180deg,color-mix(in_oklch,var(--color-secondary)_32%,transparent),var(--color-card)_16rem)]"
          : ""
      }`}
      onCopy={(event) => event.preventDefault()}
      onCut={(event) => event.preventDefault()}
      onContextMenu={(event) => event.preventDefault()}
    >
      <div className="pointer-events-none absolute inset-0 grid rotate-[-18deg] select-none place-items-center overflow-hidden opacity-[0.045]">
        <span className="whitespace-nowrap text-xl font-semibold text-foreground sm:text-3xl">
          {trace} · StudySpark protected material
        </span>
      </div>
      <div className="relative mb-6 flex flex-wrap items-center gap-2">
        <Badge variant="secondary">{document.subject}</Badge>
        <Badge variant="outline">{document.language}</Badge>
        {isCourse && (
          <Badge variant="outline" className="gap-1">
            <GraduationCap className="h-3.5 w-3.5" />
            Guided course
          </Badge>
        )}
        <span className="inline-flex items-center gap-1 text-xs text-success">
          <ShieldCheck className="h-3.5 w-3.5" />
          Protected view
        </span>
      </div>
      <div className={markdownClass}>
        <ReactMarkdown
          remarkPlugins={[remarkGfm, remarkMath]}
          rehypePlugins={[rehypeKatex]}
          components={{
            h1: ({ children }) => (
              <h1
                className={
                  isCourse
                    ? "mb-5 max-w-4xl font-display text-3xl font-semibold leading-tight tracking-normal sm:text-4xl"
                    : "mb-4 font-display text-2xl font-semibold leading-tight sm:text-3xl"
                }
              >
                {formatStudyInline(children)}
              </h1>
            ),
            h2: ({ children }) => {
              const questionNumber = questionNumberFromChildren(children);
              return (
                <h2
                  id={slugifyHeading(String(children ?? ""))}
                  className={
                    isCourse
                      ? "course-unit-heading mb-5 mt-10 flex scroll-mt-24 items-center gap-3 rounded-xl border border-border bg-card/85 px-4 py-3 font-display text-xl font-semibold leading-tight shadow-sm sm:text-2xl"
                      : "mb-3 mt-8 scroll-mt-24 font-display text-xl font-semibold leading-tight sm:text-2xl"
                  }
                >
                  {isCourse && (
                    <span className="flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-primary text-primary-foreground">
                      <BookOpenCheck className="h-4 w-4" />
                    </span>
                  )}
                  {questionNumber ? `Q${questionNumber}` : formatStudyInline(children)}
                  {questionNumber ? renderQuestionControls?.(questionNumber) : null}
                </h2>
              );
            },
            h3: ({ children }) => {
              const questionNumber = questionNumberFromChildren(children);
              return (
                <h3
                  id={slugifyHeading(String(children ?? ""))}
                  className={
                    isCourse
                      ? "course-lesson-heading mb-3 mt-7 flex scroll-mt-24 items-center gap-2 text-lg font-semibold leading-snug"
                      : "mb-3 mt-6 flex scroll-mt-24 flex-wrap items-center gap-2 text-lg font-semibold leading-snug"
                  }
                >
                  {isCourse && <ListChecks className="h-4 w-4 text-accent" />}
                  {questionNumber ? `Q${questionNumber}` : formatStudyInline(children)}
                  {questionNumber ? renderQuestionControls?.(questionNumber) : null}
                </h3>
              );
            },
            p: ({ children }) => {
              const questionLead = splitSimpleQuestionLabel(children);
              if (questionLead && renderQuestionControls) {
                return (
                  <section className="my-5 rounded-lg border border-border bg-background/45 p-3 sm:p-4">
                    <div className="mb-3 flex flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
                      <h3 className="font-sans text-base font-semibold leading-tight">
                        Q{questionLead.questionNumber}
                      </h3>
                      {renderQuestionControls(questionLead.questionNumber)}
                    </div>
                    {questionLead.rest ? (
                      <p className="my-0 leading-8">{formatStudyInline(questionLead.rest)}</p>
                    ) : null}
                  </section>
                );
              }
              const questionNumber = questionNumberFromChildren(children);
              if (questionNumber && renderQuestionControls) {
                return (
                  <section className="my-5 rounded-lg border border-border bg-background/45 p-3 sm:p-4">
                    <div className="mb-3 flex flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
                      <h3 className="font-sans text-base font-semibold leading-tight">
                        Q{questionNumber}
                      </h3>
                      {renderQuestionControls(questionNumber)}
                    </div>
                    <p className="my-0 leading-8">{formatStudyInline(children)}</p>
                  </section>
                );
              }

              return (
                <p
                  className={
                    isCourse ? "my-4 max-w-5xl leading-8 text-foreground/90" : "my-4 leading-8"
                  }
                >
                  {formatStudyInline(children)}
                </p>
              );
            },
            strong: ({ children }) => (
              <strong className="font-semibold">{formatStudyInline(children)}</strong>
            ),
            em: ({ children }) => <em className="italic">{formatStudyInline(children)}</em>,
            blockquote: ({ children }) => (
              <blockquote
                className={
                  isCourse
                    ? "my-6 rounded-xl border border-accent/25 bg-accent/10 p-4 text-foreground shadow-sm"
                    : "my-5 border-l-4 border-border pl-5 text-muted-foreground"
                }
              >
                {isCourse && (
                  <span className="mb-2 inline-flex items-center gap-2 text-xs font-semibold uppercase text-accent">
                    <FlaskConical className="h-3.5 w-3.5" />
                    Exam note
                  </span>
                )}
                {children}
              </blockquote>
            ),
            hr: () => <hr className="my-7 border-border" />,
            ul: ({ children }) => (
              <ul
                className={
                  isCourse
                    ? "course-list my-5 grid gap-2 pl-0"
                    : "my-4 list-disc space-y-2 pl-6"
                }
              >
                {children}
              </ul>
            ),
            ol: ({ children }) => (
              <ol
                className={
                  isCourse
                    ? "course-list course-ordered-list my-5 grid gap-2 pl-0"
                    : "my-4 list-decimal space-y-2 pl-6"
                }
              >
                {children}
              </ol>
            ),
            li: ({ children }) => (
              <li
                className={
                  isCourse
                    ? "rounded-lg border border-border bg-background/55 px-3 py-2 leading-7"
                    : "leading-8"
                }
              >
                {formatStudyInline(children)}
              </li>
            ),
            table: ({ children }) => (
              <div
                className={
                  isCourse
                    ? "my-6 overflow-x-auto rounded-xl border border-border bg-background/70 shadow-sm"
                    : "my-5 overflow-x-auto rounded-lg border border-border"
                }
              >
                <table className="w-full min-w-[32rem] border-collapse text-sm">{children}</table>
              </div>
            ),
            th: ({ children }) => (
              <th className="border-b border-border bg-secondary/70 px-3 py-2 text-left font-semibold">
                {formatStudyInline(children)}
              </th>
            ),
            td: ({ children }) => (
              <td className="border-b border-border px-3 py-2 align-top">
                {formatStudyInline(children)}
              </td>
            ),
            code: ({ children }) => (
              <code className="rounded bg-secondary px-1.5 py-0.5 font-mono text-sm">
                {children}
              </code>
            ),
            pre: ({ children }) => (
              <pre className="my-5 overflow-x-auto rounded-lg border border-border bg-secondary/40 p-4 text-sm">
                {children}
              </pre>
            ),
            a: ({ children }) => (
              <span className="font-medium underline decoration-dotted underline-offset-4">
                {children}
              </span>
            ),
            img: ({ src, alt }) => (
              <span className="my-6 block rounded-lg border border-border bg-card p-4">
                <img
                  src={src ?? ""}
                  alt={alt ?? "Question diagram"}
                  draggable={false}
                  loading="lazy"
                  className="mx-auto max-h-[32rem] w-full max-w-3xl object-contain"
                />
                {alt ? (
                  <span className="mt-2 block text-center font-sans text-xs text-muted-foreground">
                    {alt}
                  </span>
                ) : null}
              </span>
            ),
          }}
        >
          {document.markdownContent}
        </ReactMarkdown>
      </div>
    </article>
  );
}
