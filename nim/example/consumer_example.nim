## Third-party consumer example: imports the `servirtium` Nim package (resolved
## via a source path to a published copy) and replays the canonical tape. The
## engine .so self-locates from the package's own bundled native/ dir (baked
## -rpath) — no SERVIRTIUM_VCR_LIB, and the published copy has no core/ sibling
## so only the bundled .so can link.

import servirtium
import std/[httpclient, os]

proc fail(msg: string) =
  stderr.writeLine("FAIL: " & msg)
  quit(1)

when isMainModule:
  delEnv("SERVIRTIUM_VCR_LIB") # a real consumer sets nothing

  let tape = getAppDir() / "tapes" / "single_get.md"

  let vcr = playback(tape)
  if not vcr.start():
    fail("playback failed to start")

  let client = newHttpClient()
  let body = client.getContent(vcr.baseUrl() & "/ok")
  if body != "ok-body":
    fail("expected body 'ok-body', got '" & body & "'")
  if vcr.lastKind() != Ok:
    fail("expected Ok, got " & $vcr.lastKind())

  echo "PASS[discovery]: consumer replayed the canonical tape from the servirtium nim package"
