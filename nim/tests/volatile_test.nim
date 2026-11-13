## Volatile-value conformance (docs/volatile-values.md): the shared tapes in
## core_tests/volatile driven by the shared volatile_fixture binary.

import std/[os, osproc, strutils, unittest]
import servirtium

let root = currentSourcePath().parentDir.parentDir.parentDir

proc vtape(name: string): string = root / "core_tests/volatile" / name

proc driver(mode, base: string): int =
  let (output, code) = execCmdEx(
    quoteShell(root / "target/test-tools/volatile_fixture") & " " & mode & " " & quoteShell(base))
  if code != 0: echo output
  code

## Start a playback over `tape`, applying `config` first; returns "" when it
## starts, else the failure message (an open failure, a setter's message, or the
## start-time `lastError`).
proc tryStart(tape: string; config: proc (s: VcrServer): string): string =
  var s: VcrServer
  try:
    s = playback(tape)
  except VcrError as e:
    return e.msg
  let setterError = config(s)
  if setterError.len > 0:
    s.close()
    return setterError
  if s.start():
    s.close()
    return ""
  result = s.lastError()
  s.close()

suite "volatile values":
  test "tape block drives WCF playback and reports bindings":
    let server = playback(vtape("wcf.md"))
    server.prettyXml(2)
    check server.start()
    defer: server.close()
    check driver("wcf", server.baseUrl()) == 0
    check server.volatileReport().contains("binding: {{messageId-1}} = ")

  test "profile file drives WCF playback":
    let server = playback(vtape("wcf_plain.md"))
    server.prettyXml(2)
    check server.volatileProfile(vtape("profile.md")) == ""
    check server.start()
    defer: server.close()
    check driver("wcf", server.baseUrl()) == 0

  test "rules in code drive WCF playback":
    let server = playback(vtape("wcf_plain.md"))
    server.prettyXml(2)
    check server.volatileRule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>") == ""
    check server.volatileRule("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/") == ""
    check server.volatileRule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;") == ""
    check server.volatileRule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>") == ""
    check server.start()
    defer: server.close()
    check driver("wcf", server.baseUrl()) == 0

  test "markers: DollarCurly tape needs the DollarCurly markers":
    let server = playback(vtape("wcf_dollar.md"))
    server.prettyXml(2)
    check server.volatileMarkers(DollarCurly) == ""
    check server.start()
    defer: server.close()
    check driver("wcf", server.baseUrl()) == 0
    let msg = tryStart(vtape("wcf_dollar.md"), proc (s: VcrServer): string =
      s.prettyXml(2); "")
    check msg.contains("DollarCurly")

  test "cases bind, then a mismatch reports the token":
    let server = playback(vtape("cases.md"))
    check server.start()
    defer: server.close()
    check driver("cases", server.baseUrl()) == 0
    server.resetCursor()
    check driver("cases-mismatch", server.baseUrl()) == 0
    check server.lastError(false).contains("{{caseId-1}} = 42")
    discard server.lastError()  # consuming read: nothing unretrieved at close

  test "bind supplies a recorded value":
    let missing = tryStart(vtape("cases_recorded.md"), proc (s: VcrServer): string = "")
    check missing.contains("caseId")
    let server = playback(vtape("cases_recorded.md"))
    check server.volatileBind("caseId", "42") == ""
    check server.start()
    defer: server.close()
    check driver("cases", server.baseUrl()) == 0

  test "configuration errors carry the core's message":
    let noPlaceholder = tryStart(vtape("cases.md"), proc (s: VcrServer): string =
      s.volatileRule("request body", "no placeholder"))
    check noPlaceholder.contains("needs at least one placeholder")
    let conflict = tryStart(vtape("cases.md"), proc (s: VcrServer): string =
      s.volatileRule("response body", "\"caseId\":\"{{id}}\""))
    check conflict.contains("conflicts with")
    check conflict.contains("(tape)")
    check tryStart(vtape("cases.md"), proc (s: VcrServer): string =
      s.volatileRule("x", "a {{b}}", "regex")).len > 0
