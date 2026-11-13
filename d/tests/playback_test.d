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

    // ---- volatile values (docs/volatile-values.md), shared core_tests/volatile ----
    {
        import std.process : execute;
        const root = buildNormalizedPath(__FILE_FULL_PATH__.dirName, "../..");
        const vol = buildNormalizedPath(root, "core_tests/volatile");
        const fixture = buildNormalizedPath(root, "target/test-tools/volatile_fixture");

        { // spec tests 1+6: the tape's own block, no rules in code
            auto v = Vcr.playback(buildNormalizedPath(vol, "wcf.md"));
            scope (exit) v.close();
            v.prettyXml(2);
            ck("volatile wcf driver", execute([fixture, "wcf", v.baseUrl()]).status == 0);
            ck("volatile report has binding", v.volatileReport().canFind("binding: {{messageId-1}} = "));
        }
        { // spec test 6: a profile file
            auto v = Vcr.playback(buildNormalizedPath(vol, "wcf_plain.md"));
            scope (exit) v.close();
            v.prettyXml(2);
            v.volatileProfile(buildNormalizedPath(vol, "profile.md"));
            ck("volatile profile-file driver", execute([fixture, "wcf", v.baseUrl()]).status == 0);
        }
        { // rules in code
            auto v = Vcr.playback(buildNormalizedPath(vol, "wcf_plain.md"));
            scope (exit) v.close();
            v.prettyXml(2);
            v.volatileRule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>");
            v.volatileRule("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/");
            v.volatileRule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;");
            v.volatileRule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>");
            ck("volatile rules driver", execute([fixture, "wcf", v.baseUrl()]).status == 0);
        }
        { // markers
            auto v = Vcr.playbackUnstarted(buildNormalizedPath(vol, "wcf_dollar.md"));
            scope (exit) v.close();
            v.prettyXml(2);
            v.volatileMarkers(VolatileMarkers.dollarCurly);
            v.start();
            ck("volatile dollar driver", execute([fixture, "wcf", v.baseUrl()]).status == 0);
            const m = collectExceptionMsg!VcrException(Vcr.playback(buildNormalizedPath(vol, "wcf_dollar.md")));
            ck("default markers fail start", m !is null && m.canFind("DollarCurly"));
        }
        { // spec test 2
            auto v = Vcr.playback(buildNormalizedPath(vol, "cases.md"));
            scope (exit) v.close();
            ck("volatile cases driver", execute([fixture, "cases", v.baseUrl()]).status == 0);
            v.resetCursor();
            ck("volatile cases-mismatch driver", execute([fixture, "cases-mismatch", v.baseUrl()]).status == 0);
            ck("volatile last error shows binding", v.lastError(false).canFind("{{caseId-1}} = 42"));
            v.lastError();
        }
        { // bind
            auto v = Vcr.playbackUnstarted(buildNormalizedPath(vol, "cases_recorded.md"));
            scope (exit) v.close();
            const m = collectExceptionMsg!VcrException(v.start());
            ck("start without a bind fails", m !is null && m.canFind("caseId"));
            v.bind("caseId", "42");
            v.start();
            ck("volatile bind driver", execute([fixture, "cases", v.baseUrl()]).status == 0);
        }
        { // errors
            auto v = Vcr.playback(buildNormalizedPath(vol, "cases.md"));
            scope (exit) v.close();
            const a = collectExceptionMsg!VcrException(v.volatileRule("request body", "no placeholder"));
            ck("no placeholder", a !is null && a.canFind("needs at least one placeholder"));
            auto v2 = Vcr.playback(buildNormalizedPath(vol, "cases.md"));  // a bad rule is kept: fresh VCR per error
            scope (exit) v2.close();
            const c = collectExceptionMsg!VcrException(v2.volatileRule("response body", "\"caseId\":\"{{id}}\""));
            ck("conflicts with (tape)", c !is null && c.canFind("conflicts with") && c.canFind("(tape)"));
            auto v3 = Vcr.playback(buildNormalizedPath(vol, "cases.md"));
            scope (exit) v3.close();
            const r = collectExceptionMsg!VcrException(v3.volatileRule("x", "a {{b}}", "regex"));
            ck("bad regex rule fails", r !is null);
        }
    }

    // ---- stable ordering and playback range, through the shared core_tests tapes ----
    {
        import std.file : tempDir, mkdirRecurse, exists, readText;
        import core.sys.posix.unistd : getpid;
        const root = buildNormalizedPath(__FILE_FULL_PATH__.dirName, "../..");
        const upstreamTape = buildNormalizedPath(root, "core_tests/tapes/stable_order_upstream.tape");
        const dir = tempDir() ~ "/vcr-order-d-" ~ getpid().to!string;
        mkdirRecurse(dir);
        scope (exit) rmdirRecurse(dir);

        // (a) sortJsonKeys + prettyJson writes sorted, pretty JSON
        {
            auto up = Vcr.playback(upstreamTape);
            scope (exit) up.close();
            auto rec = Vcr.record(dir ~ "/sorted.md", up.baseUrl());
            scope (exit) rec.close();
            rec.prettyJson(2);
            rec.setSortJsonKeys();
            ck("getSortJsonKeys reads back", rec.getSortJsonKeys());
            rec.sortJsonArray("/list");
            rec.sortJsonArrayAt("/data", "/list", "id");
            rec.setSortResponseHeaders();
            ck("getSortResponseHeaders reads back", rec.getSortResponseHeaders());
            rec.sortHeaderValue("Allow");
            ck("a bad sort path is refused", collectExceptionMsg!VcrException(rec.sortJsonArray("a/b")) !is null);
            httpGet(rec.baseUrl() ~ "/data");
            rec.flush();
            ck("keys sorted and pretty-printed", readText(dir ~ "/sorted.md").canFind(
                "{\n  \"apple\": {\n    \"banana\": 3,\n    \"mango\": 2\n  },\n  \"zebra\": 1\n}"));
        }

        // (b) sortJsonKeys without prettyJson is refused at emit time
        {
            auto up = Vcr.playback(upstreamTape);
            scope (exit) up.close();
            auto rec = Vcr.record(dir ~ "/refused.md", up.baseUrl());
            scope (exit) rec.close();
            rec.setSortJsonKeys();
            httpGet(rec.baseUrl() ~ "/data");
            const msg = collectExceptionMsg!VcrException(rec.flush());
            ck("sort without prettyJson is refused", msg !is null && msg.canFind("sort_json_keys needs pretty_json"));
            ck("nothing written when refused", !exists(dir ~ "/refused.md"));
        }

        // a record handle refuses a playback range
        {
            auto up = Vcr.playback(upstreamTape);
            scope (exit) up.close();
            auto rec = Vcr.record(dir ~ "/range.md", up.baseUrl());
            scope (exit) rec.close();
            ck("record handle refuses a playback range",
               collectExceptionMsg!VcrException(rec.setPlaybackRange(0, 1)) !is null);
            ck("no range on a record handle", rec.getPlaybackRangeFrom() == -1);
        }

        // (c) playback range: the test brings its own cookie and skips the login
        {
            auto rp = Vcr.playback(buildNormalizedPath(root, "core_tests/tapes/playback_range.tape"));
            scope (exit) rp.close();
            ck("no range by default", rp.getPlaybackRangeFrom() == -1 && rp.getPlaybackRangeTo() == -1);
            rp.redactCredentials();
            rp.strictIgnoreCommonHeaders();
            rp.setPlaybackRange(7, 7);
            ck("range reads back", rp.getPlaybackRangeFrom() == 7 && rp.getPlaybackRangeTo() == 7);
            string withCookie(string url) {
                return executeShell("curl -g -s -S -H 'Cookie: sid=live-session' '" ~ url ~ "'").output.strip;
            }
            ck("range serves the later interaction", withCookie(rp.baseUrl() ~ "/logout") == "bye");
            ck("served interaction 7", rp.lastIndex() == 7);
            ck("a skipped interaction is not served", withCookie(rp.baseUrl() ~ "/login") != "login-form");
            ck("skipped interaction is named as outside the range",
               rp.lastError().canFind("outside the playback range"));
            ck("bad range refused", collectExceptionMsg!VcrException(rp.setPlaybackRange(9)) !is null);
            rp.clearPlaybackRange();
            ck("cleared range", rp.getPlaybackRangeFrom() == -1);
        }
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
        ck("the exception names the missing tape (open_error path)",
           msg !is null && msg.canFind("nonexistent"));
    }

    // ---- open/start/close fifty times; a second close is harmless ----
    {
        bool allOk = true;
        foreach (i; 0 .. 50) {
            auto again = Vcr.playback(tape);
            if (again.port() <= 0) allOk = false;
            again.close();
            again.close();
        }
        ck("50 open/start/close cycles with double close", allOk);
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

        vcr.addLicenseNotice("test notice");  // throws on error; playback ignores it
        vcr.prettyJson(2);
        ck("getPrettyJson reads back the indent", vcr.getPrettyJson() == 2);
        vcr.prettyJson(0);

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
