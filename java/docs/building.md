# Building

## Prerequisites

- **JDK 25** (or ≥ 22 — `java.lang.foreign` must be stable). The build's
  `maven.compiler.release` is `25`. Maven itself can run on any JDK ≥ 17, but
  point `JAVA_HOME` at the JDK 25 toolchain so the compiler and the test JVM
  both use it:

  ```sh
  export JAVA_HOME=/path/to/jdk-25
  ```

- **The Aether toolchain (`ae`)** — only needed to *rebuild* the native
  library. Not needed to consume a published artifact (the `.so`/`.dylib`
  ships on the classpath).

## Building the native library

```sh
./build-native.sh
```

This runs:

```sh
ae build --emit=lib --with=fs,net <aether>/std/http/server/vcr/embed.ae \
   -o src/main/resources/native/<rid>/libservirtium_vcr.so
```

- `AETHER_REPO` — override the Aether checkout location (defaults to
  `../aether` relative to this repo).
- The script detects the host OS/arch and writes to the matching
  `src/main/resources/native/<rid>/` (e.g. `linux-x64`). It only ever builds
  the host's RID; cross-platform builds happen in CI (one runner per OS/arch).
- Requires **Aether ≥ 0.183.0** for the chunked-body de-chunking on record.
  Verified with `ae 0.184.0`.

The committed library lives under `src/main/resources/native/<rid>/` so it's
packaged into the jar as a classpath resource and extracted at runtime by
`NativeLoader`.

## Running the tests

```sh
JAVA_HOME=/path/to/jdk-25 mvn test
```

Surefire is configured with:

- `--enable-native-access=ALL-UNNAMED` in `argLine` (silences the JDK 25
  native-access warning);
- `forkCount=1`, `reuseForks=true` and **no parallel execution** — the v1 VCR
  is one server per process.

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

1. A matrix job per OS/arch runs `build-native.sh`, producing one
   `native/<rid>/<lib>`.
2. The artifacts are gathered into `src/main/resources/native/` and the jar is
   built once (the FFM bindings are platform-independent Java).
3. `mvn deploy` publishes the multi-platform jar.
