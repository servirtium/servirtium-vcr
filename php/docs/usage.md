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

### Volatile values (volatiles that must round-trip)

`redact(...)` rewrites one field per match. When a value changes on every run
(an id, a timestamp, the port a test picked), declare a **rule** with a
`{{placeholder}}` where it sits. Recording writes each captured value as a
**token** (`{{messageId-1}}`), so a re-record is byte-identical; playback lets a
token match whatever live value arrives and puts it back in later responses.
Rules work on the playback and the record builder:

```php
Vcr::playback($tape)
    ->prettyXml(2)
    ->volatileRule('request body', '<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>')
    ->volatileRule('response body', '<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>')
    ->bind('serverDate', gmdate('D, d M Y H:i:s') . ' GMT')
    ->start();
```

- `volatileRule($scope, $pattern, $kind = 'template')`: `$kind` is `'template'`
  or `'regex'`; may be called repeatedly.
- `bind($nameOrToken, $value)`: bind a real value to a token (`'serverDate-2'`)
  or to every token of a placeholder name.
- `volatileProfile($path)`: load rules from a profile file.
- `volatileMarkers(VolatileMarkers::DollarCurly)`: write placeholders and tokens
  as `${name}` (`Wikilink`: `[[name]]`); applied before any rule.
- `$server->volatileReport()`: rules, binds, bindings and warnings.
- A bad rule throws `VcrException` at `start()` with the core's message.
- `redactWholeTape($pattern, $replacement)` stays for uncorrelated noise that
  only needs to be one constant.

The spec: [docs/volatile-values.md](../../docs/volatile-values.md).

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

Vcr::record($tape, $upstream)->indentCodeBlocks()->emphasizeHttpVerbs()->prettyXml(2)->prettyJson(2)->addLicenseNotice('Licence terms of the recorded service')->start();
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

## Stable order (record, opt-in)

For a service that answers in a different order every run. All off by default;
the tape is byte-exact without them.

```php
$vcr = Vcr::record($tape, $upstream)
    ->prettyJson(2)                                // required: sorted JSON is only written pretty-printed
    ->sortJsonKeys()                               // object keys sorted at every depth
    ->sortJsonArray('versions', '/created')        // arrays `versions` holds, by member
    ->sortJsonArrayAt('^/secrets', '', 'name')     // only for matching request paths
    ->sortResponseHeaders()                        // header lines by name
    ->sortHeaderValue('Allow')                     // "POST, GET" -> "GET, POST"
    ->start();
```

A rule the core refuses (an empty header name, a bad regex) throws
`VcrException` at `start()`. `sortJsonKeys()` / `sortJsonArray*()` without
`prettyJson()` are refused when the tape is written: `stop()` throws
`VcrException` ("sort_json_keys needs pretty_json ...") and writes nothing.

## Playback range

Replay only a slice of a tape, by interaction number (the `## Interaction N`
headings, 0-based, inclusive; `$to` < 0 means through the last):

```php
Vcr::playback($tape)->playbackRange(4, 6)->start();
```

A request outside the range is never served (kind `VcrOutcome::PathOrMethodDiff`,
"... is outside the playback range 4-6"). A bad range throws `VcrException` at
`start()`.

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
