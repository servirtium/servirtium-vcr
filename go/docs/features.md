# Feature matrix

Servirtium capability checklist (record, playback, redaction/mutation, header
removal, whole-tape normalization, notes, drift, static bypass, strict
matching, markdown interop, diagnostics), mapped through the stack. "Test" =
exercised by the binding's `*_test.go` suite against the real native library,
unless noted as a core probe (the shared engine's `core_tests/`).

| Capability | Aether core | embed C-ABI | Go API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `servirtium.Playback(tape)` | ✅ |
| Record → flush tape | ✅ | ✅ | `servirtium.Record(tape, upstream)` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | ✅ POST |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | ✅ via POST |
| Redactions | ✅ | ✅ | `.Redact(field, …)` | ✅ |
| Unredactions | ✅ | ✅ | `.Unredact(field, …)` | ✅ |
| Header removal | ✅ | ✅ | `.RemoveHeader(field, name)` | ✅ |
| Whole-tape normalize (correlated values → `{{name-N}}`) | ✅ | ✅ | `.NormalizeWholeTape(pattern, name)` | ✅ core probe |
| Whole-tape redact (uncorrelated volatiles → constant) | ✅ | ✅ | `.RedactWholeTape(pattern, repl)` | ✅ core probe |
| Notes | ✅ | ✅ | `.Note(…)` / `Server.Note` | ✅ |
| Strict request matching | ✅ | ✅ | `.StrictHeaders()` | ✅ pass + fail |
| JSON request-body matching (semantic, opt-in) | ✅ | ✅ | `.MatchJSONBody()` | — |
| Static-content bypass | ✅ | ✅ | `.StaticContent(mount, dir)` | ✅ |
| Untaped (incidental paths, no cursor consume) | ✅ | ✅ | `.Untaped(path)` | ✅ |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `.FailIfChanged()` | ✅ |
| Format options (indent / emphasize) | ✅ | ✅ | `.IndentCodeBlocks()` / `.EmphasizeHTTPVerbs()` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `.LastError()` / `.LastKind()` / `.LastIndex()` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ | ✅ | (automatic) | — (host uses Content-Length) |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `.Port(0)` → `Server.Port()` | ✅ |
| One server per port (N servers / process) | ✅ | ✅ | (each `Start()` owns its handle) | ✅ core probe |

The two whole-tape rewrites and one server per port are proven at the
shared-engine level: `core_tests/normalize_probe.ae` (whole-tape) and
`core_tests/.concurrent.ae` (two playback VCRs in one process on two ports,
each replaying its own tape with independent cursors/diagnostics).

## In the C-ABI, not yet on the Go surface

Declared in `core/embed.ae` (and in `servirtium.go`'s `import "C"` block) but
not yet wired to a Go method — a small `Server`/builder addition if wanted:

- **`flush_or_check`** (`aether_vcr_embed_stop_and_flush_or_check`) — the
  `.actual`-sibling drift variant (writes a `<tape>.actual` and compares,
  instead of overwriting). `Close()` uses the overwrite and `FailIfChanged`
  variants only (`stop_and_flush` / `stop_and_flush_fail_if_changed`).
- **`load_url`** (`aether_vcr_embed_open_playback_url`) — replaying a tape
  fetched over HTTP rather than from disk; declared but no Go builder yet.

## Differences from servirtium-java (by design)

- **Diagnostics are a passive read** (`LastError()` / `LastKind()` /
  `LastIndex()`) rather than a per-interaction `ServiceInteractionMonitor`
  callback. Equivalent for assertions.
- **No in-process transform pipeline classes.** Mutations are the
  redact / unredact / remove-header / whole-tape / note primitives above,
  applied by the core, not pluggable Go transforms.

## Known limitations (inherited from the core)

- **Binary response bodies** rely on the tape's text/base64 path (an existing
  Aether VCR limitation).
- **Default client headers + strict matching** — Go's `http.Client` adds a
  default `User-Agent` the tape may not carry; strip it with `RemoveHeader`
  (or suppress it on the request) under `StrictHeaders()`. See
  [usage.md](usage.md#strict-request-matching).
</content>
</invoke>
