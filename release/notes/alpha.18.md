# Servirtium 2.0.0-alpha.18

- **A mismatch under `match_multiple` is reported against the closest
  candidate.** It used to be diffed against the first interaction with the
  same method (often interaction 0), so a SOAP create was diffed against a
  lookup. Now the core picks the unused interaction the request was most
  plausibly meant for: same method and normalized path first, then same
  method, then the rest; within a tier the most alike normalized request
  body (common prefix plus suffix, linear); the lowest index on a tie. If
  every interaction was used, all are candidates and the report says so.
  Every section of the report (path, headers, body, rules fired, bindings)
  is about that interaction.
- **Every mismatch reports the first real difference**, ordered playback
  too, added after the `request:` line: `closest: interaction 5 POST
  /Services/Integration/CaseService.svc (same method and path, not yet
  used)` (match_multiple only), then `first difference:
  /Envelope/Body/CreateCase/caseData/CaseData/SubjectValue, normalised byte
  1408` and one line each side, then the other candidates with their
  scores. Volatile-value tokens and the pretty/canonical forms never show
  as differences; XML gets an element path (into escaped markup held as
  text too), JSON a pointer, headers the header name. The existing sections
  are pointed at the chosen interaction; the volatile section's
  `normalized …` diffs now start at the first real difference too (an
  unbound `{{name-?}}` lines up with the expected token), while the raw
  diffs stay raw.
- **`diagnosticsJson()` has three new fields per event**: `closestCandidate`
  (`index`, `method`, `path`, `tier`, `score` in thousandths, `reason`),
  `candidates` (the others considered, same fields) and `firstDifference`
  (`section`, `offset`, `element`, `expected`, `actual`). The existing
  fields stay. Snippets are masked on both sides as the rest of the
  diagnostic is. Produced in the core, so every binding reports the same.
  See [docs/replay-diagnostics.md](../../docs/replay-diagnostics.md).
- Matching is unchanged: only what is reported.

