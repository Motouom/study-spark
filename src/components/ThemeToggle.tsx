import { Moon, Sun } from "lucide-react";
import { useTheme, type Theme } from "@/hooks/use-theme";

const options: { value: Theme; label: string }[] = [
  { value: "light", label: "Light" },
  { value: "dark", label: "Dark" },
  { value: "system", label: "System" },
];

interface ThemeToggleProps {
  /**
   * "icon"    — labeled toggle button (Sun/Moon + "Light"/"Dark") for toolbars and sidebar
   * "select"  — segmented Light / Dark / System picker for the settings page
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

  // Labeled toggle button: shows current mode name so students know exactly what it does
  const isDark = resolvedTheme === "dark";

  function handleToggle() {
    setTheme(isDark ? "light" : "dark");
  }

  return (
    <button
      onClick={handleToggle}
      aria-label={isDark ? "Switch to light mode" : "Switch to dark mode"}
      className="flex h-9 items-center gap-1.5 rounded-md border border-border bg-secondary px-2.5 text-xs font-medium text-muted-foreground transition-colors hover:bg-accent/10 hover:text-foreground"
    >
      {isDark ? (
        <>
          <Sun className="h-3.5 w-3.5" />
          Light mode
        </>
      ) : (
        <>
          <Moon className="h-3.5 w-3.5" />
          Dark mode
        </>
      )}
    </button>
  );
}
