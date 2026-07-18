# Feature matrix

Servirtium capability checklist (record, playback, redaction/mutation, header
removal, notes, drift, static bypass, strict matching, markdown interop,
diagnostics), mapped through the stack. "Test" = exercised by
`Servirtium-Tests` against the real native library, headless via
`run-tests.sh`.

| Capability | Aether core | embed C-ABI | Pharo API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `Servirtium playback:` | ✅ |
| Record → flush tape | ✅ | ✅ | `Servirtium record:upstream:` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | — |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | — |
| Redactions | ✅ | ✅ | `redactField:pattern:replacement:` | ✅ |
| Whole-tape normalize (correlated ids → `{{name-N}}`) | ✅ | ✅ | `normalizeWholeTape:name:` | — |
| Whole-tape redact (volatiles → one constant) | ✅ | ✅ | `redactWholeTape:replacement:` | — |
| Unredactions | ✅ | ✅ | `unredactField:pattern:replacement:` | ✅ |
| Header removal | ✅ | ✅ | `removeHeaderField:name:` | ✅ (via strict) |
| Notes | ✅ | ✅ | `noteTitle:body:` (builder + server) | ✅ |
| Strict request matching | ✅ | ✅ | `strictHeaders` | ✅ pass + fail |
| JSON request-body matching (semantic, opt-in) | ✅ | ✅ | `matchJsonBody` | — |
| Reusable / order-independent matching (opt-in) | ✅ | ✅ | `matchMultiple` | — |
| Match on a specific request header (opt-in) | ✅ | ✅ | `matchHeader:` | — |
| Static-content bypass | ✅ | ✅ | `staticContentMount:dir:` | ✅ |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `failIfChanged` | ✅ |
| Format options (indent / emphasize) | ✅ | ✅ | `indentCodeBlocks` / `emphasizeHttpVerbs` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `lastError`/`lastKind`/`lastIndex` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ (≥0.183.0) | ✅ | (automatic) | — |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `port: 0` → `server port` | ✅ |

The eleven headless SUnit tests cover: playback round-trip on a dynamic port,
path-mismatch diagnostics, `startThenDo:` always stopping the server,
strict-header pass via unredaction, strict-header fail on a missing header,
static-content bypass, record→replay round-trip, response-body redaction
landing on the written tape, note attachment, mutation-state isolation between
fixtures, and `failIfChanged` drift detection.

## Not (yet) exposed through the C-ABI

Present in the Aether VCR module but not surfaced by `embed.ae`, so not in the
Pharo API. Both are small `embed.ae` additions if wanted:

- **`flush_or_check`** — the `.actual`-sibling drift variant (writes a
  `<tape>.actual` and compares, instead of overwriting). This binding has the
  overwrite and `failIfChanged` variants only.
- **`load_url`** — replaying a tape fetched over HTTP rather than from disk.

## Notes on strict matching with ZnClient

Real HTTP clients attach headers the tape never recorded. Pharo's `ZnClient`
adds `Accept` and `User-Agent` by default (Host is normalized away core-side).
Under `strictHeaders`, those are correctly flagged as unexpected — drop them
from the comparison with `removeHeaderField: ServirtiumField requestHeaders
name: …` (the documented IGNORE-A-HEADER-WHEN-MATCHING lever). The
`ServirtiumPlaybackMatchTest` suite does exactly this.

## Known limitations (inherited from the core)

- **Strict matching defaults to off**; when on, the SUT's full request-header
  set is compared, so client-default headers must be removed as above.
- **Binary response bodies** rely on the tape's text/base64 path (an existing
  Aether VCR limitation).
