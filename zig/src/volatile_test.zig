//! Volatile-value conformance (docs/volatile-values.md): the shared tapes in
//! core_tests/volatile driven by the shared `volatile_fixture` binary.

const std = @import("std");
const servirtium = @import("servirtium.zig");
const testutil = @import("testutil.zig");

fn tape(allocator: std.mem.Allocator, name: []const u8) ![:0]u8 {
    const rel = try std.fmt.allocPrint(allocator, "../core_tests/volatile/{s}", .{name});
    defer allocator.free(rel);
    return testutil.cwdJoinZ(allocator, rel);
}

fn driver(allocator: std.mem.Allocator, mode: []const u8, base: []const u8) !void {
    const run = try std.process.run(allocator, std.testing.io, .{
        .argv = &.{ "../target/test-tools/volatile_fixture", mode, base },
    });
    defer allocator.free(run.stdout);
    defer allocator.free(run.stderr);
    switch (run.term) {
        .exited => |code| if (code != 0) {
            std.debug.print("volatile_fixture {s}: {s}{s}\n", .{ mode, run.stdout, run.stderr });
            return error.DriverFailed;
        },
        else => return error.DriverFailed,
    }
}

fn startMsg(a: std.mem.Allocator, builder: anytype) ![]u8 {
    var diag = servirtium.OpenDiagnostics{};
    defer diag.deinit();
    if (builder.startDiagnosed(&diag)) |srv| {
        var s = srv;
        s.close() catch {};
        return a.alloc(u8, 0);
    } else |_| {
        return a.dupe(u8, diag.message);
    }
}

test "volatile tape block drives WCF playback and reports bindings" {
    const a = std.testing.allocator;
    const t = try tape(a, "wcf.md");
    defer a.free(t);
    var srv = try servirtium.Playback.init(a, t).prettyXml(2).start();
    defer srv.close() catch {};
    const base = try srv.baseUrl();
    defer a.free(base);
    try driver(a, "wcf", base);
    const report = try srv.volatileReport();
    defer a.free(report);
    try std.testing.expect(std.mem.indexOf(u8, report, "binding: {{messageId-1}} = ") != null);
}

test "volatile profile file drives WCF playback" {
    const a = std.testing.allocator;
    const t = try tape(a, "wcf_plain.md");
    defer a.free(t);
    const prof = try tape(a, "profile.md");
    defer a.free(prof);
    var srv = try servirtium.Playback.init(a, t).prettyXml(2).volatileProfile(prof).start();
    defer srv.close() catch {};
    const base = try srv.baseUrl();
    defer a.free(base);
    try driver(a, "wcf", base);
}

test "volatile rules in code drive WCF playback" {
    const a = std.testing.allocator;
    const t = try tape(a, "wcf_plain.md");
    defer a.free(t);
    var srv = try servirtium.Playback.init(a, t)
        .prettyXml(2)
        .volatileRule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")
        .volatileRule("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/")
        .volatileRule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;")
        .volatileRule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")
        .start();
    defer srv.close() catch {};
    const base = try srv.baseUrl();
    defer a.free(base);
    try driver(a, "wcf", base);
}

test "volatile markers: DollarCurly tape needs DollarCurly markers" {
    const a = std.testing.allocator;
    const t = try tape(a, "wcf_dollar.md");
    defer a.free(t);
    {
        var srv = try servirtium.Playback.init(a, t).prettyXml(2).volatileMarkers(.dollar_curly).start();
        defer srv.close() catch {};
        const base = try srv.baseUrl();
        defer a.free(base);
        try driver(a, "wcf", base);
    }
    const msg = try startMsg(a, servirtium.Playback.init(a, t).prettyXml(2));
    defer a.free(msg);
    try std.testing.expect(std.mem.indexOf(u8, msg, "DollarCurly") != null);
}

test "volatile cases bind, then a mismatch reports the token" {
    const a = std.testing.allocator;
    const t = try tape(a, "cases.md");
    defer a.free(t);
    var srv = try servirtium.Playback.init(a, t).start();
    defer srv.close() catch {};
    const base = try srv.baseUrl();
    defer a.free(base);
    try driver(a, "cases", base);
    srv.resetCursor();
    try driver(a, "cases-mismatch", base);
    const observed = try srv.readLastError(false);
    defer a.free(observed);
    try std.testing.expect(std.mem.indexOf(u8, observed, "{{caseId-1}} = 42") != null);
    const consumed = try srv.lastError(); // consuming read: nothing unretrieved at close
    a.free(consumed);
}

test "volatile bind supplies a recorded value" {
    const a = std.testing.allocator;
    const t = try tape(a, "cases_recorded.md");
    defer a.free(t);
    const msg = try startMsg(a, servirtium.Playback.init(a, t));
    defer a.free(msg);
    try std.testing.expect(std.mem.indexOf(u8, msg, "caseId") != null);
    var srv = try servirtium.Playback.init(a, t).bind("caseId", "42").start();
    defer srv.close() catch {};
    const base = try srv.baseUrl();
    defer a.free(base);
    try driver(a, "cases", base);
}

test "volatile configuration errors fail start with the core's message" {
    const a = std.testing.allocator;
    const t = try tape(a, "cases.md");
    defer a.free(t);

    const m1 = try startMsg(a, servirtium.Playback.init(a, t).volatileRule("request body", "no placeholder"));
    defer a.free(m1);
    try std.testing.expect(std.mem.indexOf(u8, m1, "needs at least one placeholder") != null);

    const m2 = try startMsg(a, servirtium.Playback.init(a, t).volatileRule("response body", "\"caseId\":\"{{id}}\""));
    defer a.free(m2);
    try std.testing.expect(std.mem.indexOf(u8, m2, "conflicts with") != null);
    try std.testing.expect(std.mem.indexOf(u8, m2, "(tape)") != null);

    const m3 = try startMsg(a, servirtium.Playback.init(a, t).volatileRuleKind("x", "a {{b}}", "regex"));
    defer a.free(m3);
    try std.testing.expect(m3.len > 0);
}
