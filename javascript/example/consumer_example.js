// Third-party consumer example for the *installed* @servirtium/vcr npm package.
//
// Not a test inside the source tree: this is what a downstream user gets after
// `npm install @servirtium/vcr`. It requires the package from node_modules
// (asserting it is NOT the in-repo javascript/src|dist), finds the native
// engine .so that shipped *inside* the npm tarball, and replays the canonical
// Servirtium tape — proving the packaged tarball is self-contained with no
// SERVIRTIUM_VCR_LIB and no access to this repo.
//
// Two modes, each in its own fresh process:
//   node consumer_example.js explicit    // first-class .nativeLib(path)
//   node consumer_example.js discovery    // zero-config: package finds its .so
//
// Exit 0 = pass.

'use strict'

const path = require('path')
const fs = require('fs')
const http = require('http')

const { Vcr, VcrOutcome } = require('@servirtium/vcr')

const TAPE = path.join(__dirname, 'tapes', 'single_get.md')

function fail(msg) {
  console.error('FAIL: ' + msg)
  process.exit(1)
}

// The whole point: we must be running the INSTALLED package, not the repo.
function packageRoot() {
  const entry = require.resolve('@servirtium/vcr') // .../node_modules/@servirtium/vcr/dist/index.js
  if (!entry.includes('node_modules')) {
    fail('@servirtium/vcr resolved to the source tree, not an installed package: ' + entry)
  }
  const root = path.resolve(path.dirname(entry), '..') // package root
  console.log('ok: consuming installed package at ' + root)
  return root
}

function bundledSo(root) {
  const so = path.join(root, 'native', 'libservirtium_vcr.so')
  if (!fs.existsSync(so)) {
    fail('bundled engine .so missing from the installed package: ' + so)
  }
  return so
}

function httpGet(url) {
  return new Promise((resolve, reject) => {
    http
      .get(url, (res) => {
        let body = ''
        res.on('data', (c) => (body += c))
        res.on('end', () => resolve(body))
      })
      .on('error', reject)
  })
}

async function play(builder) {
  const vcr = builder.port(0).start()
  try {
    const body = await httpGet(vcr.baseUrl + '/ok')
    if (body !== 'ok-body') fail(`expected body 'ok-body', got ${JSON.stringify(body)}`)
    if (vcr.lastKind !== VcrOutcome.Ok) fail(`expected Outcome.Ok, got ${vcr.lastKind}: ${vcr.lastError}`)
  } finally {
    vcr.close()
  }
}

async function main() {
  const mode = process.argv[2] || 'explicit'
  delete process.env.SERVIRTIUM_VCR_LIB // a real consumer sets nothing

  const root = packageRoot()

  if (mode === 'explicit') {
    const so = bundledSo(root)
    await play(Vcr.playback(TAPE).nativeLib(so))
    console.log('ok: explicit .nativeLib() playback (bundled .so ' + so + ')')
  } else if (mode === 'discovery') {
    await play(Vcr.playback(TAPE))
    console.log('ok: discovery playback (zero-config bundled .so)')
  } else {
    fail(`unknown mode ${JSON.stringify(mode)}; expected 'explicit' or 'discovery'`)
  }

  console.log(`PASS[${mode}]: consumer replayed the canonical tape from the installed package`)
}

main().catch((e) => fail(String(e && e.stack ? e.stack : e)))
