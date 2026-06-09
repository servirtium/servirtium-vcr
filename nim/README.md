# servirtium-nim

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Nim.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```nim
import servirtium

let vcr = playback("tapes/climate_api.md")
doAssert vcr.start()

# ... point your HTTP client at vcr.baseUrl() & "/api/v1/countries" ...

doAssert vcr.lastKind() == Ok   # optional: assert a clean match
vcr.close()                     # playback stops; a record server flushes the tape
```

## What this is (and isn't)

This is a thin Nim layer over the **Aether VCR** core. All record/replay
machinery — markdown parse/emit, the HTTP server, request matching,
redactions, notes, drift detection, static bypass, gzip/chunked handling —
lives in the in-repo, pure-Aether `core/vcr.ae` module (built on Aether stdlib
primitives, with the Servirtium logic in this repo, *not* the Aether standard
library). This binding links a precompiled native build of that core (the
`aether_vcr_embed_*` C-ABI exported by `core/embed.ae`); it does **not**
reimplement Servirtium in Nim.

## Layout

- `src/servirtium.nim` — the idiomatic wrapper: `playback` / `record` returning
  a `VcrServer` with `start`, `baseUrl`, `lastKind`, `close`, plus mutations
  (`redact`, `normalizeWholeTape`, `staticContent`, `untaped`, notes, …).
- `src/servirtium/native.nim` — the raw FFI surface, 1:1 with the
  `aether_vcr_embed_*` C-ABI, bound with `{.importc, cdecl.}`.
- `tests/` — worked examples.

## Linking the native engine

The native engine is linked at build time via `{.passL.}` in
`src/servirtium/native.nim`:

```
{.passL: "-L<core/native> -lservirtium_vcr -Wl,-rpath,<core/native>".}
```

The `-L`/`-rpath` directory is resolved at compile time: it honors
`$SERVIRTIUM_VCR_LIB` (a path to the `.so`) if set, otherwise it falls back to
`core/native` relative to this source tree. The baked-in `-rpath` means the OS
loader finds `libservirtium_vcr.so` at run time without `LD_LIBRARY_PATH`.

Build the shared engine from `core/` (needs the Aether `ae` toolchain) or set
`SERVIRTIUM_VCR_LIB` to a prebuilt copy.

## Building / testing from source

```sh
# build the shared engine from core/, then point the build at it:
SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so \
  nim c -r --path:src tests/playback.nim
```

The test opens a playback tape, starts the server, shells out to `curl`
against the live base URL (so it pulls in no HTTP client library), and asserts
the replayed body and a clean `Ok` match.

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each `VcrServer` owns its own
native handle with its own tape, cursor, mutations, and diagnostics, so **N
independent servers can run concurrently in one process** without interfering.
Lifecycle is open -> configure(handle) -> start.

## License

Licensed under the MIT License ([LICENSE](../LICENSE) or
http://opensource.org/licenses/MIT).
