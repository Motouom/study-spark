(function () {
  var key = "studyspark:last-chunk-reload";

  function reloadOnce() {
    try {
      var now = Date.now();
      var lastReload = Number(sessionStorage.getItem(key) || 0);

      if (now - lastReload < 10000) return;
      sessionStorage.setItem(key, String(now));
    } catch (_error) {
      // Storage can be disabled; a single reload is still the best recovery.
    }

    window.location.reload();
  }

  window.addEventListener("vite:preloadError", function (event) {
    event.preventDefault();
    reloadOnce();
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
        reloadOnce();
      }
    },
    true,
  );
})();
