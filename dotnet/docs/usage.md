# Usage

All fixtures start from `Vcr.Playback(tapePath)` or
`Vcr.Record(tapePath, upstreamBase)`, configured with a fluent builder, and
started with `.Start()`, which returns a `VcrServer`. Dispose the server to
stop it (and, in record mode, flush the tape).

The system-under-test only ever needs `vcr.BaseUrl`. Everything else —
tape path, mode, mutations, assertions — lives in your test setup/teardown.

## Playback

```csharp
using var vcr = Vcr.Playback("tapes/climate_api.md")
    .Port(0)                 // 0 = OS-assigned; ideal for parallel suites
    .Start();

using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
var body = await client.GetStringAsync("/api/v1/countries");

Assert.Equal(VcrOutcome.Ok, vcr.LastKind);
```

## Recording

```csharp
using var vcr = Vcr.Record("tapes/climate_api.md", "https://climatedataapi.worldbank.org")
    .Port(0)
    .Start();

using var client = new HttpClient { BaseAddress = new Uri(vcr.BaseUrl) };
await client.GetStringAsync("/api/v1/countries");
// Dispose (end of `using`, or in TearDown) forwards nothing more and writes
// the markdown tape to disk.
```

Record forwards each request to the upstream, returns the **real** response
to your SUT, and captures the exchange. Chunked responses are de-chunked
automatically.

### Drift detection

```csharp
Vcr.Record(tape, upstream).FailIfChanged().Start();
```

On dispose, the freshly recorded tape is written **and** a `VcrException` is
thrown if it differs from the committed tape — so `git diff` shows the drift
and CI fails loudly. (Without `FailIfChanged`, dispose just overwrites.)

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```csharp
Vcr.Record(tape, upstream)
    .Redact(VcrField.ResponseBody,    "Bearer abc123", "Bearer REDACTED")
    .Redact(VcrField.Path,            "session=xyz",   "session=REDACTED")
    .Start();
```

`VcrField` is `Path`, `ResponseBody`, `RequestHeaders`, `RequestBody`, or
`ResponseHeaders`.

### Whole-tape rewrites (deterministic re-record)

`Redact` targets one field of each interaction. For volatility that spans
the **whole tape** — values that recur across fields and interactions —
there are two tape-wide verbs, applied at flush time. The payoff is a
**byte-identical re-record**: a tape that scrubs its non-determinism this
way records the same bytes every run, so `git diff` stays clean.

```csharp
Vcr.Record(tape, upstream)
    // Correlated ids: a UUID minted in a POST response that reappears in
    // later request paths. Each distinct match becomes a stable {{id-N}}
    // token (numbered in first-appearance order), so the same value maps to
    // the same token everywhere — and round-trips on playback.
    .NormalizeWholeTape(@"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "id")
    // Uncorrelated volatiles that never need to round-trip (e.g. the Date
    // header, whose match count can vary run to run). Every match collapses
    // to one constant.
    .RedactWholeTape(@"[A-Z][a-z][a-z], \d{2} [A-Z][a-z][a-z] \d{4} \d{2}:\d{2}:\d{2} GMT", "{{date}}")
    .Start();
```

Use `NormalizeWholeTape` when the value must stay correlated (the same id
in request and response); use `RedactWholeTape` when it just needs to
disappear consistently.

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real
value, rewrite the recorded expectation before matching:

```csharp
Vcr.Playback(tape)
    .StrictHeaders()
    .Unredact(VcrField.RequestHeaders, "Bearer REDACTED", realToken)
    .Start();
```

## Removing headers

Drop noisy/sensitive headers from a block (case-insensitive name match):

```csharp
Vcr.Record(tape, upstream)
    .RemoveHeader(VcrField.ResponseHeaders, "Set-Cookie")
    .RemoveHeader(VcrField.RequestHeaders,  "Authorization")
    .Start();
```

## Strict request matching

By default the dispatcher matches on method + path (and on request
headers/body when the tape entry carries them). `StrictHeaders()` forces
header comparison on every interaction; mismatches return `599` to the SUT
and populate the diagnostics:

```csharp
using var vcr = Vcr.Playback(tape).StrictHeaders().Start();
// ... drive SUT ...
if (vcr.LastKind != VcrOutcome.Ok)
    throw new Exception(vcr.LastError);   // e.g. "<name> request header ..."
```

Opt in to `.MatchJsonBody()` alongside (or instead of) `StrictHeaders()` to
match request bodies by semantic JSON equality — object key order and
insignificant whitespace are ignored (array order still matters), and non-JSON
bodies fall back to byte-exact matching.

## Notes

Annotate the tape for humans (ignored on playback). The builder note
attaches to the first interaction; stage later ones on the running server:

```csharp
using var vcr = Vcr.Record(tape, upstream)
    .Note("Login", "Establishes the session the next calls reuse")
    .Start();
// ... first request recorded with the note ...
vcr.Note("Overdraft", "Should be refused");   // attaches to the next interaction
// ... next request ...
```

## Static content (UI tests)

Serve a path prefix from disk instead of the tape — keeps the tape focused
on API calls while CSS/JS/images come from your build output:

```csharp
Vcr.Playback(tape)
    .StaticContent("/assets", "build/static")
    .Start();
```

## Markdown format options (record)

```csharp
Vcr.Record(tape, upstream)
    .IndentCodeBlocks()      // 4-space-indented blocks instead of ``` fences
    .EmphasizeHttpVerbs()    // *GET* instead of bare GET in headings
    .Start();
```

Playback tolerates either form regardless, so cross-implementation tapes
load cleanly.

## `VcrServer` members

| Member | Meaning |
|---|---|
| `BaseUrl` | `http://host:port` for the SUT |
| `Port` | the resolved (possibly OS-assigned) port |
| `TapeLength` | tape entries (playback) / interactions captured (record) |
| `LastKind` | `VcrOutcome` of the most recent dispatch |
| `LastError` | mismatch diagnostic, or empty |
| `LastIndex` | tape index of the last matched interaction, or -1 |
| `Note(title, body)` | stage a note for the next recorded interaction |
| `ResetCursor()` | rewind replay to interaction 0; clear last-* |
| `ClearLastError()` | clear the last-error slot between sub-cases |
| `Dispose()` | stop; flush tape if recording |

## `VcrOutcome`

`Ok`, `PathOrMethodDiff`, `HeaderMissing`, `HeaderValueDiff`,
`HeaderUnexpected`, `TapeExhausted`, `BodyDiff`, `RecordError`.

## Concurrency: one server per port

Each `.Start()` returns a `VcrServer` that owns its own native handle, with
its own tape, cursor, mutations, and diagnostics. You can run **multiple
`VcrServer`s concurrently** in one process — different ports, different
tapes, independent cursors — so there's no need to run tests serially.
Because each fixture starts from a fresh handle, its config never leaks into
another. See [architecture.md](architecture.md#concurrency-one-server-per-port).
