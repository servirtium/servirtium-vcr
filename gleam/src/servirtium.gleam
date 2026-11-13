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
//// Aether `core/vcr.ae` libservirtium_vcr. This module only drives the control surface
//// through the C NIF (`servirtium_nif`, the Erlang binding's C NIF, reused
//// over the BEAM). Gleam `String`s are Erlang binaries on the Erlang target,
//// which is exactly the term type the NIF takes and returns.

// ---- raw NIF surface (FFI to the servirtium_nif Erlang module) -------------
// The opaque server handle is a NIF resource reference (the `Handle` type
// below); open_* always returns one, open_error says whether it opened, and
// destroy frees it (idempotent). String args/results are Erlang binaries ==
// Gleam String.

import servirtium_result
import gleam/list
import gleam/option.{type Option, None, Some}

/// Opaque reference to a VCR living in the NIF.
pub type Handle

@external(erlang, "servirtium_nif", "open_error")
fn nif_open_error(handle: Handle) -> String

@external(erlang, "servirtium_nif", "destroy")
fn nif_destroy(handle: Handle) -> a

@external(erlang, "servirtium_nif", "open_playback")
fn nif_open_playback(label: String, tape: String, host: String, port: Int) -> Handle

@external(erlang, "servirtium_nif", "open_record")
fn nif_open_record(
  label: String,
  tape: String,
  upstream: String,
  host: String,
  port: Int,
) -> Handle

@external(erlang, "servirtium_nif", "start")
fn nif_start(handle: Handle) -> Int

@external(erlang, "servirtium_nif", "stop")
fn nif_stop(handle: Handle) -> a

@external(erlang, "servirtium_nif", "stop_and_flush")
fn nif_stop_and_flush(handle: Handle, tape: String) -> String

@external(erlang, "servirtium_nif", "base_url")
fn nif_base_url(handle: Handle, host: String) -> String

@external(erlang, "servirtium_nif", "port")
fn nif_port(handle: Handle) -> Int

@external(erlang, "servirtium_nif", "tape_length")
fn nif_tape_length(handle: Handle) -> Int

@external(erlang, "servirtium_nif", "last_error")
fn nif_last_error(handle: Handle) -> String

@external(erlang, "servirtium_nif", "last_kind")
fn nif_last_kind(handle: Handle) -> Int

@external(erlang, "servirtium_nif", "last_index")
fn nif_last_index(handle: Handle) -> Int

// ---- public types ----------------------------------------------------------

/// Mode a running server was opened in.
pub type Mode {
  Playback
  Record
}

/// A running VCR server. Treat it as an opaque token.
pub opaque type Vcr {
  Vcr(handle: Handle, host: String, mode: Mode, tape: String, secret_redactor: Option(fn(String, SecretRequest) -> Option(String)))
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
  playback_open(tape, host, None, [])
}

/// Closed choice of marker style for placeholders and tokens.
pub type Markers {
  /// `{{name}}` (the default)
  Mustache
  /// `${name}`
  DollarCurly
  /// `[[name]]`
  Wikilink
}

/// A setting applied after the open and before the server starts.
pub type StartOption {
  /// XML layout: indent 1..16.
  PrettyXml(Int)
  /// Marker style; applied before any rule, whatever its place in the list.
  VolatileMarkers(Markers)
  /// A volatile rule (docs/volatile-values.md): scope and a template pattern
  /// with `{{name}}` placeholders. Repeatable.
  VolatileRule(scope: String, pattern: String)
  /// As `VolatileRule`, with a kind ("template" or "regex").
  VolatileRuleOfKind(scope: String, pattern: String, kind: String)
  /// Attach a real value to a token (`caseId` or `{{caseId-1}}`).
  Bind(name_or_token: String, value: String)
  /// A profile file of rules. Repeatable.
  VolatileProfile(path: String)
}

/// As `playback`, with options applied before the server starts. A bad
/// option panics with the core's message ("servirtium: playback start
/// failed: ...").
pub fn playback_with(tape: String, options: List(StartOption)) -> Vcr {
  playback_open(tape, "127.0.0.1", None, options)
}

/// As `record`, with options applied before the server starts.
pub fn record_with(tape: String, upstream: String, options: List(StartOption)) -> Vcr {
  record_open(tape, upstream, "127.0.0.1", options)
}

@external(erlang, "servirtium_nif", "volatile_rule")
fn nif_volatile_rule(handle: Handle, scope: String, kind: String, pattern: String) -> String
@external(erlang, "servirtium_nif", "volatile_bind")
fn nif_volatile_bind(handle: Handle, name_or_token: String, value: String) -> String
@external(erlang, "servirtium_nif", "volatile_profile")
fn nif_volatile_profile(handle: Handle, path: String) -> String
@external(erlang, "servirtium_nif", "set_volatile_markers")
fn nif_set_volatile_markers(handle: Handle, style: Int) -> String
@external(erlang, "servirtium_nif", "volatile_report")
fn nif_volatile_report(handle: Handle) -> String
@external(erlang, "servirtium_nif", "reset_cursor")
fn nif_reset_cursor(handle: Handle) -> a

fn is_markers(option: StartOption) -> Bool {
  case option {
    VolatileMarkers(_) -> True
    _ -> False
  }
}

fn markers_int(style: Markers) -> Int {
  case style {
    Mustache -> 0
    DollarCurly -> 1
    Wikilink -> 2
  }
}

fn apply_options(handle: Handle, options: List(StartOption), what: String) -> Nil {
  let #(markers, rest) = list.partition(options, is_markers)
  apply_in_order(handle, list.append(markers, rest), what)
}

fn apply_in_order(handle: Handle, options: List(StartOption), what: String) -> Nil {
  case options {
    [] -> Nil
    [option, ..rest] -> {
      let failure = case option {
        PrettyXml(indent) -> {
          let _ = nif_set_pretty_xml(handle, indent)
          ""
        }
        VolatileMarkers(style) -> nif_set_volatile_markers(handle, markers_int(style))
        VolatileRule(scope, pattern) -> nif_volatile_rule(handle, scope, "template", pattern)
        VolatileRuleOfKind(scope, pattern, kind) -> nif_volatile_rule(handle, scope, kind, pattern)
        Bind(name_or_token, value) -> nif_volatile_bind(handle, name_or_token, value)
        VolatileProfile(path) -> nif_volatile_profile(handle, path)
      }
      case failure {
        "" -> apply_in_order(handle, rest, what)
        message -> {
          let _ = nif_destroy(handle)
          panic as { "servirtium: " <> what <> " start failed: " <> message }
        }
      }
    }
  }
}

/// The volatile rules in force, the token bindings made so far and any shape
/// warnings, one per line (docs/volatile-values.md).
pub fn volatile_report(vcr: Vcr) -> String {
  nif_volatile_report(vcr.handle)
}

/// Rewind replay to interaction 0 and clear the last-* diagnostics.
pub fn reset_cursor(vcr: Vcr) -> Nil {
  let _ = nif_reset_cursor(vcr.handle)
  Nil
}

pub type SecretRequest {
  SecretRequest(method: String, path: String, location: String, format: String, field_path: String, interaction: Int)
}
@external(erlang, "servirtium_nif", "secret_stage_gleam")
fn stage_redactor(handle: Handle, callback: fn(String, SecretRequest) -> Option(String), resolving: Bool) -> Nil
@external(erlang, "servirtium_nif", "secret_stage_gleam")
fn stage_resolver(handle: Handle, callback: fn(String) -> Option(String), resolving: Bool) -> Nil

pub fn secret_redactor(vcr: Vcr, callback: fn(String, SecretRequest) -> Option(String)) -> Vcr {
  Vcr(..vcr, secret_redactor: Some(callback))
}
pub fn playback_with_secrets(tape: String, callback: fn(String) -> Option(String)) -> Vcr {
  playback_open(tape, "127.0.0.1", Some(callback), [])
}
fn playback_open(tape: String, host: String, resolver: Option(fn(String) -> Option(String)), options: List(StartOption)) -> Vcr {
  let handle = nif_open_playback("", tape, host, 0)
  check_open(handle, "playback")
  apply_options(handle, options, "playback")
  case resolver { Some(callback) -> stage_resolver(handle, callback, True) None -> Nil }
  case nif_start(handle) {
    rc if rc < 0 -> {
      let detail = nif_last_error(handle)
      let _ = nif_stop(handle)
      let _ = nif_destroy(handle)
      panic as { "servirtium: playback start failed: " <> detail }
    }
    _ -> Vcr(handle: handle, host: host, mode: Playback, tape: tape, secret_redactor: None)
  }
}

// An open always yields a handle; a failed one is dead and carries its reason.
fn check_open(handle: Handle, what: String) -> Nil {
  case nif_open_error(handle) {
    "" -> Nil
    reason -> {
      let _ = nif_destroy(handle)
      panic as { "servirtium: " <> what <> " open failed: " <> reason }
    }
  }
}

/// Record: forward each request to `upstream`, capture the exchange, and write
/// the tape to `tape` on `close`. Binds an OS-chosen free port on 127.0.0.1.
pub fn record(tape: String, upstream: String) -> Vcr {
  record_on(tape, upstream, "127.0.0.1")
}

/// As `record`, but bind a specific host.
pub fn record_on(tape: String, upstream: String, host: String) -> Vcr {
  record_open(tape, upstream, host, [])
}

fn record_open(tape: String, upstream: String, host: String, options: List(StartOption)) -> Vcr {
  let handle = nif_open_record("", tape, upstream, host, 0)
  check_open(handle, "record")
  apply_options(handle, options, "record")
  case nif_start(handle) {
    rc if rc < 0 -> {
      let detail = nif_last_error(handle)
      let _ = nif_stop(handle)
      let _ = nif_destroy(handle)
      panic as { "servirtium: record start failed: " <> detail }
    }
    _ -> Vcr(handle: handle, host: host, mode: Record, tape: tape, secret_redactor: None)
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
/// disk, then frees the VCR; returns CloseError(msg) on a record-flush problem.
/// A second close is a harmless no-op. Read diagnostics before closing.
pub fn close(vcr: Vcr) -> Closed {
  case vcr.mode {
    Playback -> {
      let _ = nif_stop(vcr.handle)
      let _ = nif_destroy(vcr.handle)
      Closed
    }
    Record -> {
      case vcr.secret_redactor { Some(callback) -> stage_redactor(vcr.handle, callback, False) None -> Nil }
      let flushed = nif_stop_and_flush(vcr.handle, vcr.tape)
      let _ = nif_destroy(vcr.handle)
      case flushed {
        "" -> Closed
        msg -> CloseError(msg)
      }
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

@external(erlang, "servirtium_nif", "redact_header")
fn nif_redact_header(handle: Handle, field: Int, name: String, replacement: String) -> String

/// Redact a named request value when writing the tape.
pub fn redact_header(vcr: Vcr, name: String) -> Result(Nil, String) {
  redact_header_with(vcr, name, "[REDACTED]", 3)
}
pub fn redact_header_with(vcr: Vcr, name: String, replacement: String, field: Int) -> Result(Nil, String) {
  servirtium_result.from_error(nif_redact_header(vcr.handle, field, name, replacement))
}
@external(erlang, "servirtium_nif", "redact_query_param")
fn nif_redact_query_param(handle: Handle, field: Int, name: String, replacement: String) -> String

/// Redact a named request value when writing the tape.
pub fn redact_query_param(vcr: Vcr, name: String) -> Result(Nil, String) {
  redact_query_param_with(vcr, name, "[REDACTED]", 1)
}
pub fn redact_query_param_with(vcr: Vcr, name: String, replacement: String, field: Int) -> Result(Nil, String) {
  servirtium_result.from_error(nif_redact_query_param(vcr.handle, field, name, replacement))
}
@external(erlang, "servirtium_nif", "redact_json_field")
fn nif_redact_json_field(handle: Handle, field: Int, name: String, replacement: String) -> String

/// Redact a named request value when writing the tape.
pub fn redact_json_field(vcr: Vcr, name: String) -> Result(Nil, String) {
  redact_json_field_with(vcr, name, "[REDACTED]", 4)
}
pub fn redact_json_field_with(vcr: Vcr, name: String, replacement: String, field: Int) -> Result(Nil, String) {
  servirtium_result.from_error(nif_redact_json_field(vcr.handle, field, name, replacement))
}

@external(erlang, "servirtium_nif", "add_license_notice")
fn nif_add_license_notice(handle: Handle, text: String) -> String

/// Record mode: write `text` under "## LICENSE NOTICE" at the top of each
/// tape; playback ignores it.
pub fn add_license_notice(vcr: Vcr, text: String) -> Result(Nil, String) {
  servirtium_result.from_error(nif_add_license_notice(vcr.handle, text))
}

@external(erlang, "servirtium_nif", "set_pretty_json")
fn nif_set_pretty_json(handle: Handle, indent: Int) -> Nil

/// Shared JSON layout setting: format both recorded bodies and match JSON requests.
pub fn set_pretty_json(vcr: Vcr, indent: Int) -> Nil {
  let _ = nif_set_pretty_json(vcr.handle, indent)
  Nil
}

@external(erlang, "servirtium_nif", "remove_transport_headers")
fn nif_remove_transport_headers(handle: Handle) -> String

/// Header preset (opt-in): drop Host, Connection, Content-Length, the other
/// hop-by-hop headers and the request's Accept-Encoding.
pub fn remove_transport_headers(vcr: Vcr) -> Result(Nil, String) {
  servirtium_result.from_error(nif_remove_transport_headers(vcr.handle))
}

@external(erlang, "servirtium_nif", "remove_cloud_headers")
fn nif_remove_cloud_headers(handle: Handle, vendor: String) -> String

/// Header preset (opt-in): drop a vendor's CDN / load-balancer headers.
/// `vendor` is "aws", "azure", "cloudflare", "fastly" or "gcp".
pub fn remove_cloud_headers(vcr: Vcr, vendor: String) -> Result(Nil, String) {
  servirtium_result.from_error(nif_remove_cloud_headers(vcr.handle, vendor))
}

@external(erlang, "servirtium_nif", "redact_credentials")
fn nif_redact_credentials(handle: Handle) -> String

/// Header preset (opt-in): Authorization, cookies, X-Api-Key and X-Auth-Token
/// become numbered tokens.
pub fn redact_credentials(vcr: Vcr) -> Result(Nil, String) {
  servirtium_result.from_error(nif_redact_credentials(vcr.handle))
}

@external(erlang, "servirtium_nif", "redact_credential_header")
fn nif_redact_credential_header(handle: Handle, name: String) -> String

/// One more credential header, its whole value a token named after it.
pub fn redact_credential_header(vcr: Vcr, name: String) -> Result(Nil, String) {
  servirtium_result.from_error(nif_redact_credential_header(vcr.handle, name))
}

@external(erlang, "servirtium_nif", "set_upstream_cafile")
fn nif_set_upstream_cafile(handle: Handle, path: String) -> String

/// Record mode: verify an https upstream against this PEM CA file.
pub fn set_upstream_cafile(vcr: Vcr, path: String) -> Result(Nil, String) {
  servirtium_result.from_error(nif_set_upstream_cafile(vcr.handle, path))
}

// ---- stable ordering (record side, opt-in) ---------------------------------
// Off by default; the tape is byte-exact without them. Sorted JSON is only
// written pretty-printed: a record with `set_sort_json_keys`/`sort_json_array*`
// but without `set_pretty_json` is refused when the tape is written
// (`close` returns CloseError("sort_json_keys needs pretty_json: ...")).

@external(erlang, "servirtium_nif", "set_sort_json_keys")
fn nif_set_sort_json_keys(handle: Handle, on: Int) -> Nil

@external(erlang, "servirtium_nif", "get_sort_json_keys")
fn nif_get_sort_json_keys(handle: Handle) -> Int

/// Sort JSON object keys at every depth in recorded JSON response bodies.
pub fn set_sort_json_keys(vcr: Vcr, on: Bool) -> Nil {
  let _ = nif_set_sort_json_keys(vcr.handle, bool_int(on))
  Nil
}

pub fn get_sort_json_keys(vcr: Vcr) -> Bool {
  nif_get_sort_json_keys(vcr.handle) != 0
}

@external(erlang, "servirtium_nif", "sort_json_array")
fn nif_sort_json_array(handle: Handle, path: String, by: String) -> String

/// Sort the JSON response arrays `path` selects (JSON pointer, "*" for one
/// segment, "" the root array, or a bare member name) by member `by`
/// ("" = each element's canonical JSON). Error carries the refusal reason.
pub fn sort_json_array(vcr: Vcr, path: String, by: String) -> Result(Nil, String) {
  servirtium_result.from_error(nif_sort_json_array(vcr.handle, path, by))
}

@external(erlang, "servirtium_nif", "sort_json_array_at")
fn nif_sort_json_array_at(handle: Handle, request: String, path: String, by: String) -> String

/// The same, only for requests whose path (query included) matches the
/// regex `request`.
pub fn sort_json_array_at(vcr: Vcr, request: String, path: String, by: String) -> Result(Nil, String) {
  servirtium_result.from_error(nif_sort_json_array_at(vcr.handle, request, path, by))
}

@external(erlang, "servirtium_nif", "set_sort_response_headers")
fn nif_set_sort_response_headers(handle: Handle, on: Int) -> Nil

@external(erlang, "servirtium_nif", "get_sort_response_headers")
fn nif_get_sort_response_headers(handle: Handle) -> Int

/// Sort response header lines by name (case-insensitive).
pub fn set_sort_response_headers(vcr: Vcr, on: Bool) -> Nil {
  let _ = nif_set_sort_response_headers(vcr.handle, bool_int(on))
  Nil
}

pub fn get_sort_response_headers(vcr: Vcr) -> Bool {
  nif_get_sort_response_headers(vcr.handle) != 0
}

@external(erlang, "servirtium_nif", "sort_header_value")
fn nif_sort_header_value(handle: Handle, name: String) -> String

/// Sort one response header's comma-separated items ("Allow").
pub fn sort_header_value(vcr: Vcr, name: String) -> Result(Nil, String) {
  servirtium_result.from_error(nif_sort_header_value(vcr.handle, name))
}

@external(erlang, "servirtium_nif", "clear_stable_order")
fn nif_clear_stable_order(handle: Handle) -> Nil

/// Every stable-order rule off.
pub fn clear_stable_order(vcr: Vcr) -> Nil {
  let _ = nif_clear_stable_order(vcr.handle)
  Nil
}

fn bool_int(on: Bool) -> Int {
  case on {
    True -> 1
    False -> 0
  }
}

// ---- playback range (playback only) ----------------------------------------

@external(erlang, "servirtium_nif", "set_playback_range")
fn nif_set_playback_range(handle: Handle, from: Int, to: Int) -> String

@external(erlang, "servirtium_nif", "clear_playback_range")
fn nif_clear_playback_range(handle: Handle) -> Nil

@external(erlang, "servirtium_nif", "get_playback_range_from")
fn nif_get_playback_range_from(handle: Handle) -> Int

@external(erlang, "servirtium_nif", "get_playback_range_to")
fn nif_get_playback_range_to(handle: Handle) -> Int

/// Replay only interactions `from`..`to` (0-based, inclusive, the tape's
/// "## Interaction N" numbers; `to` < 0 = through the last). Error carries the
/// refusal reason, e.g. on a record handle or a range past the tape.
pub fn set_playback_range(vcr: Vcr, from: Int, to: Int) -> Result(Nil, String) {
  servirtium_result.from_error(nif_set_playback_range(vcr.handle, from, to))
}

pub fn clear_playback_range(vcr: Vcr) -> Nil {
  let _ = nif_clear_playback_range(vcr.handle)
  Nil
}

/// The range in force, first and last interaction; -1 when none is set.
pub fn get_playback_range_from(vcr: Vcr) -> Int {
  nif_get_playback_range_from(vcr.handle)
}

pub fn get_playback_range_to(vcr: Vcr) -> Int {
  nif_get_playback_range_to(vcr.handle)
}
@external(erlang, "servirtium_nif", "last_error_ex")
fn nif_last_error_ex(handle: Handle, consume: Int) -> String
@external(erlang, "servirtium_nif", "diagnostics_json")
fn nif_diagnostics_json(handle: Handle, consume: Int) -> String
@external(erlang, "servirtium_nif", "assert_no_mismatches")
fn nif_assert_no_mismatches(handle: Handle) -> String
@external(erlang, "servirtium_nif", "test_context")
fn nif_test_context(handle: Handle, name: String, file: String, line: Int) -> Nil
fn consume_flag(consume: Bool) -> Int { case consume { True -> 1 False -> 0 } }
pub fn last_error_with(vcr: Vcr, consume: Bool) -> String {
  nif_last_error_ex(vcr.handle, consume_flag(consume))
}
pub fn diagnostics_json(vcr: Vcr, consume: Bool) -> String {
  nif_diagnostics_json(vcr.handle, consume_flag(consume))
}
pub fn assert_no_mismatches(vcr: Vcr) -> Result(Nil, String) {
  servirtium_result.from_error(nif_assert_no_mismatches(vcr.handle))
}
pub fn test_context(vcr: Vcr, name: String, file: String, line: Int) -> Nil {
  let _ = nif_test_context(vcr.handle, name, file, line)
  Nil
}

/// Shared XML layout setting: format both recorded bodies and match XML requests.
@external(erlang, "servirtium_nif", "set_pretty_xml")
fn nif_set_pretty_xml(handle: Handle, indent: Int) -> Nil
pub fn set_pretty_xml(vcr: Vcr, indent: Int) -> Nil {
  let _ = nif_set_pretty_xml(vcr.handle, indent)
  Nil
}
