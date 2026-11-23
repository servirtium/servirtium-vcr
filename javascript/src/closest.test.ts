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
    expect(report).toContain('closest: interaction 3 POST /Services/CaseService.svc (same method and path, not yet used)\n')
    expect(report).toContain(
      'first difference: /Envelope/Body/CreateCase/caseData/CaseData/SubjectValue, normalised byte 777\n' +
        '- <SubjectValue>Rule 1;Openness;</SubjectValue>\n' +
        '+ <SubjectValue></SubjectValue>\n')
    expect(report).toContain('other candidates: none unused (3 already used)\n')
    expect(report).not.toContain('ILookupService')
    const events = JSON.parse(server.diagnosticsJson(false))
    expect(events).toHaveLength(1)
    expect(events[0].closestCandidate).toEqual({
      index: 3, method: 'POST', path: '/Services/CaseService.svc', tier: 1, score: 983, reason: 'same method and path, not yet used',
    })
    expect(events[0].candidates).toEqual([])
    const d = events[0].firstDifference
    expect(d.section).toBe('body')
    expect(d.offset).toBe(777)
    expect(d.element).toBe('/Envelope/Body/CreateCase/caseData/CaseData/SubjectValue')
    expect(d.expected).toBe('<SubjectValue>Rule 1;Openness;</SubjectValue>')
    expect(d.actual).toBe('<SubjectValue></SubjectValue>')
    expect(() => server.assertNoMismatches()).toThrow('SubjectValue')
  } finally { server.close() }
})

it('renders the request-headers section in matching\'s canonical form', () => {
  const server = Vcr.playback(path.join(root, 'core_tests/closest/headers.md')).matchMultiple().start()
  try {
    execFileSync(path.join(root, 'target/test-tools/closest_fixture'), ['headers', server.baseUrl])
    const events = JSON.parse(server.diagnosticsJson(false))
    expect(events).toHaveLength(2)
    expect(events[0].headersMatch).toBe(true)
    expect(events[0].diff).toContain('request headers: match\n')
    expect(events[0].firstDifference.section).toBe('body')
    expect(events[1].headersMatch).toBe(false)
    expect(events[1].firstDifference).toMatchObject({
      section: 'headers', element: 'Content-Type',
      expected: 'Content-Type: application/soap+xml; charset=utf-8', actual: 'Content-Type: text/xml',
    })
    const report = server.readLastError(false)
    expect(report).toContain('first difference: header Content-Type\n- Content-Type: application/soap+xml; charset=utf-8\n+ Content-Type: text/xml\n')
    expect(report).toContain('request headers: header Content-Type differs (the first difference)\n')
    expect(report.split('+ Content-Type: text/xml').length).toBe(2)
    expect(() => server.assertNoMismatches()).toThrow('Content-Type')
  } finally { server.close() }
})
