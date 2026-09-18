import { json, preflight } from "../_shared/cors.ts";
import { aiConfigured, generateAiText } from "../_shared/ai.ts";
import { getAuthenticatedUser } from "../_shared/supabase.ts";

function removeEmojis(value: string) {
  return Array.from(value)
    .filter((char) => {
      const codePoint = char.codePointAt(0) ?? 0;
      if (codePoint === 0x200d || codePoint === 0xfe0e || codePoint === 0xfe0f) return false;
      if (codePoint >= 0x1f000 && codePoint <= 0x1faff) return false;
      if (codePoint >= 0x2600 && codePoint <= 0x27bf) return false;
      return true;
    })
    .join("")
    .replace(/[ \t]+\n/g, "\n")
    .replace(/\n{4,}/g, "\n\n\n")
    .trim();
}

function formatLocally(markdown: string) {
  return removeEmojis(markdown)
    .replace(/^#{1,6}\s*(.+)$/gm, (_match, title: string) => `# ${String(title).toUpperCase()}`)
    .replace(/(?:^|\n)\s*(Q\d+)\./g, "\n\n**$1.**")
    .replace(/\n{3,}/g, "\n\n")
    .trim();
}

Deno.serve(async (request) => {
  if (request.method === "OPTIONS") return preflight();
  if (request.method !== "POST") return json({ error: "Method not allowed." }, 405);

  try {
    const user = await getAuthenticatedUser(request);
    const role = user.app_metadata?.role;
    if (role !== "admin" && role !== "reviewer" && role !== "super_admin") {
      return json({ error: "Admin access required." }, 403);
    }

    const body = (await request.json().catch(() => ({}))) as {
      title?: string;
      subject?: string;
      markdown?: string;
    };
    const markdown = String(body.markdown ?? "");
    if (markdown.trim().length < 20) {
      return json({ error: "Markdown content is too short." }, 400);
    }
    if (markdown.length > 30000) {
      return json({ error: "Please format papers in chunks below 30,000 characters." }, 413);
    }

    const fallback = formatLocally(markdown);
    if (!aiConfigured()) {
      return json({ markdown: fallback, source: "fallback" });
    }

    const formatted = await generateAiText({
      system:
        "You format Cameroon GCE structural question papers as clean Markdown. Preserve every question, mark, equation, and instruction. Remove emojis. Do not add answers, hints, checks, comments, or solutions. Use black-and-white diagram placeholders only when the source clearly requires a diagram.",
      prompt: JSON.stringify({
        title: String(body.title ?? ""),
        subject: String(body.subject ?? ""),
        markdown,
        instruction:
          "Return only the corrected Markdown. Keep LaTeX intact. Do not wrap in code fences. Do not add explanatory text.",
      }),
      maxTokens: 3600,
    });

    return json({ markdown: removeEmojis(formatted), source: "ai" });
  } catch (error) {
    if (error instanceof Response) return error;
    console.error("AI paper formatter failed", error);
    return json(
      { error: error instanceof Error ? error.message : "Paper formatting failed." },
      500,
    );
  }
});
