import { Badge } from "@/components/ui/badge";
import type { CourseDocument } from "@/hooks/use-study-content";
import { ShieldCheck } from "lucide-react";
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

export default function ProtectedMarkdown({
  document,
  owner,
  userId,
}: {
  document: CourseDocument;
  owner: string;
  userId: string;
}) {
  const trace = `${owner} · ${userId.slice(0, 8)} · ${document.id.slice(0, 8)} · ${new Date().toLocaleDateString()}`;

  return (
    <article
      className="protected-content relative min-w-0 select-none overflow-hidden rounded-xl border border-border bg-card p-4 sm:p-5 md:p-8"
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
        <span className="inline-flex items-center gap-1 text-xs text-success">
          <ShieldCheck className="h-3.5 w-3.5" />
          Protected view
        </span>
      </div>
      <div className="protected-markdown relative font-serif text-[0.95rem] leading-7 sm:text-base">
        <ReactMarkdown
          remarkPlugins={[remarkGfm, remarkMath]}
          rehypePlugins={[rehypeKatex]}
          components={{
            h1: ({ children }) => (
              <h1 className="mb-4 font-display text-2xl font-semibold leading-tight sm:text-3xl">
                {formatStudyInline(children)}
              </h1>
            ),
            h2: ({ children }) => (
              <h2
                id={slugifyHeading(String(children ?? ""))}
                className="mb-3 mt-8 scroll-mt-24 font-display text-xl font-semibold leading-tight sm:text-2xl"
              >
                {formatStudyInline(children)}
              </h2>
            ),
            h3: ({ children }) => (
              <h3
                id={slugifyHeading(String(children ?? ""))}
                className="mb-3 mt-6 scroll-mt-24 text-lg font-semibold leading-snug"
              >
                {formatStudyInline(children)}
              </h3>
            ),
            p: ({ children }) => <p className="my-4 leading-8">{formatStudyInline(children)}</p>,
            strong: ({ children }) => (
              <strong className="font-semibold">{formatStudyInline(children)}</strong>
            ),
            em: ({ children }) => <em className="italic">{formatStudyInline(children)}</em>,
            blockquote: ({ children }) => (
              <blockquote className="my-5 border-l-4 border-border pl-5 text-muted-foreground">
                {children}
              </blockquote>
            ),
            hr: () => <hr className="my-7 border-border" />,
            ul: ({ children }) => <ul className="my-4 list-disc space-y-2 pl-6">{children}</ul>,
            ol: ({ children }) => <ol className="my-4 list-decimal space-y-2 pl-6">{children}</ol>,
            li: ({ children }) => <li className="leading-8">{formatStudyInline(children)}</li>,
            table: ({ children }) => (
              <div className="my-5 overflow-x-auto rounded-lg border border-border">
                <table className="w-full min-w-[32rem] border-collapse text-sm">{children}</table>
              </div>
            ),
            th: ({ children }) => (
              <th className="border-b border-border bg-secondary/50 px-3 py-2 text-left font-semibold">
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
