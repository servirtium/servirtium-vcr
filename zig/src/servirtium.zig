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
//! the engine `.so` at build time and calls the exports directly.

const std = @import("std");

/// Opaque server handle from the native side. `null` means failure.
pub const Handle = ?*anyopaque;

// ---------------------------------------------------------------------------
// Raw C ABI surface. Caller-owned `[*c]u8` returns must be freed with
// `aether_vcr_embed_free_string`. The field-id enum below names the `c_int`
// field arguments used by redact/unredact/remove_header.
// ---------------------------------------------------------------------------

pub extern "c" fn aether_vcr_embed_open_playback(label: [*c]const u8, tape_path: [*c]const u8, host: [*c]const u8, port: c_int) Handle;
pub extern "c" fn aether_vcr_embed_open_playback_url(label: [*c]const u8, tape_path: [*c]const u8, host: [*c]const u8, port: c_int) Handle;
pub extern "c" fn aether_vcr_embed_open_record(label: [*c]const u8, tape_path: [*c]const u8, upstream_base: [*c]const u8, host: [*c]const u8, port: c_int) Handle;

pub extern "c" fn aether_vcr_embed_start(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_stop(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_stop_and_flush(handle: Handle, tape_path: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_stop_and_flush_fail_if_changed(handle: Handle, tape_path: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_stop_and_flush_or_check(handle: Handle, tape_path: [*c]const u8) [*c]u8;

pub extern "c" fn aether_vcr_embed_port(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_base_url(handle: Handle, host: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_tape_length(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_reset_cursor(handle: Handle) void;

pub extern "c" fn aether_vcr_embed_last_error(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_last_kind(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_last_index(handle: Handle) c_int;
pub extern "c" fn aether_vcr_embed_clear_last_error(handle: Handle) void;

pub extern "c" fn aether_vcr_embed_redact(handle: Handle, field: c_int, pat: [*c]const u8, repl: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_normalize_whole_tape(handle: Handle, pat: [*c]const u8, name: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_redact_whole_tape(handle: Handle, pat: [*c]const u8, repl: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_unredact(handle: Handle, field: c_int, pat: [*c]const u8, repl: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_remove_header(handle: Handle, field: c_int, name: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_strict_ignore_common_headers(handle: Handle) [*c]u8;
pub extern "c" fn aether_vcr_embed_note(handle: Handle, a: [*c]const u8, b: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_static_content(handle: Handle, mount: [*c]const u8, dir: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_untaped(handle: Handle, path: [*c]const u8) [*c]u8;
pub extern "c" fn aether_vcr_embed_set_strict_headers(handle: Handle, on: c_int) void;
pub extern "c" fn aether_vcr_embed_indent_code_blocks(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_emphasize_http_verbs(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_clear_redactions(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_clear_normalizations(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_clear_unredactions(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_clear_header_removals(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_clear_static_content(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_clear_untaped(handle: Handle) void;
pub extern "c" fn aether_vcr_embed_clear_format_options(handle: Handle) void;

pub extern "c" fn aether_vcr_embed_free_string(s: [*c]u8) void;

/// Mutation target field ids (used by redact / unredact / remove_header).
pub const Field = enum(c_int) {
    path = 1,
    response_body = 2,
    request_headers = 3,
    request_body = 4,
    response_headers = 5,
};

/// Diagnostic outcome of the last interaction. `ok` (0) means a clean match.
pub const Outcome = enum(c_int) {
    ok = 0,
    _,
};

pub const Error = error{
    OpenFailed,
    StartFailed,
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

/// Idiomatic wrapper around one native VCR server (one server per port).
pub const Vcr = struct {
    handle: Handle,
    allocator: std.mem.Allocator,

    /// Open a playback server replaying `tape_path`. `port` 0 picks a free
    /// port. Returns `error.OpenFailed` if the native side returns NULL.
    pub fn playback(
        allocator: std.mem.Allocator,
        label: [:0]const u8,
        tape_path: [:0]const u8,
        host: [:0]const u8,
        listen_port: c_int,
    ) Error!Vcr {
        const h = aether_vcr_embed_open_playback(label.ptr, tape_path.ptr, host.ptr, listen_port);
        if (h == null) return Error.OpenFailed;
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
    ) Error!Vcr {
        const h = aether_vcr_embed_open_record(label.ptr, tape_path.ptr, upstream_base.ptr, host.ptr, listen_port);
        if (h == null) return Error.OpenFailed;
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
    pub fn lastError(self: *Vcr) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_last_error(self.handle));
    }

    /// Add a redaction over `field` (replace `pat` -> `repl` on emit).
    pub fn redact(self: *Vcr, field: Field, pat: [:0]const u8, repl: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_redact(self.handle, @intFromEnum(field), pat.ptr, repl.ptr));
    }

    /// Whole-tape normalization: replace `pat` with a stable `name`.
    pub fn normalizeWholeTape(self: *Vcr, pat: [:0]const u8, name: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_normalize_whole_tape(self.handle, pat.ptr, name.ptr));
    }

    /// Whole-tape redaction: replace `pat` with `repl` across the tape.
    pub fn redactWholeTape(self: *Vcr, pat: [:0]const u8, repl: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_redact_whole_tape(self.handle, pat.ptr, repl.ptr));
    }

    /// Serve `dir` at the URL prefix `mount`, bypassing the tape.
    pub fn staticContent(self: *Vcr, mount: [:0]const u8, dir: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_static_content(self.handle, mount.ptr, dir.ptr));
    }

    /// Allow live pass-through for requests matching `path` (record mode).
    pub fn untaped(self: *Vcr, path: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_untaped(self.handle, path.ptr));
    }

    /// Stop serving. Idempotent; the handle is left dangling — call `close`
    /// only once.
    pub fn stop(self: *Vcr) void {
        aether_vcr_embed_stop(self.handle);
    }

    /// Stop and write the recorded tape to `tape_path`. Returns the native
    /// status string; caller frees with `allocator.free`.
    pub fn stopAndFlush(self: *Vcr, tape_path: [:0]const u8) ![]u8 {
        return takeString(self.allocator, aether_vcr_embed_stop_and_flush(self.handle, tape_path.ptr));
    }

    /// Stop the server and release the handle. Mirrors RAII close.
    pub fn close(self: *Vcr) void {
        aether_vcr_embed_stop(self.handle);
        self.handle = null;
    }
};
