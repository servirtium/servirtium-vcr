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
