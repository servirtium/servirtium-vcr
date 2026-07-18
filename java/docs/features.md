# Feature matrix

Servirtium capability checklist (record, playback, redaction/mutation,
header removal, notes, drift, static bypass, strict matching, markdown
interop, diagnostics), mapped through the stack. "Test" = exercised by the
`src/test` suite against the real native library.

| Capability | Aether core | embed C-ABI | Java API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `Vcr.playback` | ✅ |
| Record → flush tape | ✅ | ✅ | `Vcr.record` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | ✅ POST |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | ✅ via POST |
| Redactions | ✅ | ✅ | `.redact(field, …)` | ✅ |
| Whole-tape normalize (correlated → `{{name-N}}`) | ✅ | ✅ | `.normalizeWholeTape(pattern, name)` | — |
| Whole-tape redact (uncorrelated → constant) | ✅ | ✅ | `.redactWholeTape(pattern, replacement)` | — |
| Unredactions | ✅ | ✅ | `.unredact(field, …)` | ✅ |
| Header removal | ✅ | ✅ | `.removeHeader(field, name)` | ✅ (record + playback) |
| Notes | ✅ | ✅ | `.note(…)` / `VcrServer.note` | ✅ |
| Strict request matching | ✅ | ✅ | `.strictHeaders()` | ✅ pass + fail |
| JSON request-body matching (semantic, opt-in) | ✅ | ✅ | `.matchJsonBody()` | — |
| Reusable / order-independent matching (opt-in) | ✅ | ✅ | `.matchMultiple()` | — |
| Match on a specific request header (opt-in) | ✅ | ✅ | `.matchHeader(name)` | — |
| Static-content bypass | ✅ | ✅ | `.staticContent(mount, dir)` | ✅ |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `.failIfChanged()` | ✅ |
| Format options (indent / emphasize) | ✅ | ✅ | `.indentCodeBlocks()` / `.emphasizeHttpVerbs()` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `lastError()`/`lastKind()`/`lastIndex()` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ | ✅ | (automatic) | ✅ |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `.port(0)` → `vcr.port()` | ✅ |

## Not (yet) exposed through the C-ABI

Present in the Aether VCR module but not surfaced by `embed.ae`, so not in the
Java API. Both are small `embed.ae` additions if wanted:

- **`flush_or_check`** — the `.actual`-sibling drift variant (writes a
  `<tape>.actual` and compares, instead of overwriting). The Java layer has
  the overwrite and `failIfChanged` variants only.
- **`load_url`** — replaying a tape fetched over HTTP rather than from disk.

## Differences from the old servirtium-java (by design)

- **Diagnostics are a passive read** (`lastError()`/`lastKind()`/`lastIndex()`)
  rather than a per-interaction `ServiceInteractionMonitor` callback.
  Equivalent for assertions.
- **No in-process transform pipeline classes.** Mutations are the
  redact / unredact / remove-header / note primitives above, applied by the
  core, not pluggable Java `InteractionManipulations` implementations.
- **No pluggable server module** (`jetty` / `undertow`). The embedded Aether
  HTTP server inside the native lib *is* the server.

## Concurrency: one server per port

- **Per-listener, handle-based.** N independent VCR servers can run
  concurrently in one process, each keyed by its own handle with its own tape,
  cursor, mutations, and diagnostics — no serial constraint. See
  [architecture.md](architecture.md#concurrency-one-server-per-port).

## Known limitations (inherited from the core)

- **Binary response bodies** rely on the tape's text/base64 path (an existing
  VCR-core limitation).
