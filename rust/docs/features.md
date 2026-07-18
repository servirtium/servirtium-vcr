# Feature matrix

Servirtium capability checklist (record, playback, redaction/mutation,
header removal, notes, drift, static bypass, strict matching, markdown
interop, diagnostics), mapped through the stack. "Test" = exercised by the
`tests/` integration tests against the real native library.

| Capability | Aether core | embed C-ABI | Rust API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `Vcr::playback` | ✅ |
| Record → flush tape | ✅ | ✅ | `Vcr::record` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | ✅ POST |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | ✅ via POST |
| Redactions | ✅ | ✅ | `.redact(field, …)` | ✅ |
| Whole-tape normalize (correlated ids → `{{name-N}}`) | ✅ | ✅ | `.normalize_whole_tape(pattern, name)` | — |
| Whole-tape redact (volatiles → one constant) | ✅ | ✅ | `.redact_whole_tape(pattern, replacement)` | — |
| Unredactions | ✅ | ✅ | `.unredact(field, …)` | ✅ |
| Header removal | ✅ | ✅ | `.remove_header(field, name)` | ✅ |
| Notes | ✅ | ✅ | `.note(…)` / `VcrServer::note` | ✅ |
| Strict request matching | ✅ | ✅ | `.strict_headers()` | ✅ pass + fail |
| JSON request-body matching (semantic, opt-in) | ✅ | ✅ | `.match_json_body()` | — |
| Static-content bypass | ✅ | ✅ | `.static_content(mount, dir)` | ✅ |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `.fail_if_changed()` | ✅ |
| Format options (indent / emphasize) | ✅ | ✅ | `.indent_code_blocks()` / `.emphasize_http_verbs()` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `last_error()`/`last_kind()`/`last_index()` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ (≥0.183.0) | ✅ | (automatic) | — * |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `.port(0)` → `vcr.port()` | ✅ |

\* The chunked-de-chunk path is covered by the .NET binding's test against
the same native core; the Rust record tests use a `Content-Length` upstream.

## Not (yet) exposed through the C-ABI

Present in the Aether VCR module but not surfaced by `embed.ae`, so not in
the Rust API. Both are small `embed.ae` additions if wanted:

- **`flush_or_check`** — the `.actual`-sibling drift variant (writes a
  `<tape>.actual` and compares, instead of overwriting). The Rust layer has
  the overwrite and `fail_if_changed` variants only.
- **`load_url`** — replaying a tape fetched over HTTP rather than from disk.

## Differences from servirtium-java (by design)

- **Diagnostics are a passive read** (`last_error()`/`last_kind()`/
  `last_index()`) rather than a per-interaction monitor callback. Equivalent
  for assertions.
- **No in-process transform pipeline classes.** Mutations are the
  redact / unredact / remove-header / note primitives above, applied by the
  core, not pluggable Rust trait objects.

## Known limitations (inherited from the core)

- **Binary response bodies** rely on the tape's text/base64 path (an
  existing Aether VCR limitation).

The core runs **one server per port** — N independent VCR servers run concurrently in
one process, each keyed by its own handle (the wrapper still serializes
fixtures with one process-wide lock as belt-and-braces). See
[architecture.md](architecture.md#concurrency-one-server-per-port).
