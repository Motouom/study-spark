import { spawn } from "node:child_process";
import { mkdtemp, mkdir, writeFile, rm } from "node:fs/promises";
import { tmpdir } from "node:os";
import { join } from "node:path";
import WebSocket from "ws";

const baseUrl = process.env.QA_BASE_URL ?? "http://127.0.0.1:8080";
const chromeBinary =
  process.env.CHROME_BIN ??
  (await firstExisting([
    "/home/victoire-ws/.cache/ms-playwright/chromium-1228/chrome-linux64/chrome",
    "/usr/bin/chromium-browser",
    "/usr/bin/chromium",
    "/usr/bin/google-chrome",
  ]));

if (!chromeBinary) {
  throw new Error("No Chromium/Chrome binary found. Set CHROME_BIN to run mobile layout QA.");
}

const routes = [
  "/signin",
  "/pricing",
  "/dashboard",
  "/library",
  "/courses",
  "/cheatsheets",
  "/learning-path",
  "/notifications",
  "/settings",
  "/support",
];
const widths = [360, 390, 414, 768, 1366];
const screenshotDir = "docs/qa/bilingual-mobile-ux/screenshots";
const reportPath = "docs/qa/bilingual-mobile-ux/latest-results.json";

async function main() {
  const userDataDir = await mkdtemp(join(tmpdir(), "studyspark-mobile-qa-"));
  const debugPort = 9333 + Math.floor(Math.random() * 2000);
  const chrome = spawn(chromeBinary, [
    "--headless=new",
    "--disable-gpu",
    "--no-sandbox",
    "--hide-scrollbars",
    `--remote-debugging-port=${debugPort}`,
    `--user-data-dir=${userDataDir}`,
    "about:blank",
  ]);

  try {
    await mkdir(screenshotDir, { recursive: true });
    const browserWsUrl = await waitForBrowser(debugPort);
    const results = [];

    for (const locale of ["en", "fr"]) {
      for (const width of widths) {
        for (const route of routes) {
          const page = await createPage(debugPort, "about:blank");
          const client = new CdpClient(page.webSocketDebuggerUrl);
          await client.connect();

          await client.send("Page.enable");
          await client.send("Runtime.enable");
          await client.send("Emulation.setDeviceMetricsOverride", {
            width,
            height: width === 1366 ? 768 : 900,
            deviceScaleFactor: 1,
            mobile: width < 768,
          });
          await client.send("Page.navigate", { url: `${baseUrl}${route}` });
          await client.waitFor("Page.loadEventFired", 15000).catch(() => {});
          await client.send("Runtime.evaluate", {
            expression: `localStorage.setItem("studyspark.locale", ${JSON.stringify(locale)})`,
          });
          await client.send("Page.navigate", { url: `${baseUrl}${route}` });
          await client.waitFor("Page.loadEventFired", 15000).catch(() => {});
          await client.send("Runtime.evaluate", {
            expression: "document.fonts ? document.fonts.ready : Promise.resolve()",
            awaitPromise: true,
          });

          const overflow = await client.send("Runtime.evaluate", {
            returnByValue: true,
            expression: `(() => {
            const root = document.scrollingElement || document.documentElement;
            const viewportWidth = document.documentElement.clientWidth;
            const bodyOverflow = root.scrollWidth - viewportWidth;
            const elements = [...document.querySelectorAll("body *")]
              .map((element) => {
                const rect = element.getBoundingClientRect();
                const styles = getComputedStyle(element);
                return {
                  tag: element.tagName.toLowerCase(),
                  text: (element.innerText || element.getAttribute("aria-label") || "").trim().replace(/\\s+/g, " ").slice(0, 120),
                  className: String(element.className || "").slice(0, 160),
                  left: Math.round(rect.left),
                  right: Math.round(rect.right),
                  width: Math.round(rect.width),
                  scrollWidth: Math.round(element.scrollWidth),
                  overflowX: styles.overflowX,
                };
              })
              .filter((item) => item.width > 0 && item.right > viewportWidth + 1)
              .slice(0, 12);
            return {
              url: location.pathname,
              title: document.title,
              viewportWidth,
              scrollWidth: root.scrollWidth,
              bodyOverflow,
              hasHorizontalOverflow: bodyOverflow > 1,
              overflowingElements: elements,
            };
          })()`,
          });

          const shot = await client.send("Page.captureScreenshot", {
            format: "png",
            captureBeyondViewport: false,
          });
          const safeRoute = route === "/" ? "home" : route.replace(/^\//, "").replaceAll("/", "-");
          const screenshot = `${screenshotDir}/${locale}-${width}-${safeRoute}.png`;
          await writeFile(screenshot, Buffer.from(shot.data, "base64"));
          results.push({
            locale,
            width,
            route,
            screenshot,
            ...overflow.result.value,
          });
          await client.close();
          await closePage(debugPort, page.id);
        }
      }
    }

    await writeFile(
      reportPath,
      `${JSON.stringify(
        {
          generatedAt: new Date().toISOString(),
          baseUrl,
          browserWsUrl,
          results,
        },
        null,
        2,
      )}\n`,
    );

    const failures = results.filter((item) => item.hasHorizontalOverflow);
    console.log(`Checked ${results.length} route/viewport/locale combinations.`);
    console.log(`Screenshots: ${screenshotDir}`);
    console.log(`Report: ${reportPath}`);
    if (failures.length > 0) {
      console.error(
        failures
          .map((item) => `${item.locale} ${item.width}px ${item.route}: +${item.bodyOverflow}px`)
          .join("\n"),
      );
      process.exitCode = 1;
    }
  } finally {
    const exited = new Promise((resolve) => {
      chrome.once("exit", resolve);
      chrome.once("error", resolve);
    });
    chrome.kill("SIGTERM");
    await Promise.race([exited, new Promise((resolve) => setTimeout(resolve, 2000))]);
    await rm(userDataDir, { recursive: true, force: true });
  }
}

async function firstExisting(paths) {
  for (const path of paths) {
    try {
      const { access } = await import("node:fs/promises");
      await access(path);
      return path;
    } catch {
      // Try the next candidate.
    }
  }
  return null;
}

async function waitForBrowser(port) {
  const started = Date.now();
  while (Date.now() - started < 10000) {
    try {
      const response = await fetch(`http://127.0.0.1:${port}/json/version`);
      const data = await response.json();
      return data.webSocketDebuggerUrl;
    } catch {
      await new Promise((resolve) => setTimeout(resolve, 100));
    }
  }
  throw new Error("Timed out waiting for Chromium remote debugging endpoint.");
}

async function createPage(port, url) {
  const response = await fetch(`http://127.0.0.1:${port}/json/new?${encodeURIComponent(url)}`, {
    method: "PUT",
  });
  return response.json();
}

async function closePage(port, id) {
  await fetch(`http://127.0.0.1:${port}/json/close/${id}`).catch(() => {});
}

class CdpClient {
  constructor(url) {
    this.url = url;
    this.nextId = 1;
    this.pending = new Map();
    this.waiters = new Map();
  }

  connect() {
    this.ws = new WebSocket(this.url);
    this.ws.on("message", (raw) => {
      const message = JSON.parse(String(raw));
      if (message.id && this.pending.has(message.id)) {
        const { resolve, reject } = this.pending.get(message.id);
        this.pending.delete(message.id);
        if (message.error) reject(new Error(message.error.message));
        else resolve(message.result ?? {});
        return;
      }
      const waiting = this.waiters.get(message.method);
      if (waiting) {
        this.waiters.delete(message.method);
        waiting.resolve(message.params ?? {});
      }
    });
    return new Promise((resolve, reject) => {
      this.ws.once("open", resolve);
      this.ws.once("error", reject);
    });
  }

  send(method, params = {}) {
    const id = this.nextId++;
    this.ws.send(JSON.stringify({ id, method, params }));
    return new Promise((resolve, reject) => {
      this.pending.set(id, { resolve, reject });
    });
  }

  waitFor(method, timeoutMs) {
    return new Promise((resolve, reject) => {
      const timeout = setTimeout(() => {
        this.waiters.delete(method);
        reject(new Error(`Timed out waiting for ${method}`));
      }, timeoutMs);
      this.waiters.set(method, {
        resolve: (value) => {
          clearTimeout(timeout);
          resolve(value);
        },
      });
    });
  }

  close() {
    this.ws.close();
  }
}

await main();
