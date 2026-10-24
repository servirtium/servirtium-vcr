## Record-mode tests for the Nim binding, ported from the Go binding's
## record_test.go. Each test programs the shared throwaway upstream
## (tests/upstream.nim, on std/asynchttpserver), records live traffic through
## the VCR to a temp tape, then replays that tape offline.
##
## SUT requests are driven with std/httpclient from the main thread (the
## upstream runs its async accept loop on a dedicated thread; forking curl
## while that loop is live is unreliable on this stdlib).

import std/[os, osproc, strutils, unittest, httpclient]
import servirtium
import upstream

proc tempTape(name: string): string =
  let dir = getTempDir() / "servirtium_nim_rec_" & $getCurrentProcessId() & "_" & name
  createDir(dir)
  dir / "rec.md"

proc getBody(base, path: string): string =
  let client = newHttpClient()
  defer: client.close()
  client.getContent(base & path)

proc postBody(base, path, data: string): string =
  let client = newHttpClient()
  defer: client.close()
  client.headers = newHttpHeaders({"Content-Type": "text/plain"})
  client.postContent(base & path, body = data)

suite "servirtium record":
  test "record then replays the same interaction":
    let tape = tempTape("then_replay")

    # ---- record ----
    let rec = record(tape, upstreamBaseUrl())
    check rec.start()
    programReply("hello-from-upstream")
    let body = getBody(rec.baseUrl(), "/greeting")
    discard nextObservation()
    check body.strip() == "hello-from-upstream"
    rec.close() # flushes the tape
    check fileExists(tape)

    # ---- replay (offline) ----
    let play = playback(tape)
    check play.start()
    defer: play.close()
    let replayed = getBody(play.baseUrl(), "/greeting")
    check replayed.strip() == "hello-from-upstream"
    check play.lastKind() == Ok

  test "record and replay a POST with a body":
    let tape = tempTape("post_body")

    let rec = record(tape, upstreamBaseUrl())
    check rec.start()
    programReply("created")
    let body = postBody(rec.baseUrl(), "/submit", "ping")
    let obs = nextObservation()
    check body.strip() == "created"
    check obs.httpMethod == "POST"
    check obs.body == "ping"
    rec.close()

    # Replay the same POST offline.
    let play = playback(tape)
    check play.start()
    defer: play.close()
    let replayed = postBody(play.baseUrl(), "/submit", "ping")
    check replayed.strip() == "created"
    check play.lastKind() == Ok


suite "structured redaction helpers":
  test "forwards credentials and scrubs the tape":
    let directory = getTempDir() / ("vcr-helpers-nim-" & $getCurrentProcessId())
    createDir(directory)
    defer: removeDir(directory)
    let fixture = currentSourcePath().parentDir.parentDir.parentDir / "core_tests/redaction_fixture.py"
    proc fixtureRun(args: seq[string]): string =
      var command = "python3 " & quoteShell(fixture)
      for arg in args: command.add(" " & quoteShell(arg))
      let output = execCmdEx(command)
      doAssert output.exitCode == 0, output.output
      output.output.strip()
    let upstream = fixtureRun(@["start", directory])
    let rec = record(directory / "tape.md", upstream)
    check rec.redactHeader("Authorization") == ""
    check rec.redactQueryParam("password") == ""
    check rec.redactJsonField("secretKey") == ""
    check rec.start()
    defer: rec.close()
    discard fixtureRun(@["drive", directory, rec.baseUrl()])
    check rec.lastKind() == Ok
    rec.close()
    discard fixtureRun(@["check", directory])


suite "retained replay diagnostics":
  test "observers do not consume and assertions report earlier failures":
    let root = currentSourcePath().parentDir.parentDir.parentDir
    let server = playback(root / "core_tests/diagnostics/playback.md")
    server.testContext("Nim scenario", "scenario.test", 123)
    check server.start()
    defer: server.close()
    let driven = execCmdEx("python3 " & quoteShell(root / "core_tests/diagnostic_fixture.py") & " " & quoteShell(server.baseUrl()))
    check driven.exitCode == 0
    check server.lastError(false).contains("owner")
    check server.lastError(false).contains("scenario.test:123")
    check not server.diagnosticsJson().contains("\"retrieved\":1")
    check server.lastError().contains("owner")
    check server.diagnosticsJson().contains("\"retrieved\":0")
    check server.diagnosticsJson().contains("\"retrieved\":1")
    expect VcrError: server.assertNoMismatches()
    server.testContext("next test")
    server.assertNoMismatches()
    check server.diagnosticsJson() == "[]"

suite "named secrets":
  test "redact at flush and resolve four services":
    let directory = getTempDir() / ("vcr-secrets-nim-" & $getCurrentProcessId())
    createDir(directory)
    defer: removeDir(directory)
    let fixture = currentSourcePath().parentDir.parentDir.parentDir / "core_tests/secret_fixture.py"
    proc run(args: seq[string]): string =
      var command = "python3 " & quoteShell(fixture)
      for arg in args: command.add(" " & quoteShell(arg))
      let output = execCmdEx(command)
      doAssert output.exitCode == 0, output.output
      output.output.strip()
    let tape = directory / "tape.md"
    let rec = record(tape, run(@["start", directory]))
    var count = 0
    rec.secretRedactor(proc(key: string; request: SecretRequest): Option[string] =
      if key != "password": return none(string)
      inc count
      some(request.path.split('/')[1].toUpperAscii() & "_PASSWORD"))
    check rec.start()
    discard run(@["drive", rec.baseUrl()]); check count == 0
    rec.close(); check count == 20
    discard run(@["check", tape])
    let replay = playback(tape).secretResolver(proc(token: string): Option[string] =
      some("pw-" & token.replace("_PASSWORD", "").toLowerAscii() & "&secret"))
    check replay.start()
    defer: replay.close()
    discard run(@["drive", replay.baseUrl()]); replay.assertNoMismatches()
    discard run(@["check", tape])
