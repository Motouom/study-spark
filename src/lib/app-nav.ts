import { LayoutDashboard, Library, Brain, PlayCircle, BookMarked, Users } from "lucide-react";
import type { TranslationKey } from "@/lib/i18n";

export const NAV = [
  { to: "/dashboard", labelKey: "common.dashboard", icon: LayoutDashboard },
  { to: "/library", labelKey: "common.papers", icon: Library },
  { to: "/learning-path", labelKey: "common.learningPath", icon: Brain },
  { to: "/courses", labelKey: "common.courses", icon: PlayCircle },
  { to: "/cheatsheets", labelKey: "common.cheatsheets", icon: BookMarked },
  { to: "/leaderboard", labelKey: "common.leaderboard", icon: Users },
] as const satisfies ReadonlyArray<{
  to: string;
  labelKey: TranslationKey;
  icon: typeof LayoutDashboard;
}>;
