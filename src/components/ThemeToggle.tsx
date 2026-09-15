import { Moon, Sun } from "lucide-react";
import { useTheme, type Theme } from "@/hooks/use-theme";
import { Button } from "@/components/ui/button";

const options: { value: Theme; label: string }[] = [
  { value: "light", label: "Light" },
  { value: "dark", label: "Dark" },
  { value: "system", label: "System" },
];

interface ThemeToggleProps {
  /**
   * "icon"   — simple toggle button that switches light ↔ dark (default, for toolbars/sidebar)
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

  // Simple toggle: press to flip between light and dark.
  // When on system, pressing locks to the opposite of the current resolved theme.
  function handleToggle() {
    setTheme(resolvedTheme === "dark" ? "light" : "dark");
  }

  return (
    <Button
      variant="ghost"
      size="icon"
      aria-label={resolvedTheme === "dark" ? "Switch to light mode" : "Switch to dark mode"}
      onClick={handleToggle}
      className="relative h-9 w-9"
    >
      {/* Sun shown in light mode, hidden in dark */}
      <Sun className="h-4 w-4 rotate-0 scale-100 transition-all dark:-rotate-90 dark:scale-0" />
      {/* Moon hidden in light mode, shown in dark */}
      <Moon className="absolute h-4 w-4 rotate-90 scale-0 transition-all dark:rotate-0 dark:scale-100" />
      <span className="sr-only">
        {resolvedTheme === "dark" ? "Switch to light mode" : "Switch to dark mode"}
      </span>
    </Button>
  );
}
