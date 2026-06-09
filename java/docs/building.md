# Building

## Prerequisites

- **JDK 25** (or ≥ 22 — `java.lang.foreign` must be stable). The build's
  `maven.compiler.release` is `25`. Maven itself can run on any JDK ≥ 17, but
  point `JAVA_HOME` at the JDK 25 toolchain so the compiler and the test JVM
  both use it:

  ```sh
  export JAVA_HOME=/path/to/jdk-25
  ```

- **The Aether toolchain (`ae` ≥ 0.227.0, plus `aeb`)** — only needed to
  *rebuild* the native library. Not needed to consume a published artifact (the
  `.so`/`.dylib` ships on the classpath).

## Building the native library

The native engine is built from the in-repo `core/` module (`core/vcr.ae` plus
the `core/embed.ae` C-ABI) — **not** the Aether stdlib. The whole flow is
driven by `aeb`: the `java/.tests.ae` leaf deps `core/.build.ae`, which builds
the engine once and then runs the Maven tests against it.

```sh
aeb java/.tests.ae
```

Under the hood `core/.build.ae` runs:

```sh
ae build --emit=lib --with=fs,net core/embed.ae \
   --extra _embed_strdup.c -o core/native/libservirtium_vcr.so
```

- The engine is `core/vcr.ae` plus the `core/embed.ae` C-ABI; the `--extra
  _embed_strdup.c` is the ~12-line `vcr_embed_dup/free` string bridge.
- It builds only the host's RID (e.g. `linux-x64`); cross-platform builds
  happen in CI (one runner per OS/arch).
- Requires **Aether ≥ 0.227.0** (the engine uses `std.regex`).

For packaging, the host's `libservirtium_vcr.so` is copied under
`src/main/resources/native/<rid>/`, so it rides into the jar as a classpath
resource and is extracted at runtime by `NativeLoader`.

## Running the tests

`aeb java/.tests.ae` runs the tests for you (pointing `SERVIRTIUM_VCR_LIB` at
the freshly built `core/native/libservirtium_vcr.so` and using `JAVA25_HOME`).
To drive Maven directly:

```sh
JAVA_HOME=/path/to/jdk-25 mvn test
```

Surefire is configured with:

- `--enable-native-access=ALL-UNNAMED` in `argLine` (silences the JDK 25
  native-access warning).

The core runs one server per port (each server keyed by its own handle), so tests are
safe to run concurrently — see
[architecture.md](architecture.md#concurrency-one-server-per-port).

To point the tests at a freshly built `.so` outside the resources dir:

```sh
SERVIRTIUM_VCR_LIB=/abs/path/libservirtium_vcr.so mvn test
```

## RID matrix

| RID | Library file | Status |
|---|---|---|
| `linux-x64` | `libservirtium_vcr.so` | ✅ committed, tested |
| `osx-x64` | `libservirtium_vcr.dylib` | build in CI |
| `osx-arm64` | `libservirtium_vcr.dylib` | build in CI |
| `win-x64` | `servirtium_vcr.dll` | build in CI |

`NativeLoader` computes the RID from `os.name` / `os.arch` and the file name
from the OS, so adding a platform is just shipping the right artifact under
`native/<rid>/`.

## CI / release outline

1. A matrix job per OS/arch builds the `core/` engine (`ae build --emit=lib`),
   producing one `native/<rid>/<lib>`.
2. The artifacts are gathered into `src/main/resources/native/` and the jar is
   built once (the FFM bindings are platform-independent Java).
3. `mvn deploy` publishes the multi-platform jar.
