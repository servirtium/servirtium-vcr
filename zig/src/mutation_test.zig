//! Record-mode breadth, ported from the Go binding's `mutation_test.go`:
//! response-body redaction, notes, named-header removal, that per-handle
//! mutation state does not leak between fixtures, and fail-if-changed drift.

const std = @import("std");
const servirtium = @import("servirtium.zig");
const testutil = @import("testutil.zig");

const Field = servirtium.Field;

fn tapePathZ(allocator: std.mem.Allocator, tmp: *std.testing.TmpDir, name: []const u8) ![:0]u8 {
    const rel = try std.fs.path.join(allocator, &.{ ".zig-cache", "tmp", &tmp.sub_path, name });
    defer allocator.free(rel);
    return testutil.cwdJoinZ(allocator, rel);
}

fn readTape(allocator: std.mem.Allocator, path: [:0]const u8) ![]u8 {
    return std.Io.Dir.cwd().readFileAlloc(std.testing.io, path, allocator, .unlimited);
}

/// GET base+"/x" against a running server; discards the response.
fn poke(allocator: std.mem.Allocator, srv: *servirtium.Server) !void {
    const base = try srv.baseUrl();
    defer allocator.free(base);
    const url = try std.fmt.allocPrint(allocator, "{s}/x", .{base});
    defer allocator.free(url);
    var res = try testutil.curl(allocator, std.testing.io, .{ .url = url });
    res.deinit(allocator);
}

test "record redacts the response body before it lands on the tape" {
    const allocator = std.testing.allocator;

    var up = try testutil.FakeUpstream.init(allocator);
    defer up.deinit();
    up.response_body = "value=secret-token";
    const upstream = try up.baseUrl(allocator);
    defer allocator.free(upstream);

    var tmp = std.testing.tmpDir(.{});
    defer tmp.cleanup();
    const tape = try tapePathZ(allocator, &tmp, "rec.md");
    defer allocator.free(tape);

    var rec = try servirtium.Record.init(allocator, tape, upstream)
        .redact(Field.response_body, "secret-token", "REDACTED")
        .port(0)
        .start();
    try poke(allocator, &rec);
    try rec.close();

    const text = try readTape(allocator, tape);
    defer allocator.free(text);
    try std.testing.expect(std.mem.indexOf(u8, text, "REDACTED") != null);
    try std.testing.expect(std.mem.indexOf(u8, text, "secret-token") == null);
}

test "record attaches a note" {
    const allocator = std.testing.allocator;

    var up = try testutil.FakeUpstream.init(allocator);
    defer up.deinit();
    const upstream = try up.baseUrl(allocator);
    defer allocator.free(upstream);

    var tmp = std.testing.tmpDir(.{});
    defer tmp.cleanup();
    const tape = try tapePathZ(allocator, &tmp, "rec.md");
    defer allocator.free(tape);

    var rec = try servirtium.Record.init(allocator, tape, upstream)
        .note("Why this exists", "documents the call")
        .port(0)
        .start();
    try poke(allocator, &rec);
    try rec.close();

    const text = try readTape(allocator, tape);
    defer allocator.free(text);
    try std.testing.expect(std.mem.indexOf(u8, text, "## [Note] Why this exists:") != null);
}

test "record removes a named response header" {
    const allocator = std.testing.allocator;

    var up = try testutil.FakeUpstream.init(allocator);
    defer up.deinit();
    up.extra_header_name = "X-Trace-Id";
    up.extra_header_value = "abc123";
    const upstream = try up.baseUrl(allocator);
    defer allocator.free(upstream);

    var tmp = std.testing.tmpDir(.{});
    defer tmp.cleanup();
    const tape1 = try tapePathZ(allocator, &tmp, "rec1.md");
    defer allocator.free(tape1);
    const tape2 = try tapePathZ(allocator, &tmp, "rec2.md");
    defer allocator.free(tape2);

    // Phase 1: without removal, the header is captured on the tape.
    {
        var rec = try servirtium.Record.init(allocator, tape1, upstream).port(0).start();
        try poke(allocator, &rec);
        try rec.close();
        const text = try readTape(allocator, tape1);
        defer allocator.free(text);
        try std.testing.expect(std.mem.indexOf(u8, text, "X-Trace-Id") != null);
    }

    // Phase 2: with removal, it's gone.
    {
        var rec = try servirtium.Record.init(allocator, tape2, upstream)
            .removeHeader(Field.response_headers, "X-Trace-Id")
            .port(0)
            .start();
        try poke(allocator, &rec);
        try rec.close();
        const text = try readTape(allocator, tape2);
        defer allocator.free(text);
        try std.testing.expect(std.mem.indexOf(u8, text, "X-Trace-Id") == null);
    }
}

test "mutation state does not leak between fixtures" {
    const allocator = std.testing.allocator;

    var up = try testutil.FakeUpstream.init(allocator);
    defer up.deinit();
    up.response_body = "leak";
    const upstream = try up.baseUrl(allocator);
    defer allocator.free(upstream);

    var tmp = std.testing.tmpDir(.{});
    defer tmp.cleanup();
    const tape1 = try tapePathZ(allocator, &tmp, "rec1.md");
    defer allocator.free(tape1);
    const tape2 = try tapePathZ(allocator, &tmp, "rec2.md");
    defer allocator.free(tape2);

    // Fixture A registers a redaction for "leak".
    {
        var a = try servirtium.Record.init(allocator, tape1, upstream)
            .redact(Field.response_body, "leak", "SCRUBBED")
            .port(0)
            .start();
        try poke(allocator, &a);
        try a.close();
        const text = try readTape(allocator, tape1);
        defer allocator.free(text);
        try std.testing.expect(std.mem.indexOf(u8, text, "SCRUBBED") != null);
    }

    // Fixture B registers NO redaction; A's must not leak in.
    {
        var b = try servirtium.Record.init(allocator, tape2, upstream).port(0).start();
        try poke(allocator, &b);
        try b.close();
        const text = try readTape(allocator, tape2);
        defer allocator.free(text);
        try std.testing.expect(std.mem.indexOf(u8, text, "leak") != null);
        try std.testing.expect(std.mem.indexOf(u8, text, "SCRUBBED") == null);
    }
}

test "fail-if-changed returns an error on drift" {
    const allocator = std.testing.allocator;

    var up = try testutil.FakeUpstream.init(allocator);
    defer up.deinit();
    const upstream = try up.baseUrl(allocator);
    defer allocator.free(upstream);

    var tmp = std.testing.tmpDir(.{});
    defer tmp.cleanup();
    const tape = try tapePathZ(allocator, &tmp, "rec.md");
    defer allocator.free(tape);

    // First record creates the tape — no drift, no error.
    up.response_body = "v1";
    {
        var first = try servirtium.Record.init(allocator, tape, upstream).failIfChanged().port(0).start();
        try poke(allocator, &first);
        try first.close(); // should not drift
    }

    // Re-record with a changed upstream — close must return an error, while
    // still writing the new tape for git diff.
    up.response_body = "v2-changed";
    {
        var second = try servirtium.Record.init(allocator, tape, upstream).failIfChanged().port(0).start();
        try poke(allocator, &second);
        try std.testing.expectError(servirtium.Error.VcrError, second.close());
    }

    const text = try readTape(allocator, tape);
    defer allocator.free(text);
    try std.testing.expect(std.mem.indexOf(u8, text, "v2-changed") != null);
}
