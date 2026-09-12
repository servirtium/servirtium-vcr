# Packaging — getting the gem (wheel, nupkg, shard, …) you actually want

Nothing in this repo is published to a registry. There is no
`gem push`, no `npm publish`, no NuGet upload — and there may never be. What
there *is*: **one aeb target per language that builds the distributable
locally**, in the shape that language's tooling expects, with the native engine
bundled inside it.

```sh
./get-package.sh ruby            # build the gem, copy it to ./out, print how to install it
./get-package.sh                 # list the languages
aeb ruby/.package.ae             # the same thing, if you already have aeb
aeb .packages.ae                 # every language, one command (~50s, one engine build)
```

Piped from a bare machine (clones into `~/.cache/servirtium-vcr`, installs the
pinned `ae` + `aeb` first):

```sh
curl -fsSL https://raw.githubusercontent.com/servirtium/servirtium-vcr/main/get-package.sh | sh -s -- ruby
```

## Packaging runs no tests

A package step compiles what must be compiled, puts the engine `.so` where that
language's loader or linker will find it, and stops. It does **not** run the
binding's test suite. That is deliberate: you can build the wheel on a box with
no `pytest`, the gem with no `rspec`, the jar with no JUnit.

The three layers, kept separate on purpose:

| Target | Question it answers | Needs |
|---|---|---|
| `<lang>/.package.ae` | can I *build* the distributable? | that language's **compiler/packer** |
| `<lang>/.tests.ae` | does the binding work? | its compiler **+ test runner** |
| `<lang>/.example.ae` | can a stranger install and use it? | a clean env + the package |

## What each language yields

The engine `.so` travels **inside** every artifact below, found either by a
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
| C | `c/servirtium-c-2.0.0.tar.gz` | `tar xzf` + `pkg-config servirtium` |
| C++ | `cpp/servirtium-cpp-2.0.0.tar.gz` | `tar xzf` + `pkg-config servirtium-cpp` |
| Lua | `lua/dist/` | put on `package.cpath` |
| Java + Kotlin/Scala/Clojure/Groovy | jar in `~/.m2` | `com.paulhammant.servirtium:servirtium-vcr[-<lang>]:2.0.0-SNAPSHOT` |

F# ships **managed-only** and takes `Servirtium.Vcr` as a NuGet *dependency* —
the CLR family rides one native assembly, so a second copy of the `.so` would
be exactly the duplication this repo forbids. `aeb fsharp/.package.ae` puts
both nupkgs in one directory, so the feed is complete.

### A source package you point a path dep at

The engine `.so` is staged inside the package tree; the consumer's own build
links or loads it from there.

| Language | Point at it with |
|---|---|
| Rust | `servirtium = { path = "…/rust" }` |
| Go | `go mod edit -replace github.com/servirtium/servirtium-go=…/go` |
| Nim | `nim c --path:…/nim/src` |
| Zig | `build.zig`, engine in `zig/native/` |
| Haskell | a path `source-repository-package` |
| Crystal | `servirtium: {path: "…/crystal"}` in `shard.yml` |
| Julia | `Pkg.develop(path="…/julia")` |
| Swift | `.package(path: "…/swift")` |
| D | `dub add-local …/d 2.0.0` |
| PHP | `composer config repositories.servirtium path …/php` |
| Dart | `dependency_overrides: servirtium: {path: …/dart}` |
| Pharo | `ServirtiumLibrary libPath:` the staged `.so` |

### A relocatable OTP app (the BEAM four)

`erlang/.package.ae` builds the **one** `servirtium_nif` app —
engine `.so` in `priv/`, NIF linked `-Wl,-rpath,$ORIGIN` so it finds the engine
beside itself wherever the app is placed. Elixir, Gleam and LFE each stage that
same app into their own `_build_pkg/`, so every BEAM package is self-contained
while there is still exactly one NIF in the repo.

```sh
ERL_LIBS=…/erlang/_build_pkg                        # erl, escript, gleam
SERVIRTIUM_NIF_EBIN=…/servirtium_nif/ebin           # mix (it ignores ERL_LIBS)
```

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

1. **`dep("core/.build.ae")`** and take the engine from its `shared_lib`
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
