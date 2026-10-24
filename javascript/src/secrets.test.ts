import * as fs from 'fs'
import * as os from 'os'
import * as path from 'path'
import { execFileSync } from 'child_process'
import { Vcr } from './index'
test('named secrets redact at flush and resolve four services', () => {
  const directory = fs.mkdtempSync(path.join(os.tmpdir(), 'vcr-secrets-'))
  const tape = path.join(directory, 'tape.md')
  const run = (...args: string[]) => execFileSync('python3', ['../core_tests/secret_fixture.py', ...args], {encoding: 'utf8'}).trim()
  try {
    let count = 0
    const rec = Vcr.record(tape, run('start', directory)).secretRedactor((key, request) => {
      if (key !== 'password') return null
      count++; expect(request.fieldPath.length).toBeGreaterThan(0)
      return request.path.split('/')[1].toUpperCase() + '_PASSWORD'
    }).start()
    try { run('drive', rec.baseUrl); expect(count).toBe(0) } finally { rec.close() }
    expect(count).toBe(20); run('check', tape)
    expect(() => Vcr.playback(tape).start()).toThrow('unresolved secret')
    const replay = Vcr.playback(tape).secretResolver(token => 'pw-' + token.replace('_PASSWORD', '').toLowerCase() + '&secret').start()
    try { run('drive', replay.baseUrl); replay.assertNoMismatches() } finally { replay.close() }
    run('check', tape)
  } finally { fs.rmSync(directory, {recursive: true, force: true}) }
})
