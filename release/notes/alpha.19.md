# Servirtium 2.0.0-alpha.19

- **The request-headers section of a mismatch report no longer reports
  headers that match as different.** It diffed the tape's raw header block
  (sorted, with ignored headers still in it) against the request's
  normalised one, so they differed at byte 0 even when matching found them
  equal. Both sides now take matching's canonical form: the per-connection
  headers and `Accept-Encoding` left out, credential and volatile-value
  headers as matching has them, sorted by name. Headers that match read
  `request headers: match`; otherwise `request headers: header NAME
  differs` with one line each side, `(missing)` on the side without it,
  and a header difference that comes first reads `first difference: header
  NAME`. Ordered playback and `match_multiple` alike; both sides masked.
- **`diagnosticsJson()` has a new field per event, `headersMatch`**
  (`true`, `false`, or `null` with no interaction to compare), and
  `firstDifference.element` is the header name when `section` is
  `headers`. The existing fields stay; the raw header blocks are in
  `expected.headers` and `actual.headers` only. See
  [docs/replay-diagnostics.md](../../docs/replay-diagnostics.md).
- Matching is unchanged: only what is reported.
