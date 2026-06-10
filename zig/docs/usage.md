# Usage

All fixtures start from `servirtium.Playback.init(allocator, tapePath)` or
`servirtium.Record.init(allocator, tapePath, upstreamBase)`, are configured
with a fluent builder, and started with `.start()`, which returns
`!Server`. `close()` the server to stop it (and, in record mode, flush the
tape). Tape paths, hosts, labels, patterns are NUL-terminated `[:0]const u8`
and are *borrowed* — they must outlive `start()`.

The system-under-test only ever needs `srv.baseUrl()`. Everything else — tape
path, mode, mutations, assertions — lives in your test setup/teardown.

## Strings and ownership

Every accessor that returns a native string (`baseUrl`, `lastError`) copies it
into a slice allocated from the allocator you passed to `init`, and frees the
native pointer for you. **You** free the returned slice with `allocator.free`.

```zig
const base = try srv.baseUrl();
defer allocator.free(base);
```

## Playback

```zig
var srv = try servirtium.Playback.init(allocator, "tapes/climate_api.md")
    .port(0)             // 0 = OS-assigned
    .start();
defer srv.close() catch {};

const base = try srv.baseUrl();
defer allocator.free(base);
// ... point your HTTP client at `base` and make requests ...

if (srv.lastKind() != .ok) {
    const e = try srv.lastError();
    defer allocator.free(e);
    std.debug.print("mismatch: {s}\n", .{e});
}
```

## Recording

```zig
var srv = try servirtium.Record.init(allocator, "tapes/climate_api.md", "https://upstream.example")
    .port(0)
    .start();

// ... drive the SUT against srv.baseUrl() ...

// close flushes the markdown tape to disk.
try srv.close();
```

Record forwards each request to the upstream, returns the **real** response to
your SUT, and captures the exchange. Chunked responses are de-chunked.

### Drift detection

```zig
var srv = try servirtium.Record.init(allocator, tape, upstream).failIfChanged().start();
// ... drive SUT ...
srv.close() catch |err| {
    // the freshly recorded tape was still written, but it differs from the
    // committed one — git diff shows the drift and CI fails loudly.
    return err; // error.VcrError
};
```

Without `failIfChanged`, `close` just overwrites.

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```zig
_ = servirtium.Record.init(allocator, tape, upstream)
    .redact(.response_body, "Bearer abc123", "Bearer REDACTED")
    .redact(.path,          "session=xyz",   "session=REDACTED");
```

`Field` is `.path`, `.response_body`, `.request_headers`, `.request_body`, or
`.response_headers`.

## Whole-tape normalization (deterministic re-records)

`redact` targets one field of each interaction. Two companion record-mode verbs
sweep the **whole tape** so a value the server mints anew each run stops
dirtying the diff:

```zig
_ = servirtium.Record.init(allocator, tape, upstream)
    // CORRELATED value (an id echoed back in later request paths): each
    // distinct match becomes a stable {{order-N}} token (identity preserved).
    .normalizeWholeTape("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "order")
    // UNCORRELATED volatile (a Date header): collapse every match to one constant.
    .redactWholeTape("Date: .+ GMT", "Date: <DATE>");
```

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real
value, rewrite the recorded expectation before matching:

```zig
_ = servirtium.Playback.init(allocator, tape)
    .strictHeaders()
    .unredact(.request_headers, "Bearer REDACTED", real_token);
```

## Removing headers

```zig
_ = servirtium.Record.init(allocator, tape, upstream)
    .removeHeader(.response_headers, "Set-Cookie")
    .removeHeader(.request_headers,  "Authorization");
```

## Strict request matching

By default the dispatcher matches on method + path (and on request headers/body
when the tape entry carries them). `strictHeaders()` forces header comparison
on every interaction; mismatches populate the diagnostics:

```zig
var srv = try servirtium.Playback.init(allocator, tape).strictHeaders().start();
// ... drive SUT ...
if (srv.lastKind() != .ok) { /* srv.lastError() e.g. "<name> request header ..." */ }
```

> Note: HTTP clients add default headers (`User-Agent`, `Accept`). Under
> `strictHeaders()` those must appear on the recorded request block or be
> suppressed on the request. The suite passes `-H 'User-Agent:' -H 'Accept:'`
> to curl to match an Authorization-only block.

## Notes

The builder note attaches to the first interaction; stage later ones on the
running server:

```zig
var srv = try servirtium.Record.init(allocator, tape, upstream)
    .note("Login", "Establishes the session the next calls reuse")
    .start();
// ... first request recorded with the note ...
try srv.note("Overdraft", "Should be refused"); // attaches to the next interaction
```

## Static content (UI tests)

```zig
_ = servirtium.Playback.init(allocator, tape).staticContent("/assets", "build/static");
```

## Markdown format options (record)

```zig
_ = servirtium.Record.init(allocator, tape, upstream)
    .indentCodeBlocks()     // 4-space-indented blocks instead of ``` fences
    .emphasizeHttpVerbs();  // *GET* instead of bare GET in headings
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## `Server` members

| Member | Meaning |
|---|---|
| `baseUrl()` | `http://host:port` for the SUT (caller frees) |
| `port()` | the resolved (possibly OS-assigned) port |
| `tapeLength()` | tape entries (playback) / interactions captured (record) |
| `lastKind()` | `Outcome` of the most recent dispatch |
| `lastError()` | mismatch diagnostic, or "" (caller frees) |
| `lastIndex()` | tape index of the last matched interaction, or -1 |
| `note(title, body)` | stage a note for the next recorded interaction |
| `resetCursor()` | rewind replay to interaction 0; clear last-* |
| `clearLastError()` | clear the last-error slot between sub-cases |
| `close()` | stop; flush tape if recording (`error.VcrError` on drift if `failIfChanged`) |
| `stop()` | stop without flushing (teardown escape hatch) |

## `Outcome`

`.ok`, `.path_or_method_diff`, `.header_missing`, `.header_value_diff`,
`.header_unexpected`, `.tape_exhausted`, `.body_diff`, `.record_error`.

## Concurrency: one server per port

Each `start()` owns its own native handle, and all of a fixture's state — tape,
cursor, mutations, static mounts, note, diagnostics — is scoped to that handle.
Nothing is process-global, so N `Server`s can run at once and never leak into
each other. See [architecture.md](architecture.md#concurrency-one-server-per-port).

## Low-level `Vcr` wrapper

`src/servirtium.zig` also exposes a thin `Vcr` handle wrapper
(`Vcr.playback` / `Vcr.record` constructors plus `start`, `baseUrl`, `port`,
`lastKind`, `lastError`, `redact`, `stopAndFlush`, `close`, …) for callers who
want to drive the handle directly without the fluent builders.
