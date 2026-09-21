(function () {
  var reloadKey = "studyspark:stale-asset-reload";
  var recoveredKey = "studyspark:stale-asset-recovered-at";
  var failureKey = "studyspark:stale-asset-failure";
  var recoveryWindowMs = 120000;

  function now() {
    return Date.now();
  }

  function safeSessionGet(key) {
    try {
      return sessionStorage.getItem(key);
    } catch (_error) {
      return null;
    }
  }

  function safeSessionSet(key, value) {
    try {
      sessionStorage.setItem(key, value);
    } catch (_error) {
      // Storage can be disabled. The recovery path still works without it.
    }
  }

  function safeSessionRemove(key) {
    try {
      sessionStorage.removeItem(key);
    } catch (_error) {
      // Ignore disabled storage.
    }
  }

  function normalizeReason(reason) {
    if (!reason) return "";
    if (typeof reason === "string") return reason;
    if (reason.message) return String(reason.message);
    if (reason.error && reason.error.message) return String(reason.error.message);
    return String(reason);
  }

  function isStaleAssetFailure(value) {
    var message = normalizeReason(value).toLowerCase();
    return (
      message.indexOf("failed to fetch dynamically imported module") !== -1 ||
      message.indexOf("error loading dynamically imported module") !== -1 ||
      message.indexOf("importing a module script failed") !== -1 ||
      message.indexOf("loading chunk") !== -1 ||
      message.indexOf("chunkloaderror") !== -1 ||
      message.indexOf("modulepreload") !== -1 ||
      message.indexOf("/assets/") !== -1
    );
  }

  function showRecoveryScreen(assetUrl) {
    if (document.getElementById("studyspark-stale-asset-recovery")) return;

    var wrapper = document.createElement("div");
    wrapper.id = "studyspark-stale-asset-recovery";
    wrapper.setAttribute("role", "alert");
    wrapper.style.cssText =
      "position:fixed;inset:0;z-index:2147483647;display:flex;align-items:center;justify-content:center;background:#17120f;color:#fff7ed;padding:24px;font-family:Inter,system-ui,-apple-system,BlinkMacSystemFont,'Segoe UI',sans-serif;";

    var assetMessage = assetUrl
      ? "<p style='margin:12px 0 0;color:#a8a29e;font-size:12px;word-break:break-all'>Missing asset: " +
        String(assetUrl).replace(/[<>&"]/g, function (char) {
          return { "<": "&lt;", ">": "&gt;", "&": "&amp;", '"': "&quot;" }[char];
        }) +
        "</p>"
      : "";

    wrapper.innerHTML =
      "<div style='max-width:460px;text-align:center'>" +
      "<div style='width:64px;height:64px;border-radius:999px;background:#2b211b;margin:0 auto 20px;display:flex;align-items:center;justify-content:center;color:#ffb86b;font-size:30px'>!</div>" +
      "<p style='margin:0 0 10px;color:#a8a29e;font-size:12px;font-weight:800;letter-spacing:.18em;text-transform:uppercase'>StudySpark updated</p>" +
      "<h1 style='margin:0;color:#fff7ed;font-size:34px;line-height:1.05;font-weight:800'>Refresh needed</h1>" +
      "<p style='margin:14px 0 0;color:#d7d0c7;font-size:15px;line-height:1.6'>A new version was deployed while this page was open. Refresh once more to load the newest StudySpark files.</p>" +
      assetMessage +
      "<button type='button' data-studyspark-refresh style='margin-top:24px;min-height:46px;border:0;border-radius:10px;background:#fff7ed;color:#17120f;padding:0 22px;font-weight:800;cursor:pointer'>Refresh StudySpark</button>" +
      "<p style='margin:14px 0 0;color:#8f877d;font-size:12px'>If this keeps happening, close the tab and open StudySpark again.</p>" +
      "</div>";

    document.body.appendChild(wrapper);
    wrapper.querySelector("[data-studyspark-refresh]").addEventListener("click", function () {
      safeSessionRemove(reloadKey);
      safeSessionRemove(failureKey);
      window.location.reload();
    });
  }

  function reloadOnce(assetUrl) {
    var stored = safeSessionGet(reloadKey);
    var currentPath = window.location.pathname + window.location.search;
    var parsed = null;
    try {
      parsed = stored ? JSON.parse(stored) : null;
    } catch (_error) {
      parsed = null;
    }

    if (
      parsed &&
      parsed.path === currentPath &&
      now() - Number(parsed.at || 0) < recoveryWindowMs
    ) {
      showRecoveryScreen(assetUrl || parsed.asset || "");
      return;
    }

    safeSessionSet(
      reloadKey,
      JSON.stringify({
        at: now(),
        path: currentPath,
        asset: assetUrl || "",
      }),
    );
    safeSessionSet(
      failureKey,
      JSON.stringify({
        at: now(),
        path: currentPath,
        asset: assetUrl || "",
      }),
    );

    window.location.reload();
  }

  window.__studysparkHandleStaleAsset = function (error, assetUrl) {
    if (!isStaleAssetFailure(error) && !assetUrl) return false;
    reloadOnce(assetUrl || "");
    return true;
  };

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

  window.addEventListener("unhandledrejection", function (event) {
    if (!isStaleAssetFailure(event.reason)) return;
    event.preventDefault();
    reloadOnce("");
  });

  window.addEventListener("DOMContentLoaded", function () {
    var stored = safeSessionGet(reloadKey);
    if (!stored) return;
    window.setTimeout(function () {
      safeSessionSet(recoveredKey, String(now()));
      safeSessionRemove(reloadKey);
      safeSessionRemove(failureKey);
    }, 10000);
  });
})();
