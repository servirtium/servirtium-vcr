# Servirtium Kotlin

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Kotlin.

Kotlin reaches libservirtium_vcr through the
[Java binding](../java) (`com.paulhammant.servirtium:servirtium-vcr` — the
binding's coordinate, **not yet published to Maven Central**, so it can't be
added as a dependency to obtain the native library; get that from releases, see
[Requirements](#requirements)) via seamless Java interop — there is **no second
FFI**. The Java surface is already
Kotlin-friendly (no checked exceptions, `AutoCloseable` so `use { }` works,
fluent builders, and `Field` / `Outcome` enums), so this module is a thin layer
that adds the trailing-lambda DSL Kotlin people expect.

```kotlin
import com.paulhammant.servirtium.vcr.kotlin.playback
import com.paulhammant.servirtium.vcr.Outcome

playback("tapes/climate_api.md") { port(0) }.use { vcr ->
    val resp = HttpClient.newHttpClient().send(
        HttpRequest.newBuilder(URI.create(vcr.baseUrl() + "/api/v1/countries")).build(),
        HttpResponse.BodyHandlers.ofString())
    assertEquals(Outcome.OK, vcr.lastKind())
}
```

`record(tape, upstream) { … }` is the recording counterpart. You can also call
the Java API directly (`Vcr.playback(tape).port(0).start()`) — the DSL is just
sugar.

## What this is (and isn't)

Since **2.0**, Servirtium is one libservirtium_vcr (`core/vcr.ae`, built to
`libservirtium_vcr.so`) with a thin binding per language. The Java binding is
the JVM's binding; **Kotlin, Scala, Clojure and Groovy all consume that one
jar** rather than re-binding the native library. So Kotlin is first-class
without a separate native FFI to maintain. If you want a Kotlin-native option
maintained outside this monorepo, see
[http4k-testing/servirtium](https://github.com/http4k/http4k/tree/master/http4k-testing/servirtium).

## Requirements

- **JDK 22+** (libservirtium_vcr is reached via `java.lang.foreign`; final since 22),
  tested on JDK 25. Tests pass `--enable-native-access=ALL-UNNAMED`.
- The native library, located via `SERVIRTIUM_VCR_LIB`. The
  `com.paulhammant.servirtium:servirtium-vcr` coordinate is **not on Maven
  Central yet**, so you can't pull the library in as a dependency (and the Java
  binding jar only auto-extracts a lib you supply there, not a published one):

  **Get the native library** (`libservirtium_vcr`) for your OS/arch from the
  [GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
  prebuilt shared library per platform, each with a `.sha256` — and (optionally)
  verify it:

  ```sh
  curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.0/libservirtium_vcr-v0.1.0-linux-x86_64.so
  curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v0.1.0/libservirtium_vcr-v0.1.0-linux-x86_64.so.sha256
  sha256sum -c libservirtium_vcr-v0.1.0-linux-x86_64.so.sha256   # -> OK
  ```

  Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
  (x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
  library. (For macOS use the `.dylib`, for Windows the `.dll`.) Then point the
  binding at it — the JVM FFM layer loads it from that path:

  ```sh
  export SERVIRTIUM_VCR_LIB=$PWD/libservirtium_vcr-v0.1.0-linux-x86_64.so
  ```
- One server per port — N independent VCR servers can run concurrently, each on
  its own port.

## Build

Built with **[aeb](https://github.com/aether-lang-dev/aeb)** like the rest of
the monorepo: `aeb kotlin/.tests.ae` builds libservirtium_vcr, installs the Java
binding jar, and runs the Kotlin test (`mvn test`). Standalone:
`mvn install` the Java binding, then `mvn test` here.

## Docs

- **[../java/docs](../java/docs)** — the binding semantics (playback, record,
  redaction, whole-tape normalization, drift, diagnostics) all apply; this
  module only adds Kotlin syntax over the same API.
