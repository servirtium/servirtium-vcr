# Servirtium VCR — monorepo

Record/replay for HTTP service tests in the [Servirtium](https://servirtium.dev)
markdown tape format, across many languages — **one engine, many thin
bindings, one build**.

The record/replay engine (markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static-content bypass,
gzip/chunked handling) is the Aether standard library `std/http/server/vcr`,
built once here as a native shared library (`libservirtium_vcr.so`). Each
language binding is a thin FFI wrapper over that one engine, so they cannot
drift from each other — Servirtium compatibility across languages is a
build-time guarantee, not a test target.

## Layout (Selenium-style, flat per language)

```
servirtium-vcr/
  core/        # builds libservirtium_vcr.so once (ae build --emit=lib); every binding deps it
  go/            # cgo                         python/    # ctypes
  dart/          # dart:ffi (also Flutter)     dotnet/    # P/Invoke
  java/          # FFM / Panama (JDK 22+)      rust/      # libloading
  ruby/          # Fiddle                      javascript/# koffi (Node)
  haskell/       # foreign import ccall        elixir/    # C NIF
  php/           # ext-ffi                     pharo/     # UnifiedFFI (Smalltalk)
  conformance/   # cross-binding replay corpus + runner
  docs/
```

All **12** bindings are wired and pass through one `aeb` run: the `core/`
node builds `libservirtium_vcr.so` once, then each binding's `.tests.ae`
links (go/elixir/haskell) or loads (the rest, via `SERVIRTIUM_VCR_LIB`) that
single artifact.

## Build (aeb)

The whole repo is built with **[aeb](https://github.com/aether-lang-org/aeb)**,
the polyglot Aether build runner — the natural fit for a one-engine,
many-language monorepo. You point `aeb` at the node you want (a dot-prefixed
`.ae` script, e.g. `java/.tests.ae`); it follows that node's `build.dep(...)`
edges and builds just its transitive dependencies, in order. Because every
binding deps the `core/` node, asking for any one binding first builds the
native lib once, then links or loads that single artifact — nothing else gets
built. Bare `aeb` (no target) builds the whole repo: it collects every `.ae`
node in the tree and builds the full graph in dependency order.

```sh
./bootstrap.sh        # installs the Aether toolchain + aeb if missing, then `aeb`
# or, if you already have ae (>= 0.183) and aeb on PATH:
aeb                   # engine -> all wired bindings' tests
aeb go/.tests.ae      # just one binding (builds the engine it deps, then tests)
```

See [docs/](docs/) and each binding's own `docs/`.
