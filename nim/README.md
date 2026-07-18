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
  a `VcrServer` configured open → set → `start`, with `baseUrl`, `port`,
  `tapeLength`, `lastKind`/`lastError`/`lastIndex`, `resetCursor`,
  `clearLastError`, `close`, plus the full mutation/format set (`redact`,
  `unredact`, `removeHeader`, `normalizeWholeTape`, `redactWholeTape`,
  `staticContent`, `untaped`, `note`, `setStrictHeaders`, `setMatchJsonBody`,
  `setMatchMultiple`, `matchHeader`,
  `indentCodeBlocks`,
  `emphasizeHttpVerbs`, `failIfChanged`).
- `src/servirtium/native.nim` — the raw FFI surface, 1:1 with the
  `aether_vcr_embed_*` C-ABI, bound with `{.importc, cdecl.}` and linked via
  `{.passL.}`.
- `tests/` — the suite (see below). `tests/upstream.nim` is a throwaway
  `std/asynchttpserver` upstream used by the record/mutation suites.
- `docs/` — [architecture](docs/architecture.md), [building](docs/building.md),
  [features](docs/features.md), [usage](docs/usage.md).

## What's tested

Full feature/test parity with the Go binding — 15 cases across four files,
all run against the real native engine:

- **`tests/playback_test.nim`** — replays a recorded GET; flags a path mismatch
  via diagnostics; unredaction lets a scrubbed tape match (secure_get +
  `unredact` Authorization); strict matching flags a missing request header;
  static content served from disk; untaped path 404s without consuming the
  cursor; two playback servers at once (one server per port).
- **`tests/record_test.nim`** — record then replay the same interaction;
  record + replay a POST with a body.
- **`tests/mutation_test.nim`** — redacts a response body before it lands on the
  tape; attaches a note; removes a named response header; mutation state does
  not leak between fixtures; `failIfChanged` raises on drift.
- **`tests/playback.nim`** — the original curl-driven playback smoke test.

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
# build the shared engine from core/, then run the whole suite against it.
# --threads:on is required: the record/mutation suites run their throwaway
# upstream's async accept loop on a dedicated thread.
cd nim
LIB=../core/native/libservirtium_vcr.so
for t in tests/playback.nim tests/playback_test.nim \
         tests/record_test.nim tests/mutation_test.nim; do
  SERVIRTIUM_VCR_LIB="$LIB" \
    nim c -r --hints:off --threads:on --path:src --path:tests "$t" || break
done
```

Or via aeb: `aeb nim/.tests.ae` (builds the engine `.so` first, then runs all
four files). The playback suite drives requests with `curl` via `osproc` (no
HTTP-client dependency); the record/mutation suites use `std/httpclient` from
the main thread, since forking `curl` while the async upstream thread is live
is unreliable on this stdlib. See [docs/building.md](docs/building.md).

## Concurrency: one server per port

The Aether VCR runs **one server per port**: each `VcrServer` owns its own
native handle with its own tape, cursor, mutations, and diagnostics, so **N
independent servers can run concurrently in one process** without interfering.
Lifecycle is open -> configure(handle) -> start.

## License

Licensed under the MIT License ([LICENSE](../LICENSE) or
http://opensource.org/licenses/MIT).
