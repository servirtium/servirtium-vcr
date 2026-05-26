// Run the vendored TodoBackend Mocha spec in real headless Chrome against a
// Servirtium VCR, and report the result — JavaScript binding edition, driving
// Chrome with JS's own selenium-webdriver (npm).
//
// Shared by both phases:
//   * record.js   — VCR in record mode, forwarding to the live Kotlin SUT
//   * playback.js — VCR replaying the committed tape, no SUT
//
// The suite is served *same-origin* from the VCR's own static-content mount
// (`/suite`), so the browser's API calls to the VCR root are same-origin — no
// CORS, no preflight OPTIONS cluttering the tape. /favicon.ico is marked
// untaped.
//
// Fixed port: the recorded responses embed absolute todo URLs
// (`http://127.0.0.1:<PORT>/<uuid>`) that the spec follows, and the VCR replays
// response bodies verbatim — so playback MUST bind the same port the tape was
// recorded against. Hence a fixed VCR_PORT for both phases rather than port 0.

const path = require('path')
const { Builder } = require('selenium-webdriver')
const chrome = require('selenium-webdriver/chrome')

const HERE = __dirname
const BASE = path.dirname(HERE) // integration/todobackend — suite/ and tapes/ are shared here
const SUITE_DIR = path.join(BASE, 'suite')
const TAPE = path.join(BASE, 'tapes', 'todobackend_crud.md')

// The compiled JS binding (../../../javascript/dist relative to this file).
const VCR_DIST = path.resolve(BASE, '..', '..', 'javascript', 'dist', 'index.js')

// Both phases bind here (see module docstring on why it can't be dynamic).
const VCR_PORT = 51080

/**
 * Drive runner.html?<apiRoot> in headless Chrome until Mocha finishes.
 * Returns { passes, failures, failMsgs }. apiRoot defaults to the VCR root
 * (same origin as the served suite).
 */
async function runSuite(vcrBaseUrl, apiRoot, timeoutMs = 120000) {
  if (apiRoot == null) apiRoot = vcrBaseUrl
  const url = `${vcrBaseUrl}/suite/runner.html?${apiRoot}`

  const opts = new chrome.Options()
  for (const a of ['--headless=new', '--no-sandbox', '--disable-dev-shm-usage', '--disable-gpu']) {
    opts.addArguments(a)
  }
  const driver = await new Builder().forBrowser('chrome').setChromeOptions(opts).build()
  try {
    await driver.get(url)
    await driver.wait(
      () => driver.executeScript('return window.__mochaDone === true'),
      timeoutMs,
    )
    const passes = await driver.executeScript('return window.__mochaPasses')
    const failures = await driver.executeScript('return window.__mochaFailures')
    const failMsgs = (await driver.executeScript('return window.__mochaFailMsgs')) || []
    return { passes, failures, failMsgs }
  } finally {
    await driver.quit()
  }
}

module.exports = { SUITE_DIR, TAPE, VCR_DIST, VCR_PORT, runSuite }
