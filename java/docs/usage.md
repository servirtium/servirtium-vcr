# Usage

All fixtures start from `Vcr.playback(tapePath)` or
`Vcr.record(tapePath, upstreamBase)`, configured with a fluent builder, and
started with `.start()`, which returns a `VcrServer`. `VcrServer` is
`AutoCloseable` — close it (a try-with-resources block, or in `@AfterEach`) to
stop it (and, in record mode, flush the tape).

The system-under-test only ever needs `vcr.baseUrl()`. Everything else —
tape path, mode, mutations, assertions — lives in your test setup/teardown.

All examples assume `import com.paulhammant.servirtium.vcr.*;`.

## Playback

```java
try (VcrServer vcr = Vcr.playback("tapes/climate_api.md")
        .port(0)                 // 0 = OS-assigned
        .start()) {

    HttpClient client = HttpClient.newHttpClient();
    HttpResponse<String> r = client.send(
        HttpRequest.newBuilder(URI.create(vcr.baseUrl() + "/api/v1/countries")).build(),
        HttpResponse.BodyHandlers.ofString());

    assertEquals(Outcome.OK, vcr.lastKind());
}
```

## Recording

```java
try (VcrServer vcr = Vcr.record("tapes/climate_api.md", "https://climatedataapi.worldbank.org")
        .port(0)
        .start()) {

    HttpClient client = HttpClient.newHttpClient();
    client.send(HttpRequest.newBuilder(URI.create(vcr.baseUrl() + "/api/v1/countries")).build(),
                HttpResponse.BodyHandlers.ofString());
    // Close (end of try-with-resources, or in tearDown) forwards nothing more
    // and writes the markdown tape to disk.
}
```

Record forwards each request to the upstream, returns the **real** response
to your SUT, and captures the exchange. Chunked responses are de-chunked
automatically.

### Drift detection

```java
Vcr.record(tape, upstream).failIfChanged().start();
```

On close, the freshly recorded tape is written **and** a `VcrException` is
thrown if it differs from the committed tape — so `git diff` shows the drift
and CI fails loudly. (Without `failIfChanged`, close just overwrites.)

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```java
Vcr.record(tape, upstream)
    .redact(Field.RESPONSE_BODY, "Bearer abc123", "Bearer REDACTED")
    .redact(Field.PATH,          "session=xyz",   "session=REDACTED")
    .start();
```

`Field` is `PATH`, `RESPONSE_BODY`, `REQUEST_HEADERS`, `REQUEST_BODY`, or
`RESPONSE_HEADERS`.

### Whole-tape normalization and redaction

`redact` scrubs one field of each interaction. Two companions instead scan the
**whole tape** (every field, every interaction) so volatile values are stable
on re-record — the payoff being a byte-identical re-record, so
`failIfChanged()` drift detection fires only on real upstream changes, not on
fresh ids or timestamps.

```java
Vcr.record(tape, upstream)
    // Correlated, server-generated value that recurs (a created entity's id
    // echoed back in a later request path): every distinct match becomes a
    // stable {{order-N}} token, and the SAME value maps to the SAME token
    // everywhere — so it round-trips on playback.
    .normalizeWholeTape("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "order")
    // Uncorrelated volatile you never match against (a Date header, a request
    // id): collapse every match to one constant.
    .redactWholeTape("Date: .+ GMT", "Date: <DATE>")
    .start();
```

- `normalizeWholeTape(pattern, name)` mints the replacement for you — each
  distinct match across the tape, in first-appearance order, becomes
  `{{name-1}}`, `{{name-2}}`, … Use it when the value is correlated (recurs in
  a later request) so it must map consistently and round-trip on playback.
- `redactWholeTape(pattern, replacement)` collapses every match to the literal
  `replacement`. Use it when the value is uncorrelated and the number of
  distinct values can vary run to run, where a per-value token wouldn't be
  byte-stable.

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real
value, rewrite the recorded expectation before matching:

```java
Vcr.playback(tape)
    .strictHeaders()
    .unredact(Field.REQUEST_HEADERS, "Bearer REDACTED", realToken)
    .start();
```

## Removing headers

Drop noisy/sensitive headers from a block (case-insensitive name match):

```java
Vcr.record(tape, upstream)
    .removeHeader(Field.RESPONSE_HEADERS, "Set-Cookie")
    .removeHeader(Field.REQUEST_HEADERS,  "Authorization")
    .start();
```

This is also useful on **playback under `strictHeaders()`**: the JDK
`HttpClient` always sends `User-Agent`, `Host`, and `Connection`, so drop them
from the request block to compare only the headers you care about:

```java
Vcr.playback(tape)
    .strictHeaders()
    .removeHeader(Field.REQUEST_HEADERS, "User-Agent")
    .removeHeader(Field.REQUEST_HEADERS, "Host")
    .removeHeader(Field.REQUEST_HEADERS, "Connection")
    .start();
```

## Strict request matching

By default the dispatcher matches on method + path (and on request
headers/body when the tape entry carries them). `strictHeaders()` forces
header comparison on every interaction; mismatches return `599` to the SUT
and populate the diagnostics:

```java
try (VcrServer vcr = Vcr.playback(tape).strictHeaders().start()) {
    // ... drive SUT ...
    if (vcr.lastKind() != Outcome.OK) {
        throw new RuntimeException(vcr.lastError());   // e.g. "'X' request header ..."
    }
}
```

> **HTTP/2 gotcha:** the JDK `HttpClient` defaults to HTTP/2 and sends the
> h2c upgrade headers (`HTTP2-Settings`, `Upgrade`). Under `strictHeaders()`
> these get flagged as unexpected. Build the client with
> `HttpClient.newBuilder().version(HttpClient.Version.HTTP_1_1).build()`, or
> `removeHeader` them.

For request bodies, `matchJsonBody()` is an opt-in matcher that compares by
semantic JSON equality (object key order and insignificant whitespace ignored,
array order significant); non-JSON bodies fall back to byte-exact.

## Notes

Annotate the tape for humans (ignored on playback). The builder note attaches
to the first interaction; stage later ones on the running server:

```java
try (VcrServer vcr = Vcr.record(tape, upstream)
        .note("Login", "Establishes the session the next calls reuse")
        .start()) {
    // ... first request recorded with the note ...
    vcr.note("Overdraft", "Should be refused");   // attaches to the next interaction
    // ... next request ...
}
```

## Static content (UI tests)

Serve a path prefix from disk instead of the tape — keeps the tape focused on
API calls while CSS/JS/images come from your build output:

```java
Vcr.playback(tape)
    .staticContent("/assets", "build/static")
    .start();
```

## Markdown format options (record)

```java
Vcr.record(tape, upstream)
    .indentCodeBlocks()      // 4-space-indented blocks instead of ``` fences
    .emphasizeHttpVerbs()    // *GET* instead of bare GET in headings
    .start();
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## `VcrServer` members

| Member | Meaning |
|---|---|
| `baseUrl()` | `http://host:port` for the SUT |
| `port()` | the resolved (possibly OS-assigned) port |
| `tapeLength()` | tape entries (playback) / interactions captured (record) |
| `lastKind()` | `Outcome` of the most recent dispatch |
| `lastError()` | mismatch diagnostic, or empty |
| `lastIndex()` | tape index of the last matched interaction, or -1 |
| `note(title, body)` | stage a note for the next recorded interaction |
| `resetCursor()` | rewind replay to interaction 0; clear last-* |
| `clearLastError()` | clear the last-error slot between sub-cases |
| `close()` | stop; flush tape if recording |

## `Outcome`

`OK`, `PATH_OR_METHOD_DIFF`, `HEADER_MISSING`, `HEADER_VALUE_DIFF`,
`HEADER_UNEXPECTED`, `TAPE_EXHAUSTED`, `BODY_DIFF`, `RECORD_ERROR`.

## Concurrency: one server per port

Each `VcrServer` owns its own handle and all of its state — tape, replay
cursor, mutations, strict/format settings, and diagnostics. So you can run as
many `VcrServer`s as you like at once in one process; they don't share state
and don't stomp each other, and there's no serial-execution requirement (see
[architecture.md](architecture.md#concurrency-one-server-per-port)). A setting on one
fixture never leaks to another.
