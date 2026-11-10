# Packaging — getting the gem (wheel, nupkg, shard, …) you actually want

Nothing in this repo is published to a registry yet. Each GitHub release does
attach four ready-made multi-platform packages: the fat Java jar, the
multi-RID .NET nupkg, an npm tarball with all eight native libraries under
`native/<platform>-<arch>[-musl]/` (`npm install <its release download URL>`),
and a SwiftPM artifact bundle that the root `Package.swift` downloads, so
`.package(url: "https://github.com/servirtium/servirtium-vcr", from: "2.0.0-alpha.15")`
needs nothing else.
Beyond those, there is no
`gem push`, no `npm publish`, no NuGet upload — and there may never be. What
there *is*: **one aeb target per language that builds the distributable
locally**, in the shape that language's tooling expects, with libservirtium_vcr
bundled inside it.

```sh
./get-package.sh ruby            # build the gem, copy it to ./out, print how to install it
./get-package.sh                 # list the languages
aeb ruby/.package.ae             # the same thing, if you already have aeb
aeb .packages.ae                 # every language, one command (~50s, one libservirtium_vcr build)
```

Piped from a bare machine (clones into `~/.cache/servirtium-vcr`, installs the
pinned `ae` + `aeb` first):

```sh
curl -fsSL https://raw.githubusercontent.com/servirtium/servirtium-vcr/main/get-package.sh | sh -s -- ruby
```

## Packaging runs no tests

A package step compiles what must be compiled, puts `libservirtium_vcr.so` where that
language's loader or linker will find it, and stops. It does **not** run the
binding's test suite. That is deliberate: you can build the wheel on a box with
no `pytest`, the gem with no `rspec`, the jar with no JUnit.

The three layers, kept separate on purpose:

| Target | Question it answers | Needs |
|---|---|---|
| `<lang>/.package.ae` | can I *build* the distributable? | that language's **compiler/packer** |
| `<lang>/.tests.ae` | does the binding work? | its compiler **+ test runner** |
| `<lang>/.example.ae` | can a stranger install and use it? | a clean env + the package |

All three exist for **all 30 languages**, and each `.example.ae` installs the
way that ecosystem really does — unpacked tarball + pkg-config, a dub or
SwiftPM path dependency, `Pkg.develop`, a shards-style `lib/` tree, a local
NuGet feed, relocated OTP apps on `ERL_LIBS` — always with
`SERVIRTIUM_VCR_LIB` unset, so only the bundled libservirtium_vcr can satisfy the load.

## What each language yields

`libservirtium_vcr.so` travels **inside** every artifact below, found either by a
baked `rpath` or by the binding's own bundled-`native/` discovery. No consumer
needs `SERVIRTIUM_VCR_LIB`.

### A real archive you install by path

| Language | Artifact | Install it with |
|---|---|---|
| Python | `python/dist/*.whl` | `pip install <file>` |
| Ruby | `ruby/pkg/servirtium.gem` | `gem install <file>` |
| JavaScript | `javascript/pkgout/*.tgz` | `npm install <file>` |
| .NET (C#) | `dotnet/pkg/` (a local NuGet feed) | `dotnet nuget add source <dir>` |
| F# | `fsharp/pkg/` (**both** nupkgs) | `dotnet nuget add source <dir>` |
| C | `c/servirtium-c-2.0.0-alpha.15.tar.gz` | `tar xzf` + `pkg-config servirtium` |
| C++ | `cpp/servirtium-cpp-2.0.0-alpha.15.tar.gz` | `tar xzf` + `pkg-config servirtium-cpp` |
| Lua | `lua/dist/` | put on `package.cpath` |
| Java + Kotlin/Scala/Clojure/Groovy | jar in `~/.m2` | `dev.servirtium:vcr[-<lang>]:2.0.0-alpha.15` |

F# ships **managed-only** and takes `Servirtium.Vcr` as a NuGet *dependency* —
the CLR family rides one native assembly, so a second copy of the `.so` would
be exactly the duplication this repo forbids. `aeb fsharp/.package.ae` puts
both nupkgs in one directory, so the feed is complete.

### A source package you point a path dep at

`libservirtium_vcr.so` is staged inside the package tree; the consumer's own build
links or loads it from there.

| Language | Point at it with |
|---|---|
| Rust | `servirtium = { path = "…/rust" }` |
| Go | `go get github.com/servirtium/servirtium-vcr/go/v2@<tag>` (tag `go/<tag>`) + `CGO_LDFLAGS` for the native lib; local: `go mod edit -replace github.com/servirtium/servirtium-vcr/go/v2=…/go` |
| Nim | `nim c --path:…/nim/src` |
| Zig | `build.zig`, libservirtium_vcr in `zig/native/` |
| Haskell | cabal package `servirtium`: a `source-repository-package` with `subdir: haskell` (or a path package) + `cabal.project.local` naming the library dir |
| Crystal | `servirtium: {path: "…/crystal"}` in `shard.yml`; from git: `github: servirtium/servirtium-vcr` (root `shard.yml` + `servirtium.cr`, see below) |
| Julia | `Pkg.develop(path="…/julia")` |
| Janet | `jpm --tree=… install` from `janet/` (or `jpm install` of the repo URL, root `project.janet`, see below); the library sits in `servirtium/native/` |
| Swift | from git by version: `.package(url: "https://github.com/servirtium/servirtium-vcr", from: "2.0.0-alpha.15")` (root `Package.swift` + the release's artifact bundle, see below); local: `.package(path: "…/swift")` |
| D | `dub add-local …/d 2.0.0`; from a clone or the registry: `dub add-local <clone-root> 2.0.0-alpha.15` / `dub add servirtium` (root `dub.sdl`, see below) |
| PHP | `composer.json` is in `php/` (not the repo root), so no `vcs`/Packagist route yet: `composer config repositories.servirtium path …/php && composer require servirtium/vcr:@dev` |
| Dart | `dependency_overrides: servirtium: {path: …/dart}` |
| Pharo | `ServirtiumLibrary libPath:` the staged `.so` |

#### Root manifests for Swift, Crystal, D and Janet

SwiftPM, Crystal shards and the dub registry only consume a package whose
manifest is at the **repository root**. This monorepo therefore carries three
root files that point into the binding directories: `Package.swift` (targets
use `path:` into `swift/`), `shard.yml` + `servirtium.cr` (the latter requires
`./crystal/src/servirtium`) and `dub.sdl` (`d/src`). Each explains itself in a
comment. The in-tree manifests (`swift/Package.swift`, `crystal/shard.yml`,
`d/dub.json`) stay, because the aeb leaves and path dependencies use them; the
root and in-tree copies must be kept in step. (Swift: `swift/.example.ae` stages
`swift/` standalone, so it cannot share the root manifest.)

Janet's `jpm` has the same constraint, so the repository root carries a fourth
manifest, `project.janet`, whose `:source` points at `janet/servirtium`
(`janet/project.janet` is the in-tree copy the aeb leaves use; keep the two in
step, `release/.version.ae` pins both). `jpm install` of the repo URL, or a
`:dependencies` entry `{:url "…/servirtium-vcr.git" :tag "<tag>"}`, then works,
and the library comes from `SERVIRTIUM_VCR_LIB` (a git install has no bundled
`native/`).

Swift, from a release: the root `Package.swift` declares the core as
`binaryTarget(url:checksum:)` on the release asset
`servirtium-vcr-swift-<tag>.artifactbundle.zip` (built by
`release/swift-bundle.sh`): a SwiftPM artifact bundle of type `staticLibrary`
(SE-0482, Swift 6.2+) with `libservirtium_vcr.a` for macOS arm64/x86_64 and
Linux glibc x86_64/arm64. An XCFramework would cover Apple only, and artifact
bundles cannot hold dynamic libraries, hence static archives; SwiftPM honours
the bundle on macOS as well, so one bundle and one manifest serve both. No
`unsafeFlags`, so `from:` / `exact:` work. Its checksum is written by the
release workflow after publishing, on a commit tagged with the bare semver tag
SwiftPM prefers over the `v` tag; see swift/README.md "How a release gets its
checksum into Package.swift" and release/README.md.

Otherwise (Crystal and D always; Swift with `SERVIRTIUM_VCR_LIB_DIR` set, on a
platform the bundle lacks, or on main before a release has published the
bundle), in a git-sourced install `native/` is empty (natives are git-ignored
and staged by aeb), so the manifests take the library directory from **`SERVIRTIUM_VCR_LIB_DIR`**
(the directory holding `libservirtium_vcr.<so|dylib>`, renamed from the
release asset `libservirtium_vcr-<tag>-<os>-<arch>.<ext>`), falling back to the
binding's own `native/` where the manifest can default: Swift and Crystal can;
dub cannot default an unset variable, so for the root `dub.sdl` it is required.
Each binding's README has a "Getting it" section with the runnable recipe.

Open points: Swift's source form (the `SERVIRTIUM_VCR_LIB_DIR` route) uses
`unsafeFlags`, which SwiftPM refuses in a dependency resolved by version, so on
Windows, FreeBSD and Linux musl the Swift package is still consumed by
`branch:` / `revision:` / path. The dub root package and the registry listing
are untested with dub itself so far.

### A relocatable OTP app (the BEAM four)

All four BEAM bindings publish to Hex, so their names are distinct:

| Binding | Hex package / OTP app | Module |
|---|---|---|
| Erlang | `servirtium_erl` | `servirtium` |
| Elixir | `servirtium` | `Servirtium` |
| Gleam | `servirtium_gleam` | `servirtium` |
| LFE | `servirtium_lfe` | `servirtium_lfe` |
| shared native app (all four depend on it) | `servirtium_nif` | `servirtium_nif` |

`erlang/.package.ae` builds the **one** `servirtium_nif` app —
`libservirtium_vcr.so` in `priv/`, NIF linked `-Wl,-rpath,$ORIGIN` so it finds libservirtium_vcr
beside itself wherever the app is placed — and, separately, the `servirtium_erl` app (the Erlang
`servirtium` module, depending on it). Elixir, Gleam and LFE each stage the NIF app
into their own `_build_pkg/`, so every BEAM package is self-contained
while there is still exactly one NIF in the repo. None is on Hex yet; until then
`erlang/build-nif-app.sh` builds `servirtium_nif` + `servirtium_erl` from a release
library with no Aether (see the Erlang README), and each binding README has a "Getting it" section.

```sh
ERL_LIBS=…/erlang/_build_pkg                        # erl, escript, gleam
SERVIRTIUM_NIF_EBIN=…/servirtium_nif/ebin           # mix (it ignores ERL_LIBS)
```

## Getting a package without the Aether toolchain

Building a package normally builds `libservirtium_vcr` from source, which means
`bootstrap.sh` installs `ae` + `aeb` first. For someone who just wants the gem
for their language and has never heard of Aether, that is the whole barrier.

`core/.getFromGitHubReleases.ae` removes it. It is a **drop-in substitute
producer**: instead of compiling `libservirtium_vcr`, it downloads the prebuilt
one for the host platform from this project's GitHub releases, verifies it
against the published `.sha256`, caches it under
`$XDG_CACHE_HOME/servirtium-vcr/<tag>/`, and publishes the *same four artifact
edges* `core/.build.ae` publishes. Relabel the dependency edge and any package
node consumes the fetched library:

```sh
aeb ruby/.package.ae --overrideDep core/.build.ae=core/.getFromGitHubReleases.ae
```

Needs aeb >= v0.314 (`--overrideDep`) and ae >= 0.681 (`os.arch()`). The node is
pure Aether stdlib — `http.client`, `cryptography.sha256_file`, `fs.*` — with no
shelled `curl`/`sha256sum`/`uname`, so it works in a sandbox with no shell.

The release tag comes from the repo-root **`SERVIRTIUM_VCR_VERSION`** file, which
is the single source of truth — no per-binding tag literal to drift.

The GitHub release assets are named
`libservirtium_vcr-<tag>-<os>-<arch>.{so,dylib,dll}` with `.sha256` sidecars —
exactly what `release/build.sh` emits. New release tags trigger the
[GitHub release workflow](../.github/workflows/release.yml) to build and publish
them. Commit the `SERVIRTIUM_VCR_VERSION` update before tagging, and verify it
matches the release just published; see the [release instructions](../release/README.md).

## Version strings differ per ecosystem — and one of them can't comply

The release tag is `v2.0.0-alpha.15`, but almost every packaging system spells a
prerelease its own way, and a consumer copying the tag string gets an
unresolvable coordinate. Audited 2026-09-20:

| binding | declared | note |
|---|---|---|
| python | `2.0.0a15` | PEP 440 (`alpha.N` -> `aN`) |
| ruby | `2.0.0.alpha.15` | RubyGems |
| javascript, rust, crystal, zig, d, gleam, elixir, erlang, lfe, dotnet, fsharp, dart, julia, janet, java (+ the 4 JVM wrappers) | `2.0.0-alpha.15` | SemVer; Maven takes the dotted form too |
| **haskell** | **`2.0.0`** | **cannot express a prerelease — see below** |
| nim, php, lua, pharo, swift, go | unversioned | consumed from source / VCS tag |

`release/.version.ae` rewrites every one of these (and the version quoted in every README) from the tag, so
`SVCR_RELEASE_SET=<tag> aeb release/.version.ae` is the only place a version is typed.

One trap follows from this.

**Haskell's `2.0.0` will collide with the real 2.0.0.** Cabal versions are PVP —
digits and dots only — so `2.0.0-alpha.15` is not a legal version there and the
package has to call itself something numeric. It currently calls itself exactly
what the GA release will call itself. A consumer who pins
`servirtium == 2.0.0` today gets the alpha; after GA the same constraint
silently gets a different package, with nothing in the version to tell them
apart. This is forced by the ecosystem, not an oversight — but it wants a
deliberate decision before GA (a `0.x`/`1.99.x` prerelease line, or an extra PVP
component) rather than being discovered by whoever pins it first.

## Relocatability, and the two bugs it catches

"The artifact contains the `.so`" is not the same as "the artifact works
somewhere else". Two failures found while building these steps, both of which a
package step exists to catch:

- **A pkg-config `.pc` with an absolute bake-time prefix** silently sends a
  consumer's `-I/-L` back to *this repo*. The C and C++ `.pc` files therefore
  anchor on `${pcfiledir}/../..` — pkg-config's own "directory holding this
  file" — so an unpacked tarball resolves to the unpacked copy. Verified by
  untarring elsewhere and checking the built binary carries **zero** repo paths.
- **An rpath in `Libs.private` never reaches a normal consumer.** pkg-config
  only emits `Libs.private` for `--static`, so a normally-linked program got
  `-L/-l` with no rpath and died at startup with
  `libservirtium_c.so: cannot open shared object file` — from a *complete*
  prefix. It belongs in `Libs`.

## Adding a package step for a new binding

Pick the nearest shape above and copy it. The rules:

1. **`dep("core/.build.ae")`** and take libservirtium_vcr from its `shared_lib`
   artifact — never a hardcoded `target/` path.
2. **Bundle, don't reference.** Copy the `.so` into the package; a consumer
   must never need this checkout on disk.
3. **Bake the rpath** (`$ORIGIN` for a self-contained dir, `${pcfiledir}` for a
   pkg-config prefix) so the artifact works after it moves.
4. **Run no tests.**
5. **Publish an artifact edge** (`publish_artifact("gem"/"package_dir"/…)`) so
   the matching `.example.ae` can consume it.
6. Add a `dep()` line to the root **`.packages.ae`** and a row to
   **`get-package.sh`**'s language table (language, kind, artifact path) plus a
   `consume_hint` case.
