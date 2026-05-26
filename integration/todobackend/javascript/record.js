#!/usr/bin/env node
// TodoBackend browser integration test — RECORD phase (manual, on-demand).
//
// VCR in record mode, forwarding to the live Kotlin/http4k SUT
// (TODOBACKEND_UPSTREAM). The Mocha spec runs in headless Chrome (JS
// selenium-webdriver) against the VCR; every CRUD call is forwarded upstream
// and recorded, then flushed to the tape on close. The suite must pass for the
// recording to be considered good.
//
// Driven by .javascript_record.ae, which brings the SUT up in a container
// (started with its baseUrl set to the VCR origin, so the todo URLs it returns
// point back at the VCR) and tears it down afterward. Not a normal build node —
// recording is on-demand and needs the container + sibling source.

const { SUITE_DIR, TAPE, VCR_DIST, VCR_PORT, runSuite } = require('./browser')
const { Vcr } = require(VCR_DIST)

async function main() {
  const upstream = process.env.TODOBACKEND_UPSTREAM
  if (!upstream) {
    console.log('record.js: set TODOBACKEND_UPSTREAM (e.g. http://127.0.0.1:54321)')
    return 2
  }

  const vcr = Vcr.record(TAPE, upstream)
    .staticContent('/suite', SUITE_DIR)
    .untaped('/favicon.ico')
    .port(VCR_PORT)
    .start()
  try {
    const { passes, failures, failMsgs } = await runSuite(vcr.baseUrl)
    console.log(`mocha (record): ${passes} passed, ${failures} failed`)
    for (const m of failMsgs) console.log('  FAIL:', m)
    if (failures || passes === 0) {
      console.log('record: suite did not pass against the live SUT; tape NOT trustworthy')
      return 1
    }
  } finally {
    vcr.close() // flushes the tape to TAPE
  }

  console.log(`record: wrote ${TAPE}`)
  return 0
}

main()
  .then((code) => process.exit(code))
  .catch((err) => {
    console.error(err)
    process.exit(1)
  })
