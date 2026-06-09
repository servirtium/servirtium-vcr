#!/usr/bin/env node
// Good/Cheap/Fast — RECORD phase (on-demand). For each scenario, a fresh
// "pick two" stub backend + a record-mode VCR; Selenium drives the toggles and
// the conversation is flushed to that scenario's tape. The block-third tape
// captures the backend's 409 "Impossible" — the centre of the Venn.
//   SERVIRTIUM_VCR_LIB=../../core/native/libservirtium_vcr.so node triple-record.cjs
const { DIST, VCR_DIST, TRIPLE_SCENARIOS, driveTriple } = require('./selenium.cjs')
const { Vcr, VcrField } = require(VCR_DIST)
const upstream = require('./upstream.cjs')

const VOLATILE_REQ_HEADERS = [
  'Accept', 'Accept-Language', 'Accept-Encoding', 'Connection', 'Content-Length',
  'Content-Type', 'Origin', 'Referer', 'User-Agent',
  'sec-ch-ua', 'sec-ch-ua-mobile', 'sec-ch-ua-platform',
  'Sec-Fetch-Dest', 'Sec-Fetch-Mode', 'Sec-Fetch-Site',
]

async function recordScenario(s) {
  const stub = await upstream.startSelection(0)
  const stubUrl = `http://127.0.0.1:${stub.address().port}`
  let builder = Vcr.record(s.tape, stubUrl)
    .staticContent('/app', DIST)
    .untaped('/favicon.ico')
    .redactWholeTape('Date: .+ GMT', 'Date: <DATE>')
  for (const h of VOLATILE_REQ_HEADERS) builder = builder.removeHeader(VcrField.RequestHeaders, h)
  const vcr = builder.port(0).start()
  try {
    const got = await driveTriple(vcr.baseUrl, s.steps)
    const ok = got.good === s.expect.good && got.cheap === s.expect.cheap &&
               got.fast === s.expect.fast && got.status.includes(s.expect.status)
    console.log(`  ${s.name}: ${JSON.stringify(got)} ${ok ? 'OK' : 'MISMATCH'}`)
    if (!ok) return false
  } finally {
    vcr.close() // flush the tape
    stub.close()
  }
  return true
}

async function main() {
  let allOk = true
  for (const s of TRIPLE_SCENARIOS) allOk = (await recordScenario(s)) && allOk
  console.log(allOk ? 'record: wrote triple tapes' : 'record: a scenario misbehaved; tapes NOT trustworthy')
  return allOk ? 0 : 1
}

main().then((c) => process.exit(c)).catch((e) => { console.error(e); process.exit(1) })
