# Servirtium Kotlin

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Kotlin.

Kotlin reaches the shared native engine through the
[Java binding](../java) (`com.paulhammant.servirtium:servirtium-vcr`) via
seamless Java interop — there is **no second FFI**. The Java surface is already
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

Since **2.0**, Servirtium is one native engine (`core/vcr.ae`, built to
`libservirtium_vcr.so`) with a thin binding per language. The Java binding is
the JVM's binding; **Kotlin, Scala, Clojure and Groovy all consume that one
jar** rather than re-binding the native library. So Kotlin is first-class
without a separate native FFI to maintain. If you want a Kotlin-native option
maintained outside this monorepo, see
[http4k-testing/servirtium](https://github.com/http4k/http4k/tree/master/http4k-testing/servirtium).

## Requirements

- **JDK 22+** (the engine is reached via `java.lang.foreign`; final since 22),
  tested on JDK 25. Tests pass `--enable-native-access=ALL-UNNAMED`.
- The native engine library on `SERVIRTIUM_VCR_LIB` (or extracted from the Java
  binding jar).
- One server per port — N independent VCR servers can run concurrently, each on
  its own port.

## Build

Built with **[aeb](https://github.com/aether-lang-org/aeb)** like the rest of
the monorepo: `aeb kotlin/.tests.ae` builds the engine, installs the Java
binding jar, and runs the Kotlin test (`mvn test`). Standalone:
`mvn install` the Java binding, then `mvn test` here.

## Docs

- **[../java/docs](../java/docs)** — the binding semantics (playback, record,
  redaction, whole-tape normalization, drift, diagnostics) all apply; this
  module only adds Kotlin syntax over the same API.
