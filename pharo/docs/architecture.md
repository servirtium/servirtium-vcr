# Architecture

## The layering

```
your SUnit test (TestCase)
   │   (Servirtium playback: tape) start  /  (Servirtium record: tape upstream: u) start
   ▼
Servirtium (this repo, package 'Servirtium')   ── thin Smalltalk ──
   │   • Servirtium / ServirtiumPlaybackBuilder / ServirtiumRecordBuilder
   │     / ServirtiumServer / ServirtiumBuilder      (the fixture API)
   │   • ServirtiumLibrary  — uFFI bindings to aether_vcr_embed_*
   │   • ServirtiumField / ServirtiumOutcome / ServirtiumError
   ▼   UnifiedFFI (uFFI), dlopen of native/libservirtium_vcr.so
libservirtium_vcr.{so,dylib,dll}
   │   built: ae build --emit=lib --with=fs,net core/embed.ae
   │   • core/embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • core/vcr.ae  — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server,
   │     a pure-Aether in-repo module on Aether stdlib primitives
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Smalltalk side owns **none** of the Servirtium semantics. It starts/stops
the server, marshals strings, and presents an idiomatic fixture. Everything
that defines Servirtium behaviour is the Aether core, shared with every other
language binding built on the same `core/embed.ae`.

## The C-ABI

`core/embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
avoids colliding with the core's own `vcr_*` runtime symbols). It adds only
the *embedding seam* the raw VCR module lacks:

- **starts the accept loop on a background thread** — the core's `load()`
  deliberately doesn't listen, leaving that to a caller an FFI host can't
  wire;
- **binds synchronously first** so an OS-assigned port (port 0) is resolved
  before `start` returns and `server port` can report it;
- **returns caller-owned, NUL-terminated C strings** (freed via
  `aether_vcr_embed_free_string`) rather than the core's borrowed
  TLS/arena strings.

`ServirtiumLibrary` mirrors these symbols 1:1, one method per C function.

## How the `.so` loads (uFFI)

`ServirtiumLibrary` is an `FFILibrary` subclass — a singleton accessed via
`ServirtiumLibrary uniqueInstance`. uFFI `dlopen`s the path returned by the
platform name accessors (`unixLibraryName` / `macLibraryName` /
`win32LibraryName`), and each FFI method declares its call with, e.g.:

```smalltalk
startPlaybackLabel: label tape: tapePath host: host port: port
    ^ self ffiCall: #( void* aether_vcr_embed_start_playback
        ( String label, String tapePath, String host, int port ) )
```

The library path is resolved at runtime, in order:

1. the `SERVIRTIUM_VCR_LIB` OS environment variable (an absolute file path) —
   set by `run-tests.sh` / `bootstrap.sh` so the binding finds the freshly
   built engine regardless of where the repo lives;
2. `ServirtiumLibrary libPath:` (a class-side override a consumer baseline can
   pin);
3. a committed default absolute path.

A `void*` is surfaced as an `ExternalAddress`; a NULL handle (`isNull`) means
the server failed to start.

## String ownership (copy then free)

ABI functions that return `char*` hand back a **caller-owned**,
NUL-terminated buffer. The contract is: read it into a Pharo `String`, then
free the native buffer. `ServirtiumLibrary>>takeString:` does both and is
NULL-safe (answers an empty String for a NULL pointer):

```smalltalk
takeString: aRawPointer
    | str |
    (aRawPointer isNil or: [ aRawPointer isNull ]) ifTrue: [ ^ '' ].
    str := aRawPointer readString.   "copy into image memory"
    self freeString: aRawPointer.    "aether_vcr_embed_free_string"
    ^ str
```

Every accessor that returns text (`baseUrl`, `lastError`, the `stopAndFlush*`
result, and every mutation call's error string) goes through `takeString:`.
Calls that return `int` / `void` need no freeing.

## Concurrency: one server per port

The ABI is **one server per port** (handle-based). `aether_vcr_embed_open_*`
returns a `void*` handle that owns its own VCR — tape, replay cursor,
mutations, static mounts, pending note, and diagnostics are all scoped to that
handle — and every subsequent C call (`start`, `redact`, `last_error`, `stop`,
…) takes the handle as its first argument. So:

- **N VCR servers can run concurrently in one image**, each on its own port
  with its own tape. Two `(Servirtium playback: …) start` servers can be alive
  at once without their cursors or mutations bleeding into each other.
- There is **no shared/global state to reset**. `ServirtiumPlaybackBuilder>>start`
  / `ServirtiumRecordBuilder>>start` open a fresh handle and apply this
  fixture's config to that handle only (`applyConfig: handle`), so a setting
  from another fixture cannot leak across — they are different handles.
- You do **not** have to serialize the suite; fixtures are independent.

The core's `core_tests/.concurrent.ae` probe is the deliverable for this model:
two playback VCRs on two ports, two tapes, served at once, each asserting it
replays its own tape with independent cursors and diagnostics.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are separate
global lists, registered before the server starts. A **note**, however, is
stored alongside the tape and is cleared when `start_record` (re)loads the
tape — so `ServirtiumRecordBuilder>>start` stages the builder's note *after*
`start_record` returns, attaching it to the first interaction the SUT
triggers.
