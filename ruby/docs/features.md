# Feature matrix

Servirtium capability checklist (record, playback, redaction/mutation,
whole-tape normalization, header removal, notes, drift, static bypass, strict
matching, markdown interop, diagnostics, one server per port), mapped
through the stack. "Test" = exercised by `spec/` against the real native
library.

| Capability | Aether core | embed C-ABI | Ruby API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `Servirtium.playback` | ✅ |
| Record → flush tape | ✅ | ✅ | `Servirtium.record` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | — |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | — |
| Redactions | ✅ | ✅ | `.redact(field, …)` | ✅ |
| Normalize whole tape (correlated `{{id-N}}`) | ✅ | ✅ | `.normalize_whole_tape(pattern, name)` | — |
| Redact whole tape (collapse to constant) | ✅ | ✅ | `.redact_whole_tape(pattern, replacement)` | — |
| Unredactions | ✅ | ✅ | `.unredact(field, …)` | — |
| Header removal | ✅ | ✅ | `.remove_header(field, name)` | ✅ |
| Untaped (incidental 404, cursor preserved) | ✅ | ✅ | `.untaped(path)` | ✅ |
| Notes | ✅ | ✅ | `.note(…)` / `Server#note` | ✅ |
| Strict request matching | ✅ | ✅ | `.strict_headers` | ✅ |
| JSON request-body matching (semantic, opt-in) | ✅ | ✅ | `.match_json_body` | — |
| Reusable / order-independent matching (opt-in) | ✅ | ✅ | `.match_multiple` | — |
| Match on a specific request header (opt-in) | ✅ | ✅ | `.match_header(name)` | — |
| Static-content bypass | ✅ | ✅ | `.static_content(mount, dir)` | — |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `.fail_if_changed` | — |
| Format options (indent / emphasize) | ✅ | ✅ | `.indent_code_blocks` / `.emphasize_http_verbs` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `last_error` / `last_kind` / `last_index` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ | ✅ | (automatic) | — |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `.port(0)` → `Server#port` | ✅ |
| One server per port (N servers/process) | ✅ | ✅ | (one handle per `Server`) | ✅ `core_tests/concurrent_probe.ae` |

## Not (yet) exposed through the C-ABI

Present in the Aether VCR module but not surfaced by `core/embed.ae`, so not in
the Ruby API. Both are small `embed.ae` additions if wanted:

- **`flush_or_check`** — the `.actual`-sibling drift variant (writes a
  `<tape>.actual` and compares, instead of overwriting). The Ruby layer has the
  overwrite and `fail_if_changed` variants only.
- **`load_url`** — replaying a tape fetched over HTTP rather than from disk.

## Differences from servirtium-java (by design)

- **Diagnostics are a passive read** (`last_error` / `last_kind` / `last_index`)
  rather than a per-interaction `ServiceInteractionMonitor` callback.
  Equivalent for assertions.
- **No in-process transform pipeline classes.** Mutations are the redact /
  unredact / whole-tape / remove-header / note primitives above, applied by the
  core, not pluggable Ruby transforms.

## Known limitations (inherited from the core)

- **Binary response bodies** rely on the tape's text/base64 path (an existing
  Aether VCR limitation).
- **Default client headers + strict matching** — `Net::HTTP` adds headers the
  tape may not carry; strip them with `remove_header` under `strict_headers`.
  See [usage.md](usage.md#strict-request-matching-and-the-nethttp-default-header-gotcha).
