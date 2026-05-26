#!/usr/bin/env node
// TodoBackend browser integration test — PLAYBACK phase (the CI artifact).
//
// Replays the committed CRUD tape through a Servirtium VCR and runs the real
// TodoBackend Mocha spec against it in headless Chrome (JS selenium-webdriver).
// No SUT, no network — the whole CRUD conversation comes off the tape. This is
// the offline test wired into aeb (.javascript_playback.ae).
//
// Run via the leaf, or directly:
//   SERVIRTIUM_VCR_LIB=../../../core/native/libservirtium_vcr.so \
//   NODE_PATH=../../../javascript/node_modules node playback.js

const { SUITE_DIR, TAPE, VCR_DIST, VCR_PORT, runSuite } = require('./browser')
const { Vcr } = require(VCR_DIST)

async function main() {
  const vcr = Vcr.playback(TAPE)
    .staticContent('/suite', SUITE_DIR)
    .untaped('/favicon.ico')
    .port(VCR_PORT)
    .start()
  try {
    const { passes, failures, failMsgs } = await runSuite(vcr.baseUrl)
    console.log(`mocha (playback): ${passes} passed, ${failures} failed`)
    for (const m of failMsgs) console.log('  FAIL:', m)
    const ok = failures === 0 && passes > 0
    console.log(ok ? 'TODOBACKEND_PLAYBACK_OK' : 'TODOBACKEND_PLAYBACK_FAIL')
    return ok ? 0 : 1
  } finally {
    vcr.close()
  }
}

main()
  .then((code) => process.exit(code))
  .catch((err) => {
    console.error(err)
    process.exit(1)
  })
