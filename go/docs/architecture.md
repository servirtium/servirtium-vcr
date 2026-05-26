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
native/libservirtium_vcr.so
   │   built: ae build --emit=lib --with=fs,net std/http/server/vcr/embed.ae
   │   • embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • std/http/server/vcr  — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Go side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the Aether core, shared with every other
language binding built on the same `embed.ae`.

## The C-ABI

`embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
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
// #cgo LDFLAGS: -L${SRCDIR}/native -lservirtium_vcr -Wl,-rpath,${SRCDIR}/native
```

`-L${SRCDIR}/native` finds it at link time; `-Wl,-rpath,${SRCDIR}/native`
bakes an **absolute** rpath into the test/binary so the runtime loader finds
`libservirtium_vcr.so` without `LD_LIBRARY_PATH`. (`${SRCDIR}` is expanded by
cgo to this package's source directory.) Verified: a `go test -c` binary
copied elsewhere still loads the lib.

## One server per process

v1 keeps the VCR's tape, replay cursor, mutations, static mounts, pending
note, and diagnostics as **process-global** state (the documented v1 contract
on the Aether side). Consequences:

- You cannot run two `*Server`s simultaneously in one process.
- **Run tests serially** — do NOT call `t.Parallel()` in tests that drive the
  VCR. Go runs test functions within a package serially by default, so simply
  not opting into parallelism is sufficient. Parallel tests would stomp each
  other's state (spurious `599` mismatches).
- `Playback(...).Start()` / `Record(...).Start()` call `resetGlobalState()`
  first — clearing redactions, unredactions, header removals, static mounts,
  format options, strict-headers, and the last-error slot — then apply the
  current fixture's config. So a setting from a previous test never leaks
  forward, even within one process.

Per-server isolation (a real handle owning its own state) is on the Aether
roadmap; when it lands, the wrapper drops the serial constraint without an
API change.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are separate
global lists, registered before the server starts. A **note**, however, is
stored alongside the tape and is cleared when `start_record` (re)loads the
tape — so the wrapper stages the builder's note *after* `start_record`
returns, attaching it to the first interaction. (See `RecordBuilder.Start`.)
