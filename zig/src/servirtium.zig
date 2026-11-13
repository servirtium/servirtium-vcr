//! Zig binding over the native VCR library's C ABI (`aether_vcr_embed_*`,
//! exported by `core/native/libservirtium_vcr.so`). 1:1 with the Aether side.
//!
//! Per-listener contract: N independent VCR servers can run concurrently in
//! one process, each keyed by its own opaque handle; every config / diagnostic
//! / lifecycle call takes the handle. Lifecycle is open -> configure(handle)
//! -> start. Returned `char*` values are caller-owned and NUL-terminated; copy
//! them into a Zig slice and free them via `aether_vcr_embed_free_string`.
//!
//! Unlike the Rust binding (which dlopens via libloading), this binding links
//! `libservirtium_vcr.so` at build time and calls the exports directly.
//!
//! This file exposes two layers:
//!   * the raw `extern "c"` C ABI surface, and
//!   * idiomatic, allocator-aware wrappers: `Playback`/`Record` builders that
//!     mirror the Go binding's fluent API, returning a running `Server`.
//! `Vcr` (the original thin handle wrapper) is retained for low-level use.

const std = @import("std");

/// Opaque server handle from the native side. `null` only when out of memory;
/// a failed open is a dead handle carrying its reason (`open_error`), and every
/// handle must be `destroy`ed exactly once.
pub const Handle = ?*anyopaque;

// ---------------------------------------------------------------------------
// Raw C ABI surface. Caller-owned `[*c]u8` returns must be freed with
// `aether_vcr_embed_free_string`. The field-id enum below names the `c_int`
// field arguments used by redact/unredact/remove_header.
// ---------------------------------------------------------------------------

pub extern "c" fn aether_vcr_embed_open_playback(label: [*c]const u8, tape_path: [*c]const u8, host: [*c]const u8, port: c_int) Handle;
pub extern "c" fn aether_vcr_embed_open_playback_url(label: [*c]const u8, tape_path: [*c]const u8, host: [*c]const u8, port: c_int) Handle;
pub extern "c" fn aether_vcr_embed_open_record(label: [*c]const u8, tape_path: [*c]const u8, upstream_base: [*c]const u8, host: [*c]const u8, port: c_int) Handle;

pub extern "c" fn aether_vcr_embed_secret_begin(handle: Handle, resolving: c_int) [*c]u8;
pub extern "c" fn aether_vcr_embed_secret_next(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_secret_get(handle: Handle, part: c_int) [*c]u8;
pub extern "c" fn aether_vcr_embed_secret_interaction(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_secret_apply(handle: Handle, value: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_secret_finish(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_secret_abort(handle: Handle) void;

pub extern "c" fn aether_vcr_embed_open_error(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_destroy(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_start(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_stop(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_stop_and_flush(handle: Handle, tape_path: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_stop_and_flush_fail_if_changed(handle: Handle, tape_path: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_stop_and_flush_or_check(handle: Handle, tape_path: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_discard(handle: Handle, tape_path: [*c]const u8) [*c]u8;

pub extern "c" fn aether_vcr_embed_port(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_base_url(handle: Handle, host: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_tape_length(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_reset_cursor(handle: Handle) void;

pub extern "c" fn aether_vcr_embed_last_error(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_last_error_ex(handle: Handle, consume: c_int) [*c]u8;
pub extern "c" fn aether_vcr_embed_diagnostics_json(handle: Handle, consume: c_int) [*c]u8;
pub extern "c" fn aether_vcr_embed_assert_no_mismatches(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_test_context(handle: Handle, name: [*c]const u8, file: [*c]const u8, line: c_int) void;
pub extern "c" fn aether_vcr_embed_last_kind(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_last_index(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_clear_last_error(handle: Handle) void;

pub extern "c" fn aether_vcr_embed_redact(handle: Handle, field: c_int, pat: [*c]const u8, repl: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_redact_header(handle: Handle, field: c_int, pat: [*c]const u8, repl: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_redact_query_param(handle: Handle, field: c_int, pat: [*c]const u8, repl: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_redact_json_field(handle: Handle, field: c_int, pat: [*c]const u8, repl: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_volatile_rule(handle: Handle, scope: [*c]const u8, kind: [*c]const u8, pattern: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_volatile_bind(handle: Handle, name_or_token: [*c]const u8, value: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_volatile_profile(handle: Handle, path: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_set_volatile_markers(handle: Handle, style: c_int) [*c]u8;
pub extern "c" fn aether_vcr_embed_volatile_report(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_redact_whole_tape(handle: Handle, pat: [*c]const u8, repl: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_unredact(handle: Handle, field: c_int, pat: [*c]const u8, repl: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_remove_header(handle: Handle, field: c_int, name: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_strict_ignore_common_headers(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_ignore_volatile_headers(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_note(handle: Handle, a: [*c]const u8, b: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_static_content(handle: Handle, mount: [*c]const u8, dir: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_untaped(handle: Handle, path: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_set_strict_headers(handle: Handle, on: c_int) void;
pub extern "c" fn aether_vcr_embed_set_match_json_body(handle: Handle, on: c_int) void;
pub extern "c" fn aether_vcr_embed_set_match_xml_body(handle: Handle, on: c_int) void;
pub extern "c" fn aether_vcr_embed_set_match_multiple(handle: Handle, on: c_int) void;
pub extern "c" fn aether_vcr_embed_match_header(handle: Handle, name: [*c]const u8) void;
pub extern "c" fn aether_vcr_embed_indent_code_blocks(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_emphasize_http_verbs(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_set_pretty_xml(handle: Handle, indent: c_int) void;
pub extern "c" fn aether_vcr_embed_set_pretty_json(handle: Handle, indent: c_int) void;
pub extern "c" fn aether_vcr_embed_get_pretty_json(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_remove_transport_headers(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_remove_cloud_headers(handle: Handle, vendor: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_redact_credentials(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_redact_credential_header(handle: Handle, name: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_set_upstream_cafile(handle: Handle, path: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_add_license_notice(handle: Handle, text: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_set_sort_json_keys(handle: Handle, on: c_int) void;
pub extern "c" fn aether_vcr_embed_get_sort_json_keys(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_sort_json_array(handle: Handle, path: [*c]const u8, by: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_sort_json_array_at(handle: Handle, request: [*c]const u8, path: [*c]const u8, by: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_set_sort_response_headers(handle: Handle, on: c_int) void;
pub extern "c" fn aether_vcr_embed_get_sort_response_headers(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_sort_header_value(handle: Handle, name: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_clear_stable_order(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_set_playback_range(handle: Handle, from: c_int, to: c_int) [*c]u8;
pub extern "c" fn aether_vcr_embed_clear_playback_range(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_get_playback_range_from(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_get_playback_range_to(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_clear_redactions(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_clear_unredactions(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_clear_header_removals(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_clear_static_content(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_clear_untaped(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_clear_format_options(handle: Handle) void;

pub extern "c" fn aether_vcr_embed_set_tls(handle: Handle, cert: [*c]const u8, key: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_set_tls_pem(handle: Handle, cert_pem: [*c]const u8, key_pem: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_last_tls_protocol(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_substitute(handle: Handle, field: c_int, pat: [*c]const u8, repl: [*c]const u8, required: c_int) [*c]u8;
pub extern "c" fn aether_vcr_embed_clear_substitutions(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_assert_all_consumed(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_assert_all_redactions_used(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_assert_no_unfilled_placeholders(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_free_string(s: [*c]u8) void;

/// Mutation target field ids (used by redact / unredact / remove_header).
pub const Field = enum(c_int) {
    path = 1,
    response_body = 2,
    request_headers = 3,
    request_body = 4,
    response_headers = 5,
    /// Substitution-only: response body AND headers in one rule.
    response = 6,
};

/// Diagnostic outcome of the last interaction. Mirrors the VCR_KIND_*
/// constants on the Aether side; `ok` (0) means a clean match.
pub const Outcome = enum(c_int) {
    ok = 0,
    path_or_method_diff = 1,
    header_missing = 2,
    header_value_diff = 3,
    header_unexpected = 4,
    tape_exhausted = 5,
    body_diff = 6,
    record_error = 7,
    _,
};

pub const Error = error{
    OpenFailed,
    StartFailed,
    /// A mutation setter (redact/unredact/remove_header/note/...) returned a
    /// non-empty error message, or a record-mode flush reported drift.
    VcrError,
};

/// Copy a caller-owned native `char*` into an allocator-owned slice and free
/// the native buffer per the ABI's ownership rule. Returns an empty slice for
/// a NULL pointer. Caller frees the returned slice with `allocator.free`.
fn takeString(allocator: std.mem.Allocator, ptr: [*c]u8) ![]u8 {
    if (ptr == null) return allocator.alloc(u8, 0);
    defer aether_vcr_embed_free_string(ptr);
    const span = std.mem.span(@as([*:0]u8, @ptrCast(ptr)));
    return allocator.dupe(u8, span);
}

/// Turn a mutation setter's `char*` result into a Zig error. The native side
/// returns "" on success, else an error message. Frees the native buffer.
fn checkErr(allocator: std.mem.Allocator, ptr: [*c]u8) !void {
    const msg = try takeString(allocator, ptr);
    defer allocator.free(msg);
    if (msg.len != 0) return Error.VcrError;
}

/// Optional per-call sink for WHY an open/start failed (the Zig error alone
/// carries no message). Pass a pointer to `Playback.startDiagnosed` /
/// `Record.startDiagnosed` / `Vcr.playback`; on `error.OpenFailed` or
/// `error.StartFailed` `message` holds the native reason. Release with `deinit`.
pub const OpenDiagnostics = struct {
    message: []u8 = &.{},
    allocator: ?std.mem.Allocator = null,

    pub fn deinit(self: *OpenDiagnostics) void {
        if (self.allocator) |a| a.free(self.message);
        self.* = .{};
    }

    fn set(self: *OpenDiagnostics, allocator: std.mem.Allocator, message: []u8) void {
        self.deinit();
        self.* = .{ .message = message, .allocator = allocator };
    }
};

/// Check a fresh open: on a failed open read the reason into `diag`, destroy
/// the dead handle, and return `error.OpenFailed`.
fn checkOpened(allocator: std.mem.Allocator, handle: Handle, diag: ?*OpenDiagnostics) Error!void {
    if (handle == null) return Error.OpenFailed;
    const msg = takeString(allocator, aether_vcr_embed_open_error(handle)) catch {
        aether_vcr_embed_destroy(handle);
        return Error.OpenFailed;
    };
    if (msg.len == 0) {
        allocator.free(msg);
        return;
    }
    if (diag) |d| d.set(allocator, msg) else allocator.free(msg);
    aether_vcr_embed_destroy(handle);
    return Error.OpenFailed;
}

pub const SecretRequest = struct {
    method: []const u8, path: []const u8, location: []const u8,
    format: []const u8, field_path: []const u8, interaction: c_int,
};
pub const SecretRedactor = struct {
    context: ?*anyopaque = null,
    call: *const fn (?*anyopaque, []const u8, SecretRequest) anyerror!?[:0]const u8,
};
pub const SecretResolver = struct {
    context: ?*anyopaque = null,
    call: *const fn (?*anyopaque, []const u8) anyerror!?[:0]const u8,
};
fn secretStage(allocator: std.mem.Allocator, handle: Handle, redactor: ?SecretRedactor, resolver: ?SecretResolver) !void {
    errdefer { aether_vcr_embed_secret_abort(handle); aether_vcr_embed_stop(handle); }
    try checkErr(allocator, aether_vcr_embed_secret_begin(handle, if (resolver != null) 1 else 0));
    while (true) {
        const next = aether_vcr_embed_secret_next(handle);
        if (next < 0) return Error.VcrError;
        if (next == 0) break;
        var arena = std.heap.ArenaAllocator.init(allocator);
        defer arena.deinit();
        const a = arena.allocator();
        const key = try takeString(a, aether_vcr_embed_secret_get(handle, 1));
        const token = try takeString(a, aether_vcr_embed_secret_get(handle, 2));
        const request = SecretRequest{
            .method = try takeString(a, aether_vcr_embed_secret_get(handle, 3)),
            .path = try takeString(a, aether_vcr_embed_secret_get(handle, 4)),
            .location = try takeString(a, aether_vcr_embed_secret_get(handle, 5)),
            .format = try takeString(a, aether_vcr_embed_secret_get(handle, 6)),
            .field_path = try takeString(a, aether_vcr_embed_secret_get(handle, 7)),
            .interaction = aether_vcr_embed_secret_interaction(handle),
        };
        const value = if (resolver) |r| try r.call(r.context, token) else try redactor.?.call(redactor.?.context, key, request);
        if (value) |v| try checkErr(allocator, aether_vcr_embed_secret_apply(handle, v.ptr));
    }
    try checkErr(allocator, aether_vcr_embed_secret_finish(handle));
}

// ===========================================================================
// Low-level handle wrapper (retained for direct use).
// ===========================================================================

/// Idiomatic wrapper around one native VCR server (one server per port).
pub const Vcr = struct {
    handle: Handle,
    allocator: std.mem.Allocator,

    /// Open a playback server replaying `tape_path`. `port` 0 picks a free
    /// port. Returns `error.OpenFailed` (reason in `diag` when given).
    pub fn playback(
        allocator: std.mem.Allocator,
        label: [:0]const u8,
        tape_path: [:0]const u8,
        host: [:0]const u8,
        listen_port: c_int,
        diag: ?*OpenDiagnostics,
    ) Error!Vcr {
        const h = aether_vcr_embed_open_playback(label.ptr, tape_path.ptr, host.ptr, listen_port);
        try checkOpened(allocator, h, diag);
        return .{ .handle = h, .allocator = allocator };
    }

    /// Open a record server: forward to `upstream_base`, return the live
    /// response, and write the tape on `stopAndFlush`.
    pub fn record(
        allocator: std.mem.Allocator,
        label: [:0]const u8,
        tape_path: [:0]const u8,
        upstream_base: [:0]const u8,
        host: [:0]const u8,
        listen_port: c_int,
        diag: ?*OpenDiagnostics,
    ) Error!Vcr {
        const h = aether_vcr_embed_open_record(label.ptr, tape_path.ptr, upstream_base.ptr, host.ptr, listen_port);
        try checkOpened(allocator, h, diag);
        return .{ .handle = h, .allocator = allocator };
    }

    /// Bind the listener and begin serving. `error.StartFailed` on failure.
    pub fn start(self: *Vcr) Error!void {
        if (aether_vcr_embed_start(self.handle) < 0) return Error.StartFailed;
    }

    /// The base URL (e.g. `http://127.0.0.1:54321`) for the given host.
    /// Caller frees the returned slice with `allocator.free`.
    pub fn baseUrl(self: *Vcr, host: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_base_url(self.handle, host.ptr));
    }

    /// The bound port (useful after starting on port 0).
    pub fn port(self: *Vcr) c_int {
        return aether_vcr_embed_port(self.handle);
    }

    /// Diagnostic outcome of the last interaction; `.ok` means a clean match.
    pub fn lastKind(self: *Vcr) Outcome {
        return @enumFromInt(aether_vcr_embed_last_kind(self.handle));
    }

    /// Human-readable last error. Caller frees with `allocator.free`.
    pub fn readLastError(self: *Vcr, consume: bool) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_last_error_ex(self.handle, @intFromBool(consume)));
    }
    pub fn diagnosticsJson(self: *Vcr, consume: bool) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_diagnostics_json(self.handle, @intFromBool(consume)));
    }
    pub fn assertNoMismatches(self: *Vcr) !void {
        const diagnostic = try takeString(self.allocator, aether_vcr_embed_assert_no_mismatches(self.handle));
        defer self.allocator.free(diagnostic);
        if (diagnostic.len != 0) {
            std.debug.print("{s}\n", .{diagnostic});
            return Error.VcrError;
        }
    }
    pub fn testContext(self: *Vcr, name: [:0]const u8, file: [:0]const u8, line: c_int) void {
        aether_vcr_embed_test_context(self.handle, name.ptr, file.ptr, line);
    }

    pub fn lastError(self: *Vcr) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_last_error(self.handle));
    }

    /// Add a redaction over `field` (replace `pat` -> `repl` on emit).
    pub fn redact(self: *Vcr, field: Field, pat: [:0]const u8, repl: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_redact(self.handle, @intFromEnum(field), pat.ptr, repl.ptr));
    }

    pub fn redactHeader(self: *Vcr, name: [:0]const u8) ![]u8 {
        return self.redactHeaderWith(name, "[REDACTED]", .request_headers);
    }
    pub fn redactHeaderWith(self: *Vcr, name: [:0]const u8, replacement: [:0]const u8, field: Field) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_redact_header(self.handle, @intFromEnum(field), name.ptr, replacement.ptr));
    }

    pub fn redactQueryParam(self: *Vcr, name: [:0]const u8) ![]u8 {
        return self.redactQueryParamWith(name, "[REDACTED]", .path);
    }
    pub fn redactQueryParamWith(self: *Vcr, name: [:0]const u8, replacement: [:0]const u8, field: Field) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_redact_query_param(self.handle, @intFromEnum(field), name.ptr, replacement.ptr));
    }

    pub fn redactJsonField(self: *Vcr, name: [:0]const u8) ![]u8 {
        return self.redactJsonFieldWith(name, "[REDACTED]", .request_body);
    }
    pub fn redactJsonFieldWith(self: *Vcr, name: [:0]const u8, replacement: [:0]const u8, field: Field) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_redact_json_field(self.handle, @intFromEnum(field), name.ptr, replacement.ptr));
    }

    /// A volatile-value rule (docs/volatile-values.md); `kind` is "template"
    /// or "regex". Returns "" or the core's error text. Caller frees.
    pub fn volatileRule(self: *Vcr, scope: [:0]const u8, pattern: [:0]const u8, kind: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_volatile_rule(self.handle, scope.ptr, kind.ptr, pattern.ptr));
    }

    /// Bind a real value to a placeholder name or a token. Caller frees.
    pub fn volatileBind(self: *Vcr, name_or_token: [:0]const u8, value: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_volatile_bind(self.handle, name_or_token.ptr, value.ptr));
    }

    /// Load a volatile-value profile file. Caller frees.
    pub fn volatileProfile(self: *Vcr, path: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_volatile_profile(self.handle, path.ptr));
    }

    /// Choose the marker style (before any rule). Caller frees.
    pub fn volatileMarkers(self: *Vcr, style: VolatileMarkers) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_set_volatile_markers(self.handle, @intFromEnum(style)));
    }

    /// The volatile-value bindings made so far. Caller frees.
    pub fn volatileReport(self: *Vcr) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_volatile_report(self.handle));
    }

    /// Whole-tape redaction: replace `pat` with `repl` across the tape.
    pub fn redactWholeTape(self: *Vcr, pat: [:0]const u8, repl: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_redact_whole_tape(self.handle, pat.ptr, repl.ptr));
    }

    /// Serve `dir` at the URL prefix `mount`, bypassing the tape.
    pub fn staticContent(self: *Vcr, mount: [:0]const u8, dir: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_static_content(self.handle, mount.ptr, dir.ptr));
    }

    /// Leave the connection-describing headers (Host, Connection,
    /// Content-Length and the other hop-by-hop headers, Accept-Encoding) out of
    /// the recording. Returns "" on success, else the error.
    pub fn removeTransportHeaders(self: *Vcr) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_remove_transport_headers(self.handle));
    }

    /// Drop a cloud vendor's per-request headers; `vendor` is one of "aws",
    /// "azure", "cloudflare", "fastly", "gcp".
    pub fn removeCloudHeaders(self: *Vcr, vendor: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_remove_cloud_headers(self.handle, vendor.ptr));
    }

    /// Redact the common credential headers (Authorization, Cookie, Set-Cookie,
    /// X-Api-Key, X-Auth-Token, ...) as numbered tokens.
    pub fn redactCredentials(self: *Vcr) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_redact_credentials(self.handle));
    }

    /// One more credential header with the same treatment as `redactCredentials`.
    pub fn redactCredentialHeader(self: *Vcr, name: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_redact_credential_header(self.handle, name.ptr));
    }

    /// Record mode: verify an https upstream against this PEM CA file.
    pub fn setUpstreamCafile(self: *Vcr, path: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_set_upstream_cafile(self.handle, path.ptr));
    }

    /// Record mode: put `text` under "## LICENSE NOTICE" at the top of each
    /// tape; playback ignores it.
    pub fn addLicenseNotice(self: *Vcr, text: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_add_license_notice(self.handle, text.ptr));
    }

    /// Opt-in stable order (record side; all off by default, the tape is
    /// byte-exact without them). Sorted JSON is only written pretty-printed:
    /// with a JSON sort rule and no `pretty_json`, `stopAndFlush` returns
    /// "sort_json_keys needs pretty_json: ..." and writes nothing.
    /// Sort JSON object keys at every depth in recorded JSON response bodies.
    pub fn setSortJsonKeys(self: *Vcr, on: bool) void {
        aether_vcr_embed_set_sort_json_keys(self.handle, @intFromBool(on));
    }
    pub fn sortJsonKeys(self: *Vcr) bool {
        return aether_vcr_embed_get_sort_json_keys(self.handle) != 0;
    }

    /// Sort the JSON response arrays `path` selects (JSON pointer from the root,
    /// "*" for one segment, "" the root array, or a bare member name) by member
    /// `by` ("" = each element's canonical JSON). Returns "" or the refusal reason.
    pub fn sortJsonArray(self: *Vcr, path: [:0]const u8, by: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_sort_json_array(self.handle, path.ptr, by.ptr));
    }

    /// The same, only for requests whose path (query included) matches the
    /// regex `request`. Returns "" or the refusal reason.
    pub fn sortJsonArrayAt(self: *Vcr, request: [:0]const u8, path: [:0]const u8, by: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_sort_json_array_at(self.handle, request.ptr, path.ptr, by.ptr));
    }

    /// Sort response header lines by name (case-insensitive).
    pub fn setSortResponseHeaders(self: *Vcr, on: bool) void {
        aether_vcr_embed_set_sort_response_headers(self.handle, @intFromBool(on));
    }
    pub fn sortResponseHeaders(self: *Vcr) bool {
        return aether_vcr_embed_get_sort_response_headers(self.handle) != 0;
    }

    /// Sort one response header's comma-separated items ("Allow"). Returns "" or the reason.
    pub fn sortHeaderValue(self: *Vcr, name: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_sort_header_value(self.handle, name.ptr));
    }

    /// Turn every stable-order rule off.
    pub fn clearStableOrder(self: *Vcr) void {
        aether_vcr_embed_clear_stable_order(self.handle);
    }

    /// Playback only: replay just interactions `from`..`to` (0-based "## Interaction N"
    /// numbers, inclusive; `to < 0` = through the last). Returns "" or the refusal
    /// reason (a record handle or a bad range). Call after opening, before traffic.
    pub fn setPlaybackRange(self: *Vcr, from: c_int, to: c_int) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_set_playback_range(self.handle, from, to));
    }
    pub fn clearPlaybackRange(self: *Vcr) void {
        aether_vcr_embed_clear_playback_range(self.handle);
    }
    /// The range's ends; -1 when none is set.
    pub fn playbackRangeFrom(self: *Vcr) c_int {
        return aether_vcr_embed_get_playback_range_from(self.handle);
    }
    pub fn playbackRangeTo(self: *Vcr) c_int {
        return aether_vcr_embed_get_playback_range_to(self.handle);
    }

    /// Allow live pass-through for requests matching `path` (record mode).
    pub fn untaped(self: *Vcr, path: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_untaped(self.handle, path.ptr));
    }

    /// Stop serving but keep the handle (diagnostics stay readable); call
    /// `close` afterwards to free it.
    pub fn stop(self: *Vcr) void {
        if (self.handle == null) return;
        aether_vcr_embed_stop(self.handle);
    }

    /// Stop and write the recorded tape to `tape_path`. Returns the native
    /// status string; caller frees with `allocator.free`.
    pub fn stopAndFlush(self: *Vcr, tape_path: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_stop_and_flush(self.handle, tape_path.ptr));
    }

    /// Stop the server and free the handle. Idempotent.
    pub fn close(self: *Vcr) void {
        if (self.handle == null) return;
        aether_vcr_embed_stop(self.handle);
        aether_vcr_embed_destroy(self.handle);
        self.handle = null;
    }
};

// ===========================================================================
// Fluent builder API (mirrors the Go binding).
// ===========================================================================

/// How a placeholder / token is written: `{{name}}`, `${name}` or `[[name]]`.
pub const VolatileMarkers = enum(c_int) { mustache = 0, dollar_curly = 1, wikilink = 2 };

const VolatileItem = union(enum) {
    rule: struct { scope: [:0]const u8, pattern: [:0]const u8, kind: [:0]const u8 },
    bind: struct { name: [:0]const u8, value: [:0]const u8 },
    profile: [:0]const u8,
};

/// Fail the start on a non-empty core message, leaving it in `diag`.
fn volatileResult(allocator: std.mem.Allocator, ptr: [*c]u8, diag: ?*OpenDiagnostics) !void {
    const msg = try takeString(allocator, ptr);
    if (msg.len == 0) {
        allocator.free(msg);
        return;
    }
    if (diag) |d| d.set(allocator, msg) else allocator.free(msg);
    return Error.VcrError;
}

/// Apply markers first, then rules/binds/profiles in call order; a non-empty
/// core message fails the start (`error.VcrError`) and is left in `diag`.
fn applyVolatile(allocator: std.mem.Allocator, handle: Handle, markers: ?VolatileMarkers, items: []const VolatileItem, diag: ?*OpenDiagnostics) !void {
    if (markers) |m| try volatileResult(allocator, aether_vcr_embed_set_volatile_markers(handle, @intFromEnum(m)), diag);
    for (items) |v| {
        const ptr = switch (v) {
            .rule => |r| aether_vcr_embed_volatile_rule(handle, r.scope.ptr, r.kind.ptr, r.pattern.ptr),
            .bind => |b| aether_vcr_embed_volatile_bind(handle, b.name.ptr, b.value.ptr),
            .profile => |p| aether_vcr_embed_volatile_profile(handle, p.ptr),
        };
        try volatileResult(allocator, ptr, diag);
    }
}

const HeaderRemoval = struct { field: Field, name: [:0]const u8 };
const Replacement = struct { operation: enum { literal, header, query_param, json_field } = .literal, field: Field, pattern: [:0]const u8, repl: [:0]const u8, required: bool = true };
const PatRepl = struct { pattern: [:0]const u8, repl: [:0]const u8 };
const Mount = struct { mount: [:0]const u8, dir: [:0]const u8 };
const TlsPaths = struct { cert: [:0]const u8, key: [:0]const u8 };
const NoteText = struct { title: [:0]const u8, body: [:0]const u8 };

fn applyBase(
    allocator: std.mem.Allocator,
    handle: Handle,
    header_removals: []const HeaderRemoval,
    ignore_volatile_headers: bool,
    static_content: []const Mount,
    untaped_paths: []const [:0]const u8,
    tls: ?TlsPaths,
    tls_pem: ?TlsPaths,
) !void {
    for (header_removals) |hr| {
        try checkErr(allocator, aether_vcr_embed_remove_header(handle, @intFromEnum(hr.field), hr.name.ptr));
    }
    if (ignore_volatile_headers) try checkErr(allocator, aether_vcr_embed_ignore_volatile_headers(handle));
    for (static_content) |sc| {
        try checkErr(allocator, aether_vcr_embed_static_content(handle, sc.mount.ptr, sc.dir.ptr));
    }
    for (untaped_paths) |p| {
        try checkErr(allocator, aether_vcr_embed_untaped(handle, p.ptr));
    }
    if (tls) |t| try checkErr(allocator, aether_vcr_embed_set_tls(handle, t.cert.ptr, t.key.ptr));
    if (tls_pem) |t| try checkErr(allocator, aether_vcr_embed_set_tls_pem(handle, t.cert.ptr, t.key.ptr));
}

/// Opt-in header presets shared by both builders: each registers ordinary
/// rules, listed under the preset's name in the recording-rules footer.
fn applyPresets(
    allocator: std.mem.Allocator,
    handle: Handle,
    remove_transport_headers: bool,
    cloud_vendors: []const [:0]const u8,
    redact_credentials: bool,
    credential_headers: []const [:0]const u8,
) !void {
    if (remove_transport_headers) try checkErr(allocator, aether_vcr_embed_remove_transport_headers(handle));
    for (cloud_vendors) |v| {
        try checkErr(allocator, aether_vcr_embed_remove_cloud_headers(handle, v.ptr));
    }
    if (redact_credentials) try checkErr(allocator, aether_vcr_embed_redact_credentials(handle));
    for (credential_headers) |n| {
        try checkErr(allocator, aether_vcr_embed_redact_credential_header(handle, n.ptr));
    }
}

/// One `sortJsonArray` / `sortJsonArrayAt` rule; an empty `request` means every request.
const SortArray = struct { request: [:0]const u8, path: [:0]const u8, by: [:0]const u8 };

/// A builder that replays a Servirtium markdown tape from disk.
pub const Playback = struct {
    secret_resolver: ?SecretResolver = null,

    allocator: std.mem.Allocator,
    tape_path: [:0]const u8,
    host_str: [:0]const u8 = "127.0.0.1",
    listen_port: c_int = 0,
    label_str: [:0]const u8 = "",
    strict_headers: bool = false,
    match_json_body: bool = false,
    match_xml_body: bool = false,
    match_multiple: bool = false,
    ignore_volatile_headers: bool = false,
    remove_transport_headers: bool = false,
    cloud_vendors: std.ArrayList([:0]const u8) = .empty,
    redact_credentials: bool = false,
    credential_headers: std.ArrayList([:0]const u8) = .empty,
    header_removals: std.ArrayList(HeaderRemoval) = .empty,
    volatile_items: std.ArrayList(VolatileItem) = .empty,
    volatile_markers: ?VolatileMarkers = null,
    static_content: std.ArrayList(Mount) = .empty,
    untaped_paths: std.ArrayList([:0]const u8) = .empty,
    unredactions: std.ArrayList(Replacement) = .empty,
    substitutions: std.ArrayList(Replacement) = .empty,
    tls_paths: ?TlsPaths = null,
    tls_pem: ?TlsPaths = null,
    match_headers: std.ArrayList([:0]const u8) = .empty,
    playback_range: ?[2]c_int = null,

    /// Begin a playback fixture for `tape_path`. Configure fluently, then
    /// call `start`. The builder uses value semantics: each method consumes
    /// the builder and returns the modified copy, so `init(...).port(0)...`
    /// chains on a temporary (Zig won't take a `*` to an rvalue).
    pub fn secretResolver(self: Playback, callback: SecretResolver) Playback {
        var b = self; b.secret_resolver = callback; return b;
    }

    pub fn init(allocator: std.mem.Allocator, tape_path: [:0]const u8) Playback {
        return .{ .allocator = allocator, .tape_path = tape_path };
    }

    /// Bind the host. Defaults to 127.0.0.1.
    pub fn host(self: Playback, h: [:0]const u8) Playback {
        var b = self;
        b.host_str = h;
        return b;
    }
    /// Bind the port. 0 (the default) asks the OS for a free port.
    pub fn port(self: Playback, p: c_int) Playback {
        var b = self;
        b.listen_port = p;
        return b;
    }
    /// Set a human-facing label for logs/diagnostics.
    pub fn label(self: Playback, l: [:0]const u8) Playback {
        var b = self;
        b.label_str = l;
        return b;
    }
    /// Remove a header by name from `field` (case-insensitive).
    pub fn removeHeader(self: Playback, field: Field, name: [:0]const u8) Playback {
        var b = self;
        b.header_removals.append(b.allocator, .{ .field = field, .name = name }) catch {};
        return b;
    }
    /// A volatile-value rule (docs/volatile-values.md): `scope` names the part
    /// of the message, `pattern` is text with `{{name}}` placeholders;
    /// `kind` is "template" or "regex". Repeatable. A bad rule fails `start`
    /// with `error.VcrError` (the core's message is left in `startDiagnosed`'s
    /// `OpenDiagnostics`).
    pub fn volatileRuleKind(self: Playback, scope: [:0]const u8, pattern: [:0]const u8, kind: [:0]const u8) Playback {
        var b = self;
        b.volatile_items.append(b.allocator, .{ .rule = .{ .scope = scope, .pattern = pattern, .kind = kind } }) catch {};
        return b;
    }
    /// A template rule (`volatileRuleKind` with kind "template").
    pub fn volatileRule(self: Playback, scope: [:0]const u8, pattern: [:0]const u8) Playback {
        return self.volatileRuleKind(scope, pattern, "template");
    }
    /// Bind a real value to a placeholder name or a token (`{{name-N}}`).
    pub fn bind(self: Playback, name_or_token: [:0]const u8, value: [:0]const u8) Playback {
        var b = self;
        b.volatile_items.append(b.allocator, .{ .bind = .{ .name = name_or_token, .value = value } }) catch {};
        return b;
    }
    /// Load a volatile-value profile file.
    pub fn volatileProfile(self: Playback, path: [:0]const u8) Playback {
        var b = self;
        b.volatile_items.append(b.allocator, .{ .profile = path }) catch {};
        return b;
    }
    /// Choose the marker style; applied before any rule.
    pub fn volatileMarkers(self: Playback, style: VolatileMarkers) Playback {
        var b = self;
        b.volatile_markers = style;
        return b;
    }
    /// Serve `dir` at the URL prefix `mount`, bypassing the tape.
    pub fn staticContent(self: Playback, mount: [:0]const u8, dir: [:0]const u8) Playback {
        var b = self;
        b.static_content.append(b.allocator, .{ .mount = mount, .dir = dir }) catch {};
        return b;
    }
    /// Terminate TLS in the VCR (PEM cert + key: ECDSA P-256/P-384/P-521, Ed25519, or RSA 2048-16384); applied at `start`.
    pub fn tls(self: Playback, cert: [:0]const u8, key: [:0]const u8) Playback {
        var b = self;
        b.tls_paths = .{ .cert = cert, .key = key };
        return b;
    }
    /// Like `tls`, but the PEM certificate and key are passed in memory (not file paths), so no private key is written to disk.
    pub fn tlsFromPem(self: Playback, cert_pem: [:0]const u8, key_pem: [:0]const u8) Playback {
        var b = self;
        b.tls_pem = .{ .cert = cert_pem, .key = key_pem };
        return b;
    }
    /// Rewrite the replayed response at playback time (regex `pattern` ->
    /// `repl` in the response body or headers).
    pub fn substitute(self: Playback, field: Field, pattern: [:0]const u8, repl: [:0]const u8) Playback {
        var b = self;
        b.substitutions.append(b.allocator, .{ .field = field, .pattern = pattern, .repl = repl }) catch {};
        return b;
    }
    /// Like `substitute`, but an unused rule is not reported by assertAllRedactionsUsed.
    pub fn substituteOptional(self: Playback, field: Field, pattern: [:0]const u8, repl: [:0]const u8) Playback {
        var b = self;
        b.substitutions.append(b.allocator, .{ .field = field, .pattern = pattern, .repl = repl, .required = false }) catch {};
        return b;
    }
    /// Leave the connection-describing headers (Host, Connection,
    /// Content-Length and the other hop-by-hop headers, Accept-Encoding) out
    /// of the recording. Works in playback and record mode.
    pub fn removeTransportHeaders(self: Playback) Playback {
        var b = self;
        b.remove_transport_headers = true;
        return b;
    }
    /// Drop a cloud vendor's per-request headers; `vendor` is one of "aws",
    /// "azure", "cloudflare", "fastly", "gcp". Call again for more vendors.
    pub fn removeCloudHeaders(self: Playback, vendor: [:0]const u8) Playback {
        var b = self;
        b.cloud_vendors.append(b.allocator, vendor) catch {};
        return b;
    }
    /// Redact the common credential headers (Authorization, Cookie,
    /// Set-Cookie, X-Api-Key, X-Auth-Token, ...) as numbered tokens. Register
    /// on the playback builder too, as with every rule.
    pub fn redactCredentials(self: Playback) Playback {
        var b = self;
        b.redact_credentials = true;
        return b;
    }
    /// One more credential header with the same treatment as `redactCredentials`.
    pub fn redactCredentialHeader(self: Playback, name: [:0]const u8) Playback {
        var b = self;
        b.credential_headers.append(b.allocator, name) catch {};
        return b;
    }
    /// Mark an incidental request path the VCR 404s without consuming the
    /// cursor (e.g. "/favicon.ico").
    pub fn untaped(self: Playback, path: [:0]const u8) Playback {
        var b = self;
        b.untaped_paths.append(b.allocator, path) catch {};
        return b;
    }

    fn deinit(self: *Playback) void {
        self.header_removals.deinit(self.allocator);
        self.volatile_items.deinit(self.allocator);
        self.static_content.deinit(self.allocator);
        self.untaped_paths.deinit(self.allocator);
        self.cloud_vendors.deinit(self.allocator);
        self.credential_headers.deinit(self.allocator);
        self.unredactions.deinit(self.allocator);
        self.substitutions.deinit(self.allocator);
        self.match_headers.deinit(self.allocator);
    }

    /// Compare the SUT's request headers against the recorded block on every
    /// interaction, surfacing mismatches via `Server.lastError`.
    pub fn strictHeaders(self: Playback) Playback {
        var b = self;
        b.strict_headers = true;
        return b;
    }

    /// Opt in to matching request bodies by semantic JSON equality (key order /
    /// whitespace ignored) instead of byte-for-byte. Non-JSON bodies fall back
    /// to byte-exact.
    pub fn matchJsonBody(self: Playback) Playback {
        var b = self;
        b.match_json_body = true;
        return b;
    }

    /// Opt in to matching request bodies by semantic XML equality (attribute
    /// order / insignificant whitespace ignored; element order significant)
    /// instead of byte-for-byte — the SOAP/XML twin of matchJsonBody. Non-XML
    /// bodies fall back to byte-exact.
    /// Match XML layout using the shared recording canonicalizer.
    pub fn prettyJson(self: Playback, indent: c_int) Playback {
        var b = self;
        b.match_json_body = indent > 0;
        return b;
    }

    pub fn prettyXml(self: Playback, indent: c_int) Playback {
        var b = self;
        b.match_xml_body = indent > 0;
        return b;
    }

    pub fn matchXmlBody(self: Playback) Playback {
        var b = self;
        b.match_xml_body = true;
        return b;
    }

    /// Drop the per-request volatile headers modern clients inject on every
    /// call (traceparent, tracestate, Request-Id, X-Request-Id,
    /// X-Correlation-Id, baggage) from both sides before matching — the
    /// companion to common-header ignoring for tracing / correlation noise.
    pub fn ignoreVolatileHeaders(self: Playback) Playback {
        var b = self;
        b.ignore_volatile_headers = true;
        return b;
    }

    /// Opt in to reusable, order-independent playback: matches any recorded
    /// interaction (not just the next in sequence) and doesn't consume it — for
    /// polling/retries or non-deterministic request order.
    pub fn matchMultiple(self: Playback) Playback {
        var b = self;
        b.match_multiple = true;
        return b;
    }

    /// Replay only interactions `from`..`to` of the tape: the numbers of its
    /// "## Interaction N" headings, 0-based and inclusive; `to < 0` means through
    /// the last. Selection is by number only. A bad range (from < 0, to before
    /// from, past the tape's end) makes `start` fail with `error.VcrError`.
    pub fn playbackRange(self: Playback, from: c_int, to: c_int) Playback {
        var b = self;
        b.playback_range = .{ from, to };
        return b;
    }

    /// Match playback on this specific request header's value (ignoring the
    /// rest of the recorded header block); repeatable.
    pub fn matchHeader(self: Playback, name: [:0]const u8) Playback {
        var b = self;
        b.match_headers.append(b.allocator, name) catch {};
        return b;
    }

    /// Replace a redacted placeholder in the recorded expectation with the
    /// real value the live SUT sends, so a scrubbed tape still matches.
    pub fn unredact(self: Playback, field: Field, pattern: [:0]const u8, repl: [:0]const u8) Playback {
        var b = self;
        b.unredactions.append(b.allocator, .{ .field = field, .pattern = pattern, .repl = repl }) catch {};
        return b;
    }

    /// Open the playback server, apply this fixture's config, then serve.
    pub fn start(self_in: Playback) !Server {
        return self_in.startDiagnosed(null);
    }

    /// As `start`, but on `error.OpenFailed` / `error.StartFailed` the native
    /// reason is left in `diag`.
    pub fn startDiagnosed(self_in: Playback, diag: ?*OpenDiagnostics) !Server {
        var self = self_in;
        defer self.deinit();

        const handle = aether_vcr_embed_open_playback(
            self.label_str.ptr,
            self.tape_path.ptr,
            self.host_str.ptr,
            self.listen_port,
        );
        try checkOpened(self.allocator, handle, diag);
        errdefer aether_vcr_embed_destroy(handle);

        try applyBase(self.allocator, handle, self.header_removals.items, self.ignore_volatile_headers, self.static_content.items, self.untaped_paths.items, self.tls_paths, self.tls_pem);
        try applyVolatile(self.allocator, handle, self.volatile_markers, self.volatile_items.items, diag);
        try applyPresets(self.allocator, handle, self.remove_transport_headers, self.cloud_vendors.items, self.redact_credentials, self.credential_headers.items);
        if (self.strict_headers) aether_vcr_embed_set_strict_headers(handle, 1);
        if (self.match_json_body) aether_vcr_embed_set_match_json_body(handle, 1);
        if (self.match_xml_body) aether_vcr_embed_set_match_xml_body(handle, 1);
        if (self.match_multiple) aether_vcr_embed_set_match_multiple(handle, 1);
        if (self.playback_range) |r| try checkErr(self.allocator, aether_vcr_embed_set_playback_range(handle, r[0], r[1]));
        for (self.match_headers.items) |name| {
            aether_vcr_embed_match_header(handle, name.ptr);
        }
        for (self.unredactions.items) |u| {
            try checkErr(self.allocator, aether_vcr_embed_unredact(handle, @intFromEnum(u.field), u.pattern.ptr, u.repl.ptr));
        }
        for (self.substitutions.items) |u| {
            try checkErr(self.allocator, aether_vcr_embed_substitute(handle, @intFromEnum(u.field), u.pattern.ptr, u.repl.ptr, @intFromBool(u.required)));
        }

        if (self.secret_resolver) |resolver| try secretStage(self.allocator, handle, null, resolver);
        {
            // the errdefer above destroys the handle on this failure
            const rc = aether_vcr_embed_start(handle);
            if (rc < 0) {
                if (diag) |d| {
                    if (takeString(self.allocator, aether_vcr_embed_last_error(handle))) |msg| d.set(self.allocator, msg) else |_| {}
                }
                return Error.StartFailed;
            }
        }
        return .{
            .handle = handle,
            .allocator = self.allocator,
            .host_str = self.host_str,
            .tape_path = self.tape_path,
            .record_mode = false,
            .fail_if_changed = false,
        };
    }
};

/// A builder that records live interactions: forward each request to
/// `upstream_base`, return the real response, capture the exchange, and write
/// the tape on `Server.close`.
pub const Record = struct {
    secret_redactor: ?SecretRedactor = null,

    allocator: std.mem.Allocator,
    tape_path: [:0]const u8,
    upstream_base: [:0]const u8,
    host_str: [:0]const u8 = "127.0.0.1",
    listen_port: c_int = 0,
    label_str: [:0]const u8 = "",
    header_removals: std.ArrayList(HeaderRemoval) = .empty,
    volatile_items: std.ArrayList(VolatileItem) = .empty,
    volatile_markers: ?VolatileMarkers = null,
    ignore_volatile_headers: bool = false,
    remove_transport_headers: bool = false,
    cloud_vendors: std.ArrayList([:0]const u8) = .empty,
    redact_credentials: bool = false,
    credential_headers: std.ArrayList([:0]const u8) = .empty,
    static_content: std.ArrayList(Mount) = .empty,
    untaped_paths: std.ArrayList([:0]const u8) = .empty,
    redactions: std.ArrayList(Replacement) = .empty,
    tls_paths: ?TlsPaths = null,
    tls_pem: ?TlsPaths = null,
    whole_tape_redactions: std.ArrayList(PatRepl) = .empty,
    note_text: ?NoteText = null,
    indent_code_blocks: bool = false,
    emphasize_http_verbs: bool = false,
    pretty_xml: c_int = 0,
    pretty_json: c_int = 0,
    upstream_cafile: ?[:0]const u8 = null,
    license_notice: ?[:0]const u8 = null,
    sort_json_keys: bool = false,
    sort_json_arrays: std.ArrayList(SortArray) = .empty,
    sort_response_headers: bool = false,
    sort_header_values: std.ArrayList([:0]const u8) = .empty,
    fail_if_changed: bool = false,

    /// Begin a record fixture that forwards to `upstream_base` and writes
    /// `tape_path` on close. Configure fluently, then call `start`. Like
    /// `Playback`, the builder uses value semantics so it chains on a temporary.
    pub fn secretRedactor(self: Record, callback: SecretRedactor) Record {
        var b = self; b.secret_redactor = callback; return b;
    }

    pub fn init(allocator: std.mem.Allocator, tape_path: [:0]const u8, upstream_base: [:0]const u8) Record {
        return .{ .allocator = allocator, .tape_path = tape_path, .upstream_base = upstream_base };
    }

    /// Bind the host. Defaults to 127.0.0.1.
    pub fn host(self: Record, h: [:0]const u8) Record {
        var b = self;
        b.host_str = h;
        return b;
    }
    /// Bind the port. 0 (the default) asks the OS for a free port.
    pub fn port(self: Record, p: c_int) Record {
        var b = self;
        b.listen_port = p;
        return b;
    }
    /// Set a human-facing label for logs/diagnostics.
    pub fn label(self: Record, l: [:0]const u8) Record {
        var b = self;
        b.label_str = l;
        return b;
    }
    /// Remove a header by name from `field` (case-insensitive).
    pub fn removeHeader(self: Record, field: Field, name: [:0]const u8) Record {
        var b = self;
        b.header_removals.append(b.allocator, .{ .field = field, .name = name }) catch {};
        return b;
    }
    /// A volatile-value rule (docs/volatile-values.md): `scope` names the part
    /// of the message, `pattern` is text with `{{name}}` placeholders;
    /// `kind` is "template" or "regex". Repeatable. A bad rule fails `start`
    /// with `error.VcrError` (the core's message is left in `startDiagnosed`'s
    /// `OpenDiagnostics`).
    pub fn volatileRuleKind(self: Record, scope: [:0]const u8, pattern: [:0]const u8, kind: [:0]const u8) Record {
        var b = self;
        b.volatile_items.append(b.allocator, .{ .rule = .{ .scope = scope, .pattern = pattern, .kind = kind } }) catch {};
        return b;
    }
    /// A template rule (`volatileRuleKind` with kind "template").
    pub fn volatileRule(self: Record, scope: [:0]const u8, pattern: [:0]const u8) Record {
        return self.volatileRuleKind(scope, pattern, "template");
    }
    /// Bind a real value to a placeholder name or a token (`{{name-N}}`).
    pub fn bind(self: Record, name_or_token: [:0]const u8, value: [:0]const u8) Record {
        var b = self;
        b.volatile_items.append(b.allocator, .{ .bind = .{ .name = name_or_token, .value = value } }) catch {};
        return b;
    }
    /// Load a volatile-value profile file.
    pub fn volatileProfile(self: Record, path: [:0]const u8) Record {
        var b = self;
        b.volatile_items.append(b.allocator, .{ .profile = path }) catch {};
        return b;
    }
    /// Choose the marker style; applied before any rule.
    pub fn volatileMarkers(self: Record, style: VolatileMarkers) Record {
        var b = self;
        b.volatile_markers = style;
        return b;
    }
    /// Drop the per-request volatile headers modern clients inject on every
    /// call (traceparent, tracestate, Request-Id, X-Request-Id,
    /// X-Correlation-Id, baggage) before matching/recording — the companion to
    /// common-header ignoring for tracing / correlation noise.
    pub fn ignoreVolatileHeaders(self: Record) Record {
        var b = self;
        b.ignore_volatile_headers = true;
        return b;
    }
    /// Serve `dir` at the URL prefix `mount` instead of forwarding upstream.
    pub fn staticContent(self: Record, mount: [:0]const u8, dir: [:0]const u8) Record {
        var b = self;
        b.static_content.append(b.allocator, .{ .mount = mount, .dir = dir }) catch {};
        return b;
    }
    /// Terminate TLS in the VCR (PEM cert + key: ECDSA P-256/P-384/P-521, Ed25519, or RSA 2048-16384); applied at `start`.
    pub fn tls(self: Record, cert: [:0]const u8, key: [:0]const u8) Record {
        var b = self;
        b.tls_paths = .{ .cert = cert, .key = key };
        return b;
    }
    /// Like `tls`, but the PEM certificate and key are passed in memory (not file paths), so no private key is written to disk.
    pub fn tlsFromPem(self: Record, cert_pem: [:0]const u8, key_pem: [:0]const u8) Record {
        var b = self;
        b.tls_pem = .{ .cert = cert_pem, .key = key_pem };
        return b;
    }
    /// Leave the connection-describing headers (Host, Connection,
    /// Content-Length and the other hop-by-hop headers, Accept-Encoding) out
    /// of the recording. Works in playback and record mode.
    pub fn removeTransportHeaders(self: Record) Record {
        var b = self;
        b.remove_transport_headers = true;
        return b;
    }
    /// Drop a cloud vendor's per-request headers; `vendor` is one of "aws",
    /// "azure", "cloudflare", "fastly", "gcp". Call again for more vendors.
    pub fn removeCloudHeaders(self: Record, vendor: [:0]const u8) Record {
        var b = self;
        b.cloud_vendors.append(b.allocator, vendor) catch {};
        return b;
    }
    /// Redact the common credential headers (Authorization, Cookie,
    /// Set-Cookie, X-Api-Key, X-Auth-Token, ...) as numbered tokens. Register
    /// on the playback builder too, as with every rule.
    pub fn redactCredentials(self: Record) Record {
        var b = self;
        b.redact_credentials = true;
        return b;
    }
    /// One more credential header with the same treatment as `redactCredentials`.
    pub fn redactCredentialHeader(self: Record, name: [:0]const u8) Record {
        var b = self;
        b.credential_headers.append(b.allocator, name) catch {};
        return b;
    }
    /// Mark an incidental request path the VCR 404s without forwarding or
    /// recording it (e.g. "/favicon.ico").
    pub fn untaped(self: Record, path: [:0]const u8) Record {
        var b = self;
        b.untaped_paths.append(b.allocator, path) catch {};
        return b;
    }

    fn deinit(self: *Record) void {
        self.header_removals.deinit(self.allocator);
        self.volatile_items.deinit(self.allocator);
        self.static_content.deinit(self.allocator);
        self.untaped_paths.deinit(self.allocator);
        self.sort_json_arrays.deinit(self.allocator);
        self.sort_header_values.deinit(self.allocator);
        self.cloud_vendors.deinit(self.allocator);
        self.credential_headers.deinit(self.allocator);
        self.redactions.deinit(self.allocator);
        self.whole_tape_redactions.deinit(self.allocator);
    }

    /// Scrub a value out of `field` before it lands on the tape.
    pub fn redact(self: Record, field: Field, pattern: [:0]const u8, repl: [:0]const u8) Record {
        var b = self;
        b.redactions.append(b.allocator, .{ .field = field, .pattern = pattern, .repl = repl }) catch {};
        return b;
    }

    pub fn redactHeader(self: Record, name: [:0]const u8) Record {
        return self.redactHeaderWith(name, "[REDACTED]", .request_headers);
    }
    pub fn redactHeaderWith(self: Record, name: [:0]const u8, replacement: [:0]const u8, field: Field) Record {
        var b = self;
        b.redactions.append(b.allocator, .{ .operation = .header, .field = field, .pattern = name, .repl = replacement }) catch @panic("redaction allocation failed");
        return b;
    }

    pub fn redactQueryParam(self: Record, name: [:0]const u8) Record {
        return self.redactQueryParamWith(name, "[REDACTED]", .path);
    }
    pub fn redactQueryParamWith(self: Record, name: [:0]const u8, replacement: [:0]const u8, field: Field) Record {
        var b = self;
        b.redactions.append(b.allocator, .{ .operation = .query_param, .field = field, .pattern = name, .repl = replacement }) catch @panic("redaction allocation failed");
        return b;
    }

    pub fn redactJsonField(self: Record, name: [:0]const u8) Record {
        return self.redactJsonFieldWith(name, "[REDACTED]", .request_body);
    }
    pub fn redactJsonFieldWith(self: Record, name: [:0]const u8, replacement: [:0]const u8, field: Field) Record {
        var b = self;
        b.redactions.append(b.allocator, .{ .operation = .json_field, .field = field, .pattern = name, .repl = replacement }) catch @panic("redaction allocation failed");
        return b;
    }

    /// Collapse every match of `pattern` to the constant `repl` across the
    /// whole tape (for uncorrelated volatiles, e.g. a Date header).
    pub fn redactWholeTape(self: Record, pattern: [:0]const u8, repl: [:0]const u8) Record {
        var b = self;
        b.whole_tape_redactions.append(b.allocator, .{ .pattern = pattern, .repl = repl }) catch {};
        return b;
    }

    /// Attach a note to the first recorded interaction.
    pub fn note(self: Record, title: [:0]const u8, body: [:0]const u8) Record {
        var b = self;
        b.note_text = .{ .title = title, .body = body };
        return b;
    }

    /// Emit code blocks as 4-space-indented text instead of fences.
    pub fn indentCodeBlocks(self: Record) Record {
        var b = self;
        b.indent_code_blocks = true;
        return b;
    }

    /// Emit the HTTP method emphasized (e.g. *GET*) in headings.
    pub fn emphasizeHttpVerbs(self: Record) Record {
        var b = self;
        b.emphasize_http_verbs = true;
        return b;
    }

    /// Shared XML layout setting: format recorded request and response bodies; match XML requests on playback (indent 1..16; 0 = off). Falls back to byte-exact if the body isn't well-formed XML.
    pub fn prettyXml(self: Record, indent: c_int) Record {
        var b = self;
        b.pretty_xml = indent;
        return b;
    }

    /// Format recorded JSON request and response bodies, keeping key order and number spellings; playback matches JSON request layout.
    pub fn prettyJson(self: Record, indent: c_int) Record {
        var b = self;
        b.pretty_json = indent;
        return b;
    }

    /// Verify an https upstream against this PEM CA file.
    pub fn upstreamCafile(self: Record, path: [:0]const u8) Record {
        var b = self;
        b.upstream_cafile = path;
        return b;
    }

    /// Put `text` under "## LICENSE NOTICE" at the top of each tape; playback
    /// ignores it.
    pub fn addLicenseNotice(self: Record, text: [:0]const u8) Record {
        var b = self;
        b.license_notice = text;
        return b;
    }

    /// Opt-in stable order: sort JSON object keys at every depth in recorded JSON
    /// response bodies. Sorted JSON is only written pretty-printed: without
    /// `prettyJson` the tape is refused when it is emitted (`close` returns
    /// `error.VcrError`; the low-level `Vcr.stopAndFlush` returns the reason).
    pub fn sortJsonKeys(self: Record) Record {
        var b = self;
        b.sort_json_keys = true;
        return b;
    }

    /// Sort the JSON response arrays `path` selects (JSON pointer from the root,
    /// "*" for one segment, "" the root array, or a bare member name) by member
    /// `by` ("" = each element's canonical JSON). A refused rule makes `start`
    /// fail with `error.VcrError`; needs `prettyJson` like `sortJsonKeys`.
    pub fn sortJsonArray(self: Record, path: [:0]const u8, by: [:0]const u8) Record {
        var b = self;
        b.sort_json_arrays.append(b.allocator, .{ .request = "", .path = path, .by = by }) catch {};
        return b;
    }

    /// The same, only for interactions whose request path (query included)
    /// matches the regex `request`.
    pub fn sortJsonArrayAt(self: Record, request: [:0]const u8, path: [:0]const u8, by: [:0]const u8) Record {
        var b = self;
        b.sort_json_arrays.append(b.allocator, .{ .request = request, .path = path, .by = by }) catch {};
        return b;
    }

    /// Sort response header lines by name (case-insensitive).
    pub fn sortResponseHeaders(self: Record) Record {
        var b = self;
        b.sort_response_headers = true;
        return b;
    }

    /// Sort one response header's comma-separated items ("Allow"); repeatable.
    pub fn sortHeaderValue(self: Record, name: [:0]const u8) Record {
        var b = self;
        b.sort_header_values.append(b.allocator, name) catch {};
        return b;
    }

    /// Make `close` still write the freshly recorded tape but return an error
    /// if it differs from the on-disk one (Servirtium drift contract).
    pub fn failIfChanged(self: Record) Record {
        var b = self;
        b.fail_if_changed = true;
        return b;
    }

    /// Open the record server, apply this fixture's config, stage the note,
    /// then serve.
    pub fn start(self_in: Record) !Server {
        return self_in.startDiagnosed(null);
    }

    /// As `start`, but on `error.OpenFailed` / `error.StartFailed` the native
    /// reason is left in `diag`.
    pub fn startDiagnosed(self_in: Record, diag: ?*OpenDiagnostics) !Server {
        var self = self_in;
        defer self.deinit();

        const handle = aether_vcr_embed_open_record(
            self.label_str.ptr,
            self.tape_path.ptr,
            self.upstream_base.ptr,
            self.host_str.ptr,
            self.listen_port,
        );
        try checkOpened(self.allocator, handle, diag);
        errdefer aether_vcr_embed_destroy(handle);

        try applyBase(self.allocator, handle, self.header_removals.items, self.ignore_volatile_headers, self.static_content.items, self.untaped_paths.items, self.tls_paths, self.tls_pem);
        try applyVolatile(self.allocator, handle, self.volatile_markers, self.volatile_items.items, diag);
        try applyPresets(self.allocator, handle, self.remove_transport_headers, self.cloud_vendors.items, self.redact_credentials, self.credential_headers.items);
        if (self.indent_code_blocks) aether_vcr_embed_indent_code_blocks(handle);
        if (self.emphasize_http_verbs) aether_vcr_embed_emphasize_http_verbs(handle);
        if (self.pretty_xml > 0) aether_vcr_embed_set_pretty_xml(handle, self.pretty_xml);
        if (self.pretty_json > 0) aether_vcr_embed_set_pretty_json(handle, self.pretty_json);
        if (self.upstream_cafile) |path| try checkErr(self.allocator, aether_vcr_embed_set_upstream_cafile(handle, path.ptr));
        if (self.license_notice) |text| try checkErr(self.allocator, aether_vcr_embed_add_license_notice(handle, text.ptr));
        if (self.sort_json_keys) aether_vcr_embed_set_sort_json_keys(handle, 1);
        for (self.sort_json_arrays.items) |r| {
            try checkErr(self.allocator, if (r.request.len == 0)
                aether_vcr_embed_sort_json_array(handle, r.path.ptr, r.by.ptr)
            else
                aether_vcr_embed_sort_json_array_at(handle, r.request.ptr, r.path.ptr, r.by.ptr));
        }
        if (self.sort_response_headers) aether_vcr_embed_set_sort_response_headers(handle, 1);
        for (self.sort_header_values.items) |n| {
            try checkErr(self.allocator, aether_vcr_embed_sort_header_value(handle, n.ptr));
        }
        for (self.redactions.items) |r| {
            try checkErr(self.allocator, switch (r.operation) {
                .literal => aether_vcr_embed_redact(handle, @intFromEnum(r.field), r.pattern.ptr, r.repl.ptr),
                .header => aether_vcr_embed_redact_header(handle, @intFromEnum(r.field), r.pattern.ptr, r.repl.ptr),
                .query_param => aether_vcr_embed_redact_query_param(handle, @intFromEnum(r.field), r.pattern.ptr, r.repl.ptr),
                .json_field => aether_vcr_embed_redact_json_field(handle, @intFromEnum(r.field), r.pattern.ptr, r.repl.ptr),
            });
        }
        for (self.whole_tape_redactions.items) |w| {
            try checkErr(self.allocator, aether_vcr_embed_redact_whole_tape(handle, w.pattern.ptr, w.repl.ptr));
        }

        // Stage the note now (open_record cleared the tape) so it attaches to
        // the first interaction the SUT triggers — before serving begins.
        if (self.note_text) |n| {
            try checkErr(self.allocator, aether_vcr_embed_note(handle, n.title.ptr, n.body.ptr));
        }

        {
            // the errdefer above destroys the handle on this failure
            const rc = aether_vcr_embed_start(handle);
            if (rc < 0) {
                if (diag) |d| {
                    if (takeString(self.allocator, aether_vcr_embed_last_error(handle))) |msg| d.set(self.allocator, msg) else |_| {}
                }
                return Error.StartFailed;
            }
        }
        return .{
            .handle = handle,
            .allocator = self.allocator,
            .host_str = self.host_str,
            .tape_path = self.tape_path,
            .record_mode = true,
            .fail_if_changed = self.fail_if_changed,
            .secret_redactor = self.secret_redactor,
        };
    }
};

/// A running VCR server. Close it to stop; in record mode `close` also flushes
/// the captured tape to disk (and returns an error on drift if
/// `failIfChanged` was set).
pub const Server = struct {
    handle: Handle,
    allocator: std.mem.Allocator,
    host_str: [:0]const u8,
    tape_path: [:0]const u8,
    record_mode: bool,
    fail_if_changed: bool,
    secret_redactor: ?SecretRedactor = null,

    /// The OS-resolved port the server is listening on.
    pub fn port(self: *Server) c_int {
        return aether_vcr_embed_port(self.handle);
    }

    /// The base URL the SUT should target, e.g. http://127.0.0.1:54213.
    /// Caller frees the returned slice with `allocator.free`.
    pub fn baseUrl(self: *Server) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_base_url(self.handle, self.host_str.ptr));
    }

    /// Tape entries (playback) or interactions captured so far (record).
    pub fn tapeLength(self: *Server) c_int {
        return aether_vcr_embed_tape_length(self.handle);
    }

    /// The most-recent dispatch diagnostic; "" when none flagged. Caller frees.
    pub fn readLastError(self: *Server, consume: bool) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_last_error_ex(self.handle, @intFromBool(consume)));
    }
    pub fn diagnosticsJson(self: *Server, consume: bool) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_diagnostics_json(self.handle, @intFromBool(consume)));
    }
    /// Negotiated TLS protocol ("TLSv1.3"), or "" when TLS is off. Caller frees.
    pub fn lastTlsProtocol(self: *Server) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_last_tls_protocol(self.handle));
    }
    /// Error unless every recorded interaction was replayed.
    pub fn assertAllConsumed(self: *Server) !void {
        try checkErr(self.allocator, aether_vcr_embed_assert_all_consumed(self.handle));
    }
    /// Error unless every redaction/unredaction/substitution rule matched.
    pub fn assertAllRedactionsUsed(self: *Server) !void {
        try checkErr(self.allocator, aether_vcr_embed_assert_all_redactions_used(self.handle));
    }
    /// Error if any unfilled placeholder remains in a replayed response.
    pub fn assertNoUnfilledPlaceholders(self: *Server) !void {
        try checkErr(self.allocator, aether_vcr_embed_assert_no_unfilled_placeholders(self.handle));
    }
    /// Drop all registered substitutions on the running server.
    pub fn clearSubstitutions(self: *Server) void {
        aether_vcr_embed_clear_substitutions(self.handle);
    }
    pub fn assertNoMismatches(self: *Server) !void {
        const diagnostic = try takeString(self.allocator, aether_vcr_embed_assert_no_mismatches(self.handle));
        defer self.allocator.free(diagnostic);
        if (diagnostic.len != 0) {
            std.debug.print("{s}\n", .{diagnostic});
            return Error.VcrError;
        }
    }
    pub fn testContext(self: *Server, name: [:0]const u8, file: [:0]const u8, line: c_int) void {
        aether_vcr_embed_test_context(self.handle, name.ptr, file.ptr, line);
    }

    pub fn lastError(self: *Server) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_last_error(self.handle));
    }

    /// The Outcome of the most-recent dispatch.
    pub fn lastKind(self: *Server) Outcome {
        return @enumFromInt(aether_vcr_embed_last_kind(self.handle));
    }

    /// The tape index of the most-recent matched interaction, or -1.
    pub fn lastIndex(self: *Server) c_int {
        return aether_vcr_embed_last_index(self.handle);
    }

    /// Stage a note (record mode) for the next interaction to be captured.
    pub fn note(self: *Server, title: [:0]const u8, body: [:0]const u8) !void {
        try checkErr(self.allocator, aether_vcr_embed_note(self.handle, title.ptr, body.ptr));
    }

    /// Whether recorded JSON object keys are sorted (the `sortJsonKeys` opt-in).
    pub fn sortJsonKeys(self: *Server) bool {
        return aether_vcr_embed_get_sort_json_keys(self.handle) != 0;
    }

    /// Whether recorded response header lines are sorted (the `sortResponseHeaders` opt-in).
    pub fn sortResponseHeaders(self: *Server) bool {
        return aether_vcr_embed_get_sort_response_headers(self.handle) != 0;
    }

    /// Turn every stable-order rule off.
    pub fn clearStableOrder(self: *Server) void {
        aether_vcr_embed_clear_stable_order(self.handle);
    }

    /// Playback only: replay just interactions `from`..`to` (`to < 0` = through
    /// the last). Prefer `Playback.playbackRange`; this is the same call on a
    /// running server, before traffic. `error.VcrError` on a record server (a
    /// recording always captures the whole conversation) or a bad range.
    pub fn setPlaybackRange(self: *Server, from: c_int, to: c_int) !void {
        try checkErr(self.allocator, aether_vcr_embed_set_playback_range(self.handle, from, to));
    }

    /// Replay the whole tape again.
    pub fn clearPlaybackRange(self: *Server) void {
        aether_vcr_embed_clear_playback_range(self.handle);
    }

    /// The playback range as `{ from, to }`, or null when the whole tape is replayed.
    pub fn playbackRange(self: *Server) ?[2]c_int {
        const from = aether_vcr_embed_get_playback_range_from(self.handle);
        if (from < 0) return null;
        return .{ from, aether_vcr_embed_get_playback_range_to(self.handle) };
    }

    /// The volatile-value bindings made so far (`binding: {{name-N}} = value`).
    /// Caller frees.
    pub fn volatileReport(self: *Server) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_volatile_report(self.handle));
    }

    /// Rewind the replay cursor to interaction 0 and clear the last-* slots.
    pub fn resetCursor(self: *Server) void {
        aether_vcr_embed_reset_cursor(self.handle);
    }

    /// Clear the last-error slot between sub-cases.
    pub fn clearLastError(self: *Server) void {
        aether_vcr_embed_clear_last_error(self.handle);
    }

    /// Stop the server. In record mode also flush the tape to disk and return
    /// `error.VcrError` on drift if `failIfChanged` was set. Idempotent.
    pub fn close(self: *Server) !void {
        if (self.handle == null) return;
        const h = self.handle;
        self.handle = null;
        defer aether_vcr_embed_destroy(h);

        if (!self.record_mode) {
            aether_vcr_embed_stop(h);
            return;
        }
        if (self.secret_redactor) |redactor| try secretStage(self.allocator, h, redactor, null);
        const res = if (self.fail_if_changed)
            aether_vcr_embed_stop_and_flush_fail_if_changed(h, self.tape_path.ptr)
        else
            aether_vcr_embed_stop_and_flush(h, self.tape_path.ptr);
        try checkErr(self.allocator, res);
    }

    /// Stop the server and, in record mode, DROP the captured recording WITHOUT
    /// writing a tape. Call on a test's failure path so a half-finished
    /// recording never becomes a tape that later replays as the truth. After
    /// `discard`, `close` is a no-op. In playback mode it just stops the server.
    pub fn discard(self: *Server) void {
        if (self.handle == null) return;
        const h = self.handle;
        self.handle = null;
        defer aether_vcr_embed_destroy(h);
        if (!self.record_mode) {
            aether_vcr_embed_stop(h);
            return;
        }
        aether_vcr_embed_free_string(aether_vcr_embed_discard(h, self.tape_path.ptr));
    }

    /// Stop without flushing (escape hatch for teardown after a failure).
    pub fn stop(self: *Server) void {
        if (self.handle == null) return;
        aether_vcr_embed_stop(self.handle);
        aether_vcr_embed_destroy(self.handle);
        self.handle = null;
    }
};
