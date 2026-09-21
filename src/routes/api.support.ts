import { createFileRoute } from "@tanstack/react-router";
import { rateLimit, rateLimitResponse } from "@/lib/rate-limit";
import { getAuthenticatedUser } from "@/lib/server-supabase";

type SupportRequestBody = {
  message?: string;
  metadata?: {
    classLevel?: string;
    plan?: string;
    series?: string;
    subjects?: string[];
  };
  subject?: string;
};

const SUPPORT_EMAIL_TO =
  process.env.SUPPORT_EMAIL_TO ?? process.env.SUPPORT_EMAIL ?? "motouomvictor@gmail.com";
const SUPPORT_EMAIL_FROM = process.env.SUPPORT_EMAIL_FROM ?? "";
const RESEND_API_KEY = process.env.RESEND_API_KEY ?? "";

export const Route = createFileRoute("/api/support")({
  server: {
    handlers: {
      POST: async ({ request }) => {
        try {
          const user = await getAuthenticatedUser(request);
          const limiter = rateLimit(`support:${user.id}`, 5, 60 * 60 * 1000);
          if (!limiter.allowed) return rateLimitResponse(limiter.retryAfterSeconds);

          const body = (await request.json().catch(() => ({}))) as SupportRequestBody;
          const subject = sanitizeLine(body.subject).slice(0, 120);
          const message = String(body.message ?? "").trim();

          if (!subject || !message) {
            return Response.json(
              { error: "Please add a subject and message before sending." },
              { status: 400 },
            );
          }

          if (message.length < 10) {
            return Response.json(
              { error: "Please describe the issue in a little more detail." },
              { status: 400 },
            );
          }

          if (!RESEND_API_KEY || !SUPPORT_EMAIL_FROM || !SUPPORT_EMAIL_TO) {
            console.error("Support email is not configured", {
              hasFrom: Boolean(SUPPORT_EMAIL_FROM),
              hasKey: Boolean(RESEND_API_KEY),
              hasTo: Boolean(SUPPORT_EMAIL_TO),
            });
            return Response.json(
              { error: "Support email is not configured yet. Please try again later." },
              { status: 503 },
            );
          }

          const metadata = body.metadata ?? {};
          const profileLines = [
            `Account: ${user.email ?? "Unknown"}`,
            `Plan: ${metadata.plan ?? "Unknown"}`,
            metadata.classLevel ? `Class: ${metadata.classLevel}` : null,
            metadata.series ? `Series: ${metadata.series}` : null,
            metadata.subjects?.length ? `Subjects: ${metadata.subjects.join(", ")}` : null,
          ].filter(Boolean);

          const text = [message, "", "---", "StudySpark support context", ...profileLines].join(
            "\n",
          );

          const response = await fetch("https://api.resend.com/emails", {
            method: "POST",
            headers: {
              Authorization: `Bearer ${RESEND_API_KEY}`,
              "Content-Type": "application/json",
            },
            body: JSON.stringify({
              from: SUPPORT_EMAIL_FROM,
              to: SUPPORT_EMAIL_TO,
              reply_to: user.email,
              subject: `[StudySpark Support] ${subject}`,
              text,
            }),
          });

          if (!response.ok) {
            const providerBody = await response.text().catch(() => "");
            console.error("Support email provider failed", {
              status: response.status,
              body: providerBody.slice(0, 500),
            });
            return Response.json(
              { error: "Support could not receive your message. Please try again later." },
              { status: 502 },
            );
          }

          return Response.json({ ok: true });
        } catch (error) {
          if (error instanceof Response) return error;
          console.error("Support request failed", error);
          return Response.json(
            { error: "Support request could not be sent. Please try again." },
            { status: 500 },
          );
        }
      },
    },
  },
});

function sanitizeLine(value: unknown) {
  return String(value ?? "")
    .replace(/[\r\n]+/g, " ")
    .trim();
}
