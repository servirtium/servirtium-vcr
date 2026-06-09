#!/usr/bin/env node
// Good/Cheap/Fast — PLAYBACK phase (the offline CI artifact). For each
// scenario, a playback VCR replays the committed tape while Selenium drives the
// real checkboxes — including block-third, where the third toggle is refused
// from the tape ("Impossible") and the control must leave it unchecked.
//   SERVIRTIUM_VCR_LIB=../../core/native/libservirtium_vcr.so node triple-playback.cjs
const { DIST, VCR_DIST, TRIPLE_SCENARIOS, driveTriple } = require('./selenium.cjs')
const { Vcr } = require(VCR_DIST)

async function playScenario(s) {
  const vcr = Vcr.playback(s.tape)
    .staticContent('/app', DIST)
    .untaped('/favicon.ico')
    .port(0)
    .start()
  try {
    const got = await driveTriple(vcr.baseUrl, s.steps)
    const ok = got.good === s.expect.good && got.cheap === s.expect.cheap &&
               got.fast === s.expect.fast && got.status.includes(s.expect.status)
    console.log(`  ${s.name}: ${JSON.stringify(got)} (lastKind=${vcr.lastKind}) ${ok ? 'OK' : 'MISMATCH'}`)
    return ok
  } finally {
    vcr.close()
  }
}

async function main() {
  let allOk = true
  for (const s of TRIPLE_SCENARIOS) allOk = (await playScenario(s)) && allOk
  console.log(allOk ? 'VUE_TRIPLE_PLAYBACK_OK' : 'VUE_TRIPLE_PLAYBACK_FAIL')
  return allOk ? 0 : 1
}

main().then((c) => process.exit(c)).catch((e) => { console.error(e); process.exit(1) })
