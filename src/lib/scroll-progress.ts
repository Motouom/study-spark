let cachedContainer: HTMLElement | null = null;
let cachedAt = 0;

function findScrollContainer(): HTMLElement | null {
  // The app layout scrolls inside <main> (overflow-y-auto), not the window.
  // Cache briefly to avoid querySelector on every scroll event.
  if (cachedContainer && cachedContainer.isConnected && Date.now() - cachedAt < 5000) {
    return cachedContainer;
  }
  const main = document.querySelector("main");
  const container =
    main instanceof HTMLElement && main.scrollHeight > main.clientHeight ? main : null;
  cachedContainer = container;
  cachedAt = Date.now();
  return container ?? (document.scrollingElement as HTMLElement | null);
}

export function getScrollPercent(): number {
  if (typeof document === "undefined") return 0;
  const container = findScrollContainer();
  if (!container) return 0;
  const scrollable = Math.max(1, container.scrollHeight - container.clientHeight);
  const scrollTop = container === document.scrollingElement ? window.scrollY : container.scrollTop;
  return Math.max(0, Math.min(100, Math.round((scrollTop / scrollable) * 100)));
}

export function scrollToPercent(percent: number) {
  const container = findScrollContainer();
  if (!container) return;
  const scrollable = Math.max(1, container.scrollHeight - container.clientHeight);
  const top = (Math.max(0, Math.min(100, percent)) / 100) * scrollable;
  if (container === document.scrollingElement) {
    window.scrollTo({ top, behavior: "smooth" });
  } else {
    container.scrollTo({ top, behavior: "smooth" });
  }
}

export function onContainerScroll(handler: () => void) {
  const container = findScrollContainer();
  const target: HTMLElement | Window = container ?? window;
  target.addEventListener("scroll", handler, { passive: true });
  return () => target.removeEventListener("scroll", handler);
}
