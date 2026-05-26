# Usage

All fixtures start from `Servirtium.playback(tape_path, opts)` or
`Servirtium.record(tape_path, upstream_base, opts)`. Each returns
`{:ok, %Servirtium.Server{}}` (or raises `Servirtium.Error`). Stop the server
with `Servirtium.stop/1` (in record mode that also flushes the tape), or use the
`with_*` helpers that auto-stop.

The system-under-test only ever needs `Servirtium.base_url(srv)`. Everything
else — tape path, mode, mutations, assertions — lives in your test
setup/teardown.

Options are a keyword list. A `field` is one of `:path`, `:response_body`,
`:request_headers`, `:request_body`, `:response_headers`.

## Playback

```elixir
{:ok, srv} = Servirtium.playback("tapes/climate_api.md", port: 0)

{:ok, {{_, 200, _}, _headers, body}} =
  :httpc.request(:get, {~c"#{Servirtium.base_url(srv)}/api/v1/countries", []}, [], [])

assert Servirtium.last_kind() == :ok   # optional: assert a clean match
:ok = Servirtium.stop(srv)
```

`port: 0` (the default) asks the OS for a free port — `Servirtium.port(srv)`
then reports the resolved one.

The auto-stopping form:

```elixir
Servirtium.with_playback("tapes/climate_api.md", [port: 0], fn srv ->
  # ... drive the SUT ...
end)
```

## Recording

```elixir
Servirtium.with_record("tapes/climate_api.md",
    "https://climatedataapi.worldbank.org", [port: 0], fn srv ->
  :httpc.request(:get, {~c"#{Servirtium.base_url(srv)}/api/v1/countries", []}, [], [])
end)
# Stop (here, the end of with_record) forwards nothing more and writes the tape.
```

Record forwards each request to the upstream, returns the **real** response to
your SUT, and captures the exchange. Chunked responses are de-chunked (needs the
native lib built with Aether ≥ 0.183.0).

### Drift detection

```elixir
Servirtium.record(tape, upstream, fail_if_changed: true)
```

On stop, the freshly recorded tape is written **and** `Servirtium.stop/1`
returns `{:error, drift_msg}` if it differs from the committed tape — so
`git diff` shows the drift and CI fails loudly. (Without `:fail_if_changed`,
stop just overwrites.)

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```elixir
Servirtium.record(tape, upstream,
  redact: [
    {:response_body, "Bearer abc123", "Bearer REDACTED"},
    {:path,          "session=xyz",   "session=REDACTED"}
  ])
```

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real value,
rewrite the recorded expectation before matching:

```elixir
Servirtium.playback(tape,
  strict_headers: true,
  unredact: [{:request_headers, "Bearer REDACTED", real_token}])
```

## Removing headers

Drop noisy/sensitive headers from a block (case-insensitive name match):

```elixir
Servirtium.record(tape, upstream,
  remove_header: [
    {:response_headers, "Set-Cookie"},
    {:request_headers,  "Authorization"}
  ])
```

> `:httpc` sends a few default request headers (e.g. `Host`, `Content-Length`).
> When using `strict_headers: true` for playback, a header the recorded tape
> doesn't expect can trip a mismatch — drop it with
> `remove_header: [{:request_headers, "the-name"}]`, or unredact/record the tape
> with the same client so the blocks line up.

## Strict request matching

By default the dispatcher matches on method + path (and on request headers/body
when the tape entry carries them). `strict_headers: true` forces header
comparison on every interaction; mismatches return an error status to the SUT
and populate the diagnostics:

```elixir
Servirtium.with_playback(tape, [strict_headers: true], fn _srv ->
  # ... drive SUT ...
  if Servirtium.last_kind() != :ok, do: raise Servirtium.last_error()
end)
```

## Notes

Annotate the tape for humans (ignored on playback). The builder note attaches to
the first interaction; stage later ones on the running server:

```elixir
{:ok, srv} = Servirtium.record(tape, upstream,
  note: {"Login", "Establishes the session the next calls reuse"})
# ... first request recorded with the note ...
Servirtium.note(srv, "Overdraft", "Should be refused")   # attaches to the next
# ... next request ...
Servirtium.stop(srv)
```

## Static content (UI tests)

Serve a path prefix from disk instead of the tape — keeps the tape focused on
API calls while CSS/JS/images come from your build output:

```elixir
Servirtium.playback(tape, static_content: [{"/assets", "build/static"}])
```

## Markdown format options (record)

```elixir
Servirtium.record(tape, upstream,
  indent_code_blocks: true,    # 4-space-indented blocks instead of ``` fences
  emphasize_http_verbs: true)  # *GET* instead of bare GET in headings
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## Server members

| Function | Meaning |
|---|---|
| `Servirtium.base_url(srv)` | `http://host:port` for the SUT |
| `Servirtium.port(srv)` | the resolved (possibly OS-assigned) port |
| `Servirtium.tape_length()` | tape entries (playback) / interactions captured (record) |
| `Servirtium.last_kind()` | outcome atom of the most recent dispatch |
| `Servirtium.last_error()` | mismatch diagnostic, or `""` |
| `Servirtium.last_index()` | tape index of the last matched interaction, or -1 |
| `Servirtium.note(srv, title, body)` | stage a note for the next recorded interaction |
| `Servirtium.reset_cursor()` | rewind replay to interaction 0; clear last-* |
| `Servirtium.clear_last_error()` | clear the last-error slot between sub-cases |
| `Servirtium.stop(srv)` | stop; flush tape if recording |

## Outcomes (`last_kind/0`)

`:ok`, `:path_or_method_diff`, `:header_missing`, `:header_value_diff`,
`:header_unexpected`, `:tape_exhausted`, `:body_diff`, `:record_error`.

## Gotcha: one server per process

State is process-global in v1, so configure/stop one server at a time and **run
tests serially** (see
[architecture.md](architecture.md#one-server-per-process)). `playback/2` /
`record/3` reset all process-global mutation/strict/format state first, so
settings from a prior fixture never leak forward.
