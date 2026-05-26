# Usage

All fixtures start from `servirtium.Playback(tapePath)` or
`servirtium.Record(tapePath, upstreamBase)`, are configured with a fluent
builder, and started with `.Start()`, which returns `(*Server, error)`.
`Close()` the server to stop it (and, in record mode, flush the tape).

The system-under-test only ever needs `srv.BaseURL()`. Everything else —
tape path, mode, mutations, assertions — lives in your test setup/teardown.

## Consuming this in another Go project

This is a **cgo** package over a native engine, and Go gives a dependency no
build hook (a module fetched by `go get` is read-only, hash-verified source;
there is no `postinstall`/`build.rs` equivalent). So how you bring the engine
in matters. In recommended order:

### Committed C amalgamation (recommended)

Vendor a **self-contained C bundle** into an internal test package and let
cgo compile it as part of your `go test`. The bundle is `servirtium.go` + a
cgo bridge + a `ccore/` directory holding the Aether VCR engine emitted as
C (`aetherc --emit-c` + `--emit-header`) plus its runtime/std C closure — the
[`mattn/go-sqlite3`](https://github.com/mattn/go-sqlite3) model.

```
yourrepo/
  internal/servirtiumvcr/        # committed; you import this directly
    servirtium.go
    cgo_bridge.go                # #cgo CFLAGS: -I${SRCDIR}/cengine
    ccore/  *.c  *.h           # the engine + Aether runtime/std closure
```

Why this is the recommended path:

- **No prebuilt `.so`, no per-`GOOS/GOARCH` binary, no rpath, no native-lib
  install.** cgo compiles `ccore/*.c` for whatever target your CI/dev uses,
  so it just works on linux/macOS/Windows with a C toolchain.
- **Reproducible + reviewable.** The bundle carries a provenance stamp (the
  Aether version + `embed.ae` hash it was generated from); updating Servirtium
  is a clean, diffable re-vendor.
- **Test-only.** It never reaches your product binary — it's test
  infrastructure, so carrying it in-tree is appropriate.

Put it in a normal internal package dir you own and `import` directly — **not**
Go's `vendor/` (which `go mod vendor` manages from the module graph and won't
cleanly carry the `ccore/` subtree). Trade-off to name out loud: vendoring
pins you (no `go get -u`); re-vendor on update.

> Status: the bundle is produced by an aeb release step (`go.cgo_dist`); see
> [building.md](building.md). Until that's wired, ask for a generated
> `ccore/` unit, or use a local `replace` for in-repo dev.

### Alternatives

- **Prebuilt `.so` vendored next to `servirtium.go`** — works today with zero
  tooling, but it's a binary blob in git and **platform-locked** (cgo links
  the fixed name `libservirtium_vcr.so`). Only sane if your dev + CI are
  uniformly one platform (e.g. linux-amd64 containers).
- **System-installed lib** (`libservirtium_vcr.so` on the system lib path +
  pkg-config) — small, but adds a "install it first" prerequisite to every
  consumer (the "needs `libfoo-dev`" model).
- **Local `replace`** to a checkout of this repo — fine for in-repo dev on one
  machine; doesn't travel to a team's CI.

## Playback

```go
srv, err := servirtium.Playback("tapes/climate_api.md").
    Port(0).                 // 0 = OS-assigned
    Start()
if err != nil { t.Fatal(err) }
defer srv.Close()

resp, _ := http.Get(srv.BaseURL() + "/api/v1/countries")
_ = resp

if srv.LastKind() != servirtium.Ok { t.Fatal(srv.LastError()) }
```

## Recording

```go
srv, err := servirtium.Record("tapes/climate_api.md", "https://climatedataapi.worldbank.org").
    Port(0).
    Start()
if err != nil { t.Fatal(err) }

http.Get(srv.BaseURL() + "/api/v1/countries")

// Close forwards nothing more and writes the markdown tape to disk.
if err := srv.Close(); err != nil { t.Fatal(err) }
```

Record forwards each request to the upstream, returns the **real** response
to your SUT, and captures the exchange. Chunked responses are de-chunked
(needs the native lib built with Aether ≥ 0.183.0).

### Drift detection

```go
srv, _ := servirtium.Record(tape, upstream).FailIfChanged().Start()
// ... drive SUT ...
if err := srv.Close(); err != nil {
    // the freshly recorded tape was still written, but it differs from the
    // committed one — git diff shows the drift and CI fails loudly.
    t.Fatal(err)
}
```

Without `FailIfChanged`, `Close` just overwrites.

## Scrubbing secrets out of tapes (redaction)

Applied at flush time, so the live test still sees real bytes while the
committed tape is clean:

```go
servirtium.Record(tape, upstream).
    Redact(servirtium.ResponseBody, "Bearer abc123", "Bearer REDACTED").
    Redact(servirtium.Path,         "session=xyz",   "session=REDACTED").
    Start()
```

`Field` is `Path`, `ResponseBody`, `RequestHeaders`, `RequestBody`, or
`ResponseHeaders`.

## Replaying a scrubbed tape (unredaction)

When a committed tape holds a placeholder but the live SUT sends the real
value, rewrite the recorded expectation before matching:

```go
servirtium.Playback(tape).
    StrictHeaders().
    Unredact(servirtium.RequestHeaders, "Bearer REDACTED", realToken).
    Start()
```

## Removing headers

Drop noisy/sensitive headers from a block (case-insensitive name match):

```go
servirtium.Record(tape, upstream).
    RemoveHeader(servirtium.ResponseHeaders, "Set-Cookie").
    RemoveHeader(servirtium.RequestHeaders,  "Authorization").
    Start()
```

## Strict request matching

By default the dispatcher matches on method + path (and on request
headers/body when the tape entry carries them). `StrictHeaders()` forces
header comparison on every interaction; mismatches return `599` to the SUT
and populate the diagnostics:

```go
srv, _ := servirtium.Playback(tape).StrictHeaders().Start()
// ... drive SUT ...
if srv.LastKind() != servirtium.Ok {
    t.Fatal(srv.LastError())   // e.g. "<name> request header ..."
}
```

> Note: Go's `http.Client` sends a default `User-Agent` header. Under
> `StrictHeaders()` that header must appear on the recorded request block, or
> be suppressed on the request (`req.Header.Set("User-Agent", "")`).

## Notes

Annotate the tape for humans (ignored on playback). The builder note attaches
to the first interaction; stage later ones on the running server:

```go
srv, _ := servirtium.Record(tape, upstream).
    Note("Login", "Establishes the session the next calls reuse").
    Start()
// ... first request recorded with the note ...
srv.Note("Overdraft", "Should be refused")   // attaches to the next interaction
// ... next request ...
```

## Static content (UI tests)

Serve a path prefix from disk instead of the tape:

```go
servirtium.Playback(tape).
    StaticContent("/assets", "build/static").
    Start()
```

## Markdown format options (record)

```go
servirtium.Record(tape, upstream).
    IndentCodeBlocks().      // 4-space-indented blocks instead of ``` fences
    EmphasizeHTTPVerbs().    // *GET* instead of bare GET in headings
    Start()
```

Playback tolerates either form regardless, so cross-implementation tapes load
cleanly.

## `*Server` members

| Member | Meaning |
|---|---|
| `BaseURL()` | `http://host:port` for the SUT |
| `Port()` | the resolved (possibly OS-assigned) port |
| `TapeLength()` | tape entries (playback) / interactions captured (record) |
| `LastKind()` | `Outcome` of the most recent dispatch |
| `LastError()` | mismatch diagnostic, or empty |
| `LastIndex()` | tape index of the last matched interaction, or -1 |
| `Note(title, body)` | stage a note for the next recorded interaction |
| `ResetCursor()` | rewind replay to interaction 0; clear last-* |
| `ClearLastError()` | clear the last-error slot between sub-cases |
| `Close()` | stop; flush tape if recording (error on drift if `FailIfChanged`) |

## `Outcome`

`Ok`, `PathOrMethodDiff`, `HeaderMissing`, `HeaderValueDiff`,
`HeaderUnexpected`, `TapeExhausted`, `BodyDiff`, `RecordError`.

## Gotcha: one server per process

State is process-global in v1, so configure/`Close` one `*Server` at a time
and **run tests serially** — do NOT call `t.Parallel()` (see
[architecture.md](architecture.md#one-server-per-process)). `Start()` resets
all process-global mutation/strict/format state first, so settings from a
prior fixture never leak forward.
