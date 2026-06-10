//! Test helpers for the Zig binding suite:
//!   * `curl` — shell out to `curl` (status + body capture) so we don't fight
//!     `std.http.Client`'s churning 0.16 API.
//!   * `FakeUpstream` — a throwaway HTTP/1.1 upstream for record-mode tests,
//!     bound to 127.0.0.1:0 on a background thread. It parses the request line
//!     and body, records the last method/body it saw, and replies with a fixed
//!     body plus a `Content-Length` (no chunking), exercising the recorder's
//!     forward path.
//!
//! The upstream uses `std.Io.net` (the 0.16 home of sockets — there is no
//! top-level `std.net`). It runs its own `std.Io.Threaded` instance on the
//! accept thread, independent of the test runner's `std.testing.io`.

const std = @import("std");
const net = std.Io.net;

/// Absolute path of the process cwd (libc `getcwd`; libc is linked). Caller
/// frees. `std.Io.Dir` in 0.16 has no `realpathAlloc`, and the native engine
/// resolves tape paths against the process cwd, so we build absolute paths
/// from this for record-mode tapes and static-content dirs.
pub fn cwdAlloc(allocator: std.mem.Allocator) ![]u8 {
    var buf: [std.fs.max_path_bytes]u8 = undefined;
    const p = std.c.getcwd(&buf, buf.len) orelse return error.GetCwdFailed;
    return allocator.dupe(u8, std.mem.sliceTo(p, 0));
}

/// Join the process cwd with `rel` into a NUL-terminated absolute path.
pub fn cwdJoinZ(allocator: std.mem.Allocator, rel: []const u8) ![:0]u8 {
    const base = try cwdAlloc(allocator);
    defer allocator.free(base);
    return std.fs.path.joinZ(allocator, &.{ base, rel });
}

/// Result of a curl invocation: HTTP status code and response body.
pub const HttpResult = struct {
    status: u32,
    body: []u8,

    pub fn deinit(self: *HttpResult, allocator: std.mem.Allocator) void {
        allocator.free(self.body);
    }
};

/// GET (or, with `method`/`data`, any verb) `url` via curl. Captures the body
/// on stdout and the numeric status via `-w`. Caller frees `result.body`.
pub fn curl(allocator: std.mem.Allocator, io: std.Io, args: struct {
    url: []const u8,
    method: ?[]const u8 = null,
    data: ?[]const u8 = null,
    content_type: ?[]const u8 = null,
}) !HttpResult {
    // Body then a marker then the status code, so we can split cleanly even
    // when the body contains newlines.
    const marker = "\n@@STATUS@@";
    var argv: std.ArrayList([]const u8) = .empty;
    defer argv.deinit(allocator);
    try argv.append(allocator, "curl");
    try argv.append(allocator, "-s");
    try argv.append(allocator, "-w");
    try argv.append(allocator, marker ++ "%{http_code}");
    if (args.method) |m| {
        try argv.append(allocator, "-X");
        try argv.append(allocator, m);
    }
    var ct_header: ?[]u8 = null;
    defer if (ct_header) |h| allocator.free(h);
    if (args.content_type) |ct| {
        try argv.append(allocator, "-H");
        // curl wants "Content-Type: <ct>" — build it on the caller's allocator.
        const hdr = try std.fmt.allocPrint(allocator, "Content-Type: {s}", .{ct});
        ct_header = hdr;
        try argv.append(allocator, hdr);
    }
    if (args.data) |d| {
        try argv.append(allocator, "--data-binary");
        try argv.append(allocator, d);
    }
    try argv.append(allocator, args.url);

    const result = try std.process.run(allocator, io, .{ .argv = argv.items });
    defer allocator.free(result.stdout);
    defer allocator.free(result.stderr);

    const idx = std.mem.lastIndexOf(u8, result.stdout, marker) orelse return error.NoStatus;
    const body = result.stdout[0..idx];
    const code_str = result.stdout[idx + marker.len ..];
    const status = try std.fmt.parseInt(u32, std.mem.trim(u8, code_str, " \r\n"), 10);
    return .{ .status = status, .body = try allocator.dupe(u8, body) };
}

/// A throwaway HTTP/1.1 upstream for record-mode tests.
pub const FakeUpstream = struct {
    allocator: std.mem.Allocator,
    io_threaded: *std.Io.Threaded,
    server: net.Server,
    thread: std.Thread,
    bound_port: u16,

    // Response config (set before driving the recorder).
    response_body: []const u8 = "upstream-body",
    content_type: []const u8 = "text/plain",
    extra_header_name: ?[]const u8 = null,
    extra_header_value: ?[]const u8 = null,

    // Captured by the handler. Read only after the driving request completes
    // (the HTTP round-trip provides the happens-before), so no lock needed.
    last_method: [64]u8 = undefined,
    last_method_len: usize = 0,
    running: std.atomic.Value(bool) = .init(true),

    /// Start the upstream on 127.0.0.1:0 and spawn its accept loop. Configure
    /// `response_body` / `content_type` / `extra_header_*` BEFORE driving the
    /// recorder; they're read under the mutex on each request.
    pub fn init(allocator: std.mem.Allocator) !*FakeUpstream {
        const self = try allocator.create(FakeUpstream);
        errdefer allocator.destroy(self);

        const io_threaded = try allocator.create(std.Io.Threaded);
        errdefer allocator.destroy(io_threaded);
        io_threaded.* = std.Io.Threaded.init(allocator, .{});
        const io = io_threaded.io();

        var addr = net.IpAddress{ .ip4 = net.Ip4Address.loopback(0) };
        const server = try addr.listen(io, .{ .reuse_address = true });
        const port = server.socket.address.getPort();

        self.* = .{
            .allocator = allocator,
            .io_threaded = io_threaded,
            .server = server,
            .thread = undefined,
            .bound_port = port,
        };
        self.thread = try std.Thread.spawn(.{}, acceptLoop, .{self});
        return self;
    }

    pub fn baseUrl(self: *FakeUpstream, allocator: std.mem.Allocator) ![:0]u8 {
        return std.fmt.allocPrintSentinel(allocator, "http://127.0.0.1:{d}", .{self.bound_port}, 0);
    }

    pub fn lastMethod(self: *FakeUpstream) []const u8 {
        return self.last_method[0..self.last_method_len];
    }

    /// Stop the accept loop and free resources.
    pub fn deinit(self: *FakeUpstream) void {
        self.running.store(false, .seq_cst);
        // Nudge the accept loop with a throwaway connection so accept() returns.
        self.poke();
        self.thread.join();
        self.server.deinit(self.io_threaded.io());
        self.io_threaded.deinit();
        const allocator = self.allocator;
        allocator.destroy(self.io_threaded);
        allocator.destroy(self);
    }

    fn poke(self: *FakeUpstream) void {
        const io = self.io_threaded.io();
        var addr = net.IpAddress{ .ip4 = net.Ip4Address.loopback(self.bound_port) };
        const stream = addr.connect(io, .{ .mode = .stream }) catch return;
        stream.close(io);
    }

    fn acceptLoop(self: *FakeUpstream) void {
        const io = self.io_threaded.io();
        while (self.running.load(.seq_cst)) {
            const stream = self.server.accept(io) catch return;
            self.handle(io, stream) catch {};
            stream.close(io);
        }
    }

    fn handle(self: *FakeUpstream, io: std.Io, stream: net.Stream) !void {
        var rbuf: [8192]u8 = undefined;
        var reader = stream.reader(io, &rbuf);
        const r = &reader.interface;

        // Request line: METHOD SP TARGET SP HTTP/1.1 CRLF. The returned slice
        // points into the reader's buffer and is invalidated by subsequent
        // reads, so copy the method out immediately.
        const request_line = r.takeDelimiterInclusive('\n') catch return;
        const sp = std.mem.indexOfScalar(u8, request_line, ' ') orelse return;
        {
            const method = request_line[0..sp];
            const n = @min(method.len, self.last_method.len);
            @memcpy(self.last_method[0..n], method[0..n]);
            self.last_method_len = n;
        }

        var content_length: usize = 0;
        // Consume headers until a blank line.
        while (true) {
            const line = r.takeDelimiterInclusive('\n') catch return;
            const trimmed = std.mem.trim(u8, line, " \r\n");
            if (trimmed.len == 0) break;
            if (std.ascii.startsWithIgnoreCase(trimmed, "content-length:")) {
                const v = std.mem.trim(u8, trimmed["content-length:".len..], " ");
                content_length = std.fmt.parseInt(usize, v, 10) catch 0;
            }
        }
        // Drain the request body (so the client write completes).
        if (content_length > 0) {
            _ = r.discardAll(content_length) catch {};
        }

        // Build and send the response.
        var wbuf: [4096]u8 = undefined;
        var writer = stream.writer(io, &wbuf);
        const w = &writer.interface;
        try w.print("HTTP/1.1 200 OK\r\nContent-Type: {s}\r\n", .{self.content_type});
        if (self.extra_header_name) |name| {
            try w.print("{s}: {s}\r\n", .{ name, self.extra_header_value.? });
        }
        try w.print("Content-Length: {d}\r\nConnection: close\r\n\r\n", .{self.response_body.len});
        try w.writeAll(self.response_body);
        try w.flush();
    }
};
