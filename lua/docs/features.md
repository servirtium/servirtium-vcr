# Feature matrix

Servirtium capability checklist (record, playback, redaction/mutation, header
removal, whole-tape normalization, notes, drift, static bypass, strict
matching, markdown interop, diagnostics), mapped through the stack. "Test" =
exercised by the binding's `tests/*.lua` suite against the real native library,
unless noted as a core probe (libservirtium_vcr's `core_tests/`).

| Capability | Aether core | embed C-ABI | Lua API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `servirtium.playback(tape)` | ✅ |
| Record → flush tape | ✅ | ✅ | `servirtium.record(tape, upstream)` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | ✅ POST |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | ✅ via POST |
| Redactions | ✅ | ✅ | `:redact(field, …)` | ✅ |
| Unredactions | ✅ | ✅ | `:unredact(field, …)` | ✅ |
| Header removal | ✅ | ✅ | `:remove_header(field, name)` | ✅ |
| Volatile values (ids, timestamps → `{{name-N}}`) | ✅ | ✅ | `:volatile_rule(scope, pattern, kind)` / `:bind(name, value)` / `:volatile_profile(path)` / `:volatile_markers(style)` / `Server:volatile_report()` | ✅ |
| Whole-tape redact (uncorrelated volatiles → constant) | ✅ | ✅ | `:redact_whole_tape(pattern, repl)` | ✅ core probe |
| Notes | ✅ | ✅ | `:note(…)` (builder) / `Server:note` | ✅ |
| Strict request matching | ✅ | ✅ | `:strict_headers()` | ✅ pass + fail |
| JSON request-body matching (semantic, opt-in) | ✅ | ✅ | `:match_json_body()` | — |
| Reusable / order-independent matching (opt-in) | ✅ | ✅ | `:match_multiple()` | — |
| Match on a specific request header (opt-in) | ✅ | ✅ | `:match_header(name)` | — |
| Static-content bypass | ✅ | ✅ | `:static_content(mount, dir)` | ✅ |
| Untaped (incidental paths, no cursor consume) | ✅ | ✅ | `:untaped(path)` | ✅ |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `:fail_if_changed()` | ✅ |
| Header presets (transport / cloud vendor) | ✅ | ✅ | `:remove_transport_headers()` / `:remove_cloud_headers(vendor)` | ✅ |
| Credential redaction preset | ✅ | ✅ | `:redact_credentials()` / `:redact_credential_header(name)` | ✅ |
| License notice / upstream CA file / pretty JSON | ✅ | ✅ | `:add_license_notice(text)` / `:upstream_cafile(path)` / `:pretty_json(n)` | ✅ notice + pretty JSON |
| Stable ordering (record, opt-in) | ✅ | ✅ | `:sort_json_keys()` / `:sort_json_array(path, by)` / `:sort_json_array_at(request, path, by)` / `:sort_response_headers()` / `:sort_header_value(name)` (JSON sorting needs `:pretty_json(n)`) | ✅ |
| Playback range (replay a slice of a tape) | ✅ | ✅ | `:playback_range(from, to)` / `server:set_playback_range(from, to)` | ✅ |
| Format options (indent / emphasize) | ✅ | ✅ | `:indent_code_blocks()` / `:emphasize_http_verbs()` / `:pretty_xml(n)` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `:last_error()` / `:last_kind()` / `:last_index()` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ | ✅ | (automatic) | ✅ (Aether upstream chunks) |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `:port(0)` → `Server:port()` | ✅ |
| One server per port (N servers / process) | ✅ | ✅ | (each `:start()` owns its handle) | ✅ |

Volatile values are specified in [`docs/volatile-values.md`](../../docs/volatile-values.md)
and proven in `tests/playback.lua`; `:redact_whole_tape` is wired too. One-server-per-port is proven
directly in `tests/playback.lua` (two playback VCRs on two ports, each replaying
its own tape) and the no-leak guarantee in `tests/mutation.lua`.

## In the C-ABI, declared but not on the Lua builders

Declared in `csrc/servirtium.c` (mirroring the full ABI) but not surfaced as a
builder method — a small addition if wanted:

- **`stop_and_flush_or_check`** (`aether_vcr_embed_stop_and_flush_or_check`) —
  the `.actual`-sibling drift variant (writes a `<tape>.actual` and compares
  instead of overwriting). `Server:close()` uses overwrite
  (`stop_and_flush`) and the fail-if-changed variant
  (`stop_and_flush_fail_if_changed`) only.
- **`open_playback_url`** (`aether_vcr_embed_open_playback_url`) — replaying a
  tape fetched over HTTP rather than from disk; the C function `open_playback_url`
  is exposed on `servirtium_native` but there is no `servirtium.playback_url`
  builder yet.

## Known limitations (inherited from the core)

- **Binary response bodies** rely on the tape's text/base64 path (an existing
  Aether VCR limitation).
- **Default client headers + strict matching** — curl adds default `User-Agent`
  and `Accept: */*` headers a strict tape may not carry; suppress them on the
  request (`-H 'User-Agent:' -H 'Accept:'`) or drop them with `:remove_header`
  under `:strict_headers()`. See [usage.md](usage.md#strict-request-matching).
