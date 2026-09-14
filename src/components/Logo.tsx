import { Link } from "@tanstack/react-router";

export function Logo({ className = "", to = "/" }: { className?: string; to?: string }) {
  return (
    <Link to={to} className={`inline-flex items-center gap-2 ${className}`}>
      <div className="relative flex h-8 w-8 items-center justify-center rounded-lg bg-primary text-primary-foreground">
        <svg viewBox="0 0 24 24" fill="none" className="h-5 w-5">
          <path
            d="M4 6.5C4 5.12 5.12 4 6.5 4H20v13.5a2.5 2.5 0 0 1-2.5 2.5h-11A2.5 2.5 0 0 1 4 17.5v-11Z"
            stroke="currentColor"
            strokeWidth="1.6"
          />
          <path d="M8 9h8M8 13h6" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" />
        </svg>
      </div>
      <span className="font-display text-xl text-foreground">StudySpark</span>
    </Link>
  );
}
