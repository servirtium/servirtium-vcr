import * as fs from 'fs'
import * as os from 'os'
import * as path from 'path'
import { Vcr, VcrField, VcrOutcome } from './index'

const tape = (name: string) => path.join(__dirname, '..', 'tapes', name)

describe('playback matching', () => {
  it('unredaction lets a scrubbed tape match the real request', async () => {
    // Tape expects "Authorization: Bearer REDACTED"; the live client sends the
    // real token. unredact rewrites the expectation so it matches.
    const vcr = Vcr.playback(tape('secure_get.md'))
      .strictHeaders()
      .unredact(VcrField.RequestHeaders, 'Bearer REDACTED', 'Bearer real-token')
      // undici/fetch attaches default headers (Accept, Accept-Encoding, ...)
      // that a scrubbed tape doesn't expect; under strict matching they'd trip.
      // Drop them from the comparison.
      .removeHeader(VcrField.RequestHeaders, 'Accept')
      .removeHeader(VcrField.RequestHeaders, 'Accept-Encoding')
      .removeHeader(VcrField.RequestHeaders, 'Accept-Language')
      .removeHeader(VcrField.RequestHeaders, 'Connection')
      .removeHeader(VcrField.RequestHeaders, 'Host')
      .removeHeader(VcrField.RequestHeaders, 'User-Agent')
      .removeHeader(VcrField.RequestHeaders, 'sec-fetch-mode')
      .port(0)
      .start()
    try {
      const res = await fetch(`${vcr.baseUrl}/secure`, {
        headers: { Authorization: 'Bearer real-token' },
      })
      expect(res.status).toBe(200)
      expect(await res.text()).toBe('secret-ok')
      expect(vcr.lastKind).toBe(VcrOutcome.Ok)
    } finally {
      vcr.close()
    }
  })

  it('strict matching flags a missing request header', async () => {
    const vcr = Vcr.playback(tape('secure_get.md'))
      .strictHeaders()
      .unredact(VcrField.RequestHeaders, 'Bearer REDACTED', 'Bearer real-token')
      .removeHeader(VcrField.RequestHeaders, 'Accept')
      .removeHeader(VcrField.RequestHeaders, 'Accept-Encoding')
      .removeHeader(VcrField.RequestHeaders, 'Accept-Language')
      .removeHeader(VcrField.RequestHeaders, 'Connection')
      .removeHeader(VcrField.RequestHeaders, 'Host')
      .removeHeader(VcrField.RequestHeaders, 'User-Agent')
      .removeHeader(VcrField.RequestHeaders, 'sec-fetch-mode')
      .port(0)
      .start()
    try {
      // No Authorization header at all => mismatch.
      await fetch(`${vcr.baseUrl}/secure`).catch(() => undefined)
      expect(vcr.lastKind).not.toBe(VcrOutcome.Ok)
      expect(vcr.lastError).not.toBe('')
    } finally {
      vcr.close()
    }
  })

  it('static content is served from disk, not the tape', async () => {
    const dir = fs.mkdtempSync(path.join(os.tmpdir(), 'vcr_static_'))
    fs.writeFileSync(path.join(dir, 'asset.txt'), 'static-asset')
    const vcr = Vcr.playback(tape('single_get.md')).staticContent('/files', dir).port(0).start()
    try {
      const fromDisk = await fetch(`${vcr.baseUrl}/files/asset.txt`)
      expect(await fromDisk.text()).toBe('static-asset')

      const fromTape = await fetch(`${vcr.baseUrl}/ok`)
      expect(await fromTape.text()).toBe('ok-body')
    } finally {
      vcr.close()
      fs.rmSync(dir, { recursive: true, force: true })
    }
  })

  it('untaped path 404s without consuming the tape cursor', async () => {
    const vcr = Vcr.playback(tape('single_get.md')).untaped('/favicon.ico').port(0).start()
    try {
      // The incidental path is answered 404 and never touches the tape.
      const favicon = await fetch(`${vcr.baseUrl}/favicon.ico`)
      expect(favicon.status).toBe(404)

      // The recorded interaction still replays — the cursor wasn't consumed.
      const fromTape = await fetch(`${vcr.baseUrl}/ok`)
      expect(await fromTape.text()).toBe('ok-body')
      expect(vcr.lastKind).toBe(VcrOutcome.Ok)
    } finally {
      vcr.close()
    }
  })
})
