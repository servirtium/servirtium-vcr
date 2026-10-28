## Servirtium VCR — record/replay HTTP fixtures in the Servirtium markdown
## tape format, for Nim.
##
## Since v2 this is a thin Nim wrapper over the Aether VCR core (the
## `aether_vcr_embed_*` C-ABI from `core/embed.ae`): all record/replay
## machinery — markdown parse/emit, the HTTP server, request matching,
## redactions, notes, drift detection, static-content bypass, gzip/chunked
## handling — lives in and is maintained as the in-repo pure-Aether
## `core/vcr.ae` libservirtium_vcr. This module does not reimplement Servirtium in Nim;
## it binds and links libservirtium_vcr.
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

import std/[strformat, options]
export options
import servirtium/native

type
  ## Outcome of the last interaction, mirroring libservirtium_vcr's `VCR_KIND_*`
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

  ## Field selector for redactions / header removal, mirroring libservirtium_vcr.
  Field* = enum
    Path = 1
    ResponseBody = 2
    RequestHeaders = 3
    RequestBody = 4
    ResponseHeaders = 5

  ## A running VCR server. `recording` selects the close semantics: a record
  ## server flushes its tape on close, a playback server just stops.
  ## `failIfChanged` selects the drift-detecting flush variant.
  SecretRequest* = object
    `method`*, path*, location*, format*, fieldPath*: string
    interaction*: int
  SecretRedactor* = proc(key: string; request: SecretRequest): Option[string] {.closure.}
  SecretResolver* = proc(token: string): Option[string] {.closure.}
  VcrServer* = ref object
    handle: native.Handle
    recording: bool
    failIfChanged: bool
    tapePath: string
    secretRedactorCallback: SecretRedactor
    secretResolverCallback: SecretResolver

  VcrError* = object of CatchableError

const defaultHost = "127.0.0.1"

proc `$`*(o: Outcome): string =
  ## Human-facing name of an outcome, matching libservirtium_vcr's diagnostic vocab.
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

proc secretRedactor*(s: VcrServer; callback: SecretRedactor): VcrServer {.discardable.} =
  s.secretRedactorCallback = callback
  s
proc secretResolver*(s: VcrServer; callback: SecretResolver): VcrServer {.discardable.} =
  s.secretResolverCallback = callback
  s
proc secretStage(s: VcrServer; resolving: bool) =
  let h = s.handle
  proc check(p: cstring) =
    let err = takeString(p)
    if err.len > 0: raise newException(VcrError, err)
  proc get(part: cint): string = takeString(native.secret_get(h, part))
  try:
    check(native.secret_begin(h, cint(ord(resolving))))
    while true:
      let next = native.secret_next(h)
      if next < 0: raise newException(VcrError, "Secret staging aborted")
      if next == 0: break
      let value = if resolving: s.secretResolverCallback(get(2)) else:
        s.secretRedactorCallback(get(1), SecretRequest(`method`: get(3), path: get(4),
          location: get(5), format: get(6), fieldPath: get(7), interaction: int(native.secret_interaction(h))))
      if value.isSome: check(native.secret_apply(h, cstring(value.get)))
    check(native.secret_finish(h))
  except:
    native.secret_abort(h)
    native.stop(h)
    s.handle = nil
    raise

proc start*(s: VcrServer): bool {.discardable.} =
  ## Bind and start the listener. Returns false (and leaves `lastError`
  ## populated) on failure.
  if s.secretResolverCallback != nil: s.secretStage(true)
  native.start(s.handle) >= 0

proc baseUrl*(s: VcrServer; host = defaultHost): string =
  ## The `http://host:port` base URL of the running server.
  takeString(native.base_url(s.handle, cstring(host)))

proc port*(s: VcrServer): int =
  int(native.port(s.handle))

proc lastKind*(s: VcrServer): Outcome =
  ## Outcome of the last interaction; `Ok` means a clean match.
  Outcome(native.last_kind(s.handle))

proc lastError*(s: VcrServer; consume = true): string =
  takeString(native.last_error_ex(s.handle, cint(ord(consume))))

proc diagnosticsJson*(s: VcrServer; consume = false): string =
  takeString(native.diagnostics_json(s.handle, cint(ord(consume))))
proc assertNoMismatches*(s: VcrServer) =
  let diagnostic = takeString(native.assert_no_mismatches(s.handle))
  if diagnostic.len > 0: raise newException(VcrError, diagnostic)
proc testContext*(s: VcrServer; name: string; sourceFile = ""; sourceLine = 0) =
  native.test_context(s.handle, cstring(name), cstring(sourceFile), cint(sourceLine))

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

proc redactHeader*(s: VcrServer; name: string; replacement = "[REDACTED]"; field = RequestHeaders): string {.discardable.} =
  takeString(native.redact_header(s.handle, cint(field), cstring(name), cstring(replacement)))

proc redactQueryParam*(s: VcrServer; name: string; replacement = "[REDACTED]"; field = Path): string {.discardable.} =
  takeString(native.redact_query_param(s.handle, cint(field), cstring(name), cstring(replacement)))

proc redactJsonField*(s: VcrServer; name: string; replacement = "[REDACTED]"; field = RequestBody): string {.discardable.} =
  takeString(native.redact_json_field(s.handle, cint(field), cstring(name), cstring(replacement)))

proc unredact*(s: VcrServer; field: Field; pattern, replacement: string): string {.discardable.} =
  takeString(native.unredact(s.handle, cint(field), cstring(pattern), cstring(replacement)))

proc substitute*(s: VcrServer; field: Field; pattern, replacement: string): string {.discardable.} =
  ## Playback only: rewrite the replayed response (regex `pattern` ->
  ## `replacement`) in the response body or headers. Returns "" or an error.
  takeString(native.substitute(s.handle, cint(field), cstring(pattern), cstring(replacement)))

proc clearSubstitutions*(s: VcrServer) =
  native.clear_substitutions(s.handle)

proc tls*(s: VcrServer; certPath, keyPath: string): string {.discardable.} =
  ## Serve https:// using the PEM cert and key (ECDSA P-256). Playback and
  ## record; call before `start`. Returns "" or an error message.
  takeString(native.set_tls(s.handle, cstring(certPath), cstring(keyPath)))

proc lastTlsProtocol*(s: VcrServer): string =
  ## Negotiated TLS protocol ("TLSv1.3"), or "" when TLS is off.
  takeString(native.last_tls_protocol(s.handle))

proc assertAllConsumed*(s: VcrServer) =
  ## Raise `VcrError` unless every recorded interaction was replayed.
  let diagnostic = takeString(native.assert_all_consumed(s.handle))
  if diagnostic.len > 0: raise newException(VcrError, diagnostic)

proc assertAllRedactionsUsed*(s: VcrServer) =
  ## Raise `VcrError` unless every redaction/unredaction/substitution matched.
  let diagnostic = takeString(native.assert_all_redactions_used(s.handle))
  if diagnostic.len > 0: raise newException(VcrError, diagnostic)

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
  if s.handle != nil and s.recording and s.secretRedactorCallback != nil: s.secretStage(false)
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
