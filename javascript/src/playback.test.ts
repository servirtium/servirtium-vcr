import * as path from 'path'
import { Vcr, VcrField, VcrOutcome, VolatileMarkers } from './index'
import * as N from './native'

const tape = (name: string) => path.join(__dirname, '..', 'tapes', name)

describe('playback', () => {
  it('reports a missing tape through the open error', () => {
    expect(() => Vcr.playback(tape('no_such_tape.md')).port(0).start()).toThrow(/no_such_tape\.md/)
  })

  it('opens, starts and closes 50 times; double close is harmless', () => {
    for (let i = 0; i < 50; i++) {
      const vcr = Vcr.playback(tape('single_get.md')).port(0).start()
      expect(vcr.tapeLength).toBe(1)
      vcr.close()
      vcr.close()
    }
  })

  it('replays a recorded GET on a dynamic port', async () => {
    const vcr = Vcr.playback(tape('single_get.md'))
      .label('replays a recorded GET')
      .port(0)
      .start()
    try {
      expect(vcr.port).toBeGreaterThan(0)
      expect(vcr.tapeLength).toBe(1)

      const res = await fetch(`${vcr.baseUrl}/ok`)
      expect(res.status).toBe(200)
      expect(await res.text()).toBe('ok-body')
      expect(vcr.lastKind).toBe(VcrOutcome.Ok)
      expect(vcr.lastError).toBe('')
    } finally {
      vcr.close()
    }
  })

  it('flags a path mismatch via diagnostics', async () => {
    const vcr = Vcr.playback(tape('single_get.md')).port(0).start()
    try {
      await fetch(`${vcr.baseUrl}/nope`).catch(() => undefined)
      expect(vcr.lastKind).not.toBe(VcrOutcome.Ok)
      expect(vcr.lastError).not.toBe('')
    } finally {
      vcr.close()
    }
  })
})


it('retains replay diffs and distinguishes observers from consuming reads', () => {
  const path = require('path')
  const { execFileSync } = require('child_process')
  const root = path.resolve(__dirname, '../..')
  const server = Vcr.playback(path.join(root, 'core_tests/diagnostics/playback.md')).start()
  try {
    server.testContext('JavaScript scenario', 'scenario.test', 123)
    execFileSync(path.join(root, 'target/test-tools/diagnostic_fixture'), [server.baseUrl])
    expect(server.readLastError(false)).toContain('owner')
    expect(server.readLastError(false)).toContain('scenario.test:123')
    expect(JSON.parse(server.diagnosticsJson()).map((e: any) => e.retrieved)).toEqual([0, 0])
    expect(server.lastError).toContain('owner')
    expect(JSON.parse(server.diagnosticsJson()).map((e: any) => e.retrieved)).toEqual([0, 1])
    expect(() => server.assertNoMismatches()).toThrow('admin')
    server.testContext('next test', 'next.test', 5)
    server.assertNoMismatches()
    expect(server.diagnosticsJson()).toBe('[]')
  } finally { server.close() }
})

it('substitutes a custom placeholder and tracks full replay', async () => {
  const vcr = Vcr.playback(tape('base_url.md'))
    .substitute(VcrField.ResponseBody, '@@HOST@@', 'http://sub.example')
    .port(0)
    .start()
  try {
    expect(() => vcr.assertAllConsumed()).toThrow()
    const res = await fetch(`${vcr.baseUrl}/where`)
    expect((await res.text()).trimEnd()).toBe('at http://sub.example/x')
    vcr.assertAllConsumed()
    vcr.assertAllRedactionsUsed()
    expect(vcr.lastTlsProtocol).toBe('')
  } finally {
    vcr.close()
  }
})

describe('playback range', () => {
  // fetch adds Accept/User-Agent/etc.; the tape records only Cookie.
  const rangePlayback = (from: number) => {
    let b = Vcr.playback(tape('playback_range.md')).redactCredentials().playbackRange(from)
    for (const h of ['Accept', 'Accept-Language', 'Sec-Fetch-Mode', 'User-Agent', 'Accept-Encoding', 'Connection']) {
      b = b.removeHeader(VcrField.RequestHeaders, h)
    }
    return b.port(0)
  }
  const get = (base: string, p: string) => fetch(`${base}${p}`, { headers: { Cookie: 'sid=live' } })

  it('skips early interactions and serves a later one', async () => {
    const vcr = rangePlayback(7).start()
    try {
      expect(vcr.tapeLength).toBe(8)
      const res = await get(vcr.baseUrl, '/logout')
      expect(res.status).toBe(200)
      expect(vcr.lastIndex).toBe(7)
      expect(vcr.lastKind).toBe(VcrOutcome.Ok)
    } finally {
      vcr.close()
    }
    const vcr2 = rangePlayback(7).start()
    try {
      await (await get(vcr2.baseUrl, '/login')).text() // interaction 0 is outside the range
      expect(vcr2.lastKind).not.toBe(VcrOutcome.Ok)
      expect(vcr2.lastError).toContain('outside the playback range')
    } finally {
      vcr2.close()
    }
  })

  it('throws at start for a bad range', () => {
    expect(() => Vcr.playback(tape('playback_range.md')).playbackRange(99).port(0).start()).toThrow(/playbackRange/)
  })

  it('is refused on a record handle', () => {
    const rec = Vcr.record(path.join(require('os').tmpdir(), 'range_refusal.md'), 'http://127.0.0.1:1').port(0).start()
    try {
      const handle = (rec as any).requireHandle()
      expect(N.takeString(N.setPlaybackRange(handle, 0, -1))).not.toBe('')
      expect(N.getPlaybackRangeFrom(handle)).toBe(-1)
    } finally {
      rec.discard()
    }
  })
})

describe('volatile values (docs/volatile-values.md)', () => {
  const path = require('path')
  const { spawnSync } = require('child_process')
  const root = path.resolve(__dirname, '../..')
  const volatile = (name: string) => path.join(root, 'core_tests/volatile', name)
  const fixture = (scenario: string, server: { baseUrl: string }) =>
    spawnSync(path.join(root, 'target/test-tools/volatile_fixture'), [scenario, server.baseUrl], { encoding: 'utf8' })
  const wcfRules = (b: any) =>
    b
      .volatileRule('request body', '<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>')
      .volatileRule('request body', '<a:To s:mustUnderstand="1">{{endpoint}}/Services/')
      .volatileRule('request body', '&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;')
      .volatileRule('response body', '<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>')

  it("lets a tape's own rules carry a WCF conversation and reports the binding", () => {
    const server = Vcr.playback(volatile('wcf.md')).prettyXml(2).start()
    try {
      expect(fixture('wcf', server).status).toBe(0)
      expect(server.volatileReport()).toContain('binding: {{messageId-1}} = ')
    } finally { server.close() }
  })

  it('applies a profile file to a tape with no rules', () => {
    const server = Vcr.playback(volatile('wcf_plain.md')).prettyXml(2).volatileProfile(volatile('profile.md')).start()
    try {
      expect(fixture('wcf', server).status).toBe(0)
    } finally { server.close() }
  })

  it('takes the rules in code', () => {
    const server = wcfRules(Vcr.playback(volatile('wcf_plain.md')).prettyXml(2)).start()
    try {
      expect(fixture('wcf', server).status).toBe(0)
    } finally { server.close() }
  })

  it('reads a ${name} tape with DollarCurly markers and refuses it with the default', () => {
    const server = Vcr.playback(volatile('wcf_dollar.md')).prettyXml(2).volatileMarkers(VolatileMarkers.DollarCurly).start()
    try {
      expect(fixture('wcf', server).status).toBe(0)
    } finally { server.close() }
    expect(() => Vcr.playback(volatile('wcf_dollar.md')).prettyXml(2).start()).toThrow('DollarCurly')
  })

  it('names the binding in a mismatch', () => {
    const server = Vcr.playback(volatile('cases.md')).start()
    try {
      expect(fixture('cases', server).status).toBe(0)
      server.resetCursor()
      expect(fixture('cases-mismatch', server).status).toBe(0)
      expect(server.readLastError(false)).toContain('{{caseId-1}} = 42')
      server.readLastError(true)
    } finally { server.close() }
  })

  it('needs a bind for a token nothing binds', () => {
    expect(() => Vcr.playback(volatile('cases_recorded.md')).start()).toThrow('caseId')
    const server = Vcr.playback(volatile('cases_recorded.md')).bind('caseId', '42').start()
    try {
      expect(fixture('cases', server).status).toBe(0)
    } finally { server.close() }
  })

  it('fails start on a rule without a placeholder', () => {
    expect(() => Vcr.playback(volatile('cases.md')).volatileRule('request body', 'no placeholder').start())
      .toThrow('needs at least one placeholder')
  })

  it('fails start on a rule that conflicts with the tape', () => {
    let message = ''
    try {
      Vcr.playback(volatile('cases.md')).volatileRule('response body', '"caseId":"{{id}}"').start().close()
    } catch (e: any) { message = e.message }
    expect(message).toContain('conflicts with')
    expect(message).toContain('(tape)')
  })

  it('fails start on a regex rule written with a template placeholder', () => {
    expect(() => Vcr.playback(volatile('cases.md')).volatileRule('x', 'a {{b}}', 'regex').start()).toThrow()
  })
})
