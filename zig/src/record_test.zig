//! Record-mode scenarios, ported from the Go binding's `record_test.go`:
//! record-then-replay a GET, and record+replay a POST with a body. Each drives
//! a throwaway `FakeUpstream` and records to a temp tape (never into tapes/).

const std = @import("std");
const servirtium = @import("servirtium.zig");
const testutil = @import("testutil.zig");

const Outcome = servirtium.Outcome;

/// Build a NUL-terminated absolute path to `name` inside `tmp`. The TmpDir
/// lives at `.zig-cache/tmp/<sub_path>` relative to the process cwd; we
/// absolutize via libc getcwd so the native engine resolves the same file.
fn tapePathZ(allocator: std.mem.Allocator, tmp: *std.testing.TmpDir, name: []const u8) ![:0]u8 {
    const rel = try std.fs.path.join(allocator, &.{ ".zig-cache", "tmp", &tmp.sub_path, name });
    defer allocator.free(rel);
    return testutil.cwdJoinZ(allocator, rel);
}

fn readTape(allocator: std.mem.Allocator, path: [:0]const u8) ![]u8 {
    return std.Io.Dir.cwd().readFileAlloc(std.testing.io, path, allocator, .unlimited);
}

test "record then replays the same interaction" {
    const allocator = std.testing.allocator;

    var up = try testutil.FakeUpstream.init(allocator);
    defer up.deinit();
    up.response_body = "hello-from-upstream";

    const upstream = try up.baseUrl(allocator);
    defer allocator.free(upstream);

    var tmp = std.testing.tmpDir(.{});
    defer tmp.cleanup();
    const tape = try tapePathZ(allocator, &tmp, "rec.md");
    defer allocator.free(tape);

    // ---- record ----
    {
        var rec = try servirtium.Record.init(allocator, tape, upstream).port(0).start();
        const base = try rec.baseUrl();
        defer allocator.free(base);
        const url = try std.fmt.allocPrint(allocator, "{s}/greeting", .{base});
        defer allocator.free(url);
        var res = try testutil.curl(allocator, std.testing.io, .{ .url = url });
        defer res.deinit(allocator);
        try std.testing.expectEqualStrings("hello-from-upstream", res.body);
        try rec.close(); // flushes the tape
    }

    // The record-mode close should have written the tape.
    {
        const text = try readTape(allocator, tape);
        defer allocator.free(text);
        try std.testing.expect(text.len > 0);
    }

    // ---- replay (offline) ----
    {
        var play = try servirtium.Playback.init(allocator, tape).port(0).start();
        defer play.close() catch {};
        const base = try play.baseUrl();
        defer allocator.free(base);
        const url = try std.fmt.allocPrint(allocator, "{s}/greeting", .{base});
        defer allocator.free(url);
        var res = try testutil.curl(allocator, std.testing.io, .{ .url = url });
        defer res.deinit(allocator);
        try std.testing.expectEqualStrings("hello-from-upstream", res.body);
        try std.testing.expectEqual(Outcome.ok, play.lastKind());
    }
}

test "record and replay a POST with a body" {
    const allocator = std.testing.allocator;

    var up = try testutil.FakeUpstream.init(allocator);
    defer up.deinit();
    up.response_body = "created";

    const upstream = try up.baseUrl(allocator);
    defer allocator.free(upstream);

    var tmp = std.testing.tmpDir(.{});
    defer tmp.cleanup();
    const tape = try tapePathZ(allocator, &tmp, "rec.md");
    defer allocator.free(tape);

    // ---- record the POST ----
    {
        var rec = try servirtium.Record.init(allocator, tape, upstream).port(0).start();
        const base = try rec.baseUrl();
        defer allocator.free(base);
        const url = try std.fmt.allocPrint(allocator, "{s}/submit", .{base});
        defer allocator.free(url);
        var res = try testutil.curl(allocator, std.testing.io, .{
            .url = url,
            .method = "POST",
            .data = "ping",
            .content_type = "text/plain",
        });
        defer res.deinit(allocator);
        try std.testing.expectEqualStrings("created", res.body);
        try std.testing.expectEqualStrings("POST", up.lastMethod());
        try rec.close();
    }

    // ---- replay the same POST offline ----
    {
        var play = try servirtium.Playback.init(allocator, tape).port(0).start();
        defer play.close() catch {};
        const base = try play.baseUrl();
        defer allocator.free(base);
        const url = try std.fmt.allocPrint(allocator, "{s}/submit", .{base});
        defer allocator.free(url);
        var res = try testutil.curl(allocator, std.testing.io, .{
            .url = url,
            .method = "POST",
            .data = "ping",
            .content_type = "text/plain",
        });
        defer res.deinit(allocator);
        try std.testing.expectEqualStrings("created", res.body);
        try std.testing.expectEqual(Outcome.ok, play.lastKind());
    }
}
