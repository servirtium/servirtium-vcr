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

## Changed

- **Header names match case-insensitively** (RFC 9110); values still
  compare exactly. A request sending `content-type` now matches a tape
  recorded with `Content-Type`, in ordered and `match_multiple` playback,
  with or without `strict_headers`. A header-scoped volatile template
  (`X-Correlation-Id: {{correlationId}}`) now matches its header name in any
  case, on record and playback. `match_header`, `remove_header`,
  `redact_header`, the credential presets and the ignored per-connection
  headers already looked names up case-insensitively. The report's header
  section follows: a case-only difference is `request headers: match`.
