# Architecture

## The layering

```
your test (nim c -r tests/*.nim)
   │   playback(tape).start()  /  record(tape, upstream).start()
   ▼
servirtium-nim          ── thin Nim (importc + passL), this repo ──
   │   • VcrServer + playback/record/start/baseUrl/close + mutations  (src/servirtium.nim)
   │   • {.importc, cdecl.} bindings to aether_vcr_embed_*            (src/servirtium/native.nim)
   ▼   C ABI, linked at build time
core/native/libservirtium_vcr.so
   │   built: ae build --emit=lib --with=fs,net core/embed.ae (by core/.build.ae)
   │   • core/embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • core/vcr.ae    — the actual VCR (parse, dispatch, record, mutate,
   │     emit, match) — pure Aether, in this repo, on top of std.http's
   │     server + std.regex / std.zlib / std.cryptography
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Nim side owns **none** of the Servirtium semantics. It opens/configures/
starts/stops a server, marshals strings across the FFI, and presents an
idiomatic `VcrServer`. Everything that defines Servirtium behaviour is the
in-repo Aether core (`core/vcr.ae` + `core/embed.ae`), shared with every other
language binding through the one `core/native/libservirtium_vcr.so` built by
`core/.build.ae`. The core is *built on* Aether's stdlib primitives but is not
itself part of the stdlib.

## The C-ABI

`core/embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only
the *embedding seam* the raw VCR module lacks:

- **starts the accept loop on a background thread** — the core's `load()`
  deliberately doesn't listen, leaving that to a caller, which an FFI host
  can't wire;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before `start` returns and `port()` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`) rather than the core's borrowed
  TLS/arena strings.

`src/servirtium/native.nim` declares these 1:1 with `{.importc, cdecl.}`.
`takeString` (in `src/servirtium.nim`) copies each returned `cstring` into an
owned Nim `string` and frees the pointer per the ABI ownership rule; inputs are
passed as `cstring` views of Nim strings (kept alive across the call).

## Native-library resolution (importc + passL)

Unlike the runtime-loading bindings (Python ctypes, Ruby Fiddle, …), Nim links
the engine **at build time** through the C backend. `src/servirtium/native.nim`
emits a `{.passL.}` pragma:

```nim
{.passL: "-L<dir> -lservirtium_vcr -Wl,-rpath,<dir>".}
```

The `<dir>` is resolved **at compile time**:

- if `$SERVIRTIUM_VCR_LIB` (an absolute path to the `.so`) is set, its parent
  directory is used (`staticExec "dirname …"`);
- otherwise it falls back to `core/native` relative to this source tree
  (`currentSourcePath().parentDir()…`).

`-L<dir>` finds the library at link time; `-Wl,-rpath,<dir>` bakes an
**absolute** rpath into the test binary so the runtime loader finds
`libservirtium_vcr.so` without `LD_LIBRARY_PATH`.

## Concurrency: one server per port

The VCR core runs **one server per port**. Each `start` opens a fresh native
handle, and the VCR's tape, replay cursor, mutations, static mounts, pending
note, and diagnostics are all scoped to **that handle** — nothing is
process-global. Consequences:

- N independent `VcrServer`s can be alive at once in one process, each
  replaying or recording its own tape with its own cursor and diagnostics,
  without bleeding into each other. (`tests/playback_test.nim`'s "two playback
  servers at once" exercises this; `core_tests/.concurrent.ae` proves it at the
  engine level.)
- The lifecycle is **open → configure(handle) → start**: each fixture's config
  (redactions, unredactions, header removals, static mounts, whole-tape
  rewrites, format options, strict-headers) is applied to its own handle
  between open and start, so one fixture's settings can never leak into
  another's. `tests/mutation_test.nim`'s "mutation state does not leak between
  fixtures" asserts exactly that.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts / whole-tape
rewrites are registered against the handle before the server starts. A
**note**, however, is stored alongside the tape and is cleared when
`open_record` (re)loads the tape — so a builder-time note must be staged
*after* the handle is opened. In this binding, `note(...)` is called on the
opened-but-not-started `VcrServer`, attaching it to the first interaction.

## A Nim-specific testing note (threads + the upstream)

Record-mode tests need a throwaway upstream. This binding stands one up with
`std/asynchttpserver`. Nim's async dispatcher keeps its epoll set **per
thread**, so a socket must be bound *and* served on the same thread — the test
helper (`tests/upstream.nim`) therefore binds and serves on one dedicated
worker thread and hands the OS-assigned port back over a `Channel`. SUT
requests in record-mode tests are driven with `std/httpclient` from the main
thread (forking `curl` while async-server threads are live is unreliable on
this stdlib). Playback-mode tests, which have no extra thread, drive requests
with `curl` via `osproc`.
