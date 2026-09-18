# release — cross-built libservirtium_vcr artifacts + on-target attestation

`libservirtium_vcr` is pure Aether plus a ~12-line C string bridge,
so it **cross-compiles for the whole platform matrix from one Linux host** — no
per-OS runner for the build. This directory builds those artifacts, checksums
them, and (via `publish.sh`) attaches them to a GitHub release as **linkable,
per-OS/CPU downloads**. On-target *testing* is done out of band and recorded as
an attestation keyed by SHA256.

**libservirtium_vcr only, on purpose.** These scripts ship the one thing that is hard for a
user to produce — the native shared library, one per OS/CPU. They deliberately do
**not** build or publish the per-language packages (wheel / gem / jar / nupkg /
…) or push to any registry (PyPI / npm / Maven / …). Those are the `.package.ae`
nodes' job (build them from the tagged source with `aeb <lang>/.package.ae`) and a
credentialed, per-registry concern out of scope here.

## Build

```sh
release/build.sh                        # core matrix: linux + macos, x86_64 + arm64
RELEASE_TAG=v2.0.0 release/build.sh      # stamp a tag into the artifact names
RELEASE_EXTRA_TARGETS=1 release/build.sh # + windows (slow) + freebsd (needs AETHER_SYSROOT)
TARGETS="aarch64-macos" release/build.sh # just one
```

Needs `ae` + `zig` on PATH (install the pinned toolchain — see `../bootstrap.sh` /
`../README.md`) and `sha256sum`. Outputs into `release/dist/` (gitignored):

- `libservirtium_vcr-<tag>-<os>-<arch>.{so,dylib,dll}` — the artifact
- `<artifact>.sha256` — its checksum (sidecar)
- `SHA256SUMS.txt` — all artifacts in one manifest

Each is stripped (`--size`). `so`=linux ELF, `dylib`=macOS Mach-O, `dll`=Windows
PE. On Windows each DLL also gets a `<dll>.lib` import library beside it — needed
only by a consumer that *links* the DLL at build time; the FFI bindings `dlopen`
at runtime and don't use it, but it's checksummed and shipped so Windows is
first-class. FreeBSD needs `AETHER_SYSROOT` and skips loudly without it.

## Cut a GitHub release (manual, no repo settings needed)

```sh
release/publish.sh v2.0.0-alpha.1              # build the matrix + create the release, assets attached
release/publish.sh v2.0.0-alpha.1 --prerelease # mark it a pre-release on GitHub (do this for -alpha/-beta/-rc)
release/publish.sh v2.0.0-alpha.1 --draft      # create as a draft to review first
release/publish.sh v2.0.0-alpha.1 --no-build   # attach whatever is already in release/dist
```

`publish.sh` builds (unless `--no-build`), then `gh release create <tag>` with
every artifact, its `.sha256`, and `SHA256SUMS.txt`. It uses your existing `gh`
auth — **nothing in GitHub Settings, no Actions, no secrets.** It pins the tag to
the exact commit it built (`--target <commit>`) and refuses a dirty tracked tree,
so the tagged source and the binaries are the same code.

### Version strings are pre-release-aware — mind `sort -V`

The canonical version is a SemVer **pre-release** (`2.0.0-alpha.1`). Two gotchas:

- **`sort -V` disagrees with SemVer on pre-releases.** SemVer orders
  `2.0.0-alpha.1` *before* `2.0.0` (a pre-release precedes its final), but
  `sort -V` puts the bare `2.0.0` first and treats any `-suffix` as *later* — so
  `sort -V | tail -1` would rank an alpha as "newer" than the final release. Do
  **not** pick "latest" by `sort -V` once a pre-release and its final coexist;
  let GitHub's own "Latest" flag (set at publish, cleared by `--prerelease`)
  decide, or compare with a real SemVer parser.
- **Each package ecosystem spells the pre-release differently** — the git tag is
  `v2.0.0-alpha.1`, but the per-language manifests carry the ecosystem-valid form:
  Python `2.0.0a1` (PEP 440), RubyGems `2.0.0.alpha.1`, Maven `2.0.0-alpha1`,
  and plain SemVer `2.0.0-alpha.1` everywhere else (npm/cargo/pub/NuGet/hex/…).
  A single literal string is **not** portable across all of them.

## Using a published artifact

Download the artifact for your OS/CPU, verify it against its `.sha256` (or
`SHA256SUMS.txt`), then point any binding at it — no build required:

```sh
export SERVIRTIUM_VCR_LIB=/path/to/libservirtium_vcr-v2.0.0-linux-x86_64.so
# …then run your Python/Ruby/Node/… tests as usual (ctypes/Fiddle/koffi load it)
```

Link-time bindings (cgo/NIF/cabal) instead point their `-L`/rpath at the file's
directory. The one shared library backs every binding, so a single downloaded
artifact serves all of them on that platform.

## Why build-here / test-elsewhere

The **build** is deterministic and platform-agnostic (zig cross-compiles the
exact bytes every time), so building on Linux and running on the target are
testing *identical bytes* — there is no "works on my machine" gap. What a Linux
host cannot do is *run* an arm64-macOS binary. So:

1. **Build (this script, one Linux host):** cross-build the matrix, publish each
   artifact **with its `.sha256`**. A slow/unavailable macOS runner never blocks
   a release.
2. **Attestation (out of band, real hardware):** fetch a specific artifact by
   hash, run a binding's record/playback suite against it on its target OS, and
   record that **that hash** passed. Because SHA256 identifies the exact bytes,
   the attestation is a durable, verifiable claim about what users download.

## What "passed" covers per artifact

Its job is record/replay of HTTP over `libservirtium_vcr`'s own HTTP
server + client (`std.http`). A cross-built artifact covers:

- **Playback** (replay a committed tape; no upstream network) — the common CI
  case; works on every cross-built artifact.
- **Record** (forward to a live upstream over `http://`, write the tape) — works
  on every artifact; exercises the client's plain-HTTP path.
- **`https://` upstreams** — depend on Aether's TLS support in `std.http.client`;
  if a target/toolchain doesn't cover TLS, say so in the attestation rather than
  implying full coverage, and record what the suite actually exercised.

## Attestation record (suggested format)

One line per (artifact, target, run) in a checked-in `release/ATTESTATIONS.md`,
or a signed file — whatever your trust model wants. The load-bearing fields:

```
sha256=<hex>  artifact=libservirtium_vcr-v2.0.0-macos-arm64.dylib
target=macos-arm64  host=<box>  date=2026-09-16
coverage=playback+record-http        # or: +record-https
result=PASS                           # PASS | FAIL
suite=<what ran>  notes=<e.g. "ruby Fiddle + go cgo bindings; no https upstream tested">
```

A verifier re-hashes the artifact they hold, matches `sha256`, and trusts the
`result` for that `coverage` on that `target`.
