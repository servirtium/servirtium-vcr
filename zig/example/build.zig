// Third-party consumer build for the Zig binding. A separate project that
// imports the `servirtium` module from a published package copy and links its
// bundled engine .so (at <pkg>/native, via a baked -rpath) — no
// SERVIRTIUM_VCR_LIB. The package dir is passed via -Dpkg=<dir>.
const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const pkg = b.option([]const u8, "pkg", "path to the servirtium package directory") orelse
        @panic("pass -Dpkg=<dir> pointing at the servirtium package");
    const src = std.fs.path.join(b.allocator, &.{ pkg, "src", "servirtium.zig" }) catch @panic("oom");
    const native = std.fs.path.join(b.allocator, &.{ pkg, "native" }) catch @panic("oom");

    const servirtium = b.createModule(.{ .root_source_file = .{ .cwd_relative = src } });

    const main_mod = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    main_mod.addImport("servirtium", servirtium);
    // Link the engine .so bundled inside the package, with an rpath so the
    // consumer binary self-locates it at runtime.
    main_mod.addLibraryPath(.{ .cwd_relative = native });
    main_mod.linkSystemLibrary("servirtium_vcr", .{});
    main_mod.addRPath(.{ .cwd_relative = native });

    const exe = b.addExecutable(.{ .name = "consumer_example", .root_module = main_mod });

    const run = b.addRunArtifact(exe);
    const run_step = b.step("run", "Run the consumer example");
    run_step.dependOn(&run.step);
}
