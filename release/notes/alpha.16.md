# Servirtium 2.0.0-alpha.16

- One pretty XML setting now works in record and playback. Recording formats
  XML **request bodies as well as responses**, changing newly recorded tapes.
  Enable `PrettyXml(2)` (or the binding's equivalent) on playback to match
  compact requests against indented or hand-edited tapes. `MatchXmlBody`
  remains available as the matching alias.
- XML matching preserves leaf whitespace and normalizes XML line endings and
  literal attribute whitespace correctly. Diagnostics compare the canonical
  request forms; playback responses remain exactly as written in the tape.
  See [the rules and mixed-content limitation](../../docs/pretty-xml.md).
- JSON now has the same shared setting: `PrettyJson(2)` formats recorded
  **requests and responses** and enables JSON request matching on playback.
  Newly recorded JSON request bodies change layout. String data, key order,
  number spellings and duplicates are preserved in recordings; matching and
  diagnostics use deterministic canonical forms with exact decimal equality,
  avoiding floating-point collisions for large integers and precise decimals.
  `MatchJsonBody` remains available. See [the JSON rules](../../docs/pretty-json.md).
- Added explicit `QUERY` coverage, including recording and replaying requests
  with bodies, `Allow`/`Accept-Query` headers, and JSON formatting/matching.
