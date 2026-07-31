# Servirtium Scala

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Scala.

Scala reaches the shared native engine through the
[Java binding](../java) (`com.paulhammant.servirtium:servirtium-vcr`) via
seamless Java interop — there is **no second FFI**. The Java surface is already
Scala-friendly (no checked exceptions, `AutoCloseable`, fluent builders, and
`Field` / `Outcome` enums), so this module is a thin layer that adds the small
`Builder => Unit` config helpers Scala people expect.

```scala
import com.paulhammant.servirtium.vcr.scala.Servirtium.playback
import com.paulhammant.servirtium.vcr.Outcome

val vcr = playback("tapes/climate_api.md")(_.port(0))
try
  val resp = HttpClient.newHttpClient().send(
    HttpRequest.newBuilder(URI.create(vcr.baseUrl() + "/api/v1/countries")).build(),
    HttpResponse.BodyHandlers.ofString())
  assertEquals(Outcome.OK, vcr.lastKind())
finally vcr.close()
```

`record(tape, upstream)(…)` is the recording counterpart. You can also call the
Java API directly (`Vcr.playback(tape).port(0).start()`) — the helpers are just
sugar. Scala has no Kotlin-style receiver lambdas, so `configure` is taken as an
ordinary `Builder => Unit` function argument.

## What this is (and isn't)

Since **2.0**, Servirtium is one native engine (`core/vcr.ae`, built to
`libservirtium_vcr.so`) with a thin binding per language. The Java binding is
the JVM's binding; **Kotlin, Scala, Clojure and Groovy all consume that one
jar** rather than re-binding the native library. So Scala is first-class
without a separate native FFI to maintain.

## Requirements

- **JDK 22+** (the engine is reached via `java.lang.foreign`; final since 22),
  tested on JDK 25. Tests pass `--enable-native-access=ALL-UNNAMED`.
- The native engine library on `SERVIRTIUM_VCR_LIB` (or extracted from the Java
  binding jar).
- One server per port — N independent VCR servers can run concurrently, each on
  its own port.

## Build

Built with **[aeb](https://github.com/aether-lang-dev/aeb)** like the rest of
the monorepo: `aeb scala/.tests.ae` builds the engine, installs the Java
binding jar, and runs the Scala test (`mvn test`). Standalone:
`mvn install` the Java binding, then `mvn test` here.

## Docs

- **[../java/docs](../java/docs)** — the binding semantics (playback, record,
  redaction, whole-tape normalization, drift, diagnostics) all apply; this
  module only adds Scala syntax over the same API.
