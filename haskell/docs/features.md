# Feature matrix

Servirtium capability checklist (record, playback, redaction/mutation, header
removal, notes, drift, static bypass, strict matching, markdown interop,
diagnostics), mapped through the stack. "Test" = exercised by the
`servirtium-haskell-test` suite against the real native library.

| Capability | Aether core | embed C-ABI | Haskell API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `playbackOptions` / `withPlayback` | ✅ |
| Record → flush tape | ✅ | ✅ | `recordOptions` / `withRecord` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | — |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | — |
| Redactions | ✅ | ✅ | `recRedactions` | ✅ |
| Whole-tape normalize (correlated → `{{name-N}}`) | ✅ | ✅ | `recNormalizeWholeTape` | — |
| Whole-tape redact (uncorrelated → constant) | ✅ | ✅ | `recRedactWholeTape` | — |
| Unredactions | ✅ | ✅ | `pbUnredactions` | — |
| Header removal | ✅ | ✅ | `recRemoveHeaders` / `pbRemoveHeaders` | ✅ (record/redaction tests) |
| Notes | ✅ | ✅ | `recNote` / `note` | — |
| Strict request matching | ✅ | ✅ | `pbStrictHeaders` | — |
| JSON request-body matching (semantic, opt-in) | ✅ | ✅ | `pbMatchJsonBody = True` | — |
| Reusable / order-independent matching (opt-in) | ✅ | ✅ | `pbMatchMultiple = True` | — |
| Match on a specific request header (opt-in) | ✅ | ✅ | `pbMatchHeaders = ["Name"]` | — |
| Static-content bypass | ✅ | ✅ | `pbStaticContent` | — |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `recFailIfChanged` | — |
| Format options (indent / emphasize) | ✅ | ✅ | `recIndentCodeBlocks` / `recEmphasizeHttpVerbs` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `lastError` / `lastKind` / `lastIndex` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ | ✅ | (automatic) | — |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `pbPort = 0` → `port vcr` | ✅ |

The test-suite covers the four required scenarios: playback round-trip,
mismatch diagnostics, record→replay against a local upstream, and redaction
(asserting the tape file content). Header removal is exercised as part of the
record/redaction tests (stripping client default headers).

## Not (yet) exposed through the C-ABI

Present in the in-repo Aether VCR module (`core/vcr.ae`) but not surfaced by
`core/embed.ae`, so not in the Haskell API. Both are small `core/embed.ae`
additions if wanted:

- **`flush_or_check`** — the `.actual`-sibling drift variant (writes a
  `<tape>.actual` and compares, instead of overwriting). The Haskell layer has
  the overwrite (`stop`) and `recFailIfChanged` variants only.
- **`load_url`** — replaying a tape fetched over HTTP rather than from disk.

## Known limitations (inherited from the core)

- **Binary response bodies** rely on the tape's text/base64 path (an existing
  Aether VCR limitation).
- **Strict matching + client default headers.** HTTP clients send `Host`,
  `Accept-Encoding`, etc. by default; under strict matching, remove them with
  `recRemoveHeaders` / `pbRemoveHeaders` (`RequestHeaders`) to keep the request
  block stable.
