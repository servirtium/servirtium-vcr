#!/usr/bin/env node
// RECORD phase (on-demand). A Servirtium VCR serves the built Vue page (static
// mount at /app) and RECORDS the form's POST by forwarding it to a throwaway
// stub backend, then writes the markdown tape on commit. Selenium drives the
// real browser. Re-run to regenerate tapes/post.md.
//
//   SERVIRTIUM_VCR_LIB=../../core/native/libservirtium_vcr.so node record.cjs
const { DIST, TAPE, VCR_DIST, MESSAGE, driveForm } = require('./selenium.cjs')
const { Vcr, VcrField } = require(VCR_DIST)
const upstream = require('./upstream.cjs')

// Browser-volatile request headers — strip them from the recording so the tape
// imposes no header constraints on playback (otherwise a sec-ch-ua / UA version
// bump would break replay). Servirtium matches recorded request headers, so an
// empty request-headers block means "match on method + path only".
const VOLATILE_REQ_HEADERS = [
  'Accept', 'Accept-Language', 'Accept-Encoding', 'Connection', 'Content-Length',
  'Content-Type', 'Origin', 'Referer', 'User-Agent',
  'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform',
  'Sec-Fetch-Dest', 'Sec-Fetch-Mode', 'Sec-Fetch-Site',
]

async function main() {
  const stub = await upstream.start(0)
  const stubUrl = `http://127.0.0.1:${stub.address().port}`

  let builder = Vcr.record(TAPE, stubUrl)
    .staticContent('/app', DIST)
    .untaped('/favicon.ico') // don't record the browser's incidental favicon fetch
    .redactWholeTape('Date: .+ GMT', 'Date: <DATE>')
  for (const h of VOLATILE_REQ_HEADERS) {
    builder = builder.removeHeader(VcrField.RequestHeaders, h)
  }
  const vcr = builder.port(0).start()
  try {
    const text = await driveForm(vcr.baseUrl)
    console.log('browser saw (record):', JSON.stringify(text))
    const ok = text.includes('Created #1') && text.includes(MESSAGE)
    if (!ok) {
      console.log('record: form did not show the expected result; no tape written')
      return 1
    }
    vcr.commit() // writes the tape to TAPE
  } finally {
    vcr.discard() // no-op after commit; drops the recording on any other exit
    stub.close()
  }
  console.log(`record: wrote ${TAPE}`)
  return 0
}

main()
  .then((code) => process.exit(code))
  .catch((err) => { console.error(err); process.exit(1) })
