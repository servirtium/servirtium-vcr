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
