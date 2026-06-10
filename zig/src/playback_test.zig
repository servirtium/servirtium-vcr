//! Playback-mode scenarios, ported 1:1 from the Go binding's
//! `playback_test.go`. Each opens a playback `Server` on an OS-assigned port,
//! drives it with `curl`, and asserts the body + the diagnostic outcome.

const std = @import("std");
const servirtium = @import("servirtium.zig");
const testutil = @import("testutil.zig");

const Field = servirtium.Field;
const Outcome = servirtium.Outcome;

test "playback replays a recorded GET" {
    const allocator = std.testing.allocator;

    var srv = try servirtium.Playback.init(allocator, "tapes/single_get.md")
        .label("replays a recorded GET")
        .port(0)
        .start();
    defer srv.close() catch {};

    try std.testing.expect(srv.port() > 0);
    try std.testing.expectEqual(@as(c_int, 1), srv.tapeLength());

    const base = try srv.baseUrl();
    defer allocator.free(base);
    const url = try std.fmt.allocPrint(allocator, "{s}/ok", .{base});
    defer allocator.free(url);

    var res = try testutil.curl(allocator, std.testing.io, .{ .url = url });
    defer res.deinit(allocator);
    try std.testing.expectEqual(@as(u32, 200), res.status);
    try std.testing.expectEqualStrings("ok-body", res.body);

    try std.testing.expectEqual(Outcome.ok, srv.lastKind());
    const err = try srv.lastError();
    defer allocator.free(err);
    try std.testing.expectEqualStrings("", err);
}

test "playback flags a path mismatch via diagnostics" {
    const allocator = std.testing.allocator;

    var srv = try servirtium.Playback.init(allocator, "tapes/single_get.md").port(0).start();
    defer srv.close() catch {};

    const base = try srv.baseUrl();
    defer allocator.free(base);
    const url = try std.fmt.allocPrint(allocator, "{s}/nope", .{base});
    defer allocator.free(url);

    var res = try testutil.curl(allocator, std.testing.io, .{ .url = url });
    defer res.deinit(allocator);

    try std.testing.expect(srv.lastKind() != Outcome.ok);
    const err = try srv.lastError();
    defer allocator.free(err);
    try std.testing.expect(err.len != 0);
}

test "playback unredaction lets a scrubbed tape match" {
    const allocator = std.testing.allocator;

    var srv = try servirtium.Playback.init(allocator, "tapes/secure_get.md")
        .strictHeaders()
        .unredact(Field.request_headers, "Bearer REDACTED", "Bearer real-token")
        .port(0)
        .start();
    defer srv.close() catch {};

    const base = try srv.baseUrl();
    defer allocator.free(base);
    const url = try std.fmt.allocPrint(allocator, "{s}/secure", .{base});
    defer allocator.free(url);

    // curl -H 'Authorization: Bearer real-token', and suppress curl's default
    // User-Agent so the strict (Authorization-only) tape block still matches.
    const res = try std.process.run(allocator, std.testing.io, .{
        .argv = &.{
            "curl", "-s",
            "-H",   "Authorization: Bearer real-token",
            "-H",   "User-Agent:",
            "-H",   "Accept:",
            url,
        },
    });
    defer allocator.free(res.stdout);
    defer allocator.free(res.stderr);

    const last_err = try srv.lastError();
    defer allocator.free(last_err);
    try std.testing.expectEqualStrings("secret-ok", res.stdout);
    try std.testing.expectEqual(Outcome.ok, srv.lastKind());
}

test "playback strict matching flags a missing request header" {
    const allocator = std.testing.allocator;

    var srv = try servirtium.Playback.init(allocator, "tapes/secure_get.md")
        .strictHeaders()
        .unredact(Field.request_headers, "Bearer REDACTED", "Bearer real-token")
        .port(0)
        .start();
    defer srv.close() catch {};

    const base = try srv.baseUrl();
    defer allocator.free(base);
    const url = try std.fmt.allocPrint(allocator, "{s}/secure", .{base});
    defer allocator.free(url);

    // No Authorization header at all -> mismatch.
    var res = try testutil.curl(allocator, std.testing.io, .{ .url = url });
    defer res.deinit(allocator);

    try std.testing.expect(srv.lastKind() != Outcome.ok);
    const err = try srv.lastError();
    defer allocator.free(err);
    try std.testing.expect(err.len != 0);
}

test "playback static content is served from disk" {
    const allocator = std.testing.allocator;

    var tmp = std.testing.tmpDir(.{});
    defer tmp.cleanup();
    try tmp.dir.writeFile(std.testing.io, .{ .sub_path = "asset.txt", .data = "static-asset" });
    const rel = try std.fs.path.join(allocator, &.{ ".zig-cache", "tmp", &tmp.sub_path });
    defer allocator.free(rel);
    const dir_z = try testutil.cwdJoinZ(allocator, rel);
    defer allocator.free(dir_z);

    var srv = try servirtium.Playback.init(allocator, "tapes/single_get.md")
        .staticContent("/files", dir_z)
        .port(0)
        .start();
    defer srv.close() catch {};

    const base = try srv.baseUrl();
    defer allocator.free(base);

    // From disk:
    {
        const url = try std.fmt.allocPrint(allocator, "{s}/files/asset.txt", .{base});
        defer allocator.free(url);
        var res = try testutil.curl(allocator, std.testing.io, .{ .url = url });
        defer res.deinit(allocator);
        try std.testing.expectEqualStrings("static-asset", res.body);
    }
    // From the tape (unaffected):
    {
        const url = try std.fmt.allocPrint(allocator, "{s}/ok", .{base});
        defer allocator.free(url);
        var res = try testutil.curl(allocator, std.testing.io, .{ .url = url });
        defer res.deinit(allocator);
        try std.testing.expectEqualStrings("ok-body", res.body);
    }
}

test "playback untaped path 404s without consuming the cursor" {
    const allocator = std.testing.allocator;

    var srv = try servirtium.Playback.init(allocator, "tapes/single_get.md")
        .untaped("/favicon.ico")
        .port(0)
        .start();
    defer srv.close() catch {};

    const base = try srv.baseUrl();
    defer allocator.free(base);

    // Untaped path answers 404 without touching the cursor.
    {
        const url = try std.fmt.allocPrint(allocator, "{s}/favicon.ico", .{base});
        defer allocator.free(url);
        var res = try testutil.curl(allocator, std.testing.io, .{ .url = url });
        defer res.deinit(allocator);
        try std.testing.expectEqual(@as(u32, 404), res.status);
    }
    // The normal recorded interaction still replays (cursor wasn't consumed).
    {
        const url = try std.fmt.allocPrint(allocator, "{s}/ok", .{base});
        defer allocator.free(url);
        var res = try testutil.curl(allocator, std.testing.io, .{ .url = url });
        defer res.deinit(allocator);
        try std.testing.expectEqual(@as(u32, 200), res.status);
        try std.testing.expectEqualStrings("ok-body", res.body);
    }
}

test "two playback servers run at once (one server per port)" {
    const allocator = std.testing.allocator;

    var a = try servirtium.Playback.init(allocator, "tapes/single_get.md").port(0).start();
    defer a.close() catch {};
    var b = try servirtium.Playback.init(allocator, "tapes/secure_get.md")
        .strictHeaders()
        .unredact(Field.request_headers, "Bearer REDACTED", "Bearer real-token")
        .port(0)
        .start();
    defer b.close() catch {};

    try std.testing.expect(a.port() != b.port());

    // Server A replays its own tape.
    {
        const base = try a.baseUrl();
        defer allocator.free(base);
        const url = try std.fmt.allocPrint(allocator, "{s}/ok", .{base});
        defer allocator.free(url);
        var res = try testutil.curl(allocator, std.testing.io, .{ .url = url });
        defer res.deinit(allocator);
        try std.testing.expectEqualStrings("ok-body", res.body);
        try std.testing.expectEqual(Outcome.ok, a.lastKind());
    }
    // Server B replays its own (different) tape, independently.
    {
        const base = try b.baseUrl();
        defer allocator.free(base);
        const url = try std.fmt.allocPrint(allocator, "{s}/secure", .{base});
        defer allocator.free(url);
        const res = try std.process.run(allocator, std.testing.io, .{
            .argv = &.{
                "curl", "-s",
                "-H",   "Authorization: Bearer real-token",
                "-H",   "Accept:",
                "-H",   "User-Agent:",
                url,
            },
        });
        defer allocator.free(res.stdout);
        defer allocator.free(res.stderr);
        try std.testing.expectEqualStrings("secret-ok", res.stdout);
        try std.testing.expectEqual(Outcome.ok, b.lastKind());
    }
}
