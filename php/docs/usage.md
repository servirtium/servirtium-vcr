# Usage

All fixtures start from `Vcr::playback($tapePath)` or
`Vcr::record($tapePath, $upstreamBase)`, are configured with a fluent builder,
and started with `->start()`, which returns a `VcrServer`. Call `->stop()` to
stop it (and, in record mode, flush the tape).

The SUT only needs `$vcr->baseUrl()`. Everything else — tape path, mode,
mutations, assertions — lives in your test setup/teardown.

## Playback

```php
$vcr = Vcr::playback('tapes/climate_api.md')->port(0)->start();   // 0 = OS-assigned
try {
    $body = file_get_contents($vcr->baseUrl() . '/api/v1/countries');
    assert($vcr->lastKind() === VcrOutcome::Ok);
} finally {
    $vcr->stop();
}
```

## Recording

```php
$vcr = Vcr::record('tapes/climate_api.md', 'https://climatedataapi.worldbank.org')
    ->port(0)->start();
try {
    file_get_contents($vcr->baseUrl() . '/api/v1/countries');
} finally {
    $vcr->stop();   // forwards nothing more; writes the markdown tape to disk
}
```

Record forwards each request to the upstream, returns the **real** response to
the SUT, and captures it. Chunked responses are de-chunked (native lib built
with Aether ≥ 0.183).

### Drift detection

```php
Vcr::record($tape, $upstream)->failIfChanged()->start();
// ... drive SUT ... ->stop() writes the new tape AND throws VcrException if it
// differs from the committed one (so git diff shows the drift, CI fails loudly).
```

## Scrubbing secrets (redaction), applied at flush time

```php
Vcr::record($tape, $upstream)
    ->redact(VcrField::ResponseBody, 'Bearer abc123', 'Bearer REDACTED')
    ->redact(VcrField::Path,         'session=xyz',   'session=REDACTED')
    ->start();
```

`VcrField` is `Path`, `ResponseBody`, `RequestHeaders`, `RequestBody`,
`ResponseHeaders`.

## Replaying a scrubbed tape (unredaction)

```php
Vcr::playback($tape)
    ->strictHeaders()
    ->unredact(VcrField::RequestHeaders, 'Bearer REDACTED', $realToken)
    ->start();
```

## Removing headers / strict matching / static content / notes / format

```php
Vcr::record($tape, $upstream)->removeHeader(VcrField::ResponseHeaders, 'Set-Cookie')->start();

$vcr = Vcr::playback($tape)->strictHeaders()->start();   // mismatches → 599 + diagnostics
if ($vcr->lastKind() !== VcrOutcome::Ok) { throw new \RuntimeException($vcr->lastError()); }

Vcr::playback($tape)->staticContent('/assets', 'build/static')->start();   // serve from disk

$vcr = Vcr::record($tape, $upstream)->note('Login', 'establishes the session')->start();
$vcr->note('Overdraft', 'should be refused');   // stage a note for the next interaction

Vcr::record($tape, $upstream)->indentCodeBlocks()->emphasizeHttpVerbs()->start();
```

> Note: PHP HTTP clients send default request headers. Under `strictHeaders()`
> that header must be on the recorded request block, or be dropped via
> `removeHeader(VcrField::RequestHeaders, ...)`.

## `VcrServer` members

`baseUrl()`, `port()`, `tapeLength()`, `lastError()`, `lastKind()`
(→ `VcrOutcome`), `lastIndex()`, `note($title, $body)`, `resetCursor()`,
`clearLastError()`, `stop()` (stop; flush if recording; throw on drift if
`failIfChanged`).

`VcrOutcome`: `Ok`, `PathOrMethodDiff`, `HeaderMissing`, `HeaderValueDiff`,
`HeaderUnexpected`, `TapeExhausted`, `BodyDiff`, `RecordError`.

## One server per process

State is process-global in v1, so configure/`stop()` one `VcrServer` at a
time and run PHPUnit serially. `start()` resets all process-global state
first, so settings from a prior fixture never leak forward.
