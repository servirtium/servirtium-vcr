/**
 * playback_test.d — playback facts for the D binding.
 *
 * Proves D drives libservirtium_vcr's flat C ABI directly (extern(C) + a real link)
 * against the canonical one-interaction tape (GET /ok -> 200 text/plain
 * "ok-body") — the same tape every other binding in this repo replays
 * byte-for-byte. Needs only the libservirtium_vcr.so (linked via the leaf's -L/-rpath).
 *
 * A plain `main` returning non-zero on failure, which is what `d.test`
 * (dmd -run) treats as a failure. Run from d/ so tapes/ resolves; the path is
 * resolved against this file's location anyway, so the cwd doesn't matter.
 */
module playback_test;

import std.stdio : writeln, writefln;
import std.process : executeShell;
import std.string : strip, startsWith, split, toUpper, toLower, replace;
import std.file : mkdir, rmdirRecurse;
import std.datetime.systime : Clock;
import std.conv : to;
import std.path : dirName, buildNormalizedPath;
import std.exception : assertThrown, collectExceptionMsg;
import std.algorithm : canFind;

import servirtium;

private int failures = 0;

private void ck(string label, bool cond) {
    if (cond) {
        writefln("  ok: %s", label);
    } else {
        writefln("FAIL: %s", label);
        failures++;
    }
}

/// GET a URL with curl; the body, trailing whitespace trimmed.
private string httpGet(string url) {
    return executeShell("curl -s -S '" ~ url ~ "'").output.strip;
}

/// The HTTP status curl reports, as a string ("200", "404", ...).
private string httpStatus(string url) {
    return executeShell("curl -s -o /dev/null -w '%{http_code}' '" ~ url ~ "'")
        .output.strip;
}

private void namedSecrets() {
    auto dir = "/tmp/vcr-secrets-d-" ~ Clock.currTime.stdTime.to!string;
    mkdir(dir); scope(exit) rmdirRecurse(dir);
    auto fixture = buildNormalizedPath(__FILE__.dirName, "../../target/test-tools/secret_fixture");
    string run(string action, string arg) {
        auto result = executeShell("'" ~ fixture ~ "' " ~ action ~ " '" ~ arg ~ "'");
        ck("secret fixture " ~ action, result.status == 0); return result.output.strip;
    }
    auto tape = dir ~ "/tape.md";
    auto rec = Vcr.record(tape, run("start", dir)); int count;
    rec.secretRedactor((string key, SecretRequest request) {
        if (key != "password") return Nullable!string.init;
        count++; return nullable(request.path.split("/")[1].toUpper ~ "_PASSWORD");
    });
    run("drive", rec.baseUrl); ck("deferred callback", count == 0); rec.flush();
    ck("secret count", count == 20); run("check", tape);
    auto replay = Vcr.playback(tape, "127.0.0.1", 0, (string token) { return nullable("pw-" ~ token.replace("_PASSWORD", "").toLower ~ "&secret"); });
    scope(exit) replay.close();
    run("drive", replay.baseUrl); replay.assertNoMismatches(); run("check", tape);
}

int main() {
    namedSecrets();

    {
        import std.file : tempDir, mkdir, rmdirRecurse;
        import std.conv : to;
        import core.sys.posix.unistd : getpid;
        const directory = tempDir() ~ "/vcr-helpers-d-" ~ getpid().to!string;
        mkdir(directory);
        scope (exit) rmdirRecurse(directory);
        const fixture = buildNormalizedPath(__FILE_FULL_PATH__.dirName, "../../target/test-tools/redaction_fixture");
        string fixtureRun(string[] args) {
            import std.process : execute;
            auto result = execute([fixture] ~ args);
            assert(result.status == 0, result.output);
            return result.output.strip;
        }
        const upstream = fixtureRun(["start", directory]);
        auto rec = Vcr.record(directory ~ "/tape.md", upstream);
        scope (exit) rec.close();
        rec.redactHeader("Authorization");
        rec.redactQueryParam("password");
        rec.redactJsonField("secretKey");
        fixtureRun(["drive", directory, rec.baseUrl()]);
        ck("structured record outcome", rec.lastKind() == Outcome.ok);
        rec.flush();
        fixtureRun(["check", directory]);
    }

    {
        const root = buildNormalizedPath(__FILE_FULL_PATH__.dirName, "../..");
        auto server = Vcr.playback(buildNormalizedPath(root, "core_tests/diagnostics/playback.md"));
        scope (exit) server.close();
        server.testContext("D scenario", "scenario.test", 123);
        import std.process : execute;
        const result = execute([buildNormalizedPath(root, "target/test-tools/diagnostic_fixture"), server.baseUrl()]);
        ck("diagnostic driver", result.status == 0);
        ck("observer diff", server.lastError(false).canFind("owner"));
        ck("diagnostic coordinates", server.lastError(false).canFind("scenario.test:123"));
        ck("observer does not consume", !server.diagnosticsJson().canFind("\"retrieved\":1"));
        ck("consuming latest", server.lastError().canFind("owner"));
        ck("earlier event unread", server.diagnosticsJson().canFind("\"retrieved\":0"));
        const failure = collectExceptionMsg!VcrException(server.assertNoMismatches());
        ck("assertion diff", failure !is null && failure.canFind("admin"));
        server.testContext("next test");
        server.assertNoMismatches();
        ck("new test empty", server.diagnosticsJson() == "[]");
    }

    // The tape by absolute path, derived from this source file's location, so
    // the facts don't depend on the working directory.
    const tape = buildNormalizedPath(__FILE_FULL_PATH__.dirName, "..", "tapes",
                                     "single_get.md");

    // ---- a failed open throws, rather than returning a dead handle ----
    {
        const msg = collectExceptionMsg!VcrException(
            Vcr.playback(tape ~ ".nonexistent"));
        ck("missing tape throws VcrException", msg !is null);
        ck("the exception explains why", msg !is null && msg.canFind("open failed"));
    }

    // ---- playback of the canonical tape ----
    {
        auto vcr = Vcr.playback(tape);
        scope (exit) vcr.close();

        const base = vcr.baseUrl();
        writefln("base_url = %s", base);
        ck("base_url is a GC'd string with no manual free", base.length > 0);
        ck("base_url is loopback http", base.startsWith("http://127.0.0.1:"));
        ck("port is bound", vcr.port() > 0);
        ck("tape_length is 1", vcr.tapeLength() == 1);

        ck("body is ok-body", httpGet(base ~ "/ok") == "ok-body");
        ck("last_kind is ok", vcr.lastKind() == Outcome.ok);
        ck("matchedCleanly agrees", vcr.matchedCleanly());
        ck("last_index is 0", vcr.lastIndex() == 0);
        ck("last_error is empty on a clean match", vcr.lastError().length == 0);

        // ---- cursor reset replays the same tape again ----
        vcr.resetCursor();
        ck("replays again after resetCursor", httpGet(base ~ "/ok") == "ok-body");
        ck("last_kind still ok after reset", vcr.lastKind() == Outcome.ok);

        // ---- an off-tape path is flagged, not served ----
        ck("off-tape path is not 200", httpStatus(base ~ "/nope") != "200");
        ck("off-tape path flags a non-ok outcome", vcr.lastKind() != Outcome.ok);
    }

    // ---- scope(exit) close released the listener, so a fresh one binds ----
    {
        auto vcr = Vcr.playback(tape);
        scope (exit) vcr.close();
        ck("a new server binds after the previous scope exited", vcr.port() > 0);
    }

    // ---- close is idempotent ----
    {
        auto vcr = Vcr.playback(tape);
        vcr.close();
        vcr.close();
        ck("close is idempotent", true);
    }

    // ---- two servers run concurrently, one per handle ----
    {
        auto a = Vcr.playback(tape);
        auto b = Vcr.playback(tape);
        scope (exit) { a.close(); b.close(); }
        ck("two handles get two ports", a.port() != b.port());
        ck("first server serves", httpGet(a.baseUrl() ~ "/ok") == "ok-body");
        ck("second server serves", httpGet(b.baseUrl() ~ "/ok") == "ok-body");
    }

    // ---- enums mirror libservirtium_vcr constants ----
    ck("Outcome.ok is 0", cast(int) Outcome.ok == 0);
    ck("Outcome.bodyDiff is 6", cast(int) Outcome.bodyDiff == 6);
    ck("Field.requestHeaders is 3", cast(int) Field.requestHeaders == 3);
    ck("Field.responseBody is 2", cast(int) Field.responseBody == 2);

    if (failures == 0) {
        writeln("PASS: d servirtium playback");
        return 0;
    }
    writefln("FAILED: %d d test(s)", failures);
    return 1;
}
