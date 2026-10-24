import * as path from 'path'
import { Vcr, VcrOutcome } from './index'

const tape = (name: string) => path.join(__dirname, '..', 'tapes', name)

describe('playback', () => {
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
    execFileSync('python3', [path.join(root, 'core_tests/diagnostic_fixture.py'), server.baseUrl])
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
