# Usage

All fixtures start from `Servirtium.playback(tape_path)` or
`Servirtium.record(tape_path, upstream_base)`, are configured with a fluent
builder, and started with `.start`, which returns a `Servirtium::Server`. Call
`server.close` to stop it (and, in record mode, flush the tape) — or pass a
block to `.start` and it auto-closes.

The system-under-test only ever needs `server.base_url`. Everything else —
tape path, mode, mutations, assertions — lives in your test setup/teardown.

## Playback

```ruby
Servirtium.playback('spec/tapes/climate_api.md')
          .port(0)                 # 0 = OS-assigned (the default)
          .start do |server|
  res = Net::HTTP.get_response(URI.join(server.base_url, '/api/v1/countries'))
  expect(server.last_kind).to eq(:ok)
end
```

Without a block, `.start` returns the server and you close it yourself:

```ruby
server = Servirtium.playback(tape).start
begin
  # ... drive the SUT against server.base_url ...
ensure
  server.close
end
```

## Recording

```ruby
Servirtium.record('spec/tapes/climate_api.md', 'https://climatedataapi.worldbank.org')
          .port(0)
          .start do |server|
  Net::HTTP.get_response(URI.join(server.base_url, '/api/v1/countries'))
end   # block exit closes the server, which forwards nothing more and writes the tape
```

Record forwards each request to the upstream, returns the **real** response to
your SUT, and captures the exchange. Chunked and gzip-encoded responses are
decoded to the stored payload.

### Drift detection

```ruby
Servirtium.record(tape, upstream).fail_if_changed.start { |s| ... }
```

On close, the freshly recorded tape is written **and** a `Servirtium::Error` is
raised if it differs from the committed tape — so `git diff` shows the drift and
CI fails loudly. (Without `fail_if_changed`, close just overwrites.)

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```ruby
Servirtium.record(tape, upstream)
          .redact(Servirtium::Field::RESPONSE_BODY, 'Bearer abc123', 'Bearer REDACTED')
          .redact(Servirtium::Field::PATH,          'session=xyz',   'session=REDACTED')
          .start { |s| ... }
```

`Servirtium::Field` is `PATH`, `RESPONSE_BODY`, `REQUEST_HEADERS`,
`REQUEST_BODY`, or `RESPONSE_HEADERS`.

## Whole-tape normalization (byte-identical re-records)

`redact` targets one field of one interaction. The whole-tape mutations instead
sweep **every** regex match across the entire tape — all fields, all
interactions — so a server that hands back fresh ids or timestamps on each run
still re-records to byte-identical output (and `fail_if_changed` only fires on
real upstream changes):

```ruby
Servirtium.record(tape, upstream)
          # Correlated ids: each distinct match becomes a stable {{order-N}}
          # token, numbered in first-appearance order. The same value reused in
          # a later request path gets the same token, and the token round-trips
          # back to the captured value on playback.
          .normalize_whole_tape('[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}', 'order')
          # Uncorrelated volatiles: collapse every match to one constant.
          .redact_whole_tape('[A-Z][a-z]{2}, \d\d [A-Z][a-z]{2} \d{4} [\d:]{8} GMT', 'Mon, 01 Jan 2024 00:00:00 GMT')
          .start { |s| ... }
```

Use `normalize_whole_tape(pattern, name)` when the value is **correlated** — an
id minted in one response and echoed back in a later request path — because the
`{{name-N}}` token preserves that linkage and replays it. Use
`redact_whole_tape(pattern, replacement)` when the value is **uncorrelated**
volatile noise (a `Date` header, a request id) that just needs to be constant
on the tape.

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real value,
rewrite the recorded expectation before matching:

```ruby
Servirtium.playback(tape)
          .strict_headers
          .unredact(Servirtium::Field::REQUEST_HEADERS, 'Bearer REDACTED', real_token)
          .start { |s| ... }
```

## Removing headers

Drop noisy/sensitive headers from a block (case-insensitive name match):

```ruby
Servirtium.record(tape, upstream)
          .remove_header(Servirtium::Field::RESPONSE_HEADERS, 'Set-Cookie')
          .remove_header(Servirtium::Field::REQUEST_HEADERS,  'Authorization')
          .start { |s| ... }
```

## Strict request matching (and the Net::HTTP default-header gotcha)

By default the dispatcher matches on method + path (and on request headers/body
when the tape entry carries them). `strict_headers` forces header comparison on
every interaction; mismatches return a non-2xx to the SUT and populate the
diagnostics:

```ruby
Servirtium.playback(tape).strict_headers.start do |server|
  # ... drive SUT ...
  raise server.last_error unless server.last_kind == :ok
end
```

**Gotcha:** `Net::HTTP` injects default request headers (`Host`,
`Accept-Encoding`, `User-Agent`, `Accept`, `Connection`). Under strict matching
against a tape that records *no* request headers, those defaults trip the
comparison. Ignore them with `remove_header(REQUEST_HEADERS, name)`:

```ruby
builder = Servirtium.playback(tape).strict_headers
%w[Host Accept-Encoding User-Agent Accept Connection].each do |h|
  builder.remove_header(Servirtium::Field::REQUEST_HEADERS, h)
end
builder.start { |server| ... }
```

(See `spec/servirtium/strict_headers_spec.rb`.)

For request bodies, `.match_json_body` opts into semantic JSON comparison —
object key order and insignificant whitespace are ignored (array order still
matters), and non-JSON bodies fall back to byte-exact matching.

Two further opt-in matchers relax the default strict-ordered playback:
`.match_multiple` matches any recorded interaction (order-independent) and does
not consume it, for polling/retries or non-deterministic request order, while
`.match_header(name)` matches on just that one named request header's value and
ignores the rest of the recorded header block.

## Notes

Annotate the tape for humans (ignored on playback). The builder note attaches to
the first interaction; stage later ones on the running server:

```ruby
Servirtium.record(tape, upstream)
          .note('Login', 'Establishes the session the next calls reuse')
          .start do |server|
  # ... first request recorded with the note ...
  server.note('Overdraft', 'Should be refused')   # attaches to the next interaction
  # ... next request ...
end
```

## Static content (UI tests)

Serve a path prefix from disk instead of the tape — keeps the tape focused on
API calls while CSS/JS/images come from your build output:

```ruby
Servirtium.playback(tape)
          .static_content('/assets', 'build/static')
          .start { |s| ... }
```

## Markdown format options (record)

```ruby
Servirtium.record(tape, upstream)
          .indent_code_blocks      # 4-space-indented blocks instead of ``` fences
          .emphasize_http_verbs    # *GET* instead of bare GET in headings
          .start { |s| ... }
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## `Servirtium::Server` members

| Member | Meaning |
|---|---|
| `base_url` | `http://host:port` for the SUT |
| `port` | the resolved (possibly OS-assigned) port |
| `tape_length` | tape entries (playback) / interactions captured (record) |
| `last_kind` | `Servirtium::Outcome` symbol of the most recent dispatch |
| `last_kind_code` | raw integer outcome |
| `last_error` | mismatch diagnostic, or `""` |
| `last_index` | tape index of the last matched interaction, or -1 |
| `note(title, body)` | stage a note for the next recorded interaction |
| `reset_cursor` | rewind replay to interaction 0; clear last-* |
| `clear_last_error` | clear the last-error slot between sub-cases |
| `close` | stop; flush tape if recording (idempotent) |

## `Servirtium::Outcome`

`last_kind` returns a symbol: `:ok`, `:path_or_method_diff`, `:header_missing`,
`:header_value_diff`, `:header_unexpected`, `:tape_exhausted`, `:body_diff`,
`:record_error`. The matching integer constants live on `Servirtium::Outcome`
(`OK`, `PATH_OR_METHOD_DIFF`, …).

## Concurrency: one server per port

Each `Servirtium::Server` owns its own handle, so its tape, cursor, mutations,
and diagnostics are scoped to that listener — **N independent servers can run
concurrently in one process**, with no cross-talk and no serial-execution
requirement on this binding's account (see
[architecture.md](architecture.md#concurrency-one-server-per-port)). Settings from a
prior fixture live on its own handle and cannot leak into the next.
