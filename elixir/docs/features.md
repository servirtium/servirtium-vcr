# Feature matrix

Servirtium capability checklist (record, playback, redaction/mutation, header
removal, notes, drift, static bypass, strict matching, markdown interop,
diagnostics), mapped through the stack. "Test" = exercised by the ExUnit suite
in `test/` against the real native library.

| Capability | Aether core | embed C-ABI | Elixir API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `Servirtium.playback/2` | ✅ |
| Record → flush tape | ✅ | ✅ | `Servirtium.record/3` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | — |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | — |
| Redactions | ✅ | ✅ | `redact:` opt | ✅ |
| Unredactions | ✅ | ✅ | `unredact:` opt | — |
| Header removal | ✅ | ✅ | `remove_header:` opt | — |
| Notes | ✅ | ✅ | `note:` opt / `Servirtium.note/3` | ✅ |
| Strict request matching | ✅ | ✅ | `strict_headers:` opt | ✅ (reset/leak) |
| Static-content bypass | ✅ | ✅ | `static_content:` opt | ✅ |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `fail_if_changed:` opt | — |
| Format options (indent / emphasize) | ✅ | ✅ | `indent_code_blocks:` / `emphasize_http_verbs:` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `last_error/0`/`last_kind/0`/`last_index/0` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ (≥0.183.0) | ✅ | (automatic) | — |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `port: 0` → `Servirtium.port/1` | ✅ |

The shipped tests cover: playback round-trip, mismatch diagnostics,
record → replay against a local `:gen_tcp` upstream, redaction asserted against
the written tape, a builder note asserted against the written tape, static
content, dynamic port, and process-global state reset (no leak).

## Not (yet) exposed through the C-ABI

Present in the Aether VCR module but not surfaced by `embed.ae`, so not in the
Elixir API. Both are small `embed.ae` additions if wanted:

- **`flush_or_check`** — the `.actual`-sibling drift variant (writes a
  `<tape>.actual` and compares, instead of overwriting). This layer has the
  overwrite and `fail_if_changed` variants only.
- **`load_url`** — replaying a tape fetched over HTTP rather than from disk.

## Known limitations (inherited from the core)

- **One active VCR server per process** in v1 — run tests serially. See
  [architecture.md](architecture.md#one-server-per-process).
- **Binary response bodies** rely on the tape's text/base64 path (an existing
  Aether VCR limitation).
- **Strict-match default headers:** `:httpc` (the SUT client in the tests)
  sends default request headers like `Host`. With `strict_headers: true` these
  can flag a mismatch against a tape that doesn't carry them — drop the offender
  with `remove_header: [{:request_headers, name}]` (see
  [usage.md](usage.md#removing-headers)).
