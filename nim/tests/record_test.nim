## Record-mode tests for the Nim binding, ported from the Go binding's
## record_test.go. Each test programs the shared throwaway upstream
## (tests/upstream.nim, on std/asynchttpserver), records live traffic through
## the VCR to a temp tape, then replays that tape offline.
##
## SUT requests are driven with std/httpclient from the main thread (the
## upstream runs its async accept loop on a dedicated thread; forking curl
## while that loop is live is unreliable on this stdlib).

import std/[os, strutils, unittest, httpclient]
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
