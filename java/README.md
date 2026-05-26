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

Since **2.0**, this is a thin Java layer over the **Aether VCR** core. All
record/replay machinery — markdown parse/emit, the HTTP server, request
matching, redactions, notes, drift detection, static bypass, gzip/chunked
handling — lives in and is maintained as the Aether standard library
(`std/http/server/vcr`). This module calls a precompiled native build of that
core through the **Java Foreign Function & Memory API** (`java.lang.foreign`,
Project Panama, **stable since JDK 22** — no JNA, no JNI). It does **not**
reimplement Servirtium in Java.

> **Breaking from 0.x:** the old `MarkdownRecorder` / `MarkdownReplayer` /
> `ServirtiumServer` API and the `jetty` / `undertow` server modules are gone,
> with no shim. The new API is below / in [docs/usage.md](docs/usage.md). The
> tape *format* is unchanged, so existing tapes replay as-is.

## Requirements

- **JDK 25** (or any JDK ≥ 22 where `java.lang.foreign` is stable).
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
  works (Java → downcall handles → `embed.ae` → Aether VCR), the native
  loader, and the v1 one-server-per-process model.
- **[docs/building.md](docs/building.md)** — building the native library,
  the RID matrix, and CI.
- **[MIGRATION.md](MIGRATION.md)** — the 0.x → 2.0 rewrite story.

## One hard rule: run tests serially

The Aether VCR is **one active server per process** in v1 (its tape /
cursor / mutation state is process-global). **Do not enable JUnit 5 parallel
execution** — it runs sequentially by default, which is what you want. See
[docs/architecture.md](docs/architecture.md#one-server-per-process) for why.

## Building from source

```sh
./build-native.sh                  # builds the native lib for your platform (needs `ae`)
JAVA_HOME=/path/to/jdk25 mvn test  # JDK 25 required
```

Details in [docs/building.md](docs/building.md).
