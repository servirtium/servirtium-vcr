// Servirtium.swift — the Swift binding over the shared Aether VCR engine.
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
// Swift calls the engine's flat C ABI (aether_vcr_embed_*) DIRECTLY through the
// CServirtiumVcr module map — no glue .c, no second copy of the marshalling
// rules to drift from core/embed.ae.
//
// This file carries NO record/replay logic: markdown parse/emit, the HTTP
// server, request matching, redactions and drift detection all live in the
// in-repo pure-Aether core/vcr.ae engine. What Swift adds is a `withPlayback`
// scoped form that always closes, typed enums, `throws` instead of NULL/error
// strings, and automatic caller-owned-string handling.
import CServirtiumVcr
import Foundation

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
public final class Vcr {
    private let handle: UnsafeMutableRawPointer
    private let host: String
    private let tape: String?
    private var closed = false

    private init(handle: UnsafeMutableRawPointer, host: String, tape: String?) {
        self.handle = handle
        self.host = host
        self.tape = tape
    }

    // ---- lifecycle -------------------------------------------------------

    /// Replay a Servirtium markdown tape from disk.
    public static func playback(_ tapePath: String, host: String = "127.0.0.1",
                                port: Int32 = 0) throws -> Vcr {
        let h = aether_vcr_embed_open_playback("", tapePath, host, port)
        return Vcr(handle: try started(h, "playback open failed: \(tapePath)"),
                   host: host, tape: tapePath)
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

    /// Start an opened handle, cleaning up and throwing rather than handing back
    /// a dead server. Shared by every open above.
    private static func started(_ handle: UnsafeMutableRawPointer?,
                                _ failure: String) throws -> UnsafeMutableRawPointer {
        guard let handle = handle else { throw VcrError(failure) }
        if aether_vcr_embed_start(handle) < 0 {
            let detail = take(aether_vcr_embed_last_error(handle))
            aether_vcr_embed_stop(handle)
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

    public func clearLastError() { aether_vcr_embed_clear_last_error(handle) }

    // ---- config (each throws if the engine rejects it) -------------------

    public func redact(_ field: Field, _ pattern: String, _ replacement: String) throws {
        try check(aether_vcr_embed_redact(handle, field.rawValue, pattern, replacement),
                  "redact")
    }

    public func unredact(_ field: Field, _ pattern: String, _ replacement: String) throws {
        try check(aether_vcr_embed_unredact(handle, field.rawValue, pattern, replacement),
                  "unredact")
    }

    /// Correlate every match into {{name-N}} tokens (things that recur and must
    /// stay consistent across the whole tape — UUIDs, CSRF tokens).
    public func normalizeWholeTape(_ pattern: String, _ name: String) throws {
        try check(aether_vcr_embed_normalize_whole_tape(handle, pattern, name),
                  "normalizeWholeTape")
    }

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
        aether_vcr_embed_strict_ignore_common_headers(handle)
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

    /// Opt-in: search ALL interactions for one that fits and replay it WITHOUT
    /// consuming it, so repeated and out-of-order requests both match.
    public func setMatchMultiple(_ on: Bool = true) {
        aether_vcr_embed_set_match_multiple(handle, on ? 1 : 0)
    }

    public func indentCodeBlocks() { aether_vcr_embed_indent_code_blocks(handle) }
    public func emphasizeHttpVerbs() { aether_vcr_embed_emphasize_http_verbs(handle) }
    public func clearRedactions() { aether_vcr_embed_clear_redactions(handle) }
    public func clearUnredactions() { aether_vcr_embed_clear_unredactions(handle) }
    public func clearNormalizations() { aether_vcr_embed_clear_normalizations(handle) }
    public func clearHeaderRemovals() { aether_vcr_embed_clear_header_removals(handle) }
    public func clearMatchHeaders() { aether_vcr_embed_clear_match_headers(handle) }
    public func clearStaticContent() { aether_vcr_embed_clear_static_content(handle) }
    public func clearUntaped() { aether_vcr_embed_clear_untaped(handle) }
    public func clearFormatOptions() { aether_vcr_embed_clear_format_options(handle) }

    // ---- shutdown --------------------------------------------------------

    /// Stop the server, discarding any recording. Idempotent.
    public func close() {
        if closed { return }
        closed = true
        aether_vcr_embed_stop(handle)
    }

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

    /// The three flush variants differ only in the ABI call, so they share this.
    private func flush(
        _ tapePath: String?,
        _ call: (UnsafeMutableRawPointer, String) -> UnsafeMutablePointer<CChar>?
    ) throws {
        if closed { return }
        closed = true
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
