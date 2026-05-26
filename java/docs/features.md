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
| Unredactions | ✅ | ✅ | `.unredact(field, …)` | ✅ |
| Header removal | ✅ | ✅ | `.removeHeader(field, name)` | ✅ (record + playback) |
| Notes | ✅ | ✅ | `.note(…)` / `VcrServer.note` | ✅ |
| Strict request matching | ✅ | ✅ | `.strictHeaders()` | ✅ pass + fail |
| Static-content bypass | ✅ | ✅ | `.staticContent(mount, dir)` | ✅ |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `.failIfChanged()` | ✅ |
| Format options (indent / emphasize) | ✅ | ✅ | `.indentCodeBlocks()` / `.emphasizeHttpVerbs()` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `lastError()`/`lastKind()`/`lastIndex()` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ (≥0.183.0) | ✅ | (automatic) | ✅ |
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

## Known limitations (inherited from the core)

- **One active VCR server per process** in v1 — run tests serially. See
  [architecture.md](architecture.md#one-server-per-process).
- **Binary response bodies** rely on the tape's text/base64 path (an existing
  Aether VCR limitation).
