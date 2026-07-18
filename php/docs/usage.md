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
the SUT, and captures it. Chunked responses are de-chunked automatically.

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

### Whole-tape normalization (volatiles that must round-trip)

`redact(...)` rewrites one field per match. For volatiles that span the **whole
tape** — server-minted ids, timestamps — two record-time rules make a re-record
byte-identical:

```php
Vcr::record($tape, $upstream)
    // CORRELATED: a server-minted id that recurs in later request paths.
    // Every distinct match across the whole tape gets a stable {{order-N}}
    // token, so the same id maps to the same token wherever it appears and
    // round-trips on playback.
    ->normalizeWholeTape('/orders/([0-9a-f-]{36})', 'order')
    // UNCORRELATED: a volatile that just needs to be constant. Every match
    // collapses to the one replacement (no per-match numbering).
    ->redactWholeTape('Date: .*GMT', 'Date: <NORMALIZED>')
    ->start();
```

Use `normalizeWholeTape($pattern, $name)` when the value is generated in one
interaction and reused in a later request (it must correlate, so playback can
substitute it back); use `redactWholeTape($pattern, $replacement)` for
uncorrelated volatiles (e.g. the `Date` response header) that only need to be
pinned to a constant.

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

> Note: `matchJsonBody()` is an opt-in request-body matcher that compares by
> semantic JSON equality (object key order and insignificant whitespace
> ignored, array order significant); non-JSON bodies fall back to byte-exact.

> Note: two further opt-in matchers relax strict ordered playback:
> `matchMultiple()` matches any recorded interaction without consuming it
> (reusable, order-independent — for polling/retries or non-deterministic
> order), and `matchHeader($name)` matches on a specific named request header's
> value, ignoring the rest of the recorded header block.

## `VcrServer` members

`baseUrl()`, `port()`, `tapeLength()`, `lastError()`, `lastKind()`
(→ `VcrOutcome`), `lastIndex()`, `note($title, $body)`, `resetCursor()`,
`clearLastError()`, `stop()` (stop; flush if recording; throw on drift if
`failIfChanged`).

`VcrOutcome`: `Ok`, `PathOrMethodDiff`, `HeaderMissing`, `HeaderValueDiff`,
`HeaderUnexpected`, `TapeExhausted`, `BodyDiff`, `RecordError`.

## Concurrency: one server per port

Each `start()` opens its own handle; the tape, replay cursor, mutations,
static mounts, pending note, and diagnostics are all scoped to that handle. So
several `VcrServer`s can be alive at once in one process, each on its own port
replaying its own tape, without their cursors or mutations bleeding into each
other — no need to run PHPUnit serially for state-isolation reasons. See
[architecture.md](architecture.md#concurrency-one-server-per-port).
