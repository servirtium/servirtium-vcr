//// Smoke test for the Gleam Servirtium binding: start a playback VCR over a
//// one-interaction tape (GET /ok -> 200 text/plain "ok-body"), drive it with
//// curl, and assert the body + a clean match (last_kind == Ok).
////
//// Gleam reuses the Erlang binding's C NIF over the BEAM, so this exercises
//// the same Aether VCR core engine as every other binding.
////
//// NOTE on the runner: this dev box's Erlang/OTP 27 ships a *stripped* eunit
//// (only its headers, no compiled .beam), so gleeunit's eunit-based
//// `gleeunit.main()` can't run here. We still use `gleeunit/should` for the
//// assertions (it raises on mismatch, no eunit), but `main` invokes the test
//// directly and `halt`s 0/1 so `gleam test` reports pass/fail correctly.

import gleeunit/should
import servirtium

@external(erlang, "erlang", "halt")
fn halt(code: Int) -> a

@external(erlang, "io", "format")
fn io_format(fmt: String, args: List(String)) -> a

pub fn main() {
  playback_single_get_test()
  let _ = io_format("PASS: gleam servirtium playback~n", [])
  halt(0)
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
