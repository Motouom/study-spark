(function () {
  var DISMISS_KEY = "studyspark:pwa-install-dismissed-at";
  var ACCEPTED_KEY = "studyspark:pwa-install-accepted";
  var LAST_SHOWN_KEY = "studyspark:pwa-install-last-shown-at";
  var DISMISS_COOLDOWN_MS = 12 * 60 * 60 * 1000;
  var SHOW_COOLDOWN_MS = 20 * 60 * 1000;
  var FALLBACK_DELAY_MS = 6000;
  var promptEvent = null;
  var promptNode = null;

  // Recover an install event that fired before this deferred script ran.
  try {
    if (window.__pwaInstallPrompt) {
      promptEvent = window.__pwaInstallPrompt;
      window.__pwaInstallPrompt = null;
    }
  } catch (_error) {
    // Ignore; the normal listener below still covers the common case.
  }

  var isIOS =
    /iphone|ipad|ipod/i.test(window.navigator.userAgent) ||
    (window.navigator.platform === "MacIntel" && window.navigator.maxTouchPoints > 1);
  var isAndroid = /android/i.test(window.navigator.userAgent);

  function now() {
    return Date.now();
  }

  function storageNumber(key) {
    try {
      return Number(window.localStorage.getItem(key) || 0);
    } catch (_error) {
      return 0;
    }
  }

  function storageSet(key, value) {
    try {
      window.localStorage.setItem(key, String(value));
    } catch (_error) {
      // Storage can be unavailable in private browsing; the prompt can still work.
    }
  }

  function isStandalone() {
    return (
      window.matchMedia("(display-mode: standalone)").matches ||
      window.matchMedia("(display-mode: fullscreen)").matches ||
      window.matchMedia("(display-mode: minimal-ui)").matches ||
      window.navigator.standalone === true
    );
  }

  function isSafari() {
    return /^((?!chrome|android|crios|fxios).)*safari/i.test(window.navigator.userAgent);
  }

  function canShowPrompt() {
    if (isStandalone()) return false;
    if (storageNumber(ACCEPTED_KEY)) return false;

    var dismissedAt = storageNumber(DISMISS_KEY);
    if (dismissedAt && now() - dismissedAt < DISMISS_COOLDOWN_MS) return false;

    var lastShownAt = storageNumber(LAST_SHOWN_KEY);
    return !lastShownAt || now() - lastShownAt >= SHOW_COOLDOWN_MS;
  }

  function removePrompt() {
    if (!promptNode) return;
    promptNode.remove();
    promptNode = null;
  }

  function stepRow(number, text) {
    return (
      '<div style="display:flex;gap:10px;align-items:flex-start;margin-top:8px">' +
      '<span style="width:22px;height:22px;border-radius:50%;background:#1b1714;color:#fff7ed;font-size:12px;font-weight:800;display:grid;place-items:center;flex:0 0 auto">' +
      number +
      "</span>" +
      '<span style="font-size:13px;line-height:1.5;color:#3a342e">' +
      text +
      "</span>" +
      "</div>"
    );
  }

  function platformSteps() {
    if (isIOS) {
      return {
        title: "Add StudySpark to your Home Screen",
        body: "Takes 10 seconds — no App Store needed.",
        html:
          stepRow(
            1,
            "Tap the <b>Share</b> button <span style='display:inline-grid;place-items:center;width:20px;height:20px;border:1px solid #c9c2ba;border-radius:5px;vertical-align:middle'>&#8593;</span> at the bottom of Safari.",
          ) +
          stepRow(2, "Scroll down and tap <b>Add to Home Screen</b>.") +
          stepRow(3, "Tap <b>Add</b> in the top-right corner."),
      };
    }
    if (isAndroid) {
      return {
        title: "Install StudySpark",
        body: "Get the app view for your dashboard and papers.",
        html:
          stepRow(1, "Open the <b>&#8942;</b> menu at the top-right of your browser.") +
          stepRow(2, "Tap <b>Add to Home screen</b> or <b>Install app</b>.") +
          stepRow(3, "Confirm by tapping <b>Install</b>."),
      };
    }
    return {
      title: "Install StudySpark",
      body: "Open your GCE papers faster from your home screen.",
      html:
        stepRow(1, "Open your browser menu ( <b>&#8942;</b> or <b>&#8993;</b> ).") +
        stepRow(2, "Choose <b>Install app</b> or <b>Add to Home screen</b>."),
    };
  }

  function createPrompt() {
    if (!canShowPrompt() || promptNode) return;

    var hasNativePrompt = Boolean(promptEvent);
    var steps = platformSteps();
    var shell = document.createElement("aside");
    shell.setAttribute("role", "dialog");
    shell.setAttribute("aria-label", "Install StudySpark");
    shell.style.cssText = [
      "position:fixed",
      "left:max(16px,env(safe-area-inset-left))",
      "right:max(16px,env(safe-area-inset-right))",
      "bottom:calc(20px + env(safe-area-inset-bottom))",
      "z-index:2147483647",
      "max-width:420px",
      "margin:0 auto",
      "border:1px solid rgba(27,23,20,.12)",
      "border-radius:16px",
      "background:#fffdf9",
      "color:#1b1714",
      "box-shadow:0 18px 60px rgba(27,23,20,.18)",
      "font-family:Inter,ui-sans-serif,system-ui,-apple-system,BlinkMacSystemFont,'Segoe UI',sans-serif",
      "overflow:hidden",
    ].join(";");

    var actionButtons = hasNativePrompt
      ? '<button type="button" data-pwa-install style="min-height:42px;flex:1;border:0;border-radius:10px;background:#1b1714;color:#fff7ed;font-weight:800;cursor:pointer">Install app</button>' +
        '<button type="button" data-pwa-later style="min-height:42px;border:1px solid #e5e0da;border-radius:10px;background:#fffdf9;color:#1b1714;font-weight:700;padding:0 14px;cursor:pointer">Later</button>'
      : '<button type="button" data-pwa-later style="min-height:42px;flex:1;border:0;border-radius:10px;background:#1b1714;color:#fff7ed;font-weight:800;cursor:pointer">Got it</button>' +
        '<button type="button" data-pwa-later style="min-height:42px;border:1px solid #e5e0da;border-radius:10px;background:#fffdf9;color:#1b1714;font-weight:700;padding:0 14px;cursor:pointer">Later</button>';

    shell.innerHTML =
      '<div style="display:flex;gap:12px;padding:14px 14px 4px;align-items:flex-start">' +
      '<div style="width:42px;height:42px;border-radius:12px;background:#1b1714;display:grid;place-items:center;flex:0 0 auto">' +
      '<img src="/icons/icon-192.png" alt="" width="30" height="30" style="display:block;border-radius:8px" />' +
      "</div>" +
      '<div style="min-width:0;flex:1">' +
      '<div style="font-weight:800;font-size:15px;line-height:1.25">' +
      steps.title +
      "</div>" +
      '<div style="margin-top:3px;color:#716b64;font-size:13px;line-height:1.45">' +
      steps.body +
      "</div>" +
      "</div>" +
      '<button type="button" data-pwa-dismiss aria-label="Dismiss install prompt" style="width:34px;height:34px;border:0;border-radius:10px;background:#f4f0ea;color:#1b1714;font-size:20px;line-height:1;cursor:pointer">×</button>' +
      "</div>" +
      '<div style="padding:4px 20px 12px">' +
      steps.html +
      "</div>" +
      '<div style="display:flex;gap:8px;padding:0 14px 14px">' +
      actionButtons +
      "</div>";

    shell.querySelector("[data-pwa-dismiss]").addEventListener("click", function () {
      storageSet(DISMISS_KEY, now());
      removePrompt();
    });

    shell.querySelectorAll("[data-pwa-later]").forEach(function (node) {
      node.addEventListener("click", function () {
        storageSet(LAST_SHOWN_KEY, now());
        removePrompt();
      });
    });

    if (hasNativePrompt) {
      shell.querySelector("[data-pwa-install]").addEventListener("click", function () {
        var event = promptEvent;
        removePrompt();
        if (!event) return;

        event.prompt();
        event.userChoice.then(function (choice) {
          if (choice && choice.outcome === "accepted") storageSet(ACCEPTED_KEY, 1);
          else storageSet(LAST_SHOWN_KEY, now());
          promptEvent = null;
        });
      });
    }

    document.body.appendChild(shell);
    promptNode = shell;
    storageSet(LAST_SHOWN_KEY, now());
  }

  window.addEventListener("beforeinstallprompt", function (event) {
    // Let the browser show its own native install popup (Chrome/Edge/Android).
    promptEvent = event;
    removePrompt();
  });

  // Only iOS Safari lacks a native install popup, so show the guide there only.
  if (isIOS && isSafari()) window.setTimeout(createPrompt, FALLBACK_DELAY_MS);

  window.addEventListener("appinstalled", function () {
    storageSet(ACCEPTED_KEY, 1);
    promptEvent = null;
    removePrompt();
  });
})();
