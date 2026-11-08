import * as fs from 'fs'
import * as os from 'os'
import * as path from 'path'
import { Vcr, VcrField, VcrOutcome } from './index'
import { startFakeUpstream, startChunkedUpstream, FakeUpstream } from './test-support'

function tmpTape(): string {
  return path.join(os.tmpdir(), `vcr_rec_${Math.random().toString(36).slice(2)}.md`)
}

describe('record', () => {
  let upstream: FakeUpstream
  let tapePath: string

  afterEach(async () => {
    if (upstream) await upstream.close()
    if (tapePath && fs.existsSync(tapePath)) fs.rmSync(tapePath, { force: true })
  })

  it('records with a license notice, pretty JSON and the header presets', () => {
    tapePath = tmpTape()
    const rec = Vcr.record(tapePath, 'http://127.0.0.1:1')
      .addLicenseNotice('test notice').prettyJson(2).removeTransportHeaders()
      .removeCloudHeaders('aws').redactCredentials().redactCredentialHeader('X-Vault-Token').port(0).start()
    rec.close()
    expect(() => Vcr.record(tapePath, 'http://127.0.0.1:1').removeCloudHeaders('nosuchvendor').port(0).start()).toThrow()
  })

  it('writes sorted, pretty JSON with sortJsonKeys and prettyJson', async () => {
    upstream = await startFakeUpstream('{"b":1,"a":{"d":2,"c":3}}', 'application/json')
    tapePath = tmpTape()
    const rec = Vcr.record(tapePath, upstream.baseUrl).prettyJson(2).sortJsonKeys().port(0).start()
    try {
      await (await fetch(`${rec.baseUrl}/doc`)).text()
    } finally {
      rec.close()
    }
    expect(fs.readFileSync(tapePath, 'utf8')).toContain('{\n  "a": {\n    "c": 3,\n    "d": 2\n  },\n  "b": 1\n}')
  })

  it('refuses sortJsonKeys without prettyJson when the tape is written', async () => {
    upstream = await startFakeUpstream('{"b":1,"a":2}', 'application/json')
    tapePath = tmpTape()
    const rec = Vcr.record(tapePath, upstream.baseUrl).sortJsonKeys().port(0).start()
    await (await fetch(`${rec.baseUrl}/doc`)).text()
    expect(() => rec.close()).toThrow(/sort_json_keys needs pretty_json/)
    expect(fs.existsSync(tapePath)).toBe(false)
  })

  it('applies array and header sort rules and throws when the core refuses one', async () => {
    upstream = await startFakeUpstream('[{"n":"z"},{"n":"a"}]', 'application/json')
    tapePath = tmpTape()
    const rec = Vcr.record(tapePath, upstream.baseUrl).prettyJson(2)
      .sortJsonArray('', 'n').sortJsonArrayAt('/doc', '', 'n')
      .sortResponseHeaders().sortHeaderValue('Allow').port(0).start()
    try {
      await (await fetch(`${rec.baseUrl}/doc`)).text()
    } finally {
      rec.close()
    }
    const tape = fs.readFileSync(tapePath, 'utf8')
    expect(tape.indexOf('"n": "a"')).toBeLessThan(tape.indexOf('"n": "z"'))
    expect(() => Vcr.record(tapePath, upstream.baseUrl).sortHeaderValue('').port(0).start()).toThrow(/sortHeaderValue/)
  })

  it('records then replays the same interaction (chunked upstream de-chunked)', async () => {
    upstream = await startChunkedUpstream('hello-from-upstream')
    tapePath = tmpTape()

    // ---- record ----
    const rec = Vcr.record(tapePath, upstream.baseUrl).port(0).start()
    try {
      const res = await fetch(`${rec.baseUrl}/greeting`)
      expect(await res.text()).toBe('hello-from-upstream')
    } finally {
      rec.close() // flushes the tape
    }
    expect(fs.existsSync(tapePath)).toBe(true)
    // The recorder must store the DECODED payload, not chunk framing.
    expect(fs.readFileSync(tapePath, 'utf8')).toContain('hello-from-upstream')

    // ---- replay (offline) ----
    const play = Vcr.playback(tapePath).port(0).start()
    try {
      const replayed = await fetch(`${play.baseUrl}/greeting`)
      expect(await replayed.text()).toBe('hello-from-upstream')
      expect(play.lastKind).toBe(VcrOutcome.Ok)
    } finally {
      play.close()
    }
  })

  it('redacts a value out of the recorded tape', async () => {
    upstream = await startFakeUpstream('token=super-secret-value here')
    tapePath = tmpTape()

    const rec = Vcr.record(tapePath, upstream.baseUrl)
      .redact(VcrField.ResponseBody, 'super-secret-value', 'REDACTED')
      .port(0)
      .start()
    try {
      const res = await fetch(`${rec.baseUrl}/data`)
      // The live SUT still sees the real bytes.
      expect(await res.text()).toBe('token=super-secret-value here')
    } finally {
      rec.close()
    }

    const onDisk = fs.readFileSync(tapePath, 'utf8')
    expect(onDisk).toContain('token=REDACTED here')
    expect(onDisk).not.toContain('super-secret-value')
  })

  it('attaches a builder note to the first recorded interaction', async () => {
    upstream = await startFakeUpstream('noted-body')
    tapePath = tmpTape()

    const rec = Vcr.record(tapePath, upstream.baseUrl)
      .note('Login', 'Establishes the session the next calls reuse')
      .port(0)
      .start()
    try {
      await fetch(`${rec.baseUrl}/login`)
    } finally {
      rec.close()
    }

    const onDisk = fs.readFileSync(tapePath, 'utf8')
    expect(onDisk).toContain('Login')
    expect(onDisk).toContain('Establishes the session the next calls reuse')
  })
})


it('redacts structured credentials on tape while forwarding original values', () => {
  const { execFileSync } = require('child_process')
  const directory = fs.mkdtempSync(path.join(os.tmpdir(), 'vcr-helpers-'))
  const fixture = path.resolve(__dirname, '../../target/test-tools/redaction_fixture')
  const run = (...args: string[]) => execFileSync(fixture, args, { encoding: 'utf8' }).trim()
  try {
    const upstream = run('start', directory)
    const rec = Vcr.record(path.join(directory, 'tape.md'), upstream)
      .redactHeader('Authorization').redactQueryParam('password').redactJsonField('secretKey').start()
    try {
      run('drive', directory, rec.baseUrl)
      expect(rec.lastKind).toBe(VcrOutcome.Ok)
    } finally { rec.close() }
    run('check', directory)
  } finally { fs.rmSync(directory, { recursive: true, force: true }) }
})
