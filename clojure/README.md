# Servirtium Clojure

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Clojure.

Clojure reaches the shared native engine through the
[Java binding](../java) (`com.paulhammant.servirtium:servirtium-vcr`) via
JVM interop — there is **no second FFI**. The Java surface is already
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

Since **2.0**, Servirtium is one native engine (`core/vcr.ae`, built to
`libservirtium_vcr.so`) with a thin binding per language. The Java binding is
the JVM's binding; **Kotlin, Scala, Clojure and Groovy all consume that one
jar** rather than re-binding the native library. So Clojure is first-class
without a separate native FFI to maintain.

## Requirements

- **JDK 22+** (the engine is reached via `java.lang.foreign`; final since 22),
  tested on JDK 25. The test JVM is launched with
  `--enable-native-access=ALL-UNNAMED`.
- The native engine library on `SERVIRTIUM_VCR_LIB` (or extracted from the Java
  binding jar).
- One server per port — N independent VCR servers can run concurrently, each on
  its own port.

## Build

Built with **[aeb](https://github.com/aether-lang-org/aeb)** like the rest of
the monorepo: `aeb clojure/.tests.ae` builds the engine, installs the Java
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
