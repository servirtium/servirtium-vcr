import * as fs from 'fs'
import * as os from 'os'
import * as path from 'path'
import { Vcr, VcrError, VcrOutcome, convertBru } from './index'

// A tiny Bruno collection of our own, written to a temp dir (a space in a
// name, two examples), converted through libservirtium_vcr, then replayed.
function writeCollection(root: string): void {
  fs.mkdirSync(path.join(root, 'Widget Things'), { recursive: true })
  fs.writeFileSync(path.join(root, 'bruno.json'), '{"version":"1","name":"Shop","type":"collection"}\n')
  fs.writeFileSync(
    path.join(root, 'Widget Things', 'Get Item.bru'),
    [
      'meta {', '  name: Get Item', '  type: http', '  seq: 1', '}', '',
      'get {', '  url: http://shop.test/items/7', '  body: none', '  auth: none', '}', '',
      'example {', '  name: Found', '  request: {', '    url: http://shop.test/items/7', '    method: GET', '    mode: none', '  }',
      '  response: {', '    status: {', '      code: 200', '      text: OK', '    }',
      '    body: {', '      type: json', "      content: '''", '        {"id": 7}', "      '''", '    }', '  }', '}', '',
    ].join('\n'),
  )
}

describe('convertBru', () => {
  it('converts a collection to space-free tapes that replay', async () => {
    const base = fs.mkdtempSync(path.join(os.tmpdir(), 'svcr-bru-'))
    const root = path.join(base, 'Shop API')
    const out = path.join(base, 'out')
    writeCollection(root)
    convertBru(root, out)
    const tape = path.join(out, 'widget-things', 'get-item.md')
    expect(fs.existsSync(tape)).toBe(true)
    expect(fs.readFileSync(path.join(out, 'CONVERSION.md'), 'utf8')).toContain('widget-things/get-item.md')
    const vcr = Vcr.playback(tape).port(0).start()
    try {
      const res = await fetch(`${vcr.baseUrl}/items/7`)
      expect(res.status).toBe(200)
      expect(await res.text()).toContain('"id": 7')
      expect(vcr.lastKind).toBe(VcrOutcome.Ok)
    } finally {
      vcr.close()
      fs.rmSync(base, { recursive: true, force: true })
    }
  })

  it('throws VcrError for a missing collection', () => {
    expect(() => convertBru('/no/such/collection', path.join(os.tmpdir(), 'svcr-bru-none'))).toThrow(VcrError)
  })
})
