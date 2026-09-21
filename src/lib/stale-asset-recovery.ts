declare global {
  interface Window {
    __studysparkHandleStaleAsset?: (error: unknown, assetUrl?: string) => boolean;
  }
}

export function isStaleAssetError(error: unknown) {
  const message =
    error instanceof Error
      ? error.message
      : typeof error === "string"
        ? error
        : error && typeof error === "object" && "message" in error
          ? String((error as { message?: unknown }).message)
          : "";

  const normalized = message.toLowerCase();
  return (
    normalized.includes("failed to fetch dynamically imported module") ||
    normalized.includes("error loading dynamically imported module") ||
    normalized.includes("importing a module script failed") ||
    normalized.includes("loading chunk") ||
    normalized.includes("chunkloaderror") ||
    normalized.includes("modulepreload") ||
    normalized.includes("/assets/")
  );
}

export function requestStaleAssetRecovery(error: unknown) {
  if (typeof window === "undefined") return false;
  if (!isStaleAssetError(error)) return false;
  return window.__studysparkHandleStaleAsset?.(error) ?? false;
}
