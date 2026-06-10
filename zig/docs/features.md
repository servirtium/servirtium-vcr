# Feature matrix

Servirtium capability checklist, mapped through the stack. "Test" = exercised
by this binding's `zig build test` suite (`src/playback_test.zig`,
`record_test.zig`, `mutation_test.zig`) against the real native library, unless
noted as a core probe (the shared engine's `core_tests/`).

| Capability | Aether core | embed C-ABI | Zig API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | ✅ | ✅ | `servirtium.Playback.init(alloc, tape)` | ✅ |
| Record → flush tape | ✅ | ✅ | `servirtium.Record.init(alloc, tape, upstream)` | ✅ |
| Custom HTTP verbs (POST/PUT/…) | ✅ | ✅ | (automatic) | ✅ POST |
| Request body matching | ✅ | ✅ | (automatic when tape has a body) | ✅ via POST |
| Redactions | ✅ | ✅ | `.redact(field, …)` | ✅ |
| Unredactions | ✅ | ✅ | `.unredact(field, …)` | ✅ |
| Header removal | ✅ | ✅ | `.removeHeader(field, name)` | ✅ |
| Whole-tape normalize (correlated → `{{name-N}}`) | ✅ | ✅ | `.normalizeWholeTape(pattern, name)` | ✅ core probe |
| Whole-tape redact (uncorrelated → constant) | ✅ | ✅ | `.redactWholeTape(pattern, repl)` | ✅ core probe |
| Notes | ✅ | ✅ | `.note(…)` / `Server.note` | ✅ |
| Strict request matching | ✅ | ✅ | `.strictHeaders()` | ✅ pass + fail |
| Static-content bypass | ✅ | ✅ | `.staticContent(mount, dir)` | ✅ |
| Untaped (incidental paths, no cursor consume) | ✅ | ✅ | `.untaped(path)` | ✅ |
| Drift: overwrite + fail-if-changed | ✅ | ✅ | `.failIfChanged()` | ✅ |
| Format options (indent / emphasize) | ✅ | ✅ | `.indentCodeBlocks()` / `.emphasizeHttpVerbs()` | — |
| Diagnostics (last error/kind/index) | ✅ | ✅ | `.lastError()` / `.lastKind()` / `.lastIndex()` | ✅ |
| gzip normalize/restore | ✅ | ✅ | (automatic) | — |
| Chunked de-chunk on record | ✅ | ✅ | (automatic) | — (test upstream uses Content-Length) |
| Markdown interop (other impls' tapes) | ✅ | ✅ | (format-level) | — |
| Dynamic (OS-assigned) port | ✅ | ✅ | `.port(0)` → `Server.port()` | ✅ |
| One server per port (N servers / process) | ✅ | ✅ | (each `start()` owns its handle) | ✅ |

## Test scenarios (14)

Playback (`src/playback_test.zig`):

1. replays a recorded GET (body + `Outcome.ok` + tape length + non-zero port);
2. flags a path mismatch via diagnostics (`lastKind != ok`, non-empty error);
3. unredaction lets a scrubbed tape match (secure_get + unredact Authorization,
   under strict headers);
4. strict matching flags a missing request header;
5. static content served from disk (and the tape still replays);
6. untaped path 404s without consuming the cursor;
7. two playback servers run at once (one server per port).

Record (`src/record_test.zig`):

8. record then replays the same interaction (record GET, flush, replay offline);
9. record + replay a POST with a body (asserts upstream saw `POST`).

Mutation (`src/mutation_test.zig`):

10. record redacts the response body before it lands on the tape;
11. record attaches a note (`## [Note] … :` heading on the tape);
12. record removes a named response header (present without, gone with);
13. mutation state does not leak between fixtures;
14. fail-if-changed returns `error.VcrError` on drift (and still writes the tape).

The record-mode tests drive a throwaway `FakeUpstream` (`src/testutil.zig`) —
a minimal HTTP/1.1 responder on `127.0.0.1:0` over `std.Io.net`, on a
background thread — and record to a temp tape, never into `tapes/`.

## In the C-ABI, not yet on the Zig surface

Declared in `src/servirtium.zig`'s `extern "c"` block but not wired to a
`Server`/builder method:

- **`flush_or_check`** (`aether_vcr_embed_stop_and_flush_or_check`) — the
  `.actual`-sibling drift variant. `Server.close` uses the overwrite and
  `failIfChanged` variants only.
- **`load_url`** (`aether_vcr_embed_open_playback_url`) — replaying a tape
  fetched over HTTP; declared, but no builder yet.

## Known limitations (inherited from the core)

- **Binary response bodies** rely on the tape's text/base64 path.
- **Strict matching + default client headers** — under `strictHeaders()`, any
  header the client adds (curl's `User-Agent`/`Accept`) must appear on the
  recorded request block or be suppressed on the request. The strict tests
  pass `-H 'User-Agent:' -H 'Accept:'` to curl to match an
  Authorization-only block.
