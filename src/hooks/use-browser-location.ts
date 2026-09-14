import { useCallback, useState } from "react";

export type VerifiedBrowserLocation = {
  latitude: number;
  longitude: number;
  verifiedAt: string;
};

export function useBrowserLocation() {
  const [verifying, setVerifying] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const verifyLocation = useCallback(async () => {
    setError(null);

    if (!("geolocation" in navigator)) {
      const message = "This browser does not support location verification.";
      setError(message);
      throw new Error(message);
    }

    setVerifying(true);
    try {
      const position = await new Promise<GeolocationPosition>((resolve, reject) => {
        navigator.geolocation.getCurrentPosition(resolve, reject, {
          enableHighAccuracy: true,
          maximumAge: 5 * 60 * 1000,
          timeout: 12000,
        });
      });

      return {
        latitude: Number(position.coords.latitude.toFixed(6)),
        longitude: Number(position.coords.longitude.toFixed(6)),
        verifiedAt: new Date().toISOString(),
      } satisfies VerifiedBrowserLocation;
    } catch (err) {
      const geolocationError = err as Partial<GeolocationPositionError>;
      const message =
        geolocationError.code === GeolocationPositionError.PERMISSION_DENIED
          ? "Location permission was denied."
          : err instanceof Error
            ? err.message
            : "Location could not be verified.";
      setError(message);
      throw new Error(message);
    } finally {
      setVerifying(false);
    }
  }, []);

  return { verifyLocation, verifying, error };
}
