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
the SUT, and captures it. Chunked responses are de-chunked (native lib built
with Aether ≥ 0.183).

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

## `VcrServer` members

`baseUrl`, `port`, `tapeLength`, `lastError`, `lastKind` (→ `VcrOutcome`),
`lastIndex`, `note(title, body)`, `resetCursor()`, `clearLastError()`,
`close()` (stop; flush if recording; throw on drift if `failIfChanged`).

`VcrOutcome`: `ok`, `pathOrMethodDiff`, `headerMissing`, `headerValueDiff`,
`headerUnexpected`, `tapeExhausted`, `bodyDiff`, `recordError`.

## One server per process

State is process-global in v1 (shared across isolates), so configure/`close()`
one `VcrServer` at a time and run `dart test` with `concurrency: 1`. `start()`
resets all process-global state first, so settings from a prior fixture never
leak forward.
