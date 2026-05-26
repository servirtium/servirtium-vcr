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
   │   built: ae build --emit=lib --with=fs,net std/http/server/vcr/embed.ae
   │   • embed.ae  — thin Aether wrapper exposing the C-ABI
   │   • std/http/server/vcr  — the actual VCR (parse, dispatch, record,
   │     mutate, emit, match) + the embedded Aether HTTP server
   ▼
your SUT  ⇄  http://127.0.0.1:<port>
```

The Smalltalk side owns **none** of the Servirtium semantics. It starts/stops
the server, marshals strings, and presents an idiomatic fixture. Everything
that defines Servirtium behaviour is the Aether core, shared with every other
language binding built on the same `embed.ae`.

## The C-ABI

`embed.ae` exports `aether_vcr_embed_*` C symbols (the `vcr_embed_` prefix
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

## One server per process

v1 keeps the VCR's tape, replay cursor, mutations, static mounts, pending
note, and diagnostics as **process-global** state (the documented v1 contract
on the Aether side). A Pharo image is one process, so:

- You cannot run two `ServirtiumServer`s simultaneously in one image.
- **Run tests serially.** Concurrent fixtures would stomp each other's state
  (it shows up as spurious mismatches).
- `ServirtiumPlaybackBuilder>>start` / `ServirtiumRecordBuilder>>start` call
  `resetGlobalState` first — clearing redactions, unredactions, header
  removals, static mounts, format options, strict-headers, and the last-error
  slot — then apply the current fixture's config. So a setting from a previous
  test never leaks forward, even within one image.

Per-server isolation (a real handle owning its own state) is on the Aether
roadmap; when it lands, the binding drops the serial constraint without an
API change.

## A subtle ordering rule (notes)

Redactions / unredactions / header-removals / static-mounts are separate
global lists, registered before the server starts. A **note**, however, is
stored alongside the tape and is cleared when `start_record` (re)loads the
tape — so `ServirtiumRecordBuilder>>start` stages the builder's note *after*
`start_record` returns, attaching it to the first interaction the SUT
triggers.
