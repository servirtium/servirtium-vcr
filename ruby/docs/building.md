# Building

## Using the gem

Use Ruby 3.3+ with Fiddle available. You do **not** need the Aether toolchain
to build a gem from a downloaded native library or to use the resulting gem.
The [README installation steps](../README.md#install) show how to stage the
library in `lib/servirtium/native/`, build the gem, and install it into an
isolated consumer app.

The gem discovers its bundled library automatically. `SERVIRTIUM_VCR_LIB`
can override loading but does not include a library in the gem when building.
The staged library must match the consumer's OS/architecture; this gem layout
does not select among architecture-specific subdirectories.

## Building the native library

libservirtium_vcr is the in-repo pure-Aether module `core/vcr.ae` plus the
`core/embed.ae` C-ABI, built once by the repo's **[aeb](https://github.com/aether-lang-dev/aeb)**
`core/` node. Building any binding deps that node, so the simplest way to get
the native lib *and* run the Ruby tests is, from the repository root:

```sh
aeb ruby/.tests.ae
```

`ruby/.tests.ae` deps `core/.build.ae` (which builds libservirtium_vcr once via
`ae build --emit=lib` to `core/native/libservirtium_vcr.so`), then runs `rspec`
against it with `SERVIRTIUM_VCR_LIB` pointed at that artifact. Bare `aeb` (no
target) builds the whole monorepo.

See the [repository development setup](../../docs/dev-setup.md) for the
maintainer toolchains. Consumers following the download-and-build-gem path
do not need those tools.

## Pointing at a fresh build during development

Set `SERVIRTIUM_VCR_LIB` to an absolute path and it takes precedence over the
bundled copy:

```sh
SERVIRTIUM_VCR_LIB=/abs/path/libservirtium_vcr.so bundle exec rspec
```

## Running the tests

`aeb ruby/.tests.ae` runs the suite against a freshly built libservirtium_vcr. To iterate
on the Ruby layer alone (libservirtium_vcr already built), run rspec directly with
`SERVIRTIUM_VCR_LIB` pointed at the artifact. From `ruby/`, with a compatible
Ruby selected:

```sh
bundle config set --local path vendor/bundle
bundle install
export SERVIRTIUM_VCR_LIB="/absolute/path/to/libservirtium_vcr.so"
bundle exec rspec
bundle exec rubocop
```

libservirtium_vcr is one-server-per-port, so the suite has no serial-execution constraint of
its own — see [architecture.md](architecture.md#concurrency-one-server-per-port).

For a consumer check, install the built gem into a fresh `GEM_HOME` using
`gem install --local --install-dir ...`, set `GEM_PATH` to that same directory,
and run the [README local record/replay example](../README.md#record-and-replay-a-local-service)
with `SERVIRTIUM_VCR_LIB` unset. The example shuts down its real upstream before
playback, so it checks the installed recorder and offline replay together.
