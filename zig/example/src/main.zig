// Third-party consumer example: imports the `servirtium` Zig module (from a
// published package) and replays the canonical tape. The libservirtium_vcr.so is linked
// from the package's bundled native/ dir (baked -rpath) — no SERVIRTIUM_VCR_LIB.
const std = @import("std");
const servirtium = @import("servirtium");

fn fail(comptime fmt: []const u8, args: anytype) noreturn {
    std.debug.print("FAIL: " ++ fmt ++ "\n", args);
    std.process.exit(1);
}

pub fn main(init: std.process.Init) !void {
    const a = std.heap.page_allocator;

    var play = try servirtium.Playback.init(a, "tapes/single_get.md").port(0).start();
    defer play.close() catch {};

    const base = try play.baseUrl();
    defer a.free(base);

    const url = try std.fmt.allocPrint(a, "{s}/ok", .{base});
    defer a.free(url);

    // The process's own Io: it carries the environment, so curl inherits it.
    // An Io.Threaded made here has an empty one, and on Windows a child with
    // no SystemRoot cannot load Winsock (curl: "failed to open socket").
    const io = init.io;

    const res = try std.process.run(a, io, .{ .argv = &.{ "curl", "-s", url } });
    defer a.free(res.stdout);
    defer a.free(res.stderr);

    const body = std.mem.trim(u8, res.stdout, " \r\n");
    if (!std.mem.eql(u8, body, "ok-body")) fail("expected body 'ok-body', got '{s}'", .{body});
    if (play.lastKind() != .ok) fail("expected .ok, got {any}", .{play.lastKind()});

    std.debug.print("PASS[discovery]: consumer replayed the canonical tape from the servirtium zig package\n", .{});
}
