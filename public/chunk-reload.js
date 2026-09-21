(function () {
  var key = "studyspark:last-chunk-reload";
  var assetKey = "studyspark:last-failed-asset";

  function reloadOnce(assetUrl) {
    try {
      var now = Date.now();
      var lastReload = Number(sessionStorage.getItem(key) || 0);
      var lastAsset = sessionStorage.getItem(assetKey) || "";

      if (assetUrl && lastAsset === assetUrl) return;
      if (now - lastReload < 30000) return;
      sessionStorage.setItem(key, String(now));
      if (assetUrl) sessionStorage.setItem(assetKey, assetUrl);
    } catch (_error) {
      // Storage can be disabled; a single reload is still the best recovery.
    }

    window.location.reload();
  }

  window.addEventListener("vite:preloadError", function (event) {
    event.preventDefault();
    reloadOnce(event.payload && event.payload.href);
  });

  window.addEventListener(
    "error",
    function (event) {
      var target = event.target;

      if (
        target &&
        target.tagName === "SCRIPT" &&
        typeof target.src === "string" &&
        target.src.indexOf("/assets/") !== -1
      ) {
        reloadOnce(target.src);
      }
    },
    true,
  );
})();
