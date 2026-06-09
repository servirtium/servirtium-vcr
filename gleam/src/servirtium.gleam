//// servirtium — idiomatic Gleam wrapper over the Aether VCR core.
////
//// Record/replay HTTP service tests in the Servirtium markdown tape format.
//// Point your system-under-test at `base_url`. In playback it replays a
//// recorded markdown tape (no network); in record it forwards to the real
//// upstream, returns the live response, and writes the tape on close.
////
////   let vcr = servirtium.playback("tapes/single_get.md")
////   let url = servirtium.base_url(vcr)
////   let body = servirtium.curl(url <> "/ok")
////   let assert servirtium.Ok = servirtium.last_kind(vcr)
////   servirtium.close(vcr)
////
//// All record/replay machinery — markdown parse/emit, the HTTP server,
//// request matching, redactions, drift detection, etc. — lives in the in-repo
//// Aether `core/vcr.ae` engine. This module only drives the control surface
//// through the C NIF (`servirtium_nif`, the Erlang binding's C NIF, reused
//// over the BEAM). Gleam `String`s are Erlang binaries on the Erlang target,
//// which is exactly the term type the NIF takes and returns.

// ---- raw NIF surface (FFI to the servirtium_nif Erlang module) -------------
// The opaque server handle is a 64-bit integer (uintptr_t); 0 from open_*
// means failure. String args/results are Erlang binaries == Gleam String.

@external(erlang, "servirtium_nif", "open_playback")
fn nif_open_playback(label: String, tape: String, host: String, port: Int) -> Int

@external(erlang, "servirtium_nif", "open_record")
fn nif_open_record(
  label: String,
  tape: String,
  upstream: String,
  host: String,
  port: Int,
) -> Int

@external(erlang, "servirtium_nif", "start")
fn nif_start(handle: Int) -> Int

@external(erlang, "servirtium_nif", "stop")
fn nif_stop(handle: Int) -> a

@external(erlang, "servirtium_nif", "stop_and_flush")
fn nif_stop_and_flush(handle: Int, tape: String) -> String

@external(erlang, "servirtium_nif", "base_url")
fn nif_base_url(handle: Int, host: String) -> String

@external(erlang, "servirtium_nif", "port")
fn nif_port(handle: Int) -> Int

@external(erlang, "servirtium_nif", "tape_length")
fn nif_tape_length(handle: Int) -> Int

@external(erlang, "servirtium_nif", "last_error")
fn nif_last_error(handle: Int) -> String

@external(erlang, "servirtium_nif", "last_kind")
fn nif_last_kind(handle: Int) -> Int

@external(erlang, "servirtium_nif", "last_index")
fn nif_last_index(handle: Int) -> Int

// ---- public types ----------------------------------------------------------

/// Mode a running server was opened in.
pub type Mode {
  Playback
  Record
}

/// A running VCR server. Treat it as an opaque token.
pub opaque type Vcr {
  Vcr(handle: Int, host: String, mode: Mode, tape: String)
}

/// Outcome of the most-recent dispatch (mirrors VCR_KIND_* in core/vcr.ae).
pub type Outcome {
  Ok
  PathOrMethodDiff
  HeaderMissing
  HeaderValueDiff
  HeaderUnexpected
  TapeExhausted
  BodyDiff
  RecordError
}

fn outcome_of(n: Int) -> Outcome {
  case n {
    0 -> Ok
    1 -> PathOrMethodDiff
    2 -> HeaderMissing
    3 -> HeaderValueDiff
    4 -> HeaderUnexpected
    5 -> TapeExhausted
    6 -> BodyDiff
    7 -> RecordError
    _ -> Ok
  }
}

// ---- public entry points ---------------------------------------------------

/// Replay a Servirtium markdown tape from disk, binding an OS-chosen free port
/// on 127.0.0.1. Panics if the server can't open/start.
pub fn playback(tape: String) -> Vcr {
  playback_on(tape, "127.0.0.1")
}

/// As `playback`, but bind a specific host.
pub fn playback_on(tape: String, host: String) -> Vcr {
  let handle = nif_open_playback("", tape, host, 0)
  case handle {
    0 -> panic as "servirtium: playback open failed"
    _ -> Nil
  }
  case nif_start(handle) {
    rc if rc < 0 -> {
      let detail = nif_last_error(handle)
      let _ = nif_stop(handle)
      panic as { "servirtium: playback start failed: " <> detail }
    }
    _ -> Vcr(handle: handle, host: host, mode: Playback, tape: tape)
  }
}

/// Record: forward each request to `upstream`, capture the exchange, and write
/// the tape to `tape` on `close`. Binds an OS-chosen free port on 127.0.0.1.
pub fn record(tape: String, upstream: String) -> Vcr {
  record_on(tape, upstream, "127.0.0.1")
}

/// As `record`, but bind a specific host.
pub fn record_on(tape: String, upstream: String, host: String) -> Vcr {
  let handle = nif_open_record("", tape, upstream, host, 0)
  case handle {
    0 -> panic as "servirtium: record open failed"
    _ -> Nil
  }
  case nif_start(handle) {
    rc if rc < 0 -> {
      let detail = nif_last_error(handle)
      let _ = nif_stop(handle)
      panic as { "servirtium: record start failed: " <> detail }
    }
    _ -> Vcr(handle: handle, host: host, mode: Record, tape: tape)
  }
}

// ---- running-server members ------------------------------------------------

/// Base URL the SUT should target, e.g. "http://127.0.0.1:54213".
pub fn base_url(vcr: Vcr) -> String {
  nif_base_url(vcr.handle, vcr.host)
}

/// The OS-resolved port the server is listening on.
pub fn port(vcr: Vcr) -> Int {
  nif_port(vcr.handle)
}

/// Tape entry count (playback), or interactions captured so far (record).
pub fn tape_length(vcr: Vcr) -> Int {
  nif_tape_length(vcr.handle)
}

/// Outcome of the most-recent dispatch (Ok, BodyDiff, ...).
pub fn last_kind(vcr: Vcr) -> Outcome {
  outcome_of(nif_last_kind(vcr.handle))
}

/// Most-recent dispatch diagnostic; "" when none flagged.
pub fn last_error(vcr: Vcr) -> String {
  nif_last_error(vcr.handle)
}

/// Tape index of the most-recent matched interaction, or -1.
pub fn last_index(vcr: Vcr) -> Int {
  nif_last_index(vcr.handle)
}

/// Result of `close`. (We avoid the prelude `Result`/`Ok` here because this
/// module's `Outcome.Ok` variant shadows the prelude `Ok` constructor.)
pub type Closed {
  Closed
  CloseError(String)
}

/// Stop the server. In record mode this also flushes the captured tape to
/// disk; returns CloseError(msg) on a record-flush problem. Close once.
pub fn close(vcr: Vcr) -> Closed {
  case vcr.mode {
    Playback -> {
      let _ = nif_stop(vcr.handle)
      Closed
    }
    Record ->
      case nif_stop_and_flush(vcr.handle, vcr.tape) {
        "" -> Closed
        msg -> CloseError(msg)
      }
  }
}

// ---- test helper -----------------------------------------------------------

@external(erlang, "erlang", "binary_to_list")
fn binary_to_charlist(bin: String) -> Charlist

@external(erlang, "erlang", "list_to_binary")
fn charlist_to_binary(cl: Charlist) -> String

@external(erlang, "os", "cmd")
fn os_cmd(cmd: Charlist) -> Charlist

/// An Erlang string (list of char codes). os:cmd takes/returns one.
type Charlist

/// Shell out to `curl -s <url>` and return the response body as a String.
/// (os:cmd works in charlists; we bridge to/from Gleam String == binary.)
pub fn curl(url: String) -> String {
  charlist_to_binary(os_cmd(binary_to_charlist("curl -s " <> url)))
}
