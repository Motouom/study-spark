import { useCallback, useEffect, useState } from "react";

export type Theme = "system" | "light" | "dark";

const STORAGE_KEY = "studyspark-theme";

function getStoredTheme(): Theme {
  if (typeof window === "undefined") return "system";
  const stored = localStorage.getItem(STORAGE_KEY);
  if (stored === "light" || stored === "dark" || stored === "system") return stored;
  return "system";
}

function getSystemPrefersDark(): boolean {
  if (typeof window === "undefined") return false;
  return window.matchMedia("(prefers-color-scheme: dark)").matches;
}

function resolveIsDark(theme: Theme, systemDark: boolean): boolean {
  return theme === "dark" || (theme === "system" && systemDark);
}

function applyResolved(isDark: boolean) {
  document.documentElement.classList.toggle("dark", isDark);
}

export function useTheme() {
  const [theme, setThemeState] = useState<Theme>(getStoredTheme);
  // Track system preference as reactive state so resolvedTheme updates when it changes
  const [systemDark, setSystemDark] = useState<boolean>(getSystemPrefersDark);

  const resolvedTheme: "light" | "dark" = resolveIsDark(theme, systemDark) ? "dark" : "light";

  const setTheme = useCallback((next: Theme) => {
    localStorage.setItem(STORAGE_KEY, next);
    setThemeState(next);
    // Apply immediately using current system preference
    applyResolved(resolveIsDark(next, getSystemPrefersDark()));
  }, []);

  // Apply to DOM whenever theme or systemDark changes
  useEffect(() => {
    applyResolved(resolveIsDark(theme, systemDark));
  }, [theme, systemDark]);

  // Listen for OS-level dark/light changes and keep systemDark in sync
  useEffect(() => {
    const mq = window.matchMedia("(prefers-color-scheme: dark)");
    const handler = (e: MediaQueryListEvent) => {
      setSystemDark(e.matches);
    };
    mq.addEventListener("change", handler);
    return () => mq.removeEventListener("change", handler);
  }, []);

  return { theme, setTheme, resolvedTheme };
}
