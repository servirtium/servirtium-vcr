## Playback-mode tests for the Nim binding, ported 1:1 from the Go binding's
## playback_test.go. Each test opens a playback VCR over a committed tape,
## starts the server, drives it with curl against the live base URL, and
## asserts the replayed body plus the diagnostics (LastKind / LastError).
##
## We drive requests with curl via osproc so the suite pulls in no HTTP client
## library — matching the existing smoke test and the Go suite's intent.

import std/[os, osproc, strutils, unittest]
import servirtium

proc tapePath(name: string): string =
  currentSourcePath().parentDir() / "tapes" / name

const statusMarker = "<<HTTP_STATUS:"

# Split curl's combined body+status output (it appends `<<HTTP_STATUS:NNN>>`
# via -w) back into (status, body). Using a distinctive marker rather than a
# trailing newline is robust to bodies that themselves end in a newline.
proc splitStatus(output: string): tuple[status: int, body: string] =
  let idx = output.rfind(statusMarker)
  doAssert idx >= 0, "no status marker in curl output: " & output
  result.status = parseInt(output[idx + statusMarker.len ..< output.rfind(">>")])
  result.body = output[0 ..< idx]

# curl GET -> (status, body).
proc get(base, path: string): tuple[status: int, body: string] =
  let url = base & path
  let (output, code) = execCmdEx(
    "curl -s -o - -w '" & statusMarker & "%{http_code}>>' " & quoteShell(url))
  doAssert code == 0, "curl failed for " & url
  splitStatus(output)

# curl GET with a single extra request header, with curl's default User-Agent
# and Accept headers suppressed so a recorded request-headers block (which the
# dispatcher compares whenever the tape entry carries one) matches exactly.
proc getWithHeader(base, path, header: string): tuple[status: int, body: string] =
  let url = base & path
  let (output, code) = execCmdEx(
    "curl -s -o - -w '" & statusMarker & "%{http_code}>>' " &
    "-H 'User-Agent:' -H 'Accept:' -H " &
    quoteShell(header) & " " & quoteShell(url))
  doAssert code == 0, "curl failed for " & url
  splitStatus(output)

suite "servirtium playback":
  test "replays a recorded GET":
    let vcr = playback(tapePath("single_get.md"))
    check vcr.start()
    defer: vcr.close()

    check vcr.port() > 0
    check vcr.tapeLength() == 1

    let (status, body) = get(vcr.baseUrl(), "/ok")
    check status == 200
    check body.strip() == "ok-body"
    check vcr.lastKind() == Ok
    check vcr.lastError() == ""

  test "flags a path mismatch via diagnostics":
    let vcr = playback(tapePath("single_get.md"))
    check vcr.start()
    defer: vcr.close()

    discard get(vcr.baseUrl(), "/nope")

    check vcr.lastKind() != Ok
    check vcr.lastError() != ""

  test "unredaction lets a scrubbed tape match":
    let vcr = playback(tapePath("secure_get.md"))
    vcr.setStrictHeaders(true)
    vcr.unredact(RequestHeaders, "Bearer REDACTED", "Bearer real-token")
    check vcr.start()
    defer: vcr.close()

    # The strict tape only records Authorization, so suppress curl's default
    # User-Agent and Accept headers (`-H 'Header:'` drops them) to match the
    # recorded block exactly.
    let url = vcr.baseUrl() & "/secure"
    let (output, code) = execCmdEx(
      "curl -s -H 'User-Agent:' -H 'Accept:' " &
      "-H 'Authorization: Bearer real-token' " & quoteShell(url))
    check code == 0
    check output.strip() == "secret-ok"
    check vcr.lastKind() == Ok

  test "strict matching flags a missing request header":
    let vcr = playback(tapePath("secure_get.md"))
    vcr.setStrictHeaders(true)
    vcr.unredact(RequestHeaders, "Bearer REDACTED", "Bearer real-token")
    check vcr.start()
    defer: vcr.close()

    # No Authorization header at all -> mismatch.
    discard get(vcr.baseUrl(), "/secure")

    check vcr.lastKind() != Ok
    check vcr.lastError() != ""

  test "static content served from disk":
    let dir = getTempDir() / "servirtium_nim_static_" & $getCurrentProcessId()
    createDir(dir)
    defer: removeDir(dir)
    writeFile(dir / "asset.txt", "static-asset")

    let vcr = playback(tapePath("single_get.md"))
    vcr.staticContent("/files", dir)
    check vcr.start()
    defer: vcr.close()

    # From disk:
    let (_, fromDisk) = get(vcr.baseUrl(), "/files/asset.txt")
    check fromDisk == "static-asset"
    # From the tape (unaffected):
    let (_, fromTape) = get(vcr.baseUrl(), "/ok")
    check fromTape.strip() == "ok-body"

  test "untaped path 404s without consuming the cursor":
    let vcr = playback(tapePath("single_get.md"))
    vcr.untaped("/favicon.ico")
    check vcr.start()
    defer: vcr.close()

    let (status404, _) = get(vcr.baseUrl(), "/favicon.ico")
    check status404 == 404
    # The normal recorded interaction still replays (cursor wasn't consumed):
    let (status, body) = get(vcr.baseUrl(), "/ok")
    check status == 200
    check body.strip() == "ok-body"

  test "two playback servers at once (one server per port)":
    let a = playback(tapePath("single_get.md"))
    let b = playback(tapePath("secure_get.md"))
    b.unredact(RequestHeaders, "Bearer REDACTED", "Bearer real-token")
    check a.start()
    check b.start()
    defer: a.close()
    defer: b.close()

    check a.port() != b.port()

    let (_, bodyA) = get(a.baseUrl(), "/ok")
    check bodyA.strip() == "ok-body"
    check a.lastKind() == Ok

    let (_, bodyB) = getWithHeader(
      b.baseUrl(), "/secure", "Authorization: Bearer real-token")
    check bodyB.strip() == "secret-ok"
    check b.lastKind() == Ok
