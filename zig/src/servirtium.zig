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
//!
//! This file exposes two layers:
//!   * the raw `extern "c"` C ABI surface, and
//!   * idiomatic, allocator-aware wrappers: `Playback`/`Record` builders that
//!     mirror the Go binding's fluent API, returning a running `Server`.
//! `Vcr` (the original thin handle wrapper) is retained for low-level use.

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
pub extern "c" fn aether_vcr_embed_set_match_json_body(handle: Handle, on: c_int) void;
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

// ===========================================================================
// Low-level handle wrapper (retained for direct use).
// ===========================================================================

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

// ===========================================================================
// Fluent builder API (mirrors the Go binding).
// ===========================================================================

const HeaderRemoval = struct { field: Field, name: [:0]const u8 };
const Replacement = struct { field: Field, pattern: [:0]const u8, repl: [:0]const u8 };
const PatName = struct { pattern: [:0]const u8, name: [:0]const u8 };
const PatRepl = struct { pattern: [:0]const u8, repl: [:0]const u8 };
const Mount = struct { mount: [:0]const u8, dir: [:0]const u8 };
const NoteText = struct { title: [:0]const u8, body: [:0]const u8 };

fn applyBase(
    allocator: std.mem.Allocator,
    handle: Handle,
    header_removals: []const HeaderRemoval,
    static_content: []const Mount,
    untaped_paths: []const [:0]const u8,
) !void {
    for (header_removals) |hr| {
        try checkErr(allocator, aether_vcr_embed_remove_header(handle, @intFromEnum(hr.field), hr.name.ptr));
    }
    for (static_content) |sc| {
        try checkErr(allocator, aether_vcr_embed_static_content(handle, sc.mount.ptr, sc.dir.ptr));
    }
    for (untaped_paths) |p| {
        try checkErr(allocator, aether_vcr_embed_untaped(handle, p.ptr));
    }
}

/// A builder that replays a Servirtium markdown tape from disk.
pub const Playback = struct {
    allocator: std.mem.Allocator,
    tape_path: [:0]const u8,
    host_str: [:0]const u8 = "127.0.0.1",
    listen_port: c_int = 0,
    label_str: [:0]const u8 = "",
    strict_headers: bool = false,
    match_json_body: bool = false,
    header_removals: std.ArrayList(HeaderRemoval) = .empty,
    static_content: std.ArrayList(Mount) = .empty,
    untaped_paths: std.ArrayList([:0]const u8) = .empty,
    unredactions: std.ArrayList(Replacement) = .empty,

    /// Begin a playback fixture for `tape_path`. Configure fluently, then
    /// call `start`. The builder uses value semantics: each method consumes
    /// the builder and returns the modified copy, so `init(...).port(0)...`
    /// chains on a temporary (Zig won't take a `*` to an rvalue).
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
    /// Serve `dir` at the URL prefix `mount`, bypassing the tape.
    pub fn staticContent(self: Playback, mount: [:0]const u8, dir: [:0]const u8) Playback {
        var b = self;
        b.static_content.append(b.allocator, .{ .mount = mount, .dir = dir }) catch {};
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
        self.static_content.deinit(self.allocator);
        self.untaped_paths.deinit(self.allocator);
        self.unredactions.deinit(self.allocator);
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

    /// Replace a redacted placeholder in the recorded expectation with the
    /// real value the live SUT sends, so a scrubbed tape still matches.
    pub fn unredact(self: Playback, field: Field, pattern: [:0]const u8, repl: [:0]const u8) Playback {
        var b = self;
        b.unredactions.append(b.allocator, .{ .field = field, .pattern = pattern, .repl = repl }) catch {};
        return b;
    }

    /// Open the playback server, apply this fixture's config, then serve.
    pub fn start(self_in: Playback) !Server {
        var self = self_in;
        defer self.deinit();

        const handle = aether_vcr_embed_open_playback(
            self.label_str.ptr,
            self.tape_path.ptr,
            self.host_str.ptr,
            self.listen_port,
        );
        if (handle == null) return Error.OpenFailed;
        errdefer aether_vcr_embed_stop(handle);

        try applyBase(self.allocator, handle, self.header_removals.items, self.static_content.items, self.untaped_paths.items);
        if (self.strict_headers) aether_vcr_embed_set_strict_headers(handle, 1);
        if (self.match_json_body) aether_vcr_embed_set_match_json_body(handle, 1);
        for (self.unredactions.items) |u| {
            try checkErr(self.allocator, aether_vcr_embed_unredact(handle, @intFromEnum(u.field), u.pattern.ptr, u.repl.ptr));
        }

        if (aether_vcr_embed_start(handle) < 0) return Error.StartFailed;
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
    allocator: std.mem.Allocator,
    tape_path: [:0]const u8,
    upstream_base: [:0]const u8,
    host_str: [:0]const u8 = "127.0.0.1",
    listen_port: c_int = 0,
    label_str: [:0]const u8 = "",
    header_removals: std.ArrayList(HeaderRemoval) = .empty,
    static_content: std.ArrayList(Mount) = .empty,
    untaped_paths: std.ArrayList([:0]const u8) = .empty,
    redactions: std.ArrayList(Replacement) = .empty,
    normalizations: std.ArrayList(PatName) = .empty,
    whole_tape_redactions: std.ArrayList(PatRepl) = .empty,
    note_text: ?NoteText = null,
    indent_code_blocks: bool = false,
    emphasize_http_verbs: bool = false,
    fail_if_changed: bool = false,

    /// Begin a record fixture that forwards to `upstream_base` and writes
    /// `tape_path` on close. Configure fluently, then call `start`. Like
    /// `Playback`, the builder uses value semantics so it chains on a temporary.
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
    /// Serve `dir` at the URL prefix `mount` instead of forwarding upstream.
    pub fn staticContent(self: Record, mount: [:0]const u8, dir: [:0]const u8) Record {
        var b = self;
        b.static_content.append(b.allocator, .{ .mount = mount, .dir = dir }) catch {};
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
        self.static_content.deinit(self.allocator);
        self.untaped_paths.deinit(self.allocator);
        self.redactions.deinit(self.allocator);
        self.normalizations.deinit(self.allocator);
        self.whole_tape_redactions.deinit(self.allocator);
    }

    /// Scrub a value out of `field` before it lands on the tape.
    pub fn redact(self: Record, field: Field, pattern: [:0]const u8, repl: [:0]const u8) Record {
        var b = self;
        b.redactions.append(b.allocator, .{ .field = field, .pattern = pattern, .repl = repl }) catch {};
        return b;
    }

    /// Rewrite every distinct match of `pattern` to a stable `{{name-N}}`
    /// token across the whole tape (for correlated dynamic values).
    pub fn normalizeWholeTape(self: Record, pattern: [:0]const u8, name: [:0]const u8) Record {
        var b = self;
        b.normalizations.append(b.allocator, .{ .pattern = pattern, .name = name }) catch {};
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
        var self = self_in;
        defer self.deinit();

        const handle = aether_vcr_embed_open_record(
            self.label_str.ptr,
            self.tape_path.ptr,
            self.upstream_base.ptr,
            self.host_str.ptr,
            self.listen_port,
        );
        if (handle == null) return Error.OpenFailed;
        errdefer aether_vcr_embed_stop(handle);

        try applyBase(self.allocator, handle, self.header_removals.items, self.static_content.items, self.untaped_paths.items);
        if (self.indent_code_blocks) aether_vcr_embed_indent_code_blocks(handle);
        if (self.emphasize_http_verbs) aether_vcr_embed_emphasize_http_verbs(handle);
        for (self.redactions.items) |r| {
            try checkErr(self.allocator, aether_vcr_embed_redact(handle, @intFromEnum(r.field), r.pattern.ptr, r.repl.ptr));
        }
        for (self.normalizations.items) |n| {
            try checkErr(self.allocator, aether_vcr_embed_normalize_whole_tape(handle, n.pattern.ptr, n.name.ptr));
        }
        for (self.whole_tape_redactions.items) |w| {
            try checkErr(self.allocator, aether_vcr_embed_redact_whole_tape(handle, w.pattern.ptr, w.repl.ptr));
        }

        // Stage the note now (open_record cleared the tape) so it attaches to
        // the first interaction the SUT triggers — before serving begins.
        if (self.note_text) |n| {
            try checkErr(self.allocator, aether_vcr_embed_note(handle, n.title.ptr, n.body.ptr));
        }

        if (aether_vcr_embed_start(handle) < 0) return Error.StartFailed;
        return .{
            .handle = handle,
            .allocator = self.allocator,
            .host_str = self.host_str,
            .tape_path = self.tape_path,
            .record_mode = true,
            .fail_if_changed = self.fail_if_changed,
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

        if (!self.record_mode) {
            aether_vcr_embed_stop(h);
            return;
        }
        const res = if (self.fail_if_changed)
            aether_vcr_embed_stop_and_flush_fail_if_changed(h, self.tape_path.ptr)
        else
            aether_vcr_embed_stop_and_flush(h, self.tape_path.ptr);
        try checkErr(self.allocator, res);
    }

    /// Stop without flushing (escape hatch for teardown after a failure).
    pub fn stop(self: *Server) void {
        if (self.handle == null) return;
        aether_vcr_embed_stop(self.handle);
        self.handle = null;
    }
};
