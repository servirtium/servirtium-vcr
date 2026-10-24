//! Record-mode scenarios, ported from the Go binding's `record_test.go`:
//! record-then-replay a GET, and record+replay a POST with a body. Each drives
//! a throwaway `FakeUpstream` and records to a temp tape (never into tapes/).

const std = @import("std");
const servirtium = @import("servirtium.zig");
const testutil = @import("testutil.zig");

const Outcome = servirtium.Outcome;

/// Build a NUL-terminated absolute path to `name` inside `tmp`. The TmpDir
/// lives at `.zig-cache/tmp/<sub_path>` relative to the process cwd; we
/// absolutize via libc getcwd so libservirtium_vcr resolves the same file.
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


fn fixtureRun(allocator: std.mem.Allocator, args: []const []const u8) ![]u8 {
    var argv: std.ArrayList([]const u8) = .empty;
    defer argv.deinit(allocator);
    try argv.appendSlice(allocator, &.{"../target/test-tools/redaction_fixture"});
    try argv.appendSlice(allocator, args);
    const result = try std.process.run(allocator, std.testing.io, .{ .argv = argv.items });
    defer allocator.free(result.stderr);
    errdefer allocator.free(result.stdout);
    switch (result.term) {
        .exited => |code| if (code != 0) {
            std.debug.print("fixture failed: {s}{s}\n", .{result.stdout, result.stderr});
            return error.FixtureFailed;
        },
        else => return error.FixtureFailed,
    }
    return result.stdout;
}

test "structured redaction helpers preserve upstream credentials" {
    const allocator = std.testing.allocator;
    var tmp = std.testing.tmpDir(.{});
    defer tmp.cleanup();
    const tape = try tapePathZ(allocator, &tmp, "tape.md");
    defer allocator.free(tape);
    const directory = std.fs.path.dirname(tape).?;
    const upstream_output = try fixtureRun(allocator, &.{"start", directory});
    defer allocator.free(upstream_output);
    const upstream = try allocator.dupeZ(u8, std.mem.trim(u8, upstream_output, "\r\n "));
    defer allocator.free(upstream);
    var rec = try servirtium.Record.init(allocator, tape, upstream)
        .redactHeader("Authorization").redactQueryParam("password").redactJsonField("secretKey").start();
    defer rec.close() catch {};
    const base = try rec.baseUrl();
    defer allocator.free(base);
    const driven = try fixtureRun(allocator, &.{"drive", directory, base});
    allocator.free(driven);
    try std.testing.expectEqual(Outcome.ok, rec.lastKind());
    try rec.close();
    const checked = try fixtureRun(allocator, &.{"check", directory});
    allocator.free(checked);
}


test "retained replay diagnostics and observer reads" {
    const allocator = std.testing.allocator;
    const tape = try testutil.cwdJoinZ(allocator, "../core_tests/diagnostics/playback.md");
    defer allocator.free(tape);
    var server = try servirtium.Playback.init(allocator, tape).start();
    defer server.close() catch {};
    server.testContext("Zig scenario", "scenario.test", 123);
    const base = try server.baseUrl();
    defer allocator.free(base);
    const driven = try std.process.run(allocator, std.testing.io, .{ .argv = &.{ "../target/test-tools/diagnostic_fixture", base } });
    defer allocator.free(driven.stdout);
    defer allocator.free(driven.stderr);
    switch (driven.term) {
        .exited => |code| try std.testing.expectEqual(@as(u8, 0), code),
        else => return error.DriverFailed,
    }
    const observed = try server.readLastError(false);
    defer allocator.free(observed);
    try std.testing.expect(std.mem.indexOf(u8, observed, "owner") != null);
    try std.testing.expect(std.mem.indexOf(u8, observed, "scenario.test:123") != null);
    const before = try server.diagnosticsJson(false);
    defer allocator.free(before);
    try std.testing.expect(std.mem.indexOf(u8, before, "\"retrieved\":1") == null);
    const consumed = try server.lastError();
    defer allocator.free(consumed);
    const after = try server.diagnosticsJson(false);
    defer allocator.free(after);
    try std.testing.expect(std.mem.indexOf(u8, after, "\"retrieved\":0") != null);
    try std.testing.expect(std.mem.indexOf(u8, after, "\"retrieved\":1") != null);
    try std.testing.expectError(servirtium.Error.VcrError, server.assertNoMismatches());
    server.testContext("next test", "", 0);
    try server.assertNoMismatches();
    const empty = try server.diagnosticsJson(false);
    defer allocator.free(empty);
    try std.testing.expectEqualStrings("[]", empty);
}

fn secretFixtureRun(allocator: std.mem.Allocator, args: []const []const u8) ![]u8 {
    var argv: std.ArrayList([]const u8) = .empty;
    defer argv.deinit(allocator);
    try argv.appendSlice(allocator, &.{"../target/test-tools/secret_fixture"});
    try argv.appendSlice(allocator, args);
    const result = try std.process.run(allocator, std.testing.io, .{ .argv = argv.items });
    defer allocator.free(result.stderr);
    errdefer allocator.free(result.stdout);
    switch (result.term) {
        .exited => |code| if (code != 0) {
            std.debug.print("fixture failed: {s}{s}\n", .{result.stdout, result.stderr});
            return error.FixtureFailed;
        },
        else => return error.FixtureFailed,
    }
    return result.stdout;
}

const secretServices = [_][]const u8{"accounts", "billing", "shipping", "support"};
const secretNames = [_][:0]const u8{"ACCOUNTS_PASSWORD", "BILLING_PASSWORD", "SHIPPING_PASSWORD", "SUPPORT_PASSWORD"};
const secretPasswords = [_][:0]const u8{"pw-accounts&secret", "pw-billing&secret", "pw-shipping&secret", "pw-support&secret"};
fn secretRedact(context: ?*anyopaque, key: []const u8, request: servirtium.SecretRequest) anyerror!?[:0]const u8 {
    if (!std.mem.eql(u8, key, "password")) return null;
    const count: *usize = @ptrCast(@alignCast(context.?)); count.* += 1;
    for (secretServices, 0..) |service, i| {
        if (std.mem.startsWith(u8, request.path[1..], service)) return secretNames[i];
    }
    return null;
}
fn secretResolve(_: ?*anyopaque, token: []const u8) anyerror!?[:0]const u8 {
    for (secretNames, 0..) |name, i| { if (std.mem.eql(u8, token, name)) return secretPasswords[i]; }
    return null;
}
test "named secrets round trip across four services" {
    const allocator = std.testing.allocator;
    var tmp = std.testing.tmpDir(.{}); defer tmp.cleanup();
    const tape = try tapePathZ(allocator, &tmp, "tape.md"); defer allocator.free(tape);
    const directory = std.fs.path.dirname(tape).?;
    const upstream_output = try secretFixtureRun(allocator, &.{"start", directory}); defer allocator.free(upstream_output);
    const upstream = try allocator.dupeZ(u8, std.mem.trim(u8, upstream_output, "\r\n ")); defer allocator.free(upstream);
    var count: usize = 0;
    var rec = try servirtium.Record.init(allocator, tape, upstream).secretRedactor(.{.context=&count, .call=secretRedact}).start();
    defer rec.close() catch {};
    const base = try rec.baseUrl(); defer allocator.free(base);
    allocator.free(try secretFixtureRun(allocator, &.{"drive", base}));
    try std.testing.expectEqual(@as(usize,0), count); try rec.close(); try std.testing.expectEqual(@as(usize,20),count);
    allocator.free(try secretFixtureRun(allocator, &.{"check", tape}));
    var replay = try servirtium.Playback.init(allocator,tape).secretResolver(.{.call=secretResolve}).start();
    defer replay.close() catch {};
    const replay_base = try replay.baseUrl(); defer allocator.free(replay_base);
    allocator.free(try secretFixtureRun(allocator, &.{"drive", replay_base})); try replay.assertNoMismatches();
    allocator.free(try secretFixtureRun(allocator, &.{"check", tape}));
}
