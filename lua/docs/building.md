# Building

## Prerequisites

- **Lua 5.4** and its dev headers — `pkg-config --cflags lua5.4` must work
  (Debian/Ubuntu: `liblua5.4-dev`; the interpreter is `lua5.4`).
- A C toolchain (`cc`).
- The shared engine `core/native/libservirtium_vcr.so`, built once from the
  in-repo Aether core (`core/vcr.ae` + `core/embed.ae`) by `core/.build.ae`.
  No separate Aether source checkout is needed; `core/.build.ae` compiles it
  against the installed toolchain's stdlib. Building the engine needs the Aether
  toolchain (`ae`) **≥ 0.227.0** (for `std.regex` whole-tape rewrites and
  chunked de-chunking) — see the repo root `bootstrap.sh` / Go binding's
  `building.md` for installing it.

## Compile the extension

```sh
./build.sh                       # defaults CORE_NATIVE_DIR to ../core/native
./build.sh /abs/path/to/core/native
```

which runs, in effect:

```sh
cc -O2 -shared -fPIC $(pkg-config --cflags lua5.4) csrc/servirtium.c \
   -L<core/native> -lservirtium_vcr -Wl,-rpath,<core/native> \
   -o servirtium_native.so
```

`-shared -fPIC` produce a loadable module; `pkg-config --cflags lua5.4` finds
`lua.h`/`lauxlib.h`; `-L`/`-l` link the engine and `-Wl,-rpath` bakes its
directory in so `libservirtium_vcr.so` is found at runtime with no
`LD_LIBRARY_PATH`.

## With aeb (the monorepo path)

The binding's build/test leaf is `lua/.tests.ae`. It `build.dep`s
`core/.build.ae` (so the engine `.so` is built first), then runs `./build.sh`
with the engine dir and finally drives the full test suite:

```sh
aeb lua/.tests.ae        # engine .so + compile the extension + run all Lua tests
```

> aeb is not on a fresh `PATH` — it's at `~/.local/bin/aeb`. Prefix
> `export PATH="$HOME/.local/bin:$PATH"` or call it by full path. Never run two
> top-level `aeb` invocations concurrently (they share a build workspace).

## Run the tests by hand (no aeb)

```sh
./build.sh /abs/path/to/core/native
LUA_CPATH="./?.so;;" \
SERVIRTIUM_VCR_LIB=/abs/path/to/core/native/libservirtium_vcr.so \
lua5.4 tests/run_all.lua
```

`run_all.lua` runs each test file (`playback.lua`, `record.lua`,
`mutation.lua`) in its own `lua5.4` subprocess and exits non-zero if any fails.
`LUA_CPATH="./?.so;;"` lets `require("servirtium_native")` find the compiled
`.so` in the current dir.

### Record-mode tests need python3

`record.lua` / `mutation.lua` spin up a throwaway HTTP **upstream** to record
against. Lua 5.4 has no stdlib sockets, so the suite spawns a one-process
`python3` HTTP server (`/usr/bin/python3`) that returns a fixed body/headers
and echoes the request method+body to a sidecar file, then kills it. Recorded
tapes are written to the OS temp dir, never into `tapes/`.
