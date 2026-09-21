// Isolated Recharts component — lazy-loaded so the 342KB Recharts bundle
// is only fetched when a premium user opens the Progress page.
import {
  Area,
  AreaChart,
  CartesianGrid,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";

type DataPoint = Record<string, string | number>;

interface ProgressDepthChartProps {
  data: DataPoint[];
  dataKey?: string;
  yLabel?: string;
}

export default function ProgressDepthChart({
  data,
  dataKey = "depth",
  yLabel,
}: ProgressDepthChartProps) {
  return (
    <ResponsiveContainer width="100%" height="100%">
      <AreaChart data={data} margin={{ top: 8, right: 8, bottom: 0, left: -16 }}>
        <defs>
          <linearGradient id="readingDepth" x1="0" y1="0" x2="0" y2="1">
            <stop offset="0%" stopColor="var(--foreground)" stopOpacity={0.25} />
            <stop offset="100%" stopColor="var(--foreground)" stopOpacity={0} />
          </linearGradient>
        </defs>
        <CartesianGrid stroke="oklch(0 0 0 / 0.06)" vertical={false} />
        <XAxis dataKey="day" stroke="var(--muted-foreground)" fontSize={12} />
        <YAxis stroke="var(--muted-foreground)" fontSize={12} />
        <Tooltip
          contentStyle={{
            background: "var(--card)",
            border: "1px solid var(--border)",
            borderRadius: 8,
            fontSize: 12,
          }}
          formatter={yLabel ? (value) => [`${value} ${yLabel}`, "Study time"] : undefined}
        />
        <Area
          type="monotone"
          dataKey={dataKey}
          stroke="var(--foreground)"
          strokeWidth={2.5}
          fill="url(#readingDepth)"
        />
      </AreaChart>
    </ResponsiveContainer>
  );
}
