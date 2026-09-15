(function () {
  var DISMISS_KEY = "studyspark:pwa-install-dismissed-at";
  var ACCEPTED_KEY = "studyspark:pwa-install-accepted";
  var LAST_SHOWN_KEY = "studyspark:pwa-install-last-shown-at";
  var DISMISS_COOLDOWN_MS = 7 * 24 * 60 * 60 * 1000;
  var SHOW_COOLDOWN_MS = 8 * 60 * 60 * 1000;
  var promptEvent = null;
  var promptNode = null;

  var messages = [
    {
      title: "Install StudySpark",
      body: "Open your GCE papers faster from your home screen.",
    },
    {
      title: "StudySpark works better installed",
      body: "Keep the app close when it is time to revise.",
    },
    {
      title: "Add StudySpark to this device",
      body: "A cleaner app view for dashboard, papers, and progress.",
    },
  ];

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
      window.navigator.standalone === true
    );
  }

  function canShowPrompt() {
    if (!promptEvent || isStandalone()) return false;
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

  function createPrompt() {
    if (!canShowPrompt() || promptNode) return;

    var message = messages[Math.floor(Math.random() * messages.length)];
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

    shell.innerHTML =
      '<div style="display:flex;gap:12px;padding:14px 14px 12px;align-items:flex-start">' +
      '<div style="width:42px;height:42px;border-radius:12px;background:#1b1714;display:grid;place-items:center;flex:0 0 auto">' +
      '<img src="/icons/icon-192.png" alt="" width="30" height="30" style="display:block;border-radius:8px" />' +
      "</div>" +
      '<div style="min-width:0;flex:1">' +
      '<div style="font-weight:800;font-size:15px;line-height:1.25">' +
      message.title +
      "</div>" +
      '<div style="margin-top:3px;color:#716b64;font-size:13px;line-height:1.45">' +
      message.body +
      "</div>" +
      "</div>" +
      '<button type="button" data-pwa-dismiss aria-label="Dismiss install prompt" style="width:34px;height:34px;border:0;border-radius:10px;background:#f4f0ea;color:#1b1714;font-size:20px;line-height:1;cursor:pointer">×</button>' +
      "</div>" +
      '<div style="display:flex;gap:8px;padding:0 14px 14px">' +
      '<button type="button" data-pwa-install style="min-height:42px;flex:1;border:0;border-radius:10px;background:#1b1714;color:#fff7ed;font-weight:800;cursor:pointer">Install app</button>' +
      '<button type="button" data-pwa-later style="min-height:42px;border:1px solid #e5e0da;border-radius:10px;background:#fffdf9;color:#1b1714;font-weight:700;padding:0 14px;cursor:pointer">Later</button>' +
      "</div>";

    shell.querySelector("[data-pwa-dismiss]").addEventListener("click", function () {
      storageSet(DISMISS_KEY, now());
      removePrompt();
    });

    shell.querySelector("[data-pwa-later]").addEventListener("click", function () {
      storageSet(LAST_SHOWN_KEY, now());
      removePrompt();
    });

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

    document.body.appendChild(shell);
    promptNode = shell;
    storageSet(LAST_SHOWN_KEY, now());
  }

  window.addEventListener("beforeinstallprompt", function (event) {
    event.preventDefault();
    promptEvent = event;

    var delay = 18000 + Math.floor(Math.random() * 22000);
    window.setTimeout(createPrompt, delay);
  });

  window.addEventListener("appinstalled", function () {
    storageSet(ACCEPTED_KEY, 1);
    promptEvent = null;
    removePrompt();
  });
})();
