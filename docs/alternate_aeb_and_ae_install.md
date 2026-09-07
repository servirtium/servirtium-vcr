# Alternate ways to install `ae` + `aeb`

The [README](../README.md#installing-the-toolchain-ae--aeb) covers the two you'll
normally use: `./bootstrap.sh` (recommended) and downloading aeb's `get.sh` to a
file and running it. This page collects the rest — the sourceable-library form
for CI, and how to force a from-source build.

All of these still need the **prerequisites** from the README: a C compiler and
GNU make (`ae`/`aeb` fall back to a source build when no prebuilt asset matches
your platform, and aeb's bundle installer always runs `make`). Install them first
(`sudo apt-get install -y build-essential curl`, or the dnf / xcode-select
equivalent). Everything installs into `~/.local` (no sudo); set `PREFIX=` to
override, and make sure `$PREFIX/bin` is on your `PATH`.

The pins below (`AE_PIN=0.645.0`, `AEB_REF=v0.297`) mirror this repo's
[`bootstrap.sh`](../bootstrap.sh) — keep them in step with it.

## `get.sh` as a sourceable library (CI)

The same aeb `get.sh` is dual-mode: run as a file it installs; **sourced** it only
*defines* its functions, so a CI step can source it once and drive the bootstrap
itself against the repo's pin. This is the tidiest form for a pipeline — no
temp file, no second script:

```bash
. <(curl -fsSL https://raw.githubusercontent.com/aether-lang-dev/aeb/main/get.sh)
AE_PIN=0.645.0 AEB_REF=v0.297 aeb_bootstrap        # ensures ae (>= AE_PIN) THEN aeb
```

`aeb_bootstrap` ensures `ae` (>= `AE_PIN`) and then `aeb` (they install in that
order — aeb's installer needs an `ae` to target). If you want the pieces
separately, the library also defines `ae_ensure` and `aeb_ensure`; call them in
that order.

> On some older/mirrored copies of `get.sh` you may need `AEBGET_SOURCE_ONLY=1`
> before the `. <(…)` to stop it auto-running while sourced. The current script
> keys purely on `$0`, so a plain source does not auto-run — but setting the flag
> is harmless and makes the intent explicit.

Useful env knobs (all optional):

| Var | Meaning |
|---|---|
| `AE_PIN` | FLOOR: the oldest `ae` that can build this repo. In sourced mode `ae_ensure` requires it. |
| `AE_FETCH` | The `ae` release to install when the floor isn't met. Defaults to `AE_PIN`. |
| `AETHER_REF` | Explicit `ae` ref — a tag installs the binary; a branch/SHA forces a source build. Overrides the above. |
| `AEB_REF` | The `aeb` release tag (or positional arg #1 to `get.sh`). Defaults to latest. |
| `AEB_MIN` | FLOOR: the oldest `aeb` the repo needs (a sourced run warns if the one on PATH is older). |
| `PREFIX` | Install prefix. Default `$HOME/.local` (no sudo). Shared by both tools. |
| `AEB_FROM_SOURCE=1` | Skip the prebuilt binaries and build from source (see below). |

## Building from source

`get.sh` is **binary-first**: it downloads the prebuilt, release tarballs
(`ae` over GitHub-HTTPS; `aeb` with a runtime `.sha256` verify) and only falls
back to a source build when no asset exists for your platform — for example
Linux/arm64, which has no `ae` binary asset. A cold box on a supported platform
therefore skips the per-tool compile entirely.

To **force** the source path (e.g. to build a specific branch/SHA, or on a
platform with no asset), set `AEB_FROM_SOURCE=1`:

```bash
curl -fsSL https://raw.githubusercontent.com/aether-lang-dev/aeb/main/get.sh -o get.sh
AE_PIN=0.645.0 AEB_REF=v0.297 AEB_FROM_SOURCE=1 bash get.sh
```

The source path builds `ae` via Aether's own `get.sh` (`make install`) and `aeb`
via the aeb repo's `install.sh`. A C compiler and GNU make are mandatory here
(they are only *usually* optional on the binary path).

Or install each tool directly from a clone — equivalent to what the source
fallback does, but with the tree in front of you:

```bash
# Aether (ae)
git clone https://github.com/aether-lang-dev/aether.git
cd aether && make install PREFIX="$HOME/.local"

# aeb (needs an ae already on PATH to build against)
git clone https://github.com/aether-lang-dev/aeb.git
cd aeb && make install PREFIX="$HOME/.local"
```

`aeb --version` then reports the release tag (or `0.0.0-dev+<sha>` for a
source build) it installed.

## Pinning in CI

Whichever form you use, pin both numbers explicitly and keep them equal to
[`bootstrap.sh`](../bootstrap.sh)'s `AE_FETCH` / aeb floor, so CI and a fresh
local checkout build against the same toolchain. `get.sh` prints a ready-to-paste
`Pin this in CI with: AE_PIN=… AEB_REF=…` line at the end of an executed run.
