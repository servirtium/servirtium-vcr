# Usage

All fixtures start from `Vcr::playback(tape_path)` or
`Vcr::record(tape_path, upstream_base)`, configured with a fluent builder,
and started with `.start()`, which returns a `Result<VcrServer, VcrError>`.
Drop the server to stop it (and, in record mode, flush the tape); call
`.finish()` instead when you need the flush result.

The system-under-test only ever needs `vcr.base_url()`. Everything else —
tape path, mode, mutations, assertions — lives in your test setup/teardown.

## Playback

```rust
use servirtium::{Vcr, Outcome};

let vcr = Vcr::playback("tapes/climate_api.md")
    .port(0)                 // 0 = OS-assigned; the default
    .start()
    .unwrap();

let body: String = ureq::get(&format!("{}/api/v1/countries", vcr.base_url()))
    .call().unwrap().into_string().unwrap();

assert_eq!(Outcome::Ok, vcr.last_kind());
```

## Recording

```rust
use servirtium::Vcr;

let rec = Vcr::record("tapes/climate_api.md", "https://climatedataapi.worldbank.org")
    .port(0)
    .start()
    .unwrap();

let _ = ureq::get(&format!("{}/api/v1/countries", rec.base_url())).call();
rec.finish().unwrap();   // stop + write the markdown tape (or just drop `rec`)
```

Record forwards each request to the upstream, returns the **real** response
to your SUT, and captures the exchange. Chunked responses are de-chunked
(needs the native lib built with Aether ≥ 0.183.0).

### Drift detection

```rust
let rec = Vcr::record(tape, upstream).fail_if_changed().start().unwrap();
// ... drive SUT ...
rec.finish()?;   // Err(VcrError) if the freshly recorded tape differs
```

The freshly recorded tape is written **and** `finish()` returns an error if
it differs from the committed tape — so `git diff` shows the drift and CI
fails loudly. (Without `fail_if_changed`, flush just overwrites.) If you let
the server drop instead of calling `finish()`, a drift causes a **panic**
(a `Drop` can't return a `Result`), so prefer `finish()` with this option.

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```rust
Vcr::record(tape, upstream)
    .redact(Field::ResponseBody, "Bearer abc123", "Bearer REDACTED")
    .redact(Field::Path,         "session=xyz",   "session=REDACTED")
    .start()?;
```

`Field` is `Path`, `ResponseBody`, `RequestHeaders`, `RequestBody`, or
`ResponseHeaders`.

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real
value, rewrite the recorded expectation before matching:

```rust
Vcr::playback(tape)
    .strict_headers()
    .unredact(Field::RequestHeaders, "Bearer REDACTED", real_token)
    .start()?;
```

## Removing headers

Drop noisy/sensitive headers from a block (case-insensitive name match):

```rust
Vcr::record(tape, upstream)
    .remove_header(Field::ResponseHeaders, "Set-Cookie")
    .remove_header(Field::RequestHeaders,  "Authorization")
    .start()?;
```

## Strict request matching

By default the dispatcher matches on method + path (and on request
headers/body when the tape entry carries them). `strict_headers()` forces
header comparison on every interaction; mismatches return `599` to the SUT
and populate the diagnostics:

```rust
let vcr = Vcr::playback(tape).strict_headers().start()?;
// ... drive SUT ...
if vcr.last_kind() != Outcome::Ok {
    panic!("{}", vcr.last_error());   // e.g. "<name> request header ..."
}
```

Note that strict matching rejects *unexpected* headers too, so the live
request's header set must match the recorded block (Host is stripped). An
HTTP client that adds incidental headers (`Accept`, `User-Agent`,
`Accept-Encoding`, …) will trip this unless those headers are on the tape.

## Notes

Annotate the tape for humans (ignored on playback). The builder note
attaches to the first interaction; stage later ones on the running server:

```rust
let vcr = Vcr::record(tape, upstream)
    .note("Login", "Establishes the session the next calls reuse")
    .start()?;
// ... first request recorded with the note ...
vcr.note("Overdraft", "Should be refused")?;   // attaches to the next interaction
// ... next request ...
```

## Static content (UI tests)

Serve a path prefix from disk instead of the tape — keeps the tape focused
on API calls while CSS/JS/images come from your build output:

```rust
Vcr::playback(tape)
    .static_content("/assets", "build/static")
    .start()?;
```

## Markdown format options (record)

```rust
Vcr::record(tape, upstream)
    .indent_code_blocks()    // 4-space-indented blocks instead of ``` fences
    .emphasize_http_verbs()  // *GET* instead of bare GET in headings
    .start()?;
```

Playback tolerates either form regardless, so cross-implementation tapes
load cleanly.

## `VcrServer` members

| Member | Meaning |
|---|---|
| `base_url()` | `http://host:port` for the SUT |
| `port()` | the resolved (possibly OS-assigned) port |
| `tape_length()` | tape entries (playback) / interactions captured (record) |
| `last_kind()` | `Outcome` of the most recent dispatch |
| `last_error()` | mismatch diagnostic, or empty |
| `last_index()` | tape index of the last matched interaction, or -1 |
| `note(title, body)` | stage a note for the next recorded interaction |
| `reset_cursor()` | rewind replay to interaction 0; clear last-* |
| `clear_last_error()` | clear the last-error slot between sub-cases |
| `finish()` | stop; flush tape if recording, returning the flush result |
| (drop) | stop; flush tape if recording (panics on a drift error) |

## `Outcome`

`Ok`, `PathOrMethodDiff`, `HeaderMissing`, `HeaderValueDiff`,
`HeaderUnexpected`, `TapeExhausted`, `BodyDiff`, `RecordError`.

## Gotcha: one server per process

State is process-global in v1, so only one `VcrServer` can be active at a
time. This crate enforces it with a process-global lock acquired in
`start()` and released on drop, so parallel `cargo test` is safe — fixtures
serialize automatically (see
[architecture.md](architecture.md#one-server-per-process)). `start()` also
resets all process-global mutation/strict/format state first, so settings
from a prior fixture never leak forward.
