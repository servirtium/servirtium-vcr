# Servirtium Clojure

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Clojure.

Clojure reaches libservirtium_vcr through the
[Java binding](../java) (`com.paulhammant.servirtium:servirtium-vcr` — the
binding's coordinate, **not yet published to Maven Central**, so it can't be
added as a dependency to obtain the native library; get that from releases, see
[Requirements](#requirements)) via JVM interop — there is **no second FFI**. The Java surface is already
Clojure-friendly (no checked exceptions, `AutoCloseable` so `with-open` works,
fluent builders, and `Field` / `Outcome` enums), so this module is a thin
wrapper that adds the small idiomatic functions Clojure people expect.

```clojure
(require '[servirtium :as vcr])
(import '[com.paulhammant.servirtium.vcr Outcome])

(with-open [v (vcr/playback "tapes/climate_api.md" {:port 0})]
  ;; ... drive the SUT against (.baseUrl v) ...
  (= Outcome/OK (.lastKind v)))
```

`(record tape upstream opts)` is the recording counterpart. You can also call
the Java API directly (`(-> (Vcr/playback tape) (.port 0) (.start))`) — the
functions are just sugar. `VcrServer` is `java.lang.AutoCloseable`, so the
standard `clojure.core/with-open` stops the server (and, in record mode,
flushes the tape) on exit.

## What this is (and isn't)

Since **2.0**, Servirtium is one libservirtium_vcr (`core/vcr.ae`, built to
`libservirtium_vcr.so`) with a thin binding per language. The Java binding is
the JVM's binding; **Kotlin, Scala, Clojure and Groovy all consume that one
jar** rather than re-binding the native library. So Clojure is first-class
without a separate native FFI to maintain.

## Requirements

- **JDK 22+** (libservirtium_vcr is reached via `java.lang.foreign`; final since 22),
  tested on JDK 25. The test JVM is launched with
  `--enable-native-access=ALL-UNNAMED`.
- The native library, located via `SERVIRTIUM_VCR_LIB`. The
  `com.paulhammant.servirtium:servirtium-vcr` coordinate is **not on Maven
  Central yet**, so you can't pull the library in as a dependency (and the Java
  binding jar only auto-extracts a lib you supply there, not a published one):

  **Get the native library** (`libservirtium_vcr`) for your OS/arch from the
  [GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
  prebuilt shared library per platform, each with a `.sha256` — and (optionally)
  verify it:

  ```sh
  curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.1/libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so
  curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.1/libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so.sha256
  sha256sum -c libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so.sha256   # -> OK
  ```

  Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
  (x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
  library. (For macOS use the `.dylib`, for Windows the `.dll`.) Then point the
  binding at it — the JVM FFM layer loads it from that path:

  ```sh
  export SERVIRTIUM_VCR_LIB=$PWD/libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so
  ```

  **Build the package locally.** Nothing is on Maven Central yet, so you install
  to your **local `~/.m2`** and resolve from there. You'll need a **JDK 22+ and
  Maven**. The Clojure module depends on the Java jar, so build that into `~/.m2`
  first (it bundles the `.so` — see [java/README.md](../java/README.md#requirements)),
  then install this module:

  ```sh
  mvn -q -DskipTests -f clojure install
  ```

  This installs `com.paulhammant.servirtium:servirtium-vcr-clojure` to `~/.m2`; a
  `deps.edn` or Maven consumer pulls that coordinate and the Java jar (with its
  bundled `.so`) rides along transitively. The native library is auto-extracted
  from the classpath at runtime, so a consumer needs **no `SERVIRTIUM_VCR_LIB`**.
- One server per port — N independent VCR servers can run concurrently, each on
  its own port.

## Build

Built with **[aeb](https://github.com/aether-lang-dev/aeb)** like the rest of
the monorepo: `aeb clojure/.tests.ae` builds libservirtium_vcr, installs the Java
binding jar, and runs the Clojure test (`mvn test`). Standalone:
`mvn install` the Java binding, then `mvn test` here.

Clojure is dynamic, so there is no static compile against the Java jar: the
`.clj` sources under `src/main/clojure` and `src/test/clojure` are placed on
the classpath, and `clojure.test` is run under Maven's `test` phase by
`exec-maven-plugin` (which launches `java clojure.main` with native access
enabled). A failing test fails the build.

## Docs

- **[../java/docs](../java/docs)** — the binding semantics (playback, record,
  redaction, whole-tape normalization, drift, diagnostics) all apply; this
  module only adds Clojure syntax over the same API.
