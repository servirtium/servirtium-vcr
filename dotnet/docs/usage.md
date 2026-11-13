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

### Volatile values (deterministic re-record, replay with fresh ids)

Volatile values ([docs/volatile-values.md](../../docs/volatile-values.md))
give one rule set to recording, playback and drift detection. The payoff
is a **byte-identical re-record**, and a tape that replays against a client
that mints fresh ids and timestamps every run.

```csharp
// Recording: each placeholder's value becomes a token ({{messageId-1}}),
// and the rules are written into the tape.
Vcr.Record(tape, upstream)
    .PrettyXml(2)
    .VolatileRule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")
    .VolatileRule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")
    .VolatileRule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;")
    .VolatileRule("response headers", "Date: {{serverDate}}")
    .Start();

// Playback: the tape's own "## Volatile values" block applies; the test binds
// what no request carries (the server's Date), as a string it formatted.
using var vcr = Vcr.Playback(tape).PrettyXml(2)
    .Bind("serverDate", DateTime.UtcNow.ToString("R"))
    .Start();
Console.WriteLine(vcr.VolatileReport());   // rules, binds, bindings, warnings
```

`RedactWholeTape(pattern, constant)` remains for values nobody correlates
that a client must still parse: every regex match becomes the constant.

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real
value, rewrite the recorded **request** expectation before matching:

```csharp
Vcr.Playback(tape)
    .StrictHeaders()
    .Unredact(VcrField.RequestHeaders, "Bearer REDACTED", realToken)
    .Start();
```

> **`Unredact` only affects the request side** (path, request headers, request
> body) — it rewrites what the tape *expects to receive* so a scrubbed tape
> still matches the live request. It does **not** change the response the VCR
> sends back. To rewrite values in the **response** that goes to the SUT (e.g. a
> taped `nextLink` / absolute URL so paging resolves against the test's own
> host), use [`Substitute`](#rewriting-response-values-substitution) instead.

## Rewriting response values (substitution)

On playback the VCR fills `{{request.host}}`, `{{request.scheme}}` and
`{{baseUrl}}` (from the live request) plus any `Substitute` placeholders in the
recorded **response** body and headers — so a taped absolute URL points back at
the test's own host:

```csharp
Vcr.Playback(tape)
    // {{baseUrl}}/{{request.host}}/{{request.scheme}} are filled automatically;
    // register your own placeholders explicitly:
    .Substitute(VcrField.ResponseBody,    "{{vault}}", "https://" + host)
    .Substitute(VcrField.ResponseHeaders, "{{vault}}", "https://" + host)
    .Start();
```

Only `VcrField.ResponseBody` and `VcrField.ResponseHeaders` are accepted.

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

Two further opt-in matchers relax the default strict ordered playback:
`.MatchMultiple()` matches any recorded interaction (not just the next in
sequence) without consuming it — reusable and order-independent, for polling or
non-deterministic request order — and `.MatchHeader(name)` matches on a single
named request header's value, ignoring the rest of the recorded header block.

`.MatchHeader` works for **any** header, including `Host` — so to require that
the SUT called the right virtual host (e.g. a specific `vault.example` rather
than whatever host the tape was recorded against), add `.MatchHeader("Host")`:

```csharp
Vcr.Playback(tape).MatchHeader("Host").Start();
```

## Asserting every interaction was used

`AssertNoMismatches()` catches *wrong* requests, but not a test that stops early
and leaves taped interactions unused (e.g. the SUT skipped a recorded sign-in
step). After the SUT has finished, `AssertAllConsumed()` throws unless every
recorded interaction was replayed at least once (works in ordered and
`MatchMultiple` playback); the exception lists the unused ones:

```csharp
using var vcr = Vcr.Playback(tape).Start();
// ... drive the SUT ...
vcr.AssertAllConsumed();   // throws listing [i] METHOD /path for any unused
```

## Asserting the TLS version (server side)

With TLS enabled, `LastTlsProtocol` reports what the **server** served over, so
a test can assert TLS 1.3 was actually used rather than only setting the client
to it:

```csharp
using var vcr = Vcr.Playback(tape).Tls(certPath, keyPath).Start();
Assert.Equal("TLSv1.3", vcr.LastTlsProtocol);
```

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
    .PrettyXml(2)            // pretty-print recorded XML bodies
    .PrettyJson(2)           // pretty-print recorded JSON bodies
    .AddLicenseNotice("...") // text under "## LICENSE NOTICE" atop each tape
    .Start();
```

Playback tolerates either form regardless, so cross-implementation tapes
load cleanly.

## Stable order (record, opt-in)

For a service that answers in a different order every run. All off by default;
the tape is byte-exact without them.

```csharp
Vcr.Record(tape, upstream)
    .PrettyJson(2)                                  // required: sorted JSON is only written pretty-printed
    .SortJsonKeys()                                 // object keys sorted at every depth
    .SortJsonArray("versions", "/created")          // arrays `versions` holds, by member
    .SortJsonArrayAt("^/secrets", "", "name")       // only for matching request paths
    .SortResponseHeaders()                          // header lines by name
    .SortHeaderValue("Allow")                       // "POST, GET" -> "GET, POST"
    .Start();
```

A rule the core refuses (an empty header name, a bad regex) throws
`VcrException` at `Start()`. `SortJsonKeys()` / `SortJsonArray*()` without
`PrettyJson()` are refused when the tape is written: `Dispose()` throws
`VcrException` ("sort_json_keys needs pretty_json ...") and writes nothing.

## Playback range

Replay only a slice of a tape, by interaction number (the `## Interaction N`
headings, 0-based, inclusive; `to` < 0 means through the last):

```csharp
Vcr.Playback(tape).PlaybackRange(4, 6).Start();
```

A request outside the range is never served (kind `VcrOutcome.PathOrMethodDiff`,
"... is outside the playback range 4-6"). A bad range throws `VcrException` at
`Start()`.

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
| `Dispose()` | stop; flush tape if recording; free the native handle (idempotent; read diagnostics before disposing) |

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
