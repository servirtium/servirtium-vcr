import * as path from 'path'
import { execFileSync } from 'child_process'
import { Vcr } from './index'

// The closest-candidate scenario (docs/replay-diagnostics.md): the shared
// tape core_tests/closest/case.md, driven by target/test-tools/closest_fixture.
// The report and its JSON come from the core; this only reads them.
const root = path.resolve(__dirname, '../..')

it('reports a mismatch against the closest unused interaction, leading with the first real difference', () => {
  const server = Vcr.playback(path.join(root, 'core_tests/closest/case.md')).matchMultiple().start()
  try {
    execFileSync(path.join(root, 'target/test-tools/closest_fixture'), ['case', server.baseUrl])
    const report = server.readLastError(false)
    expect(report).toContain('interaction: 3\n')
    expect(report).toContain('closest candidate: interaction 3, POST /Services/CaseService.svc (same method and path; score 0.983)\n')
    expect(report).toContain(
      'first difference: request body at /Envelope/Body/CreateCase/caseData/CaseData/SubjectValue\n' +
        '- <SubjectValue>Rule 1;Openness;</SubjectValue>\n' +
        '+ <SubjectValue></SubjectValue>\n')
    expect(report).toContain('other candidates: none unused (3 already used)\n')
    expect(report).not.toContain('ILookupService')
    const events = JSON.parse(server.diagnosticsJson(false))
    expect(events).toHaveLength(1)
    expect(events[0].closestCandidate).toEqual({
      index: 3, method: 'POST', path: '/Services/CaseService.svc', tier: 1, score: 983, reason: 'same method and path',
    })
    expect(events[0].candidates).toEqual([])
    const d = events[0].firstDifference
    expect(d.section).toBe('body')
    expect(d.offset).toBeGreaterThan(0)
    expect(d.element).toBe('/Envelope/Body/CreateCase/caseData/CaseData/SubjectValue')
    expect(d.expected).toBe('<SubjectValue>Rule 1;Openness;</SubjectValue>')
    expect(d.actual).toBe('<SubjectValue></SubjectValue>')
    expect(() => server.assertNoMismatches()).toThrow('SubjectValue')
  } finally { server.close() }
})
