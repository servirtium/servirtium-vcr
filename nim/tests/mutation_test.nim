## Mutation / record-breadth tests for the Nim binding, ported from the Go
## binding's mutation_test.go: redaction, header removal, notes, drift
## detection, and (critically) that per-handle mutation state does not leak
## from one fixture to the next — each VcrServer owns its own native handle and
## thus its own tape/cursor/mutations/diagnostics.

import std/[os, strutils, unittest, httpclient]
import servirtium
import upstream

proc tempTape(name: string): string =
  let dir = getTempDir() / "servirtium_nim_mut_" & $getCurrentProcessId() & "_" & name
  createDir(dir)
  dir / "rec.md"

proc getOnce(base, path: string): string =
  let client = newHttpClient()
  defer: client.close()
  client.getContent(base & path)

suite "servirtium mutation":
  test "redacts response body before it lands on the tape":
    let tape = tempTape("redact_body")
    let rec = record(tape, upstreamBaseUrl())
    rec.redact(ResponseBody, "secret-token", "REDACTED")
    check rec.start()
    programReply("value=secret-token")
    discard getOnce(rec.baseUrl(), "/x")
    discard nextObservation()
    rec.close()

    let tapeText = readFile(tape)
    check tapeText.contains("REDACTED")
    check not tapeText.contains("secret-token")

  test "attaches a note":
    let tape = tempTape("note")
    let rec = record(tape, upstreamBaseUrl())
    rec.note("Why this exists", "documents the call")
    check rec.start()
    programReply("upstream-body")
    discard getOnce(rec.baseUrl(), "/x")
    discard nextObservation()
    rec.close()

    let tapeText = readFile(tape)
    check tapeText.contains("## [Note] Why this exists:")

  test "removes a named response header":
    let tape1 = tempTape("hdr_keep")
    let tape2 = tempTape("hdr_drop")

    # Phase 1: without removal, the header is captured on the tape.
    let rec1 = record(tape1, upstreamBaseUrl())
    check rec1.start()
    programReply("upstream-body", extraHeaders = @[("X-Trace-Id", "abc123")])
    discard getOnce(rec1.baseUrl(), "/x")
    discard nextObservation()
    rec1.close()
    # std/asynchttpserver lower-cases header names, so match case-insensitively
    # (header removal below is itself case-insensitive on the engine side).
    check readFile(tape1).toLowerAscii.contains("x-trace-id")

    # Phase 2: with removal, it's gone.
    let rec2 = record(tape2, upstreamBaseUrl())
    rec2.removeHeader(ResponseHeaders, "X-Trace-Id")
    check rec2.start()
    programReply("upstream-body", extraHeaders = @[("X-Trace-Id", "abc123")])
    discard getOnce(rec2.baseUrl(), "/x")
    discard nextObservation()
    rec2.close()
    check not readFile(tape2).toLowerAscii.contains("x-trace-id")

  test "mutation state does not leak between fixtures":
    let tape1 = tempTape("leak_a")
    let tape2 = tempTape("leak_b")

    # Fixture A registers a redaction for "leak".
    let a = record(tape1, upstreamBaseUrl())
    a.redact(ResponseBody, "leak", "SCRUBBED")
    check a.start()
    programReply("leak")
    discard getOnce(a.baseUrl(), "/x")
    discard nextObservation()
    a.close()
    check readFile(tape1).contains("SCRUBBED")

    # Fixture B registers NO redaction; A's must not leak in.
    let b = record(tape2, upstreamBaseUrl())
    check b.start()
    programReply("leak")
    discard getOnce(b.baseUrl(), "/x")
    discard nextObservation()
    b.close()
    let tape2Text = readFile(tape2)
    check tape2Text.contains("leak")
    check not tape2Text.contains("SCRUBBED")

  test "failIfChanged returns an error on drift":
    let tape = tempTape("drift")

    # First record creates the tape — no drift, no error.
    let first = record(tape, upstreamBaseUrl())
    first.failIfChanged()
    check first.start()
    programReply("v1")
    discard getOnce(first.baseUrl(), "/x")
    discard nextObservation()
    first.close() # should not raise

    # Re-record with a changed upstream — close must raise, while still
    # writing the new tape for git diff.
    let second = record(tape, upstreamBaseUrl())
    second.failIfChanged()
    check second.start()
    programReply("v2-changed")
    discard getOnce(second.baseUrl(), "/x")
    discard nextObservation()

    var raised = false
    try:
      second.close()
    except VcrError:
      raised = true
    check raised
    check readFile(tape).contains("v2-changed")
