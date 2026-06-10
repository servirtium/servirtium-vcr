# Building & releasing

## Turnkey: `./bootstrap.sh`

For a casual dev, the repo-root `bootstrap.sh` encodes the steps below as one
idempotent command:

```sh
./bootstrap.sh        # extra args pass through to `mix test`
```

It checks for `ae` (≥ 0.227.0, for `std.regex`) and installs it via aether's official `get.sh`
remote installer to a user prefix (`$HOME/.local` — **no sudo, no Aether test
suite, no contrib**; needs `curl`, no build-from-source fallback) if it's
missing/too old; checks Elixir/Mix are present (it does **not** auto-install
them — Erlang/Elixir is a large external dependency); then runs
`build-native.sh`, `mix deps.get`, and `mix test`. No-op for the toolchain when
`ae` is already good. Override `PREFIX` / `AETHER_REF` (pin in CI) / `MIN_AE`
via env.

Everything from here down is what `bootstrap.sh` automates.

## Prerequisites

- **Elixir 1.15+ / Erlang OTP 26+** with `mix`. `bootstrap.sh` checks for them
  but does not install them. (Developed against Elixir 1.18.3 / OTP 27.)
- **A C compiler** (`cc`/`gcc`/`clang`) and `make` — to build the NIF.
- **The Aether toolchain (`ae`) on PATH** — only needed to build the *native*
  library; `bootstrap.sh` installs it via aether's `get.sh` if absent
  (`curl -sSL https://raw.githubusercontent.com/aether-lang-org/aether/main/get.sh | sh`).

## Build the native library (the engine)

The native library is built from the in-repo VCR embedding module,
`core/embed.ae` (which compiles `core/vcr.ae`, a pure-Aether module on the
Aether stdlib's fs/net/regex primitives) into `core/native/`:

```sh
./build-native.sh
```

This produces the **host platform's** shared library
(`core/native/libservirtium_vcr.<ext>`). Under the hood it drives the Aether
toolchain over `core/embed.ae`:

```sh
ae build --emit=lib --with=fs,net core/embed.ae \
   -o core/native/libservirtium_vcr.<ext>
```

- `--emit=lib` produces a shared library with `aether_*` exports.
- `--with=fs,net` grants the filesystem + networking capabilities the VCR needs
  (tape I/O + the embedded HTTP server). This requires a `-fPIC` Aether
  runtime; the whole-tape normalization/redaction features need `std.regex`, so
  the floor is **Aether ≥ 0.227.0**.

## The NIF is the shared Erlang app (Elixir doesn't build one)

Elixir does **not** compile a NIF. The canonical `servirtium_nif` NIF is built
once by the **Erlang** binding (`aeb erlang/.build.ae` →
`erlang/_build/servirtium_nif/{ebin,priv}`, which `cc`-builds
`priv/servirtium_nif.so` linking `../core/native` with an rpath, and `erlc`s the
loader module). `Servirtium.Native` just `defdelegate`s onto `:servirtium_nif`.

Put that shared app on the BEAM code path, then test. `mix` does **not** fold
`ERL_LIBS` in, so `test_helper.exs` does `Code.append_path` from
`SERVIRTIUM_NIF_EBIN`:

```sh
mix deps.get
SERVIRTIUM_NIF_EBIN=../erlang/_build/servirtium_nif/ebin mix test
```

Or just `aeb elixir/.tests.ae`, which builds the engine + the shared Erlang app
(via deps) and passes `SERVIRTIUM_NIF_EBIN` for you. The engine `.so` and the
shared NIF are **git-ignored build artifacts**.

## CI

`.github/workflows/ci.yml` runs on push/PR: installs `ae`, builds the native
engine (`build-native.sh`), then `mix deps.get`, `mix test`, and
`mix format --check-formatted`.

## Platform notes

| OS | Native lib | NIF link |
|---|---|---|
| Linux | `libservirtium_vcr.so` | `-shared`, rpath `core/native/` |
| macOS | `libservirtium_vcr.dylib` | `-dynamiclib -undefined dynamic_lookup`, rpath `core/native/` |
| Windows | (CI TODO) | — |

Each arch is a distinct binary (no shared code between x64 and arm64).
