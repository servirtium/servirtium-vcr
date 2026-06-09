const std = @import("std");

// Build the Zig binding's test, linking the shared engine
// (core/native/libservirtium_vcr.so) at build time. The engine path is taken
// from $SERVIRTIUM_VCR_LIB if set, otherwise ../core/native relative to this
// file. We add it as a library search path, link the `.so` by name, and bake
// an rpath so the test binary finds it at runtime without LD_LIBRARY_PATH.
pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Resolve the directory holding libservirtium_vcr.so.
    const native_dir = nativeDir(b);

    const test_mod = b.createModule(.{
        .root_source_file = b.path("src/test.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    test_mod.addLibraryPath(.{ .cwd_relative = native_dir });
    test_mod.linkSystemLibrary("servirtium_vcr", .{});
    test_mod.addRPath(.{ .cwd_relative = native_dir });

    const tests = b.addTest(.{ .root_module = test_mod });
    const run_tests = b.addRunArtifact(tests);

    const test_step = b.step("test", "Run the Zig binding tests");
    test_step.dependOn(&run_tests.step);
}

/// Directory that contains the engine `.so`: $SERVIRTIUM_VCR_LIB's parent if
/// the env var points at the file, else ../core/native next to this build.zig.
fn nativeDir(b: *std.Build) []const u8 {
    if (b.graph.environ_map.get("SERVIRTIUM_VCR_LIB")) |lib| {
        if (lib.len != 0) {
            if (std.fs.path.dirname(lib)) |dir| return dir;
        }
    }
    return b.pathFromRoot("../core/native");
}
