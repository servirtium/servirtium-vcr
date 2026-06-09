# Usage

All fixtures start from `servirtium.playback(tape_path)` or
`servirtium.record(tape_path, upstream_base)`, configured with a fluent
builder, and started with `.start()`, which returns a `VcrServer`. Use the
server as a context manager (`with ... as vcr:`) or call `.close()` explicitly;
in record mode close/exit also flushes the tape.

The system-under-test only ever needs `vcr.base_url`. Everything else — tape
path, mode, mutations, assertions — lives in your test setup/teardown.

## Playback

```python
import servirtium
import urllib.request

with servirtium.playback("tapes/climate_api.md").port(0).start() as vcr:  # 0 = OS-assigned
    body = urllib.request.urlopen(f"{vcr.base_url}/api/v1/countries").read()
    assert vcr.last_kind is servirtium.Outcome.OK
```

## Recording

```python
with servirtium.record("tapes/climate_api.md",
                       "https://climatedataapi.worldbank.org").port(0).start() as vcr:
    urllib.request.urlopen(f"{vcr.base_url}/api/v1/countries").read()
    # exiting the `with` (or calling vcr.close()) writes the markdown tape.
```

Record forwards each request to the upstream, returns the **real** response to
your SUT, and captures the exchange. Chunked responses are de-chunked (needs
the native lib built with Aether ≥ 0.183.0).

### Drift detection

```python
servirtium.record(tape, upstream).fail_if_changed().start()
```

On close, the freshly recorded tape is written **and** a `VcrError` is raised
if it differs from the committed tape — so `git diff` shows the drift and CI
fails loudly. (Without `fail_if_changed`, close just overwrites.)

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```python
servirtium.record(tape, upstream) \
    .redact(servirtium.Field.RESPONSE_BODY, "Bearer abc123", "Bearer REDACTED") \
    .redact(servirtium.Field.PATH,          "session=xyz",   "session=REDACTED") \
    .start()
```

`servirtium.Field` is `PATH`, `RESPONSE_BODY`, `REQUEST_HEADERS`,
`REQUEST_BODY`, or `RESPONSE_HEADERS`.

### Whole-tape normalization & redaction

`redact(field, …)` scrubs one field. When a volatile value appears across the
**whole** tape — every field, every interaction — two record-builder rules give
you a byte-identical re-record (so drift detection only fires on real changes):

```python
servirtium.record(tape, upstream) \
    .normalize_whole_tape(r"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "id") \
    .redact_whole_tape(r"[A-Z][a-z]{2}, \d\d [A-Z][a-z]{2} \d{4} [\d:]{8} GMT", "Sat, 01 Jan 2000 00:00:00 GMT") \
    .start()
```

- **`normalize_whole_tape(pattern, name)`** — every *distinct* regex match
  across the whole tape (first-appearance order) becomes a stable `{{name-N}}`
  token: `{{id-1}}`, `{{id-2}}`, … Correlated ids that recur in later request
  paths keep the same token, so the relationship survives and the tokens
  round-trip on playback. Use for server-minted entity ids.
- **`redact_whole_tape(pattern, replacement)`** — collapse *every* match to the
  one constant `replacement`. Use for uncorrelated volatiles like `Date`
  headers, where the actual value is noise.

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real
value, rewrite the recorded expectation before matching:

```python
servirtium.playback(tape) \
    .strict_headers() \
    .unredact(servirtium.Field.REQUEST_HEADERS, "Bearer REDACTED", real_token) \
    .start()
```

## Removing headers

Drop noisy/sensitive headers from a block (case-insensitive name match):

```python
servirtium.record(tape, upstream) \
    .remove_header(servirtium.Field.RESPONSE_HEADERS, "Set-Cookie") \
    .remove_header(servirtium.Field.REQUEST_HEADERS,  "Authorization") \
    .start()
```

## Strict request matching

By default the dispatcher matches on method + path (and on request headers/body
when the tape entry carries them). `strict_headers()` forces header comparison
on every interaction; mismatches return `599` to the SUT and populate the
diagnostics:

```python
with servirtium.playback(tape).strict_headers().start() as vcr:
    # ... drive SUT ...
    if vcr.last_kind is not servirtium.Outcome.OK:
        raise AssertionError(vcr.last_error)   # e.g. "<name> request header ..."
```

> **Gotcha — default client headers.** `urllib`/`http.client` send default
> headers the SUT didn't author (`Host`, `Accept-Encoding`, `Connection`,
> `User-Agent`, …). Under `strict_headers()` those will trip a mismatch against
> a sparse tape. Strip them before comparison with
> `remove_header(servirtium.Field.REQUEST_HEADERS, name)` (see
> `test/test_playback_match.py`), or record the tape with those headers
> present.

## Notes

Annotate the tape for humans (ignored on playback). The builder note attaches
to the first interaction; stage later ones on the running server:

```python
with servirtium.record(tape, upstream) \
        .note("Login", "Establishes the session the next calls reuse").start() as vcr:
    # ... first request recorded with the note ...
    vcr.note("Overdraft", "Should be refused")   # attaches to the next interaction
    # ... next request ...
```

## Static content (UI tests)

Serve a path prefix from disk instead of the tape — keeps the tape focused on
API calls while CSS/JS/images come from your build output:

```python
servirtium.playback(tape).static_content("/assets", "build/static").start()
```

## Markdown format options (record)

```python
servirtium.record(tape, upstream) \
    .indent_code_blocks() \      # 4-space-indented blocks instead of ``` fences
    .emphasize_http_verbs() \    # *GET* instead of bare GET in headings
    .start()
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## `VcrServer` members

| Member | Meaning |
|---|---|
| `base_url` | `http://host:port` for the SUT |
| `port` | the resolved (possibly OS-assigned) port |
| `tape_length` | tape entries (playback) / interactions captured (record) |
| `last_kind` | `Outcome` of the most recent dispatch |
| `last_error` | mismatch diagnostic, or empty |
| `last_index` | tape index of the last matched interaction, or -1 |
| `note(title, body)` | stage a note for the next recorded interaction |
| `reset_cursor()` | rewind replay to interaction 0; clear last-* |
| `clear_last_error()` | clear the last-error slot between sub-cases |
| `close()` | stop; flush tape if recording (also runs on `with` exit) |

## `Outcome`

`OK`, `PATH_OR_METHOD_DIFF`, `HEADER_MISSING`, `HEADER_VALUE_DIFF`,
`HEADER_UNEXPECTED`, `TAPE_EXHAUSTED`, `BODY_DIFF`, `RECORD_ERROR`.

## Concurrency: one server per port

The VCR runs **one server per port**: each `.start()` opens its own handle, and that
handle's tape, cursor, mutations, and diagnostics are isolated from any other.
So you can have several `VcrServer`s alive at once in one process — each on its
own port, replaying its own tape — without their state bleeding into each other:

```python
with servirtium.playback("tapes/weather.md").port(0).start() as weather, \
     servirtium.playback("tapes/payments.md").port(0).start() as payments:
    # point the SUT at weather.base_url and payments.base_url independently
    ...
    assert weather.last_kind is servirtium.Outcome.OK
    assert payments.last_kind is servirtium.Outcome.OK
```

There is no need to run tests serially for state-isolation reasons. See
[architecture.md](architecture.md#concurrency-one-server-per-port).
