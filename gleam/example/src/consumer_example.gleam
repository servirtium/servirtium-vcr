//// Third-party consumer example for the Gleam binding: imports the
//// servirtium_gleam package (path dep) and replays the canonical tape. The
//// engine .so loads through the shared servirtium_nif app's $ORIGIN-linked NIF
//// — no SERVIRTIUM_VCR_LIB. `let assert` panics (non-zero exit) on mismatch.

import gleam/io
import gleam/string
import servirtium

pub fn main() {
  let vcr = servirtium.playback("tapes/single_get.md")

  let body =
    servirtium.curl(servirtium.base_url(vcr) <> "/ok")
    |> string.trim

  let assert True = body == "ok-body"
  let assert servirtium.Ok = servirtium.last_kind(vcr)
  let _ = servirtium.close(vcr)

  io.println(
    "PASS[discovery]: consumer replayed the canonical tape from the servirtium_gleam package",
  )
}
