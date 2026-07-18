# Feature matrix

Servirtium capabilities, as reached through the PHP FFI layer. "Test" =
exercised by the PHPUnit suite against the real native library.

| Capability | .NET API parity | PHP API | Test |
|---|---|---|---|
| Playback (ordered, multi-interaction) | ✅ | `Vcr::playback` | ✅ |
| Record → flush tape | ✅ | `Vcr::record` | ✅ |
| Custom HTTP verbs | ✅ | (automatic) | — |
| Redactions | ✅ | `->redact(field, …)` | ✅ |
| Whole-tape normalize (correlated → `{{name-N}}`) | ✅ | `->normalizeWholeTape(pattern, name)` | — |
| Whole-tape redact (uncorrelated → constant) | ✅ | `->redactWholeTape(pattern, replacement)` | — |
| Unredactions | ✅ | `->unredact(field, …)` | — |
| Header removal | ✅ | `->removeHeader(field, name)` | — |
| Notes | ✅ | `->note()` / `$server->note()` | — |
| Strict request matching | ✅ | `->strictHeaders()` | — |
| JSON request-body matching (semantic, opt-in) | ✅ | `->matchJsonBody()` | — |
| Static-content bypass | ✅ | `->staticContent(mount, dir)` | — |
| Drift (overwrite + fail-if-changed) | ✅ | `->failIfChanged()` | — |
| Format options (indent / emphasize) | ✅ | `->indentCodeBlocks()` / `->emphasizeHttpVerbs()` | — |
| Diagnostics (last error/kind/index) | ✅ | `lastError`/`lastKind`/`lastIndex` | ✅ |
| gzip normalize/restore | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ | (automatic) | — |
| Dynamic (OS-assigned) port | ✅ | `->port(0)` → `port()` | ✅ |

## Not exposed through the C-ABI (same as every binding)

`flush_or_check` (the `.actual`-sibling drift variant) and `load_url`
(HTTP-fetched tape) exist in `core/vcr.ae` but aren't surfaced by
`core/embed.ae`, so no binding reaches them. Small `core/embed.ae` additions.

## Known limitations (inherited from the core)

- Under `strictHeaders()`, PHP HTTP clients' default request headers must be
  on the recorded block or dropped via `removeHeader(RequestHeaders, …)`.
- Binary response bodies rely on the tape's text/base64 path.
