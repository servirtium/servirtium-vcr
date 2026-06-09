# Architecture

## The layering

```
your test (go test)
   │   servirtium.Playback(tape).Start()  /  servirtium.Record(tape, upstream).Start()
   ▼
servirtium-go            ── thin Go (cgo), this repo ──
   │   • Playback / PlaybackBuilder / RecordBuilder / Server  (servirtium.go)
   │   • cgo bindings to aether_vcr_embed_*                    (the import "C" block)
   ▼   cgo
core/native/libservirtium_vcr.so
   │   built: ae build --emit=lib --with=fs,net core/embed.ae (by core/.build.ae)
   │   • core/embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • core/vcr.ae    — the actual VCR (parse, dispatch, record, mutate,
   │     emit, match) — pure Aether, in this repo, on top of std.http's
   │     server + std.regex / std.zlib / std.cryptography
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Go side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the in-repo Aether core (`core/vcr.ae` +
`core/embed.ae`), shared with every other language binding through the one
`core/native/libservirtium_vcr.so` built by `core/.build.ae`. The core is
*built on* Aether's stdlib primitives but is not itself part of the stdlib.

## The C-ABI

`core/embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only
the *embedding seam* the raw VCR module lacks:

- **starts the accept loop on a background thread** — the core's `load()`
  deliberately doesn't listen, leaving that to a caller, which an FFI host
  can't wire;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before `Start()` returns and `srv.Port()` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`) rather than the core's borrowed
  TLS/arena strings.

The `import "C"` block in `servirtium.go` declares these 1:1; `takeString`
copies each returned `char*` into a Go string and frees the pointer. Inputs
are `C.CString`'d and `C.free`'d.

## Native-library resolution

cgo links against the library with directives in `servirtium.go`:

```go
// #cgo LDFLAGS: -L${SRCDIR}/../core/native -lservirtium_vcr -Wl,-rpath,${SRCDIR}/../core/native
```

`-L${SRCDIR}/../core/native` finds it at link time;
`-Wl,-rpath,${SRCDIR}/../core/native` bakes an **absolute** rpath into the
test/binary so the runtime loader finds `libservirtium_vcr.so` without
`LD_LIBRARY_PATH`. (`${SRCDIR}` is expanded by cgo to this package's source
directory.) Verified: a `go test -c` binary copied elsewhere still loads the
lib.

## Concurrency: one server per port

The VCR core runs **one server per port**. Each `Start()` opens a fresh native handle,
and the VCR's tape, replay cursor, mutations, static mounts, pending note, and
diagnostics are all scoped to **that handle** — nothing is process-global.
Consequences:

- N independent `*Server`s can be alive at once in one process, each replaying
  or recording its own tape with its own cursor and diagnostics, without
  bleeding into each other. (`core_tests/.concurrent.ae` proves it: two
  playback VCRs on two ports with two tapes, served simultaneously, each
  asserting it replays its own tape.)
- You **may** run VCR-driven tests in parallel — `t.Parallel()` is fine,
  because there is no shared state to stomp.
- The lifecycle is **open → configure(handle) → start**: each builder's config
  (redactions, unredactions, header removals, static mounts, whole-tape
  rewrites, format options, strict-headers) is applied to its own handle
  between open and start, so one fixture's settings can never leak into
  another's.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts / whole-tape
rewrites are registered against the handle before the server starts. A
**note**, however, is stored alongside the tape and is cleared when
`open_record` (re)loads the tape — so the wrapper stages the builder's note
*after* the handle is opened, attaching it to the first interaction. (See
`RecordBuilder.Start`.)
