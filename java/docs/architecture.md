# Architecture

## The layering

```
your test (JUnit 5)
   │   Vcr.playback(tape).start()  /  Vcr.record(tape, upstream).start()
   ▼
servirtium-vcr            ── thin Java (FFM / Panama), this repo ──
   │   • Vcr / PlaybackBuilder / RecordBuilder / VcrServer  (Vcr.java, *Builder.java)
   │   • java.lang.foreign downcall handles to aether_vcr_embed_*  (NativeMethods.java)
   │   • native-lib loader (SymbolLookup.libraryLookup)            (NativeLoader.java)
   ▼   FFM downcall (java.lang.foreign)
libservirtium_vcr.{so,dylib,dll}
   │   built: ae build --emit=lib --with=fs,net std/http/server/vcr/embed.ae
   │   • embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • std/http/server/vcr  — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Java side owns **none** of the Servirtium semantics. It starts/stops the
server, marshals strings, and presents an idiomatic fixture. Everything that
defines Servirtium behaviour is the Aether core, shared with every other
language binding built on the same `embed.ae` (e.g. the .NET binding).

## Why FFM (java.lang.foreign), not JNA/JNI

`java.lang.foreign` (Project Panama) is **stable since JDK 22**. It gives a
pure-Java path to a C ABI — no glue C to compile (JNI), no reflection-based
marshalling layer (JNA). We:

- resolve the library with `SymbolLookup.libraryLookup(path, arena)`;
- bind each `aether_vcr_embed_*` symbol to a `MethodHandle` via
  `Linker.nativeLinker().downcallHandle(addr, FunctionDescriptor)`;
- pass Java strings as NUL-terminated C strings allocated in a confined
  `Arena` (`arena.allocateFrom(str)`);
- read each returned `char*` as a `MemorySegment`, copy it to a Java `String`
  (`segment.getString(0)`), then free it via `aether_vcr_embed_free_string`.

The lookup is held on a global `Arena` so the downcall handles outlive every
call.

### The JDK 25 native-access flag

JDK 25 prints a warning the first time an unnamed module makes a native
downcall. Granting access silences it:

```
--enable-native-access=ALL-UNNAMED
```

The Surefire config sets this in `argLine`; consumers add it to their own test
JVM args. (Functionally optional today — it's a warning, not an error — but
expected to become enforced, so set it now.)

## The C-ABI

`embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only
the *embedding seam* the raw VCR module lacks:

- **starts the accept loop on a background thread** — the core's `load()`
  deliberately doesn't listen, leaving that to a caller, which an FFI host
  can't wire;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before `start()` returns and `vcr.port()` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`) rather than the core's borrowed
  TLS/arena strings.

`NativeMethods.java` mirrors these 1:1; `NativeMethods.takeString` copies and
frees each returned `char*`.

## Native-library resolution

`NativeLoader.load()` resolves the library, in order, from:

1. `SERVIRTIUM_VCR_LIB` (explicit path — point it at a fresh
   `ae build --emit=lib` artifact during development);
2. the source-tree dir `src/main/resources/native/<rid>/<libname>`
   (running from a checkout);
3. the classpath resource `/native/<rid>/<libname>` (packaged jar) — extracted
   to a temp file that's deleted on JVM exit.

The file name is computed per-platform: `libservirtium_vcr.so` /
`.dylib` / `servirtium_vcr.dll`, and `<rid>` from `os.name` / `os.arch`
(e.g. `linux-x64`, `osx-arm64`).

## One server per process

v1 keeps the VCR's tape, replay cursor, mutations, static mounts, pending
note, and diagnostics as **process-global** state (this is the documented v1
contract on the Aether side). Consequences:

- You cannot run two `VcrServer`s simultaneously in one process.
- **Run tests serially.** JUnit 5 runs sequentially by default — do **not**
  enable parallel execution (`junit.jupiter.execution.parallel.enabled`).
  Parallel test classes would stomp each other's state (it shows up as
  spurious `599` mismatches). Surefire is configured `forkCount=1`.
- `PlaybackBuilder.start()` / `RecordBuilder.start()` call `resetGlobalState()`
  first — clearing redactions, unredactions, header removals, static mounts,
  format options, strict-headers, and the last-error slot — then apply the
  current fixture's config. So a setting from a previous test never leaks
  forward, even within one process.

Per-server isolation (a real handle owning its own state) is on the Aether
roadmap; when it lands, the wrapper drops the serial constraint without an
API change.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are separate
global lists, registered before the server starts. A **note**, however, is
stored alongside the tape and is cleared when `start_record` (re)loads the
tape — so the wrapper stages the builder's note *after* `start_record`
returns, attaching it to the first interaction. (See `RecordBuilder.start()`.)
