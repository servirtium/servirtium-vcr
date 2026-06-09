# Building

## Using the gem

You do **not** need the Aether toolchain to *use* servirtium-ruby: the native
library for your platform ships inside the gem under `lib/servirtium/native/`
and is loaded automatically by `Servirtium::Native.open_library`.

## Building the native library

The engine is the in-repo pure-Aether module `core/vcr.ae` plus the
`core/embed.ae` C-ABI, built once by the repo's **[aeb](https://github.com/aether-lang-org/aeb)**
`core/` node. Building any binding deps that node, so the simplest way to get
the native lib *and* run the Ruby tests is:

```sh
aeb ruby/.tests.ae
```

`ruby/.tests.ae` deps `core/.build.ae` (which builds the engine once via
`ae build --emit=lib` to `core/native/libservirtium_vcr.so`), then runs `rspec`
against it with `SERVIRTIUM_VCR_LIB` pointed at that artifact. Bare `aeb` (no
target) builds the whole monorepo.

Requires the Aether toolchain (`ae`) **≥ 0.227.0** (the engine uses `std.regex`)
and `aeb`, both on PATH. See the repo-root `README.md` and `./bootstrap.sh` for
installing them.

Cross-platform builds happen in CI (one runner per OS/arch).

## Pointing at a fresh build during development

Set `SERVIRTIUM_VCR_LIB` to an absolute path and it takes precedence over the
bundled copy:

```sh
SERVIRTIUM_VCR_LIB=/abs/path/libservirtium_vcr.so bundle exec rspec
```

## Running the tests

`aeb ruby/.tests.ae` runs the suite against a freshly built engine. To iterate
on the Ruby layer alone (engine already built), run rspec directly with
`SERVIRTIUM_VCR_LIB` pointed at the artifact:

```sh
SERVIRTIUM_VCR_LIB=../core/native/libservirtium_vcr.so bundle exec rspec
bundle exec rubocop
```

The engine is one-server-per-port, so the suite has no serial-execution constraint of
its own — see [architecture.md](architecture.md#concurrency-one-server-per-port).
