# Feature matrix

Servirtium capability checklist (record, playback, redaction/mutation, header
removal, whole-tape normalization, notes, drift, static bypass, strict
matching, markdown interop, diagnostics), mapped through the stack. "Test" =
exercised by this binding's `tests/*_test.nim` suites against the real native
library, unless noted as a core probe (the shared engine's `core_tests/`).

| Capability | Aether core | embed C-ABI | Nim API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `playback(tape)` | ✅ |
| Record → flush tape | ✅ | ✅ | `record(tape, upstream)` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | ✅ POST |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | ✅ via POST |
| Redactions | ✅ | ✅ | `redact(field, …)` | ✅ |
| Unredactions | ✅ | ✅ | `unredact(field, …)` | ✅ |
| Header removal | ✅ | ✅ | `removeHeader(field, name)` | ✅ |
| Whole-tape normalize (correlated values → `{{name-N}}`) | ✅ | ✅ | `normalizeWholeTape(pattern, name)` | ✅ core probe |
| Whole-tape redact (uncorrelated volatiles → constant) | ✅ | ✅ | `redactWholeTape(pattern, repl)` | ✅ core probe |
| Notes | ✅ | ✅ | `note(title, body)` (builder + running server) | ✅ |
| Strict request matching | ✅ | ✅ | `setStrictHeaders(true)` | ✅ pass + fail |
| JSON request-body matching (semantic, opt-in) | ✅ | ✅ | `setMatchJsonBody(true)` | — |
| Static-content bypass | ✅ | ✅ | `staticContent(mount, dir)` | ✅ |
| Untaped (incidental paths, no cursor consume) | ✅ | ✅ | `untaped(path)` | ✅ |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `failIfChanged()` | ✅ |
| Format options (indent / emphasize) | ✅ | ✅ | `indentCodeBlocks()` / `emphasizeHttpVerbs()` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `lastError()` / `lastKind()` / `lastIndex()` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ | ✅ | (automatic) | — (test upstream uses Content-Length) |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `playback(...).port == 0` default → `port()` | ✅ |
| One server per port (N servers / process) | ✅ | ✅ | (each `start` owns its handle) | ✅ |

The two whole-tape rewrites are bound on the Nim surface
(`normalizeWholeTape` / `redactWholeTape`) and proven at the shared-engine
level (`core_tests/normalize_probe.ae`); the "one server per port" guarantee is
exercised directly by this binding (`tests/playback_test.nim`: two playback
servers alive at once on two ports) and by `core_tests/.concurrent.ae`.

## In the C-ABI, not yet on the Nim surface

Declared in `core/embed.ae` (and bound in `src/servirtium/native.nim`) but not
yet wrapped by an idiomatic proc:

- **`stop_and_flush_or_check`** — the `.actual`-sibling drift variant (writes a
  `<tape>.actual` and compares, instead of overwriting). `close()` uses the
  overwrite and fail-if-changed variants only.
- **`open_playback_url`** — replaying a tape fetched over HTTP rather than from
  disk; bound in `native.nim`, no `playback`-style wrapper yet.
- **`strictIgnoreCommonHeaders`** — wrapped, but not yet covered by a test
  (strict matching is tested via `setStrictHeaders`).

## Differences from servirtium-java (by design)

- **Diagnostics are a passive read** (`lastError()` / `lastKind()` /
  `lastIndex()`) rather than a per-interaction monitor callback. Equivalent for
  assertions.
- **No in-process transform pipeline classes.** Mutations are the
  redact / unredact / remove-header / whole-tape / note primitives above,
  applied by the core, not pluggable Nim transforms.

## Known limitations (inherited from the core)

- **Binary response bodies** rely on the tape's text/base64 path (an existing
  Aether VCR limitation).
- **Default client headers + strict matching** — an HTTP client may add default
  headers (`User-Agent`, `Accept`) the tape does not carry; under
  `setStrictHeaders(true)` drop them on the request (e.g. curl `-H 'Accept:'`)
  or record them onto the tape. See [usage.md](usage.md#strict-request-matching).
