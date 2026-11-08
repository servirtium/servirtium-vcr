# Servirtium Kotlin

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Kotlin.

Kotlin reaches libservirtium_vcr through the
[Java binding](../java) (`dev.servirtium:vcr` — the
binding's coordinate, **not yet published to Maven Central**, so it can't be
added as a dependency to obtain the native library; get that from releases, see
[Getting it](#getting-it)) via seamless Java interop — there is **no second
FFI**. The Java surface is already
Kotlin-friendly (no checked exceptions, `AutoCloseable` so `use { }` works,
fluent builders, and `Field` / `Outcome` enums), so this module is a thin layer
that adds the trailing-lambda DSL Kotlin people expect.

```kotlin
import dev.servirtium.vcr.kotlin.playback
import dev.servirtium.vcr.Outcome

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

## Stable order and playback range

Opt-in, record side: sort what a service sends in a different order every run.
Playback side: replay only a slice of a tape.

```kotlin
record(tape, upstream) {
    prettyJson(2)                            // required for the JSON rules
    sortJsonKeys()                           // object keys sorted at every depth
    sortJsonArray("versions", "/created")    // arrays `versions` holds, by member
    sortJsonArrayAt("^/secrets", "", "name") // only for matching request paths
    sortResponseHeaders()                    // header lines by name
    sortHeaderValue("Allow")                 // "POST, GET" -> "GET, POST"
}.use { vcr -> /* ... */ }

playback(tape) { playbackRange(4, 6) }.use { vcr -> /* interactions 4..6 only */ }
```

A rule the core refuses (an empty header name, a bad regex, a bad range) fails
`record` / `playback` with a `VcrException`. The JSON rules are only written pretty-printed:
without `prettyJson` the tape is refused when it is written (closing the server
throws `VcrException`, "sort_json_keys needs pretty_json ...") and nothing is
written. `playbackRange` selects by interaction number only (the `## Interaction N`
headings, 0-based, inclusive; `to` < 0 means through the last); a request outside
the range is never served. Both are the Java binding's, see
[../java/docs/usage.md](../java/docs/usage.md).

## Getting it

**Not on Maven Central yet** (Central publication is pending; the coordinates
below will not change when it lands). Until then install into `~/.m2`:

```sh
TAG=v2.0.0-alpha.13; VER=2.0.0-alpha.13   # the only things to change
# 1. the Java binding's fat jar (six natives bundled) from the release page -> ~/.m2 as dev.servirtium:vcr
curl -fsSLO https://github.com/servirtium/servirtium-vcr/releases/download/$TAG/servirtium-vcr-$VER.jar
mvn -q install:install-file -Dfile=servirtium-vcr-$VER.jar -DgroupId=dev.servirtium -DartifactId=vcr -Dversion=$VER -Dpackaging=jar
# 2. the Kotlin layer (not a release asset) from the same tag -> ~/.m2 as dev.servirtium:vcr-kotlin
git clone -q --depth 1 --branch $TAG https://github.com/servirtium/servirtium-vcr.git
mvn -q -DskipTests -f servirtium-vcr/kotlin install
# check it resolves from ~/.m2
mvn -q dependency:get -Dartifact=dev.servirtium:vcr-kotlin:$VER && echo OK
```

Alternative, from a checkout of this repo (needs `aeb` and `ae`): `aeb kotlin/.package.ae`
builds the native library and installs the same coordinate into `~/.m2`.

Then depend on `dev.servirtium:vcr-kotlin:2.0.0-alpha.13` (use `mavenLocal()` /
`Resolver.mavenLocal` where your build tool needs telling):

```xml
<dependency>
  <groupId>dev.servirtium</groupId>
  <artifactId>vcr-kotlin</artifactId>
  <version>2.0.0-alpha.13</version>
  <scope>test</scope>
</dependency>
```

```kotlin
// build.gradle.kts
repositories { mavenLocal(); mavenCentral() }
dependencies { testImplementation("dev.servirtium:vcr-kotlin:2.0.0-alpha.13") }
```

```scala
// build.sbt
resolvers += Resolver.mavenLocal
libraryDependencies += "dev.servirtium" % "vcr-kotlin" % "2.0.0-alpha.13" % Test
```

```clojure
;; deps.edn
{:deps {dev.servirtium/vcr-kotlin {:mvn/version "2.0.0-alpha.13"}}}
```

### Notes for coding agents

- **JDK 22 or newer** is required (the binding uses `java.lang.foreign`, final
  since 22). Older JDKs fail with `UnsupportedClassVersionError`. Tested on JDK 25.
- Pass `--enable-native-access=ALL-UNNAMED` to the JVM that runs the tests
  (Surefire `argLine`, Gradle `jvmArgs`, sbt `javaOptions`, Clojure `:jvm-opts`);
  without it JDK 24+ prints a restricted-method warning.
- The native library is bundled in the jar (`/native/<os>-<arch>/`) and extracted
  at runtime: no `SERVIRTIUM_VCR_LIB` needed. If you see
  `VcrException: native VCR library not found. Looked at $SERVIRTIUM_VCR_LIB, beside the jar, ...`,
  the jar on your classpath has no native for this OS/arch (a lean dev build, or
  an unsupported platform). Use the release fat jar, or set `SERVIRTIUM_VCR_LIB`
  to a `libservirtium_vcr` from the
  [release page](https://github.com/servirtium/servirtium-vcr/releases).
- Platforms bundled: linux, macOS, Windows (x86_64, arm64).
- Central publication is pending; the `dev.servirtium` coordinates are final.

## Build

Built with **[aeb](https://github.com/aether-lang-dev/aeb)** like the rest of
the monorepo: `aeb kotlin/.tests.ae` builds libservirtium_vcr, installs the Java
binding jar, and runs the Kotlin test (`mvn test`). Standalone:
`mvn install` the Java binding, then `mvn test` here.

## Docs

- **[../java/docs](../java/docs)** — the binding semantics (playback, record,
  redaction, whole-tape normalization, drift, diagnostics) all apply; this
  module only adds Kotlin syntax over the same API.
