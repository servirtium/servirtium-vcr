# Usage

All fixtures start from `Vcr.playback(tapePath)` or
`Vcr.record(tapePath, upstreamBase)`, are configured with a fluent builder,
and started with `.start()`, which returns a `VcrServer`. Call `.close()` to
stop it (and, in record mode, flush the tape).

The SUT only needs `vcr.baseUrl`. Everything else lives in test setup/teardown.

## Playback

```dart
final vcr = Vcr.playback('tapes/climate_api.md').port(0).start();
try {
  // drive the SUT against vcr.baseUrl ...
  expect(vcr.lastKind, VcrOutcome.ok);
} finally {
  vcr.close();
}
```

## Recording

```dart
final vcr = Vcr.record('tapes/climate_api.md', 'https://climatedataapi.worldbank.org')
    .port(0).start();
try {
  // drive the SUT ...
} finally {
  vcr.close();   // forwards nothing more; writes the markdown tape to disk
}
```

Record forwards each request to the upstream, returns the **real** response to
the SUT, and captures it. Chunked responses are de-chunked automatically.

### Drift detection

```dart
Vcr.record(tape, upstream).failIfChanged().start();
// ... close() writes the new tape AND throws VcrException on drift.
```

## Redaction / unredaction

```dart
Vcr.record(tape, upstream)
    .redact(VcrField.responseBody, 'Bearer abc123', 'Bearer REDACTED')
    .redact(VcrField.path,         'session=xyz',   'session=REDACTED')
    .start();

Vcr.playback(tape)
    .strictHeaders()
    .unredact(VcrField.requestHeaders, 'Bearer REDACTED', realToken)
    .start();
```

`VcrField`: `path`, `responseBody`, `requestHeaders`, `requestBody`,
`responseHeaders`.

### Whole-tape normalization

`.redact()` rewrites one field at a time. The whole-tape pair scans **every
field of every interaction** so a volatile that surfaces in a response and then
recurs in a later request path is handled consistently — the payoff is a
**byte-identical re-record**.

```dart
Vcr.record(tape, upstream)
    // Correlated volatiles: every distinct match across the whole tape becomes
    // a stable {{order-N}} token. The same minted id keeps the same token
    // wherever it reappears, and round-trips on playback.
    .normalizeWholeTape(r'order-[0-9a-f]{16}', 'order')
    // Uncorrelated volatiles: every match collapses to one constant.
    .redactWholeTape(r'\w{3}, \d\d \w{3} \d{4} [\d:]+ GMT', 'Thu, 01 Jan 1970 00:00:00 GMT')
    .start();
```

Use `normalizeWholeTape(pattern, name)` when occurrences are correlated (an id
minted once and referenced again); use `redactWholeTape(pattern, replacement)`
when each occurrence is independent (e.g. a `Date` header) and a single fixed
value suffices.

## Header removal / strict / static / notes / format

```dart
Vcr.record(tape, upstream).removeHeader(VcrField.responseHeaders, 'Set-Cookie').start();

final vcr = Vcr.playback(tape).strictHeaders().start();   // mismatch → 599 + diagnostics
if (vcr.lastKind != VcrOutcome.ok) throw StateError(vcr.lastError);

Vcr.playback(tape).staticContent('/assets', 'build/static').start();

final v = Vcr.record(tape, upstream).note('Login', 'establishes the session').start();
v.note('Overdraft', 'should be refused');   // stage a note for the next interaction

Vcr.record(tape, upstream).indentCodeBlocks().emphasizeHttpVerbs().start();
```

> Note: `HttpClient` sends default request headers. Under `strictHeaders()`
> those must be on the recorded block, or dropped via
> `removeHeader(VcrField.requestHeaders, ...)`.

> Note: `matchJsonBody()` is an opt-in request-body matcher that compares by
> semantic JSON equality (object key order and insignificant whitespace
> ignored, array order significant); non-JSON bodies fall back to byte-exact.

> Note: two further opt-in matchers relax strict ordered playback:
> `matchMultiple()` matches any recorded interaction without consuming it
> (reusable, order-independent — for polling/retries or non-deterministic
> order), and `matchHeader(name)` matches on a specific named request header's
> value, ignoring the rest of the recorded header block.

## `VcrServer` members

`baseUrl`, `port`, `tapeLength`, `lastError`, `lastKind` (→ `VcrOutcome`),
`lastIndex`, `note(title, body)`, `resetCursor()`, `clearLastError()`,
`close()` (stop; flush if recording; throw on drift if `failIfChanged`).

`VcrOutcome`: `ok`, `pathOrMethodDiff`, `headerMissing`, `headerValueDiff`,
`headerUnexpected`, `tapeExhausted`, `bodyDiff`, `recordError`.

## Concurrency: one server per port

The ABI is handle-based and one-server-per-port: each `start()` mints its own handle,
and config, diagnostics, and tape are scoped to it. N `VcrServer`s can be alive
at once in one process without their cursors or mutations bleeding into each
other.
