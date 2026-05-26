# Feature matrix

Servirtium capabilities, as reached through the PHP FFI layer. "Test" =
exercised by the PHPUnit suite against the real native library.

| Capability | .NET API parity | PHP API | Test |
|---|---|---|---|
| Playback (ordered, multi-interaction) | ✅ | `Vcr::playback` | ✅ |
| Record → flush tape | ✅ | `Vcr::record` | ✅ |
| Custom HTTP verbs | ✅ | (automatic) | — |
| Redactions | ✅ | `->redact(field, …)` | ✅ |
| Unredactions | ✅ | `->unredact(field, …)` | — |
| Header removal | ✅ | `->removeHeader(field, name)` | — |
| Notes | ✅ | `->note()` / `$server->note()` | — |
| Strict request matching | ✅ | `->strictHeaders()` | — |
| Static-content bypass | ✅ | `->staticContent(mount, dir)` | — |
| Drift (overwrite + fail-if-changed) | ✅ | `->failIfChanged()` | — |
| Format options (indent / emphasize) | ✅ | `->indentCodeBlocks()` / `->emphasizeHttpVerbs()` | — |
| Diagnostics (last error/kind/index) | ✅ | `lastError`/`lastKind`/`lastIndex` | ✅ |
| gzip normalize/restore | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ (≥0.183) | (automatic) | — |
| Dynamic (OS-assigned) port | ✅ | `->port(0)` → `port()` | ✅ |

## Not exposed through the C-ABI (same as every binding)

`flush_or_check` (the `.actual`-sibling drift variant) and `load_url`
(HTTP-fetched tape) exist in the Aether VCR module but aren't surfaced by
`embed.ae`, so no binding reaches them. Small `embed.ae` additions.

## Known limitations (inherited from the core)

- **One active VCR server per process** (v1) — run PHPUnit serially.
- Under `strictHeaders()`, PHP HTTP clients' default request headers must be
  on the recorded block or dropped via `removeHeader(RequestHeaders, …)`.
- Binary response bodies rely on the tape's text/base64 path.
