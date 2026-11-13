// Servirtium.swift — the Swift binding over libservirtium_vcr.
//
// Servirtium records an HTTP conversation to a human-readable markdown tape
// once, then replays it forever — offline, deterministic, git-diffable. Point
// your system-under-test at `vcr.baseUrl` and drive it with plain HTTP.
//
//   let vcr = try Vcr.playback("tapes/single_get.md")
//   defer { vcr.close() }
//   let body = try String(contentsOf: URL(string: vcr.baseUrl + "/ok")!)
//   XCTAssertEqual(vcr.lastKind, .ok)
//
// Swift calls libservirtium_vcr's flat C ABI (aether_vcr_embed_*) DIRECTLY through the
// CServirtiumVcr module map — no glue .c, no second copy of the marshalling
// rules to drift from core/embed.ae.
//
// This file carries NO record/replay logic: markdown parse/emit, the HTTP
// server, request matching, redactions and drift detection all live in the
// in-repo pure-Aether core/vcr.ae libservirtium_vcr. What Swift adds is a `withPlayback`
// scoped form that always closes, typed enums, `throws` instead of NULL/error
// strings, and automatic caller-owned-string handling.
import CServirtiumVcr
import Foundation

/// Token markers for volatile values; set BEFORE any rule.
public enum VolatileMarkers: Int32 {
    case mustache = 0
    case dollarCurly = 1
    case wikilink = 2
}

/// Field selector for redactions / unredactions / header removals. Values
/// mirror the FIELD_* constants in core/vcr.ae.
public enum Field: Int32 {
    case path = 1
    case responseBody = 2
    case requestHeaders = 3
    case requestBody = 4
    case responseHeaders = 5
}

/// Per-dispatch outcome. Anything but `.ok` is a mismatch. Values mirror the
/// VCR_KIND_* constants in core/vcr.ae.
public enum Outcome: Int32 {
    case ok = 0
    case pathOrMethodDiff = 1
    case headerMissing = 2
    case headerValueDiff = 3
    case headerUnexpected = 4
    case tapeExhausted = 5
    case bodyDiff = 6
    case recordError = 7
}

/// Thrown when a server can't be opened/started, or when a config call or a
/// record flush reports an error.
public struct VcrError: Error, CustomStringConvertible {
    public let message: String
    public init(_ message: String) { self.message = message }
    public var description: String { "VcrError: \(message)" }
}

/// Adopt an owned char* from the ABI as a Swift String and release it — the
/// caller-owned-string discipline, discharged in exactly one place.
private func take(_ ptr: UnsafeMutablePointer<CChar>?) -> String {
    guard let ptr = ptr else { return "" }
    let s = String(cString: ptr)
    aether_vcr_embed_free_string(ptr)
    return s
}

/// A config call's owned error string; empty means OK, anything else throws.
private func check(_ ptr: UnsafeMutablePointer<CChar>?, _ what: String) throws {
    let err = take(ptr)
    if !err.isEmpty { throw VcrError("\(what): \(err)") }
}

/// A running VCR server. One handle per instance, so N servers can run
/// concurrently in one process — one per port.
public struct SecretRequest {
    public let method, path, location, format, fieldPath: String
    public let interaction: Int32
}
public typealias SecretRedactor = (String, SecretRequest) throws -> String?
public typealias SecretResolver = (String) throws -> String?

private func secretStage(_ handle: UnsafeMutableRawPointer, redactor: SecretRedactor? = nil,
                         resolver: SecretResolver? = nil) throws {
    func get(_ part: Int32) -> String { take(aether_vcr_embed_secret_get(handle, part)) }
    do {
        try check(aether_vcr_embed_secret_begin(handle, resolver == nil ? 0 : 1), "secretBegin")
        while true {
            let next = aether_vcr_embed_secret_next(handle)
            if next < 0 { throw VcrError("Secret staging aborted") }
            if next == 0 { break }
            let value: String?
            if let resolver = resolver { value = try resolver(get(2)) }
            else { value = try redactor!(get(1), SecretRequest(method: get(3), path: get(4),
                location: get(5), format: get(6), fieldPath: get(7),
                interaction: aether_vcr_embed_secret_interaction(handle))) }
            if let value = value { try check(aether_vcr_embed_secret_apply(handle, value), "secretApply") }
        }
        try check(aether_vcr_embed_secret_finish(handle), "secretFinish")
    } catch {
        aether_vcr_embed_secret_abort(handle)
        aether_vcr_embed_stop(handle)
        throw error
    }
}

public final class Vcr {
    private let handle: UnsafeMutableRawPointer
    private let host: String
    private let tape: String?
    private var closed = false
    private var redactor: SecretRedactor?

    @discardableResult public func secretRedactor(_ callback: @escaping SecretRedactor) -> Vcr {
        redactor = callback; return self
    }

    private init(handle: UnsafeMutableRawPointer, host: String, tape: String?) {
        self.handle = handle
        self.host = host
        self.tape = tape
    }

    // ---- lifecycle -------------------------------------------------------

    /// Replay a Servirtium markdown tape from disk.
    public static func playback(_ tapePath: String, host: String = "127.0.0.1",
                                port: Int32 = 0, secretResolver: SecretResolver? = nil) throws -> Vcr {
        let h = aether_vcr_embed_open_playback("", tapePath, host, port)
        return Vcr(handle: try started(h, "playback open failed: \(tapePath)", resolver: secretResolver),
                   host: host, tape: tapePath)
    }

    /// Open a playback VCR WITHOUT starting it: give rules and `bind` first, then
    /// `start()` (a response token no request binds needs a bind before start).
    public static func playbackUnstarted(_ tapePath: String, host: String = "127.0.0.1",
                                         port: Int32 = 0) throws -> Vcr {
        let h = aether_vcr_embed_open_playback("", tapePath, host, port)
        guard let handle = h else { throw VcrError("playback open failed: \(tapePath): out of memory") }
        let openErr = take(aether_vcr_embed_open_error(handle))
        if !openErr.isEmpty {
            aether_vcr_embed_destroy(handle)
            throw VcrError("playback open failed: \(tapePath): \(openErr)")
        }
        return Vcr(handle: handle, host: host, tape: tapePath)
    }

    /// Start an unstarted VCR; throws VcrError with the core's reason (the
    /// tape-wide volatile checks run here). The VCR is still to be closed.
    public func start() throws {
        if aether_vcr_embed_start(handle) < 0 {
            let detail = take(aether_vcr_embed_last_error(handle))
            throw VcrError(detail.isEmpty ? "start failed" : "start: \(detail)")
        }
    }

    /// Replay a tape fetched from a URL rather than the filesystem.
    public static func playbackUrl(_ tapeUrl: String, host: String = "127.0.0.1",
                                   port: Int32 = 0) throws -> Vcr {
        let h = aether_vcr_embed_open_playback_url("", tapeUrl, host, port)
        return Vcr(handle: try started(h, "playback-url open failed: \(tapeUrl)"),
                   host: host, tape: nil)
    }

    /// Record: forward each request to `upstreamBase`, return the live response
    /// to the SUT, and capture the exchange. Call `flush()` to write the tape —
    /// a plain `close()` discards the recording.
    public static func record(_ tapePath: String, upstreamBase: String,
                              host: String = "127.0.0.1", port: Int32 = 0) throws -> Vcr {
        let h = aether_vcr_embed_open_record("", tapePath, upstreamBase, host, port)
        return Vcr(handle: try started(h, "record open failed: \(tapePath)"),
                   host: host, tape: tapePath)
    }

    /// Replay `tapePath` for the duration of `body`, closing on every path
    /// including a thrown error.
    public static func withPlayback<T>(_ tapePath: String, host: String = "127.0.0.1",
                                       port: Int32 = 0,
                                       _ body: (Vcr) throws -> T) throws -> T {
        let vcr = try playback(tapePath, host: host, port: port)
        defer { vcr.close() }
        return try body(vcr)
    }

    /// Record to `tapePath` for the duration of `body`, then flush. If `body`
    /// throws, the recording is DISCARDED — a failed test shouldn't overwrite a
    /// good tape.
    public static func withRecord<T>(_ tapePath: String, upstreamBase: String,
                                     host: String = "127.0.0.1", port: Int32 = 0,
                                     _ body: (Vcr) throws -> T) throws -> T {
        let vcr = try record(tapePath, upstreamBase: upstreamBase, host: host, port: port)
        do {
            let result = try body(vcr)
            try vcr.flush()
            return result
        } catch {
            vcr.close()
            throw error
        }
    }

    /// Check an opened handle (every open returns one; a failed open is a dead
    /// handle carrying its own reason), start it, and destroy it before throwing
    /// rather than handing back a dead server. Shared by every open above.
    private static func started(_ handle: UnsafeMutableRawPointer?,
                                _ failure: String,
                                resolver: SecretResolver? = nil) throws -> UnsafeMutableRawPointer {
        guard let handle = handle else { throw VcrError("\(failure): out of memory") }
        let openErr = take(aether_vcr_embed_open_error(handle))
        if !openErr.isEmpty {
            aether_vcr_embed_destroy(handle)
            throw VcrError("\(failure): \(openErr)")
        }
        do {
            if let resolver = resolver { try secretStage(handle, resolver: resolver) }
        } catch {
            aether_vcr_embed_destroy(handle)
            throw error
        }
        if aether_vcr_embed_start(handle) < 0 {
            let detail = take(aether_vcr_embed_last_error(handle))
            aether_vcr_embed_destroy(handle)
            throw VcrError(detail.isEmpty ? failure : "\(failure): \(detail)")
        }
        return handle
    }

    // ---- introspection ---------------------------------------------------

    /// Base URL the SUT should target, e.g. "http://127.0.0.1:54213".
    public var baseUrl: String { take(aether_vcr_embed_base_url(handle, host)) }

    /// The OS-resolved port the server is listening on.
    public var port: Int32 { aether_vcr_embed_port(handle) }

    /// Tape entry count (playback), or interactions captured so far (record).
    public var tapeLength: Int32 { aether_vcr_embed_tape_length(handle) }

    /// Rewind the playback cursor to the top of the tape.
    public func resetCursor() { aether_vcr_embed_reset_cursor(handle) }

    // ---- diagnostics -----------------------------------------------------

    /// Outcome of the most-recent dispatch. `.ok` means a clean match.
    public var lastKind: Outcome {
        Outcome(rawValue: aether_vcr_embed_last_kind(handle)) ?? .ok
    }

    /// True when the most-recent dispatch matched cleanly.
    public var matchedCleanly: Bool { lastKind == .ok }

    /// Most-recent dispatch diagnostic; "" when none flagged.
    public var lastError: String { take(aether_vcr_embed_last_error(handle)) }

    /// Tape index of the most-recent matched interaction, or -1.
    public var lastIndex: Int32 { aether_vcr_embed_last_index(handle) }

    public func readLastError(consume: Bool = true) -> String { take(aether_vcr_embed_last_error_ex(handle, consume ? 1 : 0)) }
    public func diagnosticsJson(consume: Bool = false) -> String { take(aether_vcr_embed_diagnostics_json(handle, consume ? 1 : 0)) }
    public func assertNoMismatches() throws { try check(aether_vcr_embed_assert_no_mismatches(handle), "assertNoMismatches") }
    public func testContext(_ name: String, sourceFile: String = "", sourceLine: Int32 = 0) {
        aether_vcr_embed_test_context(handle, name, sourceFile, sourceLine)
    }

    public func clearLastError() { aether_vcr_embed_clear_last_error(handle) }

    // ---- config (each throws if libservirtium_vcr rejects it) -------------------

    public func redact(_ field: Field, _ pattern: String, _ replacement: String) throws {
        try check(aether_vcr_embed_redact(handle, field.rawValue, pattern, replacement),
                  "redact")
    }

    public func redactHeader(_ name: String, replacement: String = "[REDACTED]", field: Field = .requestHeaders) throws {
        try check(aether_vcr_embed_redact_header(handle, field.rawValue, name, replacement), "redactHeader")
    }

    public func redactQueryParam(_ name: String, replacement: String = "[REDACTED]", field: Field = .path) throws {
        try check(aether_vcr_embed_redact_query_param(handle, field.rawValue, name, replacement), "redactQueryParam")
    }

    public func redactJsonField(_ name: String, replacement: String = "[REDACTED]", field: Field = .requestBody) throws {
        try check(aether_vcr_embed_redact_json_field(handle, field.rawValue, name, replacement), "redactJsonField")
    }

    public func unredact(_ field: Field, _ pattern: String, _ replacement: String) throws {
        try check(aether_vcr_embed_unredact(handle, field.rawValue, pattern, replacement),
                  "unredact")
    }

    /// Volatile values (docs/volatile-values.md). A rule names a scope and a
    /// pattern holding {{name}} placeholders; the tape holds tokens {{name-N}}.
    /// Each throws VcrError with the core's message.
    public func volatileMarkers(_ style: VolatileMarkers) throws {
        try check(aether_vcr_embed_set_volatile_markers(handle, style.rawValue), "volatileMarkers")
    }

    /// `kind` is "template" (default) or "regex".
    public func volatileRule(_ scope: String, _ pattern: String, kind: String = "template") throws {
        try check(aether_vcr_embed_volatile_rule(handle, scope, kind, pattern), "volatileRule")
    }

    /// Attach a real value to a placeholder name or a token.
    public func bind(_ nameOrToken: String, _ value: String) throws {
        try check(aether_vcr_embed_volatile_bind(handle, nameOrToken, value), "bind")
    }

    /// Load the rules of a profile file.
    public func volatileProfile(_ path: String) throws {
        try check(aether_vcr_embed_volatile_profile(handle, path), "volatileProfile")
    }

    /// The rules in force, the token bindings seen and any warnings.
    public func volatileReport() -> String { take(aether_vcr_embed_volatile_report(handle)) }

    /// Collapse every match to one constant (variable-cardinality noise — dates).
    public func redactWholeTape(_ pattern: String, _ replacement: String) throws {
        try check(aether_vcr_embed_redact_whole_tape(handle, pattern, replacement),
                  "redactWholeTape")
    }

    public func removeHeader(_ field: Field, _ name: String) throws {
        try check(aether_vcr_embed_remove_header(handle, field.rawValue, name),
                  "removeHeader")
    }

    /// Require this request header's live value to equal the recorded one. Also
    /// suppresses the automatic full-block header match unless strict headers
    /// are explicitly on — surgical, not all-or-nothing.
    public func matchHeader(_ name: String) throws {
        try check(aether_vcr_embed_match_header(handle, name), "matchHeader")
    }

    public func note(_ title: String, _ body: String) throws {
        try check(aether_vcr_embed_note(handle, title, body), "note")
    }

    public func staticContent(_ mountPath: String, _ fsDir: String) throws {
        try check(aether_vcr_embed_static_content(handle, mountPath, fsDir),
                  "staticContent")
    }

    public func untaped(_ path: String) throws {
        try check(aether_vcr_embed_untaped(handle, path), "untaped")
    }

    public func strictIgnoreCommonHeaders() {
        // The core returns an owned (always empty) char*; free it like every other string call.
        _ = take(aether_vcr_embed_strict_ignore_common_headers(handle))
    }

    /// Drop the per-request volatile headers modern clients inject on every call
    /// (traceparent, tracestate, Request-Id, X-Request-Id, X-Correlation-Id,
    /// baggage) from both sides before matching — the companion to
    /// strictIgnoreCommonHeaders for tracing / correlation noise.
    public func ignoreVolatileHeaders() {
        _ = take(aether_vcr_embed_ignore_volatile_headers(handle))
    }

    // Opt-in header presets: each registers ordinary rules, listed under the
    // preset's name in the recording-rules footer. Each throws on failure.

    /// Leave the connection-describing headers (Host, Connection, Content-Length
    /// and the other hop-by-hop headers, Accept-Encoding) out of the recording.
    public func removeTransportHeaders() throws {
        try check(aether_vcr_embed_remove_transport_headers(handle), "removeTransportHeaders")
    }

    /// Drop a cloud vendor's per-request headers; vendor is one of "aws",
    /// "azure", "cloudflare", "fastly", "gcp".
    public func removeCloudHeaders(_ vendor: String) throws {
        try check(aether_vcr_embed_remove_cloud_headers(handle, vendor), "removeCloudHeaders")
    }

    /// Redact the common credential headers (Authorization, Cookie, Set-Cookie,
    /// X-Api-Key, X-Auth-Token, ...) as numbered tokens. Register on the
    /// playback handle too, as with every rule.
    public func redactCredentials() throws {
        try check(aether_vcr_embed_redact_credentials(handle), "redactCredentials")
    }

    /// One more credential header with the same treatment as redactCredentials.
    public func redactCredentialHeader(_ name: String) throws {
        try check(aether_vcr_embed_redact_credential_header(handle, name), "redactCredentialHeader")
    }

    /// Record mode: verify an https upstream against this PEM CA file.
    public func setUpstreamCafile(_ path: String) throws {
        try check(aether_vcr_embed_set_upstream_cafile(handle, path), "setUpstreamCafile")
    }

    /// Record mode: put text under "## LICENSE NOTICE" at the top of each tape;
    /// playback ignores it.
    public func addLicenseNotice(_ text: String) throws {
        try check(aether_vcr_embed_add_license_notice(handle, text), "addLicenseNotice")
    }

    public func setStrictHeaders(_ on: Bool = true) {
        aether_vcr_embed_set_strict_headers(handle, on ? 1 : 0)
    }

    /// Opt-in: a request body that differs byte-for-byte gets a second chance
    /// at semantic JSON equality (key order + whitespace ignored, array order
    /// significant). A non-JSON body always falls back to the byte-exact verdict.
    public func setMatchJsonBody(_ on: Bool = true) {
        aether_vcr_embed_set_match_json_body(handle, on ? 1 : 0)
    }

    /// Opt-in: the SOAP/XML twin of setMatchJsonBody — a byte-differing request
    /// body gets a second chance at semantic XML equality (attribute order +
    /// insignificant whitespace ignored; element order significant). A non-XML
    /// body always falls back to the byte-exact verdict.
    public func setMatchXmlBody(_ on: Bool = true) {
        aether_vcr_embed_set_match_xml_body(handle, on ? 1 : 0)
    }

    /// Opt-in: search ALL interactions for one that fits and replay it WITHOUT
    /// consuming it, so repeated and out-of-order requests both match.
    public func setMatchMultiple(_ on: Bool = true) {
        aether_vcr_embed_set_match_multiple(handle, on ? 1 : 0)
    }

    public func indentCodeBlocks() { aether_vcr_embed_indent_code_blocks(handle) }
    public func emphasizeHttpVerbs() { aether_vcr_embed_emphasize_http_verbs(handle) }
    /// Shared XML layout setting: format recorded request and response bodies; match XML requests on playback (indent 1..16; 0 = off). Falls back to byte-exact if the body isn't well-formed XML.
    public func prettyXml(_ indent: Int32 = 2) { aether_vcr_embed_set_pretty_xml(handle, indent) }
    /// Format recorded JSON request and response bodies, keeping key order and number spellings; playback matches JSON request layout.
    public func prettyJson(_ indent: Int32 = 2) { aether_vcr_embed_set_pretty_json(handle, indent) }
    /// Current pretty-JSON indent (0 = off).
    public var prettyJsonIndent: Int32 { aether_vcr_embed_get_pretty_json(handle) }

    // Opt-in stable order (record side; all off by default, the tape is
    // byte-exact without them). Sorted JSON is only written pretty-printed:
    // with a JSON sort rule and no prettyJson(), flush() throws
    // "sort_json_keys needs pretty_json: ..." and writes nothing.

    /// Sort JSON object keys at every depth in recorded JSON response bodies.
    public func setSortJsonKeys(_ on: Bool = true) {
        aether_vcr_embed_set_sort_json_keys(handle, on ? 1 : 0)
    }
    /// Whether JSON object keys are sorted (setSortJsonKeys).
    public var sortJsonKeys: Bool { aether_vcr_embed_get_sort_json_keys(handle) != 0 }

    /// Sort the JSON response arrays `path` selects (JSON pointer from the root,
    /// "*" for one segment, "" the root array, or a bare member name) by member
    /// `by` ("" = each element's canonical JSON). Throws if the rule is refused.
    public func sortJsonArray(_ path: String, by: String = "") throws {
        try check(aether_vcr_embed_sort_json_array(handle, path, by), "sortJsonArray")
    }

    /// The same, only for requests whose path (query included) matches the
    /// regex `request`. Throws if the rule is refused.
    public func sortJsonArray(at request: String, _ path: String, by: String = "") throws {
        try check(aether_vcr_embed_sort_json_array_at(handle, request, path, by), "sortJsonArrayAt")
    }

    /// Sort response header lines by name (case-insensitive).
    public func setSortResponseHeaders(_ on: Bool = true) {
        aether_vcr_embed_set_sort_response_headers(handle, on ? 1 : 0)
    }
    /// Whether response header lines are sorted (setSortResponseHeaders).
    public var sortResponseHeaders: Bool { aether_vcr_embed_get_sort_response_headers(handle) != 0 }

    /// Sort one response header's comma-separated items ("Allow"). Throws if refused.
    public func sortHeaderValue(_ name: String) throws {
        try check(aether_vcr_embed_sort_header_value(handle, name), "sortHeaderValue")
    }

    /// Turn every stable-order rule off.
    public func clearStableOrder() { aether_vcr_embed_clear_stable_order(handle) }

    // Playback range (playback only).

    /// Replay just interactions `from`...`to` of the tape (the numbers of its
    /// "## Interaction N" headings, 0-based, inclusive; `to < 0` = through the
    /// last). Throws on a record handle (a recording always captures the whole
    /// conversation) or a bad range. Call after opening, before traffic.
    public func setPlaybackRange(from: Int32, to: Int32 = -1) throws {
        try check(aether_vcr_embed_set_playback_range(handle, from, to), "setPlaybackRange")
    }
    /// Replay the whole tape again.
    public func clearPlaybackRange() { aether_vcr_embed_clear_playback_range(handle) }
    /// The range's start, or -1 when none is set.
    public var playbackRangeFrom: Int32 { aether_vcr_embed_get_playback_range_from(handle) }
    /// The range's end, or -1 when none is set.
    public var playbackRangeTo: Int32 { aether_vcr_embed_get_playback_range_to(handle) }

    public func clearRedactions() { aether_vcr_embed_clear_redactions(handle) }
    public func clearUnredactions() { aether_vcr_embed_clear_unredactions(handle) }
    public func clearHeaderRemovals() { aether_vcr_embed_clear_header_removals(handle) }
    public func clearMatchHeaders() { aether_vcr_embed_clear_match_headers(handle) }
    public func clearStaticContent() { aether_vcr_embed_clear_static_content(handle) }
    public func clearUntaped() { aether_vcr_embed_clear_untaped(handle) }
    public func clearFormatOptions() { aether_vcr_embed_clear_format_options(handle) }

    // ---- shutdown --------------------------------------------------------

    /// Stop the server, discarding any recording, and free the native handle
    /// (read diagnostics before this). Idempotent.
    public func close() {
        if closed { return }
        closed = true
        aether_vcr_embed_stop(handle)
        aether_vcr_embed_destroy(handle)
    }

    deinit { close() }

    /// Stop and write the captured tape. `tapePath` defaults to the one the
    /// recorder was opened with. Idempotent.
    public func flush(_ tapePath: String? = nil) throws {
        try flush(tapePath) { aether_vcr_embed_stop_and_flush($0, $1) }
    }

    /// As `flush`, but fails if the fresh recording differs from what is
    /// already on disk (drift detection for a checked-in tape).
    public func flushFailIfChanged(_ tapePath: String? = nil) throws {
        try flush(tapePath) { aether_vcr_embed_stop_and_flush_fail_if_changed($0, $1) }
    }

    /// As `flush`, but only CHECKS against an existing tape instead of
    /// overwriting it when one is already present.
    public func flushOrCheck(_ tapePath: String? = nil) throws {
        try flush(tapePath) { aether_vcr_embed_stop_and_flush_or_check($0, $1) }
    }

    /// Stop the server and DROP the captured recording WITHOUT writing a tape.
    /// Call on a test's failure path so a half-finished recording never becomes
    /// a tape that later replays as the truth. Idempotent.
    public func discard(_ tapePath: String? = nil) {
        if closed { return }
        closed = true
        _ = take(aether_vcr_embed_discard(handle, tapePath ?? tape ?? ""))
        aether_vcr_embed_destroy(handle)
    }

    /// The three flush variants differ only in the ABI call, so they share this.
    private func flush(
        _ tapePath: String?,
        _ call: (UnsafeMutableRawPointer, String) -> UnsafeMutablePointer<CChar>?
    ) throws {
        if closed { return }
        closed = true
        defer { aether_vcr_embed_destroy(handle) }
        if let redactor = redactor { try secretStage(handle, redactor: redactor) }
        try check(call(handle, tapePath ?? tape ?? ""), "flush")
    }
}

// ---- converters (no server handle) --------------------------------------

/// HAR 1.2 capture -> Servirtium markdown tape.
public func harImport(_ harPath: String, _ tapePath: String) throws {
    try check(aether_vcr_embed_har_import(harPath, tapePath), "harImport")
}

/// Servirtium markdown tape -> HAR 1.2 JSON.
public func harExport(_ tapePath: String, _ harPath: String) throws {
    try check(aether_vcr_embed_har_export(tapePath, harPath), "harExport")
}
