import { useTheme, type Theme } from "@/hooks/use-theme";
import { Switch } from "@/components/ui/switch";
import { Moon, Sun } from "lucide-react";

const options: { value: Theme; label: string }[] = [
  { value: "light", label: "Light" },
  { value: "dark", label: "Dark" },
  { value: "system", label: "System" },
];

interface ThemeToggleProps {
  /**
   * "icon"   — pill row with "Dark Mode" label + Switch toggle (for toolbar/sidebar)
   * "select" — segmented Light / Dark / System picker (for settings page)
   */
  variant?: "icon" | "select";
}

export function ThemeToggle({ variant = "icon" }: ThemeToggleProps) {
  const { theme, setTheme, resolvedTheme } = useTheme();

  if (variant === "select") {
    return (
      <div className="flex items-center gap-1 rounded-lg border border-border bg-secondary p-1">
        {options.map(({ value, label }) => {
          const Icon = value === "light" ? Sun : value === "dark" ? Moon : null;
          return (
            <button
              key={value}
              onClick={() => setTheme(value)}
              aria-label={label}
              aria-pressed={theme === value}
              className={`flex flex-1 items-center justify-center gap-1.5 rounded-md px-3 py-1.5 text-xs font-medium transition-colors ${
                theme === value
                  ? "bg-background text-foreground shadow-soft"
                  : "text-muted-foreground hover:text-foreground"
              }`}
            >
              {Icon && <Icon className="h-3.5 w-3.5" />}
              {label}
            </button>
          );
        })}
      </div>
    );
  }

  const isDark = resolvedTheme === "dark";

  function handleToggle() {
    setTheme(isDark ? "light" : "dark");
  }

  return (
    <button
      role="switch"
      aria-checked={isDark}
      aria-label={isDark ? "Switch to light mode" : "Switch to dark mode"}
      onClick={handleToggle}
      className="flex w-full items-center justify-between rounded-lg border border-border bg-card px-4 py-3 transition-colors hover:bg-secondary/60"
    >
      <span className="text-sm font-medium text-foreground">
        {isDark ? "Dark Mode" : "Light Mode"}
      </span>
      <Switch
        checked={isDark}
        onCheckedChange={handleToggle}
        aria-hidden="true"
        tabIndex={-1}
      />
    </button>
  );
}
