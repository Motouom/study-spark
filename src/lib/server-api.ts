import { createServerFn } from "@tanstack/react-start";
import { z } from "zod";
import { DEFAULT_PROFILE } from "./study-reference-data";

export const getStudentSession = createServerFn({ method: "GET" }).handler(async () => {
  return {
    user: {
      id: "client_supabase_session",
      email: "",
      displayName: "",
      role: "student" as const,
      status: "active" as const,
    },
    profile: DEFAULT_PROFILE,
  };
});

export const getStudentShell = createServerFn({ method: "GET" }).handler(async () => {
  const session = await getStudentSession();
  return { session, topics: [] };
});

export const getStudentLibrary = createServerFn({ method: "GET" }).handler(async () => {
  const session = await getStudentSession();
  return { profile: session.profile, subjects: [], topics: [], lockedTopics: [] };
});

export const getDashboardData = createServerFn({ method: "GET" }).handler(async () => {
  const session = await getStudentSession();
  return { profile: session.profile, topics: [] };
});

const topicSchema = z.object({
  topicId: z.string(),
});

export const getProtectedTopic = createServerFn({ method: "GET" })
  .inputValidator((data: unknown) => topicSchema.parse(data))
  .handler(async ({ data }) => {
    const session = await getStudentSession();
    void data.topicId;
    return { session, topic: null };
  });
