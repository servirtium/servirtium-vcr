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
   │   built: ae build --emit=lib --with=fs,net core/embed.ae
   │   • core/embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • core/vcr.ae    — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server, a
   │     pure-Aether module in this repo on Aether stdlib primitives
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Haskell side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the in-repo Aether core (`core/vcr.ae`), shared
with every other language binding built on the same `core/embed.ae`
(.NET/Go/Java/Rust/Ruby/JS/Python/Elixir/Pharo).

## The C-ABI

`core/embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only
the *embedding seam* the raw VCR module lacks, and threads a **handle** through
every call so each listener is addressed independently:

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

## Concurrency: one server per port

The VCR runs **one server per port**. Each `startPlayback` / `startRecord` opens a fresh
listener and gets back its own **handle**; the VCR's tape, replay cursor,
mutations, static mounts, pending note, and diagnostics are all scoped to that
handle. Consequences:

- You **can** run N `VcrServer`s simultaneously in one process — each is
  addressed by its own handle, so their cursors and mutations never bleed into
  each other. The `core_tests/.concurrent.ae` test exercises exactly this.
- **Tests can run in parallel.** `hspec` runs specs sequentially by default,
  which is fine; with `tasty` you may raise `NumThreads`, since separate
  fixtures no longer share state.
- The lifecycle is **open → configure(handle) → start**: the wrapper opens a
  listener, registers that fixture's redactions / unredactions / header
  removals / static mounts / format options / strict-headers against the
  handle, then starts the accept loop. Nothing is process-global, so a setting
  from one fixture cannot leak into another.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are registered
against the handle **before** the server starts. A **note**, however, is stored
alongside the tape and is cleared when `open_record` loads the tape — so the
wrapper stages the builder's note *after* the open + configure step and
*before* `start`, attaching it to the first interaction. (See `startRecord` in
`Servirtium.Vcr`.)
