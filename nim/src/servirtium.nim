## Servirtium VCR — record/replay HTTP fixtures in the Servirtium markdown
## tape format, for Nim.
##
## Since v2 this is a thin Nim wrapper over the Aether VCR core (the
## `aether_vcr_embed_*` C-ABI from `core/embed.ae`): all record/replay
## machinery — markdown parse/emit, the HTTP server, request matching,
## redactions, notes, drift detection, static-content bypass, gzip/chunked
## handling — lives in and is maintained as the in-repo pure-Aether
## `core/vcr.ae` engine. This module does not reimplement Servirtium in Nim;
## it binds and links the shared native engine.
##
## You point your system-under-test at a local base URL. In **playback** it
## replays a recorded markdown tape (no network); in **record** it forwards to
## the real upstream, returns the live response, and writes the tape on
## `close`. Same tape, both directions.
##
## ```nim
## let vcr = playback("tapes/my_api.md")
## doAssert vcr.start()
## # ... point your client at vcr.baseUrl() & "/api/v1/countries" ...
## doAssert vcr.lastKind() == Ok   # optional: assert a clean match
## vcr.close()
## ```
##
## ## One server per port
##
## The Aether VCR is per-listener: N independent servers can run concurrently
## in one process, one per port, each keyed by its own handle. A fixture's
## tape, replay cursor, mutations, static mounts, and diagnostics are scoped
## to its handle, so two servers can be alive at once without interfering.

import std/strformat
import servirtium/native

type
  ## Outcome of the last interaction, mirroring the engine's `VCR_KIND_*`
  ## constants. `Ok` means a clean match; anything non-zero is a mismatch.
  Outcome* = enum
    Ok = 0
    PathOrMethodDiff = 1
    HeaderMissing = 2
    HeaderValueDiff = 3
    HeaderUnexpected = 4
    TapeExhausted = 5
    BodyDiff = 6
    RecordError = 7

  ## Field selector for redactions / header removal, mirroring the engine.
  Field* = enum
    Path = 1
    ResponseBody = 2
    RequestHeaders = 3
    RequestBody = 4
    ResponseHeaders = 5

  ## A running VCR server. `recording` selects the close semantics: a record
  ## server flushes its tape on close, a playback server just stops.
  ## `failIfChanged` selects the drift-detecting flush variant.
  VcrServer* = ref object
    handle: native.Handle
    recording: bool
    failIfChanged: bool
    tapePath: string

  VcrError* = object of CatchableError

const defaultHost = "127.0.0.1"

proc `$`*(o: Outcome): string =
  ## Human-facing name of an outcome, matching the engine's diagnostic vocab.
  case o
  of Ok: "Ok"
  of PathOrMethodDiff: "PathOrMethodDiff"
  of HeaderMissing: "HeaderMissing"
  of HeaderValueDiff: "HeaderValueDiff"
  of HeaderUnexpected: "HeaderUnexpected"
  of TapeExhausted: "TapeExhausted"
  of BodyDiff: "BodyDiff"
  of RecordError: "RecordError"

# Marshal a caller-owned native `cstring` into an owned Nim `string` and free
# it via the ABI's free, per the ownership rule. nil -> "".
proc takeString(p: cstring): string =
  if p == nil:
    return ""
  result = $p
  native.free_string(p)

proc playback*(tapePath: string; host = defaultHost; port: cint = 0): VcrServer =
  ## Open a playback server over `tapePath` (does not start it yet).
  let h = native.open_playback(cstring("nim"), cstring(tapePath), cstring(host), port)
  if h == nil:
    raise newException(VcrError, &"failed to open playback for tape {tapePath}")
  VcrServer(handle: h, recording: false, tapePath: tapePath)

proc record*(tapePath, upstream: string; host = defaultHost; port: cint = 0): VcrServer =
  ## Open a record server: forwards to `upstream`, writing `tapePath` on
  ## close. Does not start it yet.
  let h = native.open_record(cstring("nim"), cstring(tapePath), cstring(upstream),
                             cstring(host), port)
  if h == nil:
    raise newException(VcrError, &"failed to open record for tape {tapePath}")
  VcrServer(handle: h, recording: true, tapePath: tapePath)

proc start*(s: VcrServer): bool {.discardable.} =
  ## Bind and start the listener. Returns false (and leaves `lastError`
  ## populated) on failure.
  native.start(s.handle) >= 0

proc baseUrl*(s: VcrServer; host = defaultHost): string =
  ## The `http://host:port` base URL of the running server.
  takeString(native.base_url(s.handle, cstring(host)))

proc port*(s: VcrServer): int =
  int(native.port(s.handle))

proc lastKind*(s: VcrServer): Outcome =
  ## Outcome of the last interaction; `Ok` means a clean match.
  Outcome(native.last_kind(s.handle))

proc lastError*(s: VcrServer): string =
  takeString(native.last_error(s.handle))

proc lastIndex*(s: VcrServer): int =
  int(native.last_index(s.handle))

proc tapeLength*(s: VcrServer): int =
  int(native.tape_length(s.handle))

proc resetCursor*(s: VcrServer) =
  ## Rewind the replay cursor to interaction 0 and clear the last-* slots.
  native.reset_cursor(s.handle)

proc clearLastError*(s: VcrServer) =
  ## Clear the last-error slot between sub-cases.
  native.clear_last_error(s.handle)

proc failIfChanged*(s: VcrServer) =
  ## Make `close` (record mode) flush the tape with drift detection: it still
  ## writes the freshly recorded tape, but raises `VcrError` if it differs from
  ## the on-disk one.
  s.failIfChanged = true

proc redact*(s: VcrServer; field: Field; pattern, replacement: string): string {.discardable.} =
  ## Replace `pattern` with `replacement` in `field` before the tape is
  ## written/compared. Returns "" on success, or an error message.
  takeString(native.redact(s.handle, cint(field), cstring(pattern), cstring(replacement)))

proc unredact*(s: VcrServer; field: Field; pattern, replacement: string): string {.discardable.} =
  takeString(native.unredact(s.handle, cint(field), cstring(pattern), cstring(replacement)))

proc removeHeader*(s: VcrServer; field: Field; name: string): string {.discardable.} =
  takeString(native.remove_header(s.handle, cint(field), cstring(name)))

proc normalizeWholeTape*(s: VcrServer; pattern, name: string): string {.discardable.} =
  takeString(native.normalize_whole_tape(s.handle, cstring(pattern), cstring(name)))

proc redactWholeTape*(s: VcrServer; pattern, replacement: string): string {.discardable.} =
  takeString(native.redact_whole_tape(s.handle, cstring(pattern), cstring(replacement)))

proc note*(s: VcrServer; title, body: string): string {.discardable.} =
  takeString(native.note(s.handle, cstring(title), cstring(body)))

proc staticContent*(s: VcrServer; mount, dir: string): string {.discardable.} =
  takeString(native.static_content(s.handle, cstring(mount), cstring(dir)))

proc untaped*(s: VcrServer; path: string): string {.discardable.} =
  takeString(native.untaped(s.handle, cstring(path)))

proc strictIgnoreCommonHeaders*(s: VcrServer): string {.discardable.} =
  takeString(native.strict_ignore_common_headers(s.handle))

proc setStrictHeaders*(s: VcrServer; on: bool) =
  native.set_strict_headers(s.handle, cint(if on: 1 else: 0))

proc setMatchJsonBody*(s: VcrServer; on: bool) =
  ## Opt in to matching request bodies by semantic JSON equality (key order /
  ## whitespace ignored) instead of byte-for-byte. Non-JSON bodies fall back to
  ## byte-exact.
  native.set_match_json_body(s.handle, cint(if on: 1 else: 0))

proc setMatchMultiple*(s: VcrServer; on: bool) =
  ## Opt in to reusable, order-independent playback: matches any recorded
  ## interaction (not just the next in sequence) and doesn't consume it — for
  ## polling/retries or non-deterministic request order.
  native.set_match_multiple(s.handle, cint(if on: 1 else: 0))

proc matchHeader*(s: VcrServer; name: string) =
  ## Match playback on this specific request header's value (ignoring the rest
  ## of the recorded header block); repeatable.
  native.match_header(s.handle, cstring(name))

proc indentCodeBlocks*(s: VcrServer) =
  native.indent_code_blocks(s.handle)

proc emphasizeHttpVerbs*(s: VcrServer) =
  native.emphasize_http_verbs(s.handle)

proc close*(s: VcrServer) =
  ## Stop the server. For a record server, flush the tape to disk first.
  if s.handle == nil:
    return
  if s.recording:
    let err =
      if s.failIfChanged:
        takeString(native.stop_and_flush_fail_if_changed(s.handle, cstring(s.tapePath)))
      else:
        takeString(native.stop_and_flush(s.handle, cstring(s.tapePath)))
    s.handle = nil
    if err.len > 0:
      raise newException(VcrError, err)
  else:
    native.stop(s.handle)
    s.handle = nil
