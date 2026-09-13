/**
 * app.d — a third party using the packaged D binding.
 *
 * Built by `dub` against a RELOCATED copy of the package declared as a PATH
 * dependency, with no reference to this repo and with SERVIRTIUM_VCR_LIB
 * unset. Only the native/libservirtium_vcr.so bundled inside the package
 * satisfies the link and the load, via dub.json's $PACKAGE_DIR-relative lflags
 * and baked rpath.
 *
 * Replays the canonical tape (GET /ok -> 200 text/plain "ok-body").
 */
module app;

import std.stdio : writeln, stderr;
import std.process : executeShell;
import std.string : strip;
import std.path : dirName, buildNormalizedPath;

import servirtium;

int main() {
    const tape = buildNormalizedPath(__FILE_FULL_PATH__.dirName, "..", "tapes",
                                     "single_get.md");
    auto vcr = Vcr.playback(tape);
    scope (exit) vcr.close();

    const body_ = executeShell("curl -s -S '" ~ vcr.baseUrl() ~ "/ok'").output.strip;
    if (body_ != "ok-body" || vcr.lastKind() != Outcome.ok) {
        stderr.writeln("FAIL: body=", body_, " last_kind=", vcr.lastKind());
        return 1;
    }
    writeln("PASS[discovery]: consumer replayed the canonical tape from the installed package");
    return 0;
}
