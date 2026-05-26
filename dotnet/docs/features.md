# Feature matrix

Servirtium capability checklist (record, playback, redaction/mutation,
header removal, notes, drift, static bypass, strict matching, markdown
interop, diagnostics), mapped through the stack. "Test" = exercised by
`Servirtium.Vcr.Tests` against the real native library.

| Capability | Aether core | embed C-ABI | .NET API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `Vcr.Playback` | ✅ |
| Record → flush tape | ✅ | ✅ | `Vcr.Record` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | ✅ POST |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | ✅ via POST |
| Redactions | ✅ | ✅ | `.Redact(field, …)` | ✅ |
| Unredactions | ✅ | ✅ | `.Unredact(field, …)` | ✅ |
| Header removal | ✅ | ✅ | `.RemoveHeader(field, name)` | ✅ |
| Notes | ✅ | ✅ | `.Note(…)` / `VcrServer.Note` | ✅ |
| Strict request matching | ✅ | ✅ | `.StrictHeaders()` | ✅ pass + fail |
| Static-content bypass | ✅ | ✅ | `.StaticContent(mount, dir)` | ✅ |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `.FailIfChanged()` | ✅ |
| Format options (indent / emphasize) | ✅ | ✅ | `.IndentCodeBlocks()` / `.EmphasizeHttpVerbs()` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `LastError`/`LastKind`/`LastIndex` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ (≥0.183.0) | ✅ | (automatic) | ✅ |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `.Port(0)` → `vcr.Port` | ✅ |

## Not (yet) exposed through the C-ABI

Present in the Aether VCR module but not surfaced by `embed.ae`, so not in
the .NET API. Both are small `embed.ae` additions if wanted:

- **`flush_or_check`** — the `.actual`-sibling drift variant (writes a
  `<tape>.actual` and compares, instead of overwriting). The .NET layer has
  the overwrite and `FailIfChanged` variants only.
- **`load_url`** — replaying a tape fetched over HTTP rather than from disk.

## Differences from servirtium-java (by design)

- **Diagnostics are a passive read** (`LastError`/`LastKind`/`LastIndex`)
  rather than a per-interaction `ServiceInteractionMonitor` callback.
  Equivalent for assertions.
- **No in-process transform pipeline classes.** Mutations are the
  redact / unredact / remove-header / note primitives above, applied by the
  core, not pluggable C# `IHttpMessageTransform`s.

## Known limitations (inherited from the core)

- **One active VCR server per process** in v1 — run tests serially. See
  [architecture.md](architecture.md#one-server-per-process).
- **Binary response bodies** rely on the tape's text/base64 path (an
  existing Aether VCR limitation).
