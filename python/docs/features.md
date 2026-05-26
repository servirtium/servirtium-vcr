# Feature matrix

Servirtium capability checklist (record, playback, redaction/mutation, header
removal, notes, drift, static bypass, strict matching, markdown interop,
diagnostics), mapped through the stack. "Test" = exercised by `test/` against
the real native library.

| Capability | Aether core | embed C-ABI | Python API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `servirtium.playback` | ✅ |
| Record → flush tape | ✅ | ✅ | `servirtium.record` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | ✅ POST |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | ✅ via POST |
| Redactions | ✅ | ✅ | `.redact(field, …)` | ✅ |
| Unredactions | ✅ | ✅ | `.unredact(field, …)` | ✅ |
| Header removal | ✅ | ✅ | `.remove_header(field, name)` | ✅ |
| Notes | ✅ | ✅ | `.note(…)` / `VcrServer.note` | ✅ |
| Strict request matching | ✅ | ✅ | `.strict_headers()` | ✅ pass + fail |
| Static-content bypass | ✅ | ✅ | `.static_content(mount, dir)` | ✅ |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `.fail_if_changed()` | ✅ |
| Format options (indent / emphasize) | ✅ | ✅ | `.indent_code_blocks()` / `.emphasize_http_verbs()` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `last_error`/`last_kind`/`last_index` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ (≥0.183.0) | ✅ | (automatic) | — (host uses Content-Length) |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `.port(0)` → `vcr.port` | ✅ |

## Not (yet) exposed through the C-ABI

Present in the Aether VCR module but not surfaced by `embed.ae`, so not in the
Python API. Both are small `embed.ae` additions if wanted:

- **`flush_or_check`** — the `.actual`-sibling drift variant (writes a
  `<tape>.actual` and compares, instead of overwriting). The Python layer has
  the overwrite and `fail_if_changed` variants only.
- **`load_url`** — replaying a tape fetched over HTTP rather than from disk.

## Differences from servirtium-java (by design)

- **Diagnostics are a passive read** (`last_error`/`last_kind`/`last_index`)
  rather than a per-interaction `ServiceInteractionMonitor` callback.
  Equivalent for assertions.
- **No in-process transform pipeline classes.** Mutations are the
  redact / unredact / remove-header / note primitives above, applied by the
  core, not pluggable Python transforms.

## Known limitations (inherited from the core)

- **One active VCR server per process** in v1 — run tests serially. See
  [architecture.md](architecture.md#one-server-per-process).
- **Binary response bodies** rely on the tape's text/base64 path (an existing
  Aether VCR limitation).
- **Default client headers + strict matching** — `urllib`/`http.client` add
  headers the tape may not carry; strip them with `remove_header` under
  `strict_headers()`. See [usage.md](usage.md#strict-request-matching).
