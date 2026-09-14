import type { ClassLevel, Level, Series, Subject, Topic } from "./study-reference-data";

export type UserRole = "student" | "admin" | "reviewer";
export type UserStatus = "active" | "pending" | "suspended";

export interface AppUser {
  id: string;
  email: string;
  displayName: string;
  role: UserRole;
  status: UserStatus;
}

export type TopicRow = {
  id: string;
  subject: Subject;
  title: string;
  description: string;
  level: Level;
  class_levels: string | string[];
  series: string | string[];
  question_count: number;
  mastery?: number | null;
  estimated_minutes: number;
};

export function parseJsonArray<T>(value: string | T[] | null | undefined, fallback: T[] = []): T[] {
  if (Array.isArray(value)) return value;
  if (!value) return fallback;
  try {
    const parsed = JSON.parse(value);
    return Array.isArray(parsed) ? (parsed as T[]) : fallback;
  } catch {
    return fallback;
  }
}

export function topicFromRow(row: TopicRow): Topic {
  return {
    id: row.id,
    subject: row.subject,
    title: row.title,
    description: row.description,
    level: row.level,
    classLevels: parseJsonArray<ClassLevel>(row.class_levels),
    series: parseJsonArray<Series>(row.series),
    questionCount: row.question_count,
    mastery: row.mastery ?? 0,
    estimatedMinutes: row.estimated_minutes,
  };
}
