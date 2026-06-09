#!/usr/bin/env node
// PLAYBACK phase (the offline CI artifact). A Servirtium VCR serves the built
// Vue page (static mount at /app) AND replays the committed tape for the
// form's POST — no backend, no network. Selenium drives the real browser.
//
//   SERVIRTIUM_VCR_LIB=../../core/native/libservirtium_vcr.so node playback.cjs
const { DIST, TAPE, VCR_DIST, MESSAGE, driveForm } = require('./selenium.cjs')
const { Vcr } = require(VCR_DIST)

async function main() {
  const vcr = Vcr.playback(TAPE)
    .staticContent('/app', DIST)
    .untaped('/favicon.ico') // 404 it without consuming the playback cursor
    .port(0)
    .start()
  try {
    const text = await driveForm(vcr.baseUrl)
    console.log('browser saw:', JSON.stringify(text), `(vcr lastKind=${vcr.lastKind})`)
    const ok = text.includes('Created #1') && text.includes(MESSAGE)
    console.log(ok ? 'VUE_SERVIRTIUM_PLAYBACK_OK' : 'VUE_SERVIRTIUM_PLAYBACK_FAIL')
    return ok ? 0 : 1
  } finally {
    vcr.close()
  }
}

main()
  .then((code) => process.exit(code))
  .catch((err) => { console.error(err); process.exit(1) })
