## Playback smoke test for the Nim binding.
##
## Opens the single_get.md tape (GET /ok -> 200 text/plain "ok-body") in
## playback, starts the server, then shells out to `curl` against the live
## base URL and asserts the replayed body and a clean (Ok) match. We use curl
## via osproc deliberately so the test pulls in no HTTP client library.

import std/[os, osproc, strutils, unittest]
import servirtium

suite "servirtium playback":
  test "replays single_get tape over a real socket":
    let tape = currentSourcePath().parentDir() / "tapes" / "single_get.md"
    check fileExists(tape)

    let vcr = playback(tape)
    check vcr.start()

    let url = vcr.baseUrl() & "/ok"
    let (output, code) = execCmdEx("curl -s " & quoteShell(url))
    check code == 0
    check output.strip() == "ok-body"

    check vcr.lastKind() == Ok
    vcr.close()
