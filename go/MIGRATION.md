# Servirtium Go → Aether VCR migration (v1 → v2)

**Status:** DONE. The Go reimplementation of Servirtium (~840 lines of
markdown parse/emit, the playback/record HTTP handlers, and the per-field
header/body replacement API) is deleted, replaced by a thin **cgo** wrapper
over the native VCR library built from `std/http/server/vcr/embed.ae`.
Playback, mismatch diagnostics, record→replay (including chunked
de-chunking), redaction, header removal, notes, and drift detection are
proven end-to-end against the real native lib in `*_test.go`.

## Why

The old repo was a Go *reimplementation* of Servirtium: a markdown
reader/writer (text/template based), playback and record `http.Server`
handlers acting as a man-in-the-middle proxy, plus a `Set*` API of
regexp-keyed header/body replacements. All of that logic now exists —
tested and maintained — in the Aether standard library at
`std/http/server/vcr`, shared with every other language binding (.NET, etc.)
built on the same `embed.ae` C-ABI.

The new shape: **this repo wholly depends on the Aether VCR for core
record/replay** and keeps only Go-flavored glue — a cgo binding to a
precompiled native VCR library plus an idiomatic Go test fixture. No
backwards compatibility with the old `Impl` API.

## Architecture

```
go test
   │  servirtium.Playback(tape).Port(0).Start()  /  servirtium.Record(tape, upstream).Start()
   ▼
servirtium-go (this repo)            ── thin Go (cgo) ──
   │  cgo  aether_vcr_embed_*()
   ▼
libservirtium_vcr.so                 ── ae build --emit=lib --with=fs,net
   │  (the Aether VCR core: parse, dispatch, record, mutate, emit)
   ▼
SUT  ⇄  http://127.0.0.1:<port>      ── the SUT talks HTTP to the VCR
```

The system-under-test only ever sees an HTTP base URL — exactly the
server-first model the Aether VCR is designed around.

## API mapping (old → new)

| v1 | v2 |
|---|---|
| `NewServirtium()` + `StartPlayback(name, port)` | `servirtium.Playback(tapePath).Port(p).Start()` |
| `StartRecord(apiURL, port)` + `WriteRecord(name)` | `servirtium.Record(tapePath, upstream).Port(p).Start()`; tape flushed on `Close()` |
| `GetPlaybackURL()` / `GetRecordURL()` | `srv.BaseURL()` |
| `EndPlayback()` / `EndRecord()` | `srv.Close()` |
| `Set{Caller,Record}{Request,Response}BodyReplacement(re→s)` | `.Redact(field, pattern, repl)` (record) / `.Unredact(...)` (playback) |
| `Set{...}HeadersRemoval([]string)` | `.RemoveHeader(field, name)` |
| `GetLastError()` | `srv.LastError()`, `srv.LastKind()`, `srv.LastIndex()` |

The Servirtium markdown tape format is unchanged, so committed tapes replay
as-is.

## What was deleted

- `servirtium.go` — the markdown template, playback/record handlers, the
  proxy, the `Set*` replacement API.
- `servirtium_test.go` — unit tests of the deleted internals.
- `cmd/todobackend_compatibility.go`, `mock/` — the standalone server and
  its fixture (superseded by the native lib + the test fixtures).
- `Makefile`, `docker-compose.yml`, `go.sum` and the `gorilla/mux` /
  `rs/cors` / `testify` dependencies (the new code uses only the standard
  library).

## Follow-up

`compatibility-suite.py` (the Selenium/todobackend cross-impl driver) is
left in place but **needs rework** for the new server model — it shelled out
to the old standalone server, which no longer exists.
