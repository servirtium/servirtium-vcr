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
your SUT, and captures the exchange. Chunked responses are de-chunked (needs
the native lib built with Aether ≥ 0.183.0).

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

## Gotcha: one server per process

State is process-global in v1, so configure/close one `Servirtium::Server` at a
time and **run tests serially** (see
[architecture.md](architecture.md#one-server-per-process)). `.start` resets all
process-global mutation/strict/format state first, so settings from a prior
fixture never leak forward, even within one process.
