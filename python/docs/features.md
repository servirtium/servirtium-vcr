# Feature matrix

Servirtium capability checklist (record, playback, redaction/mutation, header
removal, notes, drift, static bypass, strict matching, markdown interop,
diagnostics), mapped through the stack. "Test" = exercised by `test/` against
the real native library.

| Capability | Aether core | embed C-ABI | Python API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `servirtium.playback` | ✅ |
| Record → write tape on commit | ✅ | ✅ | `servirtium.record`, `server.commit()` / `server.discard()` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | ✅ POST |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | ✅ via POST |
| Redactions | ✅ | ✅ | `.redact(field, …)` | ✅ |
| Volatile values (placeholders → `{{name-N}}` tokens) | ✅ | ✅ | `.volatile_rule(scope, pattern)`, `.bind(name, value)`, `.volatile_profile(path)`, `.volatile_markers(style)`, `server.volatile_report()` | ✅ |
| Whole-tape redaction (collapse to one constant) | ✅ | ✅ | `.redact_whole_tape(pattern, replacement)` | — |
| Unredactions | ✅ | ✅ | `.unredact(field, …)` | ✅ |
| Header removal | ✅ | ✅ | `.remove_header(field, name)` | ✅ |
| Notes | ✅ | ✅ | `.note(…)` / `VcrServer.note` | ✅ |
| Strict request matching | ✅ | ✅ | `.strict_headers()` | ✅ pass + fail |
| JSON request-body matching (semantic, opt-in) | ✅ | ✅ | `.pretty_json()` on playback | — |
| Reusable / order-independent matching (opt-in) | ✅ | ✅ | `.match_multiple()` | — |
| Match on a specific request header (opt-in) | ✅ | ✅ | `.match_header(name)` | — |
| Static-content bypass | ✅ | ✅ | `.static_content(mount, dir)` | ✅ |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `.fail_if_changed()` | ✅ |
| Header presets (transport / cloud vendor) | ✅ | ✅ | `.remove_transport_headers()` / `.remove_cloud_headers(vendor)` | ✅ |
| Credential redaction preset | ✅ | ✅ | `.redact_credentials()` / `.redact_credential_header(name)` | ✅ |
| License notice / upstream CA file / pretty JSON | ✅ | ✅ | `.add_license_notice(text)` / `.upstream_cafile(path)` / `.pretty_json(n)` | ✅ notice + presets |
| Stable order (record, opt-in; needs `pretty_json` for JSON) | ✅ | ✅ | `.sort_json_keys()` / `.sort_json_array(path, by)` / `.sort_json_array_at(request_regex, path, by)` / `.sort_response_headers()` / `.sort_header_value(name)` | ✅ |
| Playback range (replay interactions `from`..`to` by number) | ✅ | ✅ | `.playback_range(from_, to=-1)` | ✅ |
| Format options (indent / emphasize) | ✅ | ✅ | `.indent_code_blocks()` / `.emphasize_http_verbs()` / `.pretty_xml()` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `last_error`/`last_kind`/`last_index` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ | ✅ | (automatic) | — (host uses Content-Length) |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `.port(0)` → `vcr.port` | ✅ |

## In the C ABI, not in the Python API

Both are exported by `core/embed.ae` and declared in `servirtium/_native.py`,
but the Python builders do not call them yet:

- **`flush_or_check`** (`aether_vcr_embed_stop_and_flush_or_check`) — the
  `.actual`-sibling drift variant (writes a `<tape>.actual` and compares,
  instead of overwriting). `commit()` uses the overwrite and `fail_if_changed`
  variants only.
- **`load_url`** (`aether_vcr_embed_open_playback_url`) — replaying a tape
  fetched over HTTP rather than from disk.

## Differences from servirtium-java (by design)

- **Diagnostics are a passive read** (`last_error`/`last_kind`/`last_index`)
  rather than a per-interaction `ServiceInteractionMonitor` callback.
  Equivalent for assertions.
- **No in-process transform pipeline classes.** Mutations are the
  redact / unredact / remove-header / note primitives above, applied by the
  core, not pluggable Python transforms.

## Notes on the core's behaviour

- **Binary bodies** are supported: the core writes them base64 on the tape
  under a `base64 below` heading and replays the bytes.
- **Default client headers + strict matching** — `urllib`/`http.client` add
  headers the tape may not carry; strip them with `remove_header` under
  `strict_headers()`. See [usage.md](usage.md#strict-request-matching).
