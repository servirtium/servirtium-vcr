# Servirtium Java

![](Servirtium-Square.png?raw=true)

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for Java.

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```java
import com.paulhammant.servirtium.vcr.*;
import java.net.URI;
import java.net.http.*;

try (VcrServer vcr = Vcr.playback("tapes/climate_api.md").port(0).start()) {
    HttpClient client = HttpClient.newHttpClient();
    HttpResponse<String> r = client.send(
        HttpRequest.newBuilder(URI.create(vcr.baseUrl() + "/api/v1/countries")).build(),
        HttpResponse.BodyHandlers.ofString());

    assertEquals(Outcome.OK, vcr.lastKind());   // optional: assert a clean match
}
```

## What this is (and isn't)

Since **2.0**, this is a thin Java layer over the **servirtium-vcr** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in the pure-Aether engine **in this repo** at `core/vcr.ae`
(with `core/embed.ae` exposing its C-ABI), built once to
`core/native/libservirtium_vcr.so` on Aether standard-library primitives. The
Servirtium logic is in-repo, not in the Aether stdlib. This module calls that
precompiled native build through the **Java Foreign Function & Memory API**
(`java.lang.foreign`, Project Panama, **stable since JDK 22** — no JNA, no
JNI). It does **not** reimplement Servirtium in Java.

> **Breaking from 0.x:** the old `MarkdownRecorder` / `MarkdownReplayer` /
> `ServirtiumServer` API and the `jetty` / `undertow` server modules are gone,
> with no shim. The new API is below / in [docs/usage.md](docs/usage.md). The
> tape *format* is unchanged, so existing tapes replay as-is.

## Requirements

- **JDK 22+.** FFM (`java.lang.foreign`) has been stable since JDK 22, so the
  binding compiles to JDK-22 bytecode — which also lets the JVM-family bindings
  (Kotlin/Scala/Clojure/Groovy) consume this jar. It's built and tested on
  JDK 25 (its `.tests.ae` pins `JAVA25_HOME`).
- The native library `libservirtium_vcr.{so,dylib}` for your OS/arch. It ships
  on the classpath under `native/<rid>/` and is extracted/loaded automatically;
  no Aether toolchain is needed to *use* it. Supported RIDs: `linux-x64`
  (more in [docs/building.md](docs/building.md)).

### A flag your build needs

JDK 25 prints a native-access warning unless the calling module is granted
access. Pass it to the JVM that runs your tests:

```
--enable-native-access=ALL-UNNAMED
```

This project's Surefire config already sets it; consumers should add it to
their own test JVM args.

## Docs

- **[docs/usage.md](docs/usage.md)** — playback, record, redactions,
  unredactions, header removal, notes, strict matching, static content,
  drift, diagnostics — with code.
- **[docs/features.md](docs/features.md)** — Servirtium capability matrix
  and what's covered by tests.
- **[docs/architecture.md](docs/architecture.md)** — how the FFM layering
  works (Java → downcall handles → `embed.ae` → the `core/` engine), the native
  loader, and the one-server-per-port (handle-based) concurrency model.
- **[docs/building.md](docs/building.md)** — building the native library,
  the RID matrix, and CI.
- **[MIGRATION.md](MIGRATION.md)** — the 0.x → 2.0 rewrite story.

## Concurrency: one server per port

The core runs **one server per port**: N independent VCR servers can run concurrently
in one process, each keyed by its own opaque handle, with its own tape, replay
cursor, mutations, and diagnostics. Each `VcrServer` you start owns one handle,
so fixtures don't share or stomp state and need no serial constraint
(`core_tests/.concurrent.ae` proves two playback servers running at once on
separate ports, each replaying its own tape). See
[docs/architecture.md](docs/architecture.md#concurrency-one-server-per-port).

## Building from source

The repo is driven by [`aeb`](https://github.com/aether-lang-org/aeb): the
`java/.tests.ae` leaf deps `core/.build.ae`, which builds the native engine
(`core/native/libservirtium_vcr.so`) once, then runs `mvn test` against it.

```sh
aeb java/.tests.ae   # builds the core engine (needs ae ≥ 0.227.0), then mvn test on JDK 25
```

Details — including the raw `ae build` / `mvn` invocations — in
[docs/building.md](docs/building.md).
