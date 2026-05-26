# Architecture

## The layering

```
your test (hspec / tasty)
   │   withPlayback (playbackOptions tape) ...  /  withRecord (recordOptions tape upstream) ...
   ▼
servirtium-haskell        ── thin Haskell, this repo ──
   │   • Servirtium.Vcr          — options records, withPlayback/withRecord,
   │                               VcrServer, accessors, Field/Outcome/VcrException
   │   • Servirtium.Vcr.Native   — `foreign import ccall` block to aether_vcr_embed_*
   ▼   FFI (foreign import ccall, static link against libservirtium_vcr.so)
libservirtium_vcr.{so,dylib,dll}
   │   built: ae build --emit=lib --with=fs,net std/http/server/vcr/embed.ae
   │   • embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • std/http/server/vcr  — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Haskell side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the Aether core, shared with every other
language binding built on the same `embed.ae`
(.NET/Go/Java/Rust/Ruby/JS/Python).

## The C-ABI

`embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only
the *embedding seam* the raw VCR module lacks:

- **starts the accept loop on a background thread** — the core's `load()`
  deliberately doesn't listen, leaving that to a caller, which an FFI host
  can't wire;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before `start` returns and `port vcr` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`) rather than the core's borrowed strings.

`Servirtium.Vcr.Native` declares these 1:1 with `foreign import ccall`;
`Native.takeString` does `peekCString` then frees the returned `char*`. Inputs
are marshalled with `withCString`.

## Native linking & loading

Unlike the Rust binding (which `dlopen`s the lib at runtime via `libloading`)
and .NET (a `DllImportResolver`), Haskell's `foreign import ccall` is a
**static link** against the named shared library. The `.cabal` declares
`extra-libraries: servirtium_vcr` on both the library and the test-suite.

The lib *directory* needs care: GHC's `ghc-pkg` **rejects a relative
`extra-lib-dirs`** when it registers the library (it can't anchor a relative
path). So the `native/` dir is supplied as an **absolute path** — plus an
**rpath** so binaries load the lib at run time without `LD_LIBRARY_PATH` — via
`cabal.project.local`, which `build-native.sh` generates:

```
package servirtium-haskell
  extra-lib-dirs: <abs>/native
  ghc-options: -optl-Wl,-rpath,<abs>/native
```

That makes a plain `cabal build` / `cabal test` find (linker) and load
(loader, via `RUNPATH`) the engine with no extra flags. `bootstrap.sh` also
sets `LD_LIBRARY_PATH=$PWD/native` as a belt-and-suspenders fallback.

## One server per process

v1 keeps the VCR's tape, replay cursor, mutations, static mounts, pending
note, and diagnostics as **process-global** state (the documented v1 contract
on the Aether side). Consequences:

- You cannot run two `VcrServer`s simultaneously in one process.
- **Run tests serially.** `hspec` runs specs sequentially by default — which is
  what you want. With `tasty`, set `NumThreads 1`. Parallel tests would stomp
  each other's state (it shows up as spurious mismatches).
- `startPlayback` / `startRecord` call `resetGlobalState` first — clearing
  redactions, unredactions, header removals, static mounts, format options,
  strict-headers, and the last-error slot — then apply the current fixture's
  config. So a setting from a previous test never leaks forward, even within
  one process.

Per-server isolation (a real handle owning its own state) is on the Aether
roadmap; when it lands, the wrapper drops the serial constraint without an API
change.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are separate global
lists, registered **before** the server starts. A **note**, however, is stored
alongside the tape and is cleared when `start_record` (re)loads the tape — so
the wrapper stages the builder's note *after* `start_record` returns, attaching
it to the first interaction. (See `startRecord` in `Servirtium.Vcr`.)
