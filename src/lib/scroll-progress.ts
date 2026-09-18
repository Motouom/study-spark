let cachedContainer: HTMLElement | null = null;
let cachedAt = 0;

function findScrollContainer(): HTMLElement | null {
  // The app layout scrolls inside <main> (overflow-y-auto), not the window.
  // Cache briefly to avoid querySelector on every scroll event, but only cache
  // a positive <main> result: caching "main not scrollable yet" would pin the
  // fallback for 5s while content is still loading.
  if (cachedContainer && cachedContainer.isConnected && Date.now() - cachedAt < 5000) {
    return cachedContainer;
  }
  const main = document.querySelector("main");
  if (main instanceof HTMLElement && main.scrollHeight > main.clientHeight) {
    cachedContainer = main;
    cachedAt = Date.now();
    return main;
  }
  return (document.scrollingElement as HTMLElement | null) ?? null;
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
  // Scroll events don't bubble, but they do propagate in the capture phase.
  // Listening on document with capture catches scrolls from any container
  // (including <main> once it becomes the real scroller after content loads),
  // so the listener never binds to the wrong target.
  document.addEventListener("scroll", handler, { passive: true, capture: true });
  return () => document.removeEventListener("scroll", handler, { capture: true });
}
