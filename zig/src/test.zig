//! Root of the Zig binding test suite. `zig build test` compiles this module
//! (linked against the shared engine `.so`) and runs every `test {}` block in
//! the files referenced below. We shell out to `curl` for HTTP (see
//! `testutil.zig`) rather than fighting `std.http.Client`'s 0.16 API, and the
//! record-mode tests drive a throwaway `FakeUpstream` over `std.Io.net`.

// Reference every test file so the test runner discovers their `test {}`
// blocks. (`std.testing` in 0.16 has no `refAllDeclsRecursive`; importing the
// files at container scope is enough — the test runner collects all blocks in
// the referenced files.)
const std = @import("std");
const servirtium = @import("servirtium.zig");

comptime {
    _ = @import("playback_test.zig");
    _ = @import("record_test.zig");
    _ = @import("mutation_test.zig");
    // Force semantic analysis of the whole public binding surface (including
    // the low-level `Vcr` wrapper the tests don't otherwise reference) so the
    // documented API can't silently rot.
    std.testing.refAllDecls(servirtium);
    std.testing.refAllDecls(servirtium.Vcr);
    std.testing.refAllDecls(servirtium.Playback);
    std.testing.refAllDecls(servirtium.Record);
    std.testing.refAllDecls(servirtium.Server);
}
