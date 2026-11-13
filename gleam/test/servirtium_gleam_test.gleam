//// Smoke test for the Gleam Servirtium binding: start a playback VCR over a
//// one-interaction tape (GET /ok -> 200 text/plain "ok-body"), drive it with
//// curl, and assert the body + a clean match (last_kind == Ok).
////
//// Gleam reuses the Erlang binding's C NIF over the BEAM, so this exercises
//// the same Aether VCR core libservirtium_vcr as every other binding.
////
//// NOTE on the runner: this dev box's Erlang/OTP 27 ships a *stripped* eunit
//// (only its headers, no compiled .beam), so gleeunit's eunit-based
//// `gleeunit.main()` can't run here. We still use `gleeunit/should` for the
//// assertions (it raises on mismatch, no eunit), but `main` invokes the test
//// directly and `halt`s 0/1 so `gleam test` reports pass/fail correctly.

import gleam/int
import gleam/string
import gleam/option.{None, Some}
import gleeunit/should
import servirtium

@external(erlang, "erlang", "halt")
fn halt(code: Int) -> a

@external(erlang, "io", "format")
fn io_format(fmt: String, args: List(String)) -> a

@external(erlang, "servirtium_gleam_test_ffi", "panic_message")
fn panic_message(f: fn() -> a) -> String

pub fn main() {
  volatile_values_test()
  open_failure_and_lifecycle_test()
  named_secrets_test()
  structured_redaction_test()
  replay_diagnostics_test()
  stable_order_test()
  playback_range_test()
  playback_single_get_test()
  let _ = io_format("PASS: gleam servirtium playback~n", [])
  halt(0)
}

// A missing tape surfaces its reason via open_error; open/start/close 50
// times, and a second close is harmless.
pub fn open_failure_and_lifecycle_test() {
  panic_message(fn() { servirtium.playback("tapes/definitely_missing.md") })
  |> string.contains("definitely_missing")
  |> should.be_true()
  cycle(50)
}

fn cycle(n: Int) -> Nil {
  case n {
    0 -> Nil
    _ -> {
      let vcr = servirtium.playback("tapes/single_get.md")
      { servirtium.port(vcr) > 0 } |> should.be_true()
      servirtium.close(vcr) |> should.equal(servirtium.Closed)
      servirtium.close(vcr) |> should.equal(servirtium.Closed)
      cycle(n - 1)
    }
  }
}

pub fn playback_single_get_test() {
  let vcr = servirtium.playback("tapes/single_get.md")

  let body =
    servirtium.curl(servirtium.base_url(vcr) <> "/ok")
    |> trim_trailing_newlines()

  body
  |> should.equal("ok-body")

  servirtium.last_kind(vcr)
  |> should.equal(servirtium.Ok)

  let _ = servirtium.close(vcr)
}

// curl output may carry a trailing newline; strip any.
fn trim_trailing_newlines(s: String) -> String {
  case s {
    "" -> ""
    _ ->
      case last_char(s) {
        "\n" | "\r" -> trim_trailing_newlines(drop_last(s))
        _ -> s
      }
  }
}

@external(erlang, "string", "slice")
fn str_slice(s: String, at: Int, len: Int) -> String

@external(erlang, "string", "length")
fn str_length(s: String) -> Int

fn last_char(s: String) -> String {
  str_slice(s, str_length(s) - 1, 1)
}

fn drop_last(s: String) -> String {
  str_slice(s, 0, str_length(s) - 1)
}


@external(erlang, "erlang", "binary_to_list")
fn to_charlist(value: String) -> Charlist
@external(erlang, "erlang", "list_to_binary")
fn from_charlist(value: Charlist) -> String
@external(erlang, "os", "cmd")
fn command(value: Charlist) -> Charlist
@external(erlang, "os", "getpid")
fn getpid() -> Charlist
type Charlist

@external(erlang, "filename", "absname")
fn absname_charlist(path: Charlist) -> Charlist

fn absname(path: String) -> String {
  from_charlist(absname_charlist(to_charlist(path)))
}

fn shell(cmd: String) -> String {
  from_charlist(command(to_charlist(cmd)))
}
pub fn structured_redaction_test() {
  let directory = "/tmp/vcr-helpers-gleam-" <> from_charlist(getpid())
  let fixture = "../target/test-tools/redaction_fixture "
  let upstream = shell(fixture <> "start '" <> directory <> "'") |> trim_trailing_newlines()
  let rec = servirtium.record(directory <> "/tape.md", upstream)
  servirtium.redact_header(rec, "Authorization") |> should.equal(Ok(Nil))
  servirtium.redact_query_param(rec, "password") |> should.equal(Ok(Nil))
  servirtium.redact_json_field(rec, "secretKey") |> should.equal(Ok(Nil))
  shell(fixture <> "drive '" <> directory <> "' '" <> servirtium.base_url(rec) <> "' && echo DRIVE_OK")
    |> should.equal("DRIVE_OK\n")
  servirtium.last_kind(rec) |> should.equal(servirtium.Ok)
  servirtium.close(rec) |> should.equal(servirtium.Closed)
  shell(fixture <> "check '" <> directory <> "'")
    |> should.equal("structured redaction: upstream intact, tape scrubbed\n")
  let _ = shell("rm -r '" <> directory <> "'")
}


pub fn replay_diagnostics_test() {
  let server = servirtium.playback("../core_tests/diagnostics/playback.md")
  let _ = servirtium.test_context(server, "Gleam scenario", "scenario.test", 123)
  shell("../target/test-tools/diagnostic_fixture '" <> servirtium.base_url(server) <> "' && echo DRIVER_OK") |> should.equal("DRIVER_OK\n")
  servirtium.last_error_with(server, False) |> string.contains("owner") |> should.be_true()
  servirtium.last_error_with(server, False) |> string.contains("scenario.test:123") |> should.be_true()
  servirtium.diagnostics_json(server, False) |> string.contains("\"retrieved\":1") |> should.be_false()
  servirtium.last_error(server) |> string.contains("owner") |> should.be_true()
  servirtium.diagnostics_json(server, False) |> string.contains("\"retrieved\":0") |> should.be_true()
  case servirtium.assert_no_mismatches(server) {
    Error(diagnostic) -> diagnostic |> string.contains("admin") |> should.be_true()
    Ok(_) -> panic as "expected a mismatch assertion"
  }
  let _ = servirtium.test_context(server, "next test", "", 0)
  servirtium.assert_no_mismatches(server) |> should.equal(Ok(Nil))
  servirtium.diagnostics_json(server, False) |> should.equal("[]")
  let _ = servirtium.close(server)
}

pub fn named_secrets_test() {
  let directory = "/tmp/vcr-secrets-gleam-" <> from_charlist(getpid())
  let fixture = "../target/test-tools/secret_fixture "
  let upstream = shell(fixture <> "start '" <> directory <> "'") |> trim_trailing_newlines()
  let tape = directory <> "/tape.md"
  let rec = servirtium.record(tape, upstream) |> servirtium.secret_redactor(fn(key, request) {
    case key {
      "password" -> {
        let assert [_, service, ..] = string.split(request.path, "/")
        Some(string.uppercase(service) <> "_PASSWORD")
      }
      _ -> None
    }
  })
  shell(fixture <> "drive '" <> servirtium.base_url(rec) <> "' && echo OK") |> should.equal("OK\n")
  servirtium.close(rec) |> should.equal(servirtium.Closed)
  shell(fixture <> "check '" <> tape <> "' && echo OK") |> should.equal("OK\n")
  let replay = servirtium.playback_with_secrets(tape, fn(token) {
    Some("pw-" <> string.lowercase(string.replace(token, "_PASSWORD", "")) <> "&secret")
  })
  shell(fixture <> "drive '" <> servirtium.base_url(replay) <> "' && echo OK") |> should.equal("OK\n")
  servirtium.assert_no_mismatches(replay) |> should.equal(Ok(Nil))
  servirtium.close(replay) |> should.equal(servirtium.Closed)
  let _ = shell("rm -r '" <> directory <> "'")
}

@external(erlang, "servirtium_json_upstream", "start")
fn json_upstream_start(body: String) -> Int
@external(erlang, "servirtium_json_upstream", "stop")
fn json_upstream_stop(port: Int) -> Nil

// Stable ordering: (a) sort_json_keys + pretty_json writes sorted, pretty JSON;
// (b) sort_json_keys without pretty_json is refused when the tape is written.
pub fn stable_order_test() {
  let directory = "/tmp/vcr-stable-gleam-" <> from_charlist(getpid())
  let _ = shell("mkdir -p '" <> directory <> "'")
  let port = json_upstream_start("{\"b\":1,\"a\":{\"z\":2,\"y\":3}}")
  let upstream = "http://127.0.0.1:" <> int.to_string(port)

  let sorted = directory <> "/sorted.md"
  let rec = servirtium.record(sorted, upstream)
  servirtium.set_sort_json_keys(rec, True)
  servirtium.get_sort_json_keys(rec) |> should.be_true()
  servirtium.set_pretty_json(rec, 2)
  let _ = servirtium.curl(servirtium.base_url(rec) <> "/data")
  servirtium.close(rec) |> should.equal(servirtium.Closed)
  shell("cat '" <> sorted <> "'")
  |> string.contains("\"a\": {\n    \"y\": 3,\n    \"z\": 2\n  },\n  \"b\": 1")
  |> should.be_true()

  let refused = servirtium.record(directory <> "/refused.md", upstream)
  servirtium.set_sort_json_keys(refused, True)
  let _ = servirtium.curl(servirtium.base_url(refused) <> "/data")
  case servirtium.close(refused) {
    servirtium.CloseError(msg) ->
      msg |> string.contains("sort_json_keys needs pretty_json") |> should.be_true()
    servirtium.Closed -> panic as "expected sort_json_keys without pretty_json to be refused"
  }

  let probe = servirtium.record(directory <> "/probe.md", "http://127.0.0.1:1")
  servirtium.sort_header_value(probe, "") |> should.be_error()
  servirtium.set_sort_response_headers(probe, True)
  servirtium.get_sort_response_headers(probe) |> should.be_true()
  servirtium.clear_stable_order(probe)
  servirtium.get_sort_response_headers(probe) |> should.be_false()
  let _ = servirtium.close(probe)
  json_upstream_stop(port)
  let _ = shell("rm -r '" <> directory <> "'")
}

// Playback range: skip the first interaction, serve a later one; a record
// handle refuses a range.
pub fn playback_range_test() {
  let vcr = servirtium.playback("tapes/range.md")
  servirtium.get_playback_range_from(vcr) |> should.equal(-1)
  servirtium.set_playback_range(vcr, 1, -1) |> should.equal(Ok(Nil))
  servirtium.get_playback_range_from(vcr) |> should.equal(1)
  servirtium.get_playback_range_to(vcr) |> should.equal(2)
  servirtium.curl(servirtium.base_url(vcr) <> "/step/second")
  |> trim_trailing_newlines()
  |> should.equal("second-body")
  servirtium.last_index(vcr) |> should.equal(1)
  servirtium.set_playback_range(vcr, 9, -1) |> should.be_error()
  servirtium.clear_playback_range(vcr)
  servirtium.get_playback_range_from(vcr) |> should.equal(-1)
  let _ = servirtium.close(vcr)

  let rec = servirtium.record("/tmp/vcr-range-refused-gleam-" <> from_charlist(getpid()) <> ".md", "http://127.0.0.1:1")
  servirtium.set_playback_range(rec, 0, -1) |> should.be_error()
  let _ = servirtium.close(rec)
}

// Volatile values (docs/volatile-values.md), conformance checks 1-5.
fn volatile_driver(mode: String, vcr: servirtium.Vcr) -> Nil {
  shell("../target/test-tools/volatile_fixture " <> mode <> " '" <> servirtium.base_url(vcr) <> "' 2>&1 && echo DRIVER_OK")
  |> string.ends_with("DRIVER_OK\n")
  |> should.be_true()
}

pub fn volatile_values_test() {
  let tapes = "../core_tests/volatile/"
  // 1: rules in the tape only
  let s1 = servirtium.playback_with(tapes <> "wcf.md", [servirtium.PrettyXml(2)])
  volatile_driver("wcf", s1)
  servirtium.volatile_report(s1) |> string.contains("binding: {{messageId-1}} = ") |> should.be_true()
  servirtium.close(s1) |> should.equal(servirtium.Closed)
  // 2: a profile file
  let s2 = servirtium.playback_with(tapes <> "wcf_plain.md", [
    servirtium.PrettyXml(2),
    servirtium.VolatileProfile(absname(tapes <> "profile.md")),
  ])
  volatile_driver("wcf", s2)
  servirtium.close(s2) |> should.equal(servirtium.Closed)
  // 3: rules in code
  let s3 = servirtium.playback_with(tapes <> "wcf_plain.md", [
    servirtium.PrettyXml(2),
    servirtium.VolatileRule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>"),
    servirtium.VolatileRule("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/"),
    servirtium.VolatileRule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;"),
    servirtium.VolatileRule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>"),
  ])
  volatile_driver("wcf", s3)
  servirtium.close(s3) |> should.equal(servirtium.Closed)
  // 4: markers
  let s4 = servirtium.playback_with(tapes <> "wcf_dollar.md", [
    servirtium.PrettyXml(2),
    servirtium.VolatileMarkers(servirtium.DollarCurly),
  ])
  volatile_driver("wcf", s4)
  servirtium.close(s4) |> should.equal(servirtium.Closed)
  panic_message(fn() { servirtium.playback_with(tapes <> "wcf_dollar.md", [servirtium.PrettyXml(2)]) })
  |> string.contains("DollarCurly")
  |> should.be_true()
  // 5: correlated rules in the tape, then a mismatch names the token
  let s5 = servirtium.playback(tapes <> "cases.md")
  volatile_driver("cases", s5)
  servirtium.reset_cursor(s5)
  volatile_driver("cases-mismatch", s5)
  servirtium.last_error_with(s5, False) |> string.contains("{{caseId-1}} = 42") |> should.be_true()
  let _ = servirtium.last_error_with(s5, True)
  servirtium.close(s5) |> should.equal(servirtium.Closed)
  // 6: bind
  panic_message(fn() { servirtium.playback(tapes <> "cases_recorded.md") })
  |> string.contains("caseId")
  |> should.be_true()
  let s6 = servirtium.playback_with(tapes <> "cases_recorded.md", [servirtium.Bind("caseId", "42")])
  volatile_driver("cases", s6)
  servirtium.close(s6) |> should.equal(servirtium.Closed)
  // 7: errors fail the start with the core's message
  panic_message(fn() {
    servirtium.playback_with(tapes <> "cases.md", [servirtium.VolatileRule("request body", "no placeholder")])
  })
  |> string.contains("needs at least one placeholder")
  |> should.be_true()
  let conflict = panic_message(fn() {
    servirtium.playback_with(tapes <> "cases.md", [servirtium.VolatileRule("response body", "\"caseId\":\"{{id}}\"")])
  })
  conflict |> string.contains("conflicts with") |> should.be_true()
  conflict |> string.contains("(tape)") |> should.be_true()
  panic_message(fn() {
    servirtium.playback_with(tapes <> "cases.md", [servirtium.VolatileRuleOfKind("x", "a {{b}}", "regex")])
  })
  |> string.length
  |> fn(n) { n > 0 }
  |> should.be_true()
}
