# Servirtium Clojure

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Clojure.

Clojure reaches libservirtium_vcr through the
[Java binding](../java) (`dev.servirtium:vcr` — the
binding's coordinate, **not yet published to Maven Central**, so it can't be
added as a dependency to obtain the native library; get that from releases, see
[Getting it](#getting-it)) via JVM interop — there is **no second FFI**. The Java surface is already
Clojure-friendly (no checked exceptions, `AutoCloseable` so `with-open` works,
fluent builders, and `Field` / `Outcome` enums), so this module is a thin
wrapper that adds the small idiomatic functions Clojure people expect.

```clojure
(require '[servirtium :as vcr])
(import '[dev.servirtium.vcr Outcome])

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

## Stable order and playback range

Opt-in, record side: sort what a service sends in a different order every run.
Playback side: replay only a slice of a tape.

```clojure
(vcr/record tape upstream
  {:pretty-json 2                               ; required for the JSON rules
   :sort-json-keys true                         ; object keys sorted at every depth
   :sort-json-array [["versions" "/created"]]   ; arrays `versions` holds, by member
   :sort-json-array-at [["^/secrets" "" "name"]] ; only for matching request paths
   :sort-response-headers true                  ; header lines by name
   :sort-header-value ["Allow"]})               ; "POST, GET" -> "GET, POST"

(vcr/playback tape {:playback-range [4 6]})     ; interactions 4..6 only
```

The opts are `:sort-json-keys`, `:sort-json-array`, `:sort-json-array-at`,
`:sort-response-headers`, `:sort-header-value` (record) and `:playback-range`
(playback; `[from to]` or a bare `from`). A rule the core refuses (an empty header name, a bad regex, a bad range) fails
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
TAG=v2.0.0-alpha.15; VER=2.0.0-alpha.15   # the only things to change
# 1. the Java binding's fat jar (six natives bundled) from the release page -> ~/.m2 as dev.servirtium:vcr
curl -fsSLO https://github.com/servirtium/servirtium-vcr/releases/download/$TAG/servirtium-vcr-$VER.jar
mvn -q install:install-file -Dfile=servirtium-vcr-$VER.jar -DgroupId=dev.servirtium -DartifactId=vcr -Dversion=$VER -Dpackaging=jar
# 2. the Clojure layer (not a release asset) from the same tag -> ~/.m2 as dev.servirtium:vcr-clojure
git clone -q --depth 1 --branch $TAG https://github.com/servirtium/servirtium-vcr.git
mvn -q -DskipTests -f servirtium-vcr/clojure install
# check it resolves from ~/.m2
mvn -q dependency:get -Dartifact=dev.servirtium:vcr-clojure:$VER && echo OK
```

Alternative, from a checkout of this repo (needs `aeb` and `ae`): `aeb clojure/.package.ae`
builds the native library and installs the same coordinate into `~/.m2`.

Then depend on `dev.servirtium:vcr-clojure:2.0.0-alpha.15` (use `mavenLocal()` /
`Resolver.mavenLocal` where your build tool needs telling):

```xml
<dependency>
  <groupId>dev.servirtium</groupId>
  <artifactId>vcr-clojure</artifactId>
  <version>2.0.0-alpha.15</version>
  <scope>test</scope>
</dependency>
```

```kotlin
// build.gradle.kts
repositories { mavenLocal(); mavenCentral() }
dependencies { testImplementation("dev.servirtium:vcr-clojure:2.0.0-alpha.15") }
```

```scala
// build.sbt
resolvers += Resolver.mavenLocal
libraryDependencies += "dev.servirtium" % "vcr-clojure" % "2.0.0-alpha.15" % Test
```

```clojure
;; deps.edn
{:deps {dev.servirtium/vcr-clojure {:mvn/version "2.0.0-alpha.15"}}}
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
