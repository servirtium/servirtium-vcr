//! Zig binding test. Links the shared engine `.so` and exercises a playback
//! server end-to-end: open the `single_get.md` tape, start, `curl` the base
//! URL, and assert the body and the clean-match outcome.
//!
//! We shell out to `curl` via `std.process.Child` rather than using
//! `std.http`, whose API churns across Zig versions.

const std = @import("std");
const servirtium = @import("servirtium.zig");

test "playback single GET replays the recorded body" {
    const allocator = std.testing.allocator;

    var vcr = try servirtium.Vcr.playback(
        allocator,
        "single_get",
        "tapes/single_get.md",
        "127.0.0.1",
        0, // pick a free port
    );
    defer vcr.close();

    try vcr.start();

    const base = try vcr.baseUrl("127.0.0.1");
    defer allocator.free(base);

    const url = try std.fmt.allocPrint(allocator, "{s}/ok", .{base});
    defer allocator.free(url);

    // curl -s <baseUrl>/ok, capturing stdout. std.testing.io is a Threaded
    // I/O instance the test runner seeds with the parent process environment,
    // so `curl` resolves on PATH.
    const result = try std.process.run(allocator, std.testing.io, .{
        .argv = &.{ "curl", "-s", url },
    });
    defer allocator.free(result.stdout);
    defer allocator.free(result.stderr);

    try std.testing.expectEqual(std.process.Child.Term{ .exited = 0 }, result.term);

    try std.testing.expectEqualStrings("ok-body", result.stdout);
    try std.testing.expectEqual(servirtium.Outcome.ok, vcr.lastKind());
}
