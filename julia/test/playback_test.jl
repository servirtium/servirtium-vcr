# playback_test.jl — playback facts for the Julia binding.
#
# Proves Julia drives libservirtium_vcr's flat C ABI directly (via ccall) against the
# canonical one-interaction tape (GET /ok -> 200 text/plain "ok-body") — the
# same tape every other binding in this repo replays byte-for-byte. Needs only
# the libservirtium_vcr.so (SERVIRTIUM_VCR_LIB). Uses Julia's Test stdlib.
using Test
using Sockets
include("../src/Servirtium.jl")
using .Servirtium

# The tape by absolute path, derived from this file's location, so the facts
# don't depend on the working directory Julia was launched from.
const TAPE = joinpath(@__DIR__, "..", "tapes", "single_get.md")

# GET a URL with curl; the body, trailing newline trimmed.
http_get(url) = chomp(read(`curl -s -S $url`, String))

# The HTTP status curl reports, as a string ("200", "404", ...).
# The curl format string lives in a variable on purpose: Julia's backtick
# command literal brace-expands `{...}`, so a literal %{http_code} in the
# command is a parse error. Interpolating a String passes it through verbatim.
const CURL_STATUS_FMT = "%{http_code}"
http_status(url) =
    chomp(read(`curl -s -o /dev/null -w $CURL_STATUS_FMT $url`, String))

@testset "Servirtium playback" begin
    @testset "replays the canonical tape" begin
        playback(TAPE) do vcr
            @test http_get("$(base_url(vcr))/ok") == "ok-body"
            @test last_kind(vcr) == Ok
            @test matched_cleanly(vcr)
            @test last_index(vcr) == 0
            @test last_error(vcr) == ""
        end
    end

    @testset "exposes the tape length and a bound port" begin
        playback(TAPE) do vcr
            @test tape_length(vcr) == 1
            add_license_notice(vcr, "test notice")  # throws on error; playback ignores it
            set_pretty_json(vcr, 2)
            @test get_pretty_json(vcr) == 2
            set_pretty_json(vcr, 0)
            @test port(vcr) > 0
            @test startswith(base_url(vcr), "http://127.0.0.1:")
        end
    end

    @testset "flags a path that is not on the tape" begin
        playback(TAPE) do vcr
            @test http_status("$(base_url(vcr))/nope") != "200"
            @test last_kind(vcr) != Ok
        end
    end

    @testset "replays again after reset_cursor" begin
        playback(TAPE) do vcr
            url = "$(base_url(vcr))/ok"
            @test http_get(url) == "ok-body"
            reset_cursor(vcr)
            @test http_get(url) == "ok-body"
            @test last_kind(vcr) == Ok
        end
    end

    @testset "throws a typed error when the tape is missing" begin
        @test_throws VcrError playback("$TAPE.nonexistent")
    end

    @testset "the do-block closes the server" begin
        # The port is bound inside the block and released on the way out, so a
        # second block over the same tape must succeed independently.
        first = playback(port, TAPE)
        second = playback(port, TAPE)
        @test first > 0
        @test second > 0
    end

    @testset "close! is idempotent" begin
        vcr = playback(TAPE)
        close!(vcr)
        close!(vcr)
        @test true
    end

    @testset "a missing tape is reported by name through the open path" begin
        err = try playback("/nonexistent/no-such-tape.md"); nothing catch e; e end
        @test err isa VcrError
        @test occursin("no-such-tape", err.msg)
    end

    @testset "50 open/close cycles; double close and flush are harmless" begin
        for _ in 1:50
            vcr = playback(TAPE)
            @test http_get(base_url(vcr) * "/ok") == "ok-body"
            close!(vcr)
            close!(vcr)
            flush!(vcr)
        end
    end

    @testset "two servers run concurrently, one per handle" begin
        a = playback(TAPE)
        b = playback(TAPE)
        try
            @test port(a) != port(b)
            @test http_get("$(base_url(a))/ok") == "ok-body"
            @test http_get("$(base_url(b))/ok") == "ok-body"
        finally
            close!(a)
            close!(b)
        end
    end

    @testset "enums mirror libservirtium_vcr constants" begin
        @test Int(Ok) == 0
        @test Int(BodyDiff) == 6
        @test Int(RequestHeaders) == 3
        @test Int(ResponseBody) == 2
    end
end


@testset "Structured redaction helpers" begin
    mktempdir() do directory
        fixture = joinpath(@__DIR__, "../../target/test-tools/redaction_fixture")
        fixture_run(args...) = strip(read(`$fixture $args`, String))
        upstream = fixture_run("start", directory)
        record(joinpath(directory, "tape.md"), upstream) do rec
            redact_header(rec, "Authorization")
            redact_query_param(rec, "password")
            redact_json_field(rec, "secretKey")
            fixture_run("drive", directory, base_url(rec))
            @test last_kind(rec) == Ok
        end
        fixture_run("check", directory)
    end
end


@testset "Retained replay diagnostics" begin
    root = joinpath(@__DIR__, "../..")
    playback(joinpath(root, "core_tests/diagnostics/playback.md")) do server
        test_context(server, "Julia scenario"; source_file="scenario.test", source_line=123)
        driver = joinpath(root, "target/test-tools/diagnostic_fixture")
        url = base_url(server)
        run(`$driver $url`)
        @test occursin("owner", last_error(server; consume=false))
        @test occursin("scenario.test:123", last_error(server; consume=false))
        @test !occursin("\"retrieved\":1", diagnostics_json(server))
        @test occursin("owner", last_error(server))
        @test occursin("\"retrieved\":0", diagnostics_json(server))
        @test occursin("\"retrieved\":1", diagnostics_json(server))
        @test_throws VcrError assert_no_mismatches(server)
        test_context(server, "next test")
        assert_no_mismatches(server)
        @test diagnostics_json(server) == "[]"
    end
end

@testset "named secrets round trip" begin
    mktempdir() do directory
        fixture = normpath(joinpath(@__DIR__, "../../target/test-tools/secret_fixture"))
        run_fixture(action, arg) = strip(read(`$fixture $action $arg`, String))
        tape = joinpath(directory, "tape.md")
        rec = record(tape, run_fixture("start", directory))
        count = Ref(0)
        secret_redactor!(rec, (key, request) -> begin
            key == "password" || return nothing
            count[] += 1
            uppercase(split(request.path, '/')[2]) * "_PASSWORD"
        end)
        try
            run_fixture("drive", base_url(rec)); @test count[] == 0
        finally
            flush!(rec)
        end
        @test count[] == 20
        run_fixture("check", tape)
        playback(tape; secret_resolver=token -> "pw-" * lowercase(replace(token, "_PASSWORD" => "")) * "&secret") do replay
            run_fixture("drive", base_url(replay)); assert_no_mismatches(replay)
        end
        run_fixture("check", tape)
    end
end

# A tiny upstream answering every request with a JSON body, on an OS-chosen
# port of 127.0.0.1 (Sockets stdlib; no dependencies).
function with_json_upstream(f, body)
    server = listen(ip"127.0.0.1", 0)
    _, port = getsockname(server)
    @async while isopen(server)
        sock = try accept(server) catch; break end
        @async try
            readavailable(sock)
            write(sock, "HTTP/1.1 200 OK\r\nContent-Type: application/json\r\n" *
                        "Content-Length: $(sizeof(body))\r\nConnection: close\r\n\r\n$body")
        finally
            close(sock)
        end
    end
    try
        f("http://127.0.0.1:$port")
    finally
        close(server)
    end
end

@testset "Stable ordering (record)" begin
    json = "{\"b\":1,\"a\":{\"z\":2,\"y\":3}}"
    mktempdir() do dir
        with_json_upstream(json) do upstream
            # sort_json_keys + pretty_json writes sorted, pretty JSON
            sorted = joinpath(dir, "sorted.md")
            record(sorted, upstream) do rec
                set_sort_json_keys(rec, true)
                @test get_sort_json_keys(rec)
                set_pretty_json(rec, 2)
                @test http_get("$(base_url(rec))/data") == json
            end
            @test occursin("\"a\": {\n    \"y\": 3,\n    \"z\": 2\n  },\n  \"b\": 1", read(sorted, String))

            # sort_json_keys WITHOUT pretty_json is refused when the tape is written
            rec = record(joinpath(dir, "refused.md"), upstream)
            set_sort_json_keys(rec, true)
            http_get("$(base_url(rec))/data")
            err = try flush!(rec); nothing catch e; e end
            @test err isa VcrError
            @test occursin("sort_json_keys needs pretty_json", err.msg)

            # a refused rule throws; the switches read back and clear
            probe = record(joinpath(dir, "probe.md"), upstream)
            @test_throws VcrError sort_header_value(probe, "")
            set_sort_response_headers(probe, true)
            @test get_sort_response_headers(probe)
            clear_stable_order(probe)
            @test !get_sort_response_headers(probe)
            close!(probe)
        end
    end
end

@testset "Playback range" begin
    RANGE = joinpath(@__DIR__, "..", "tapes", "range.md")
    playback(RANGE) do vcr
        @test get_playback_range(vcr) === nothing
        set_playback_range(vcr, 1, -1)
        @test get_playback_range(vcr) == (1, 2)
        # the first interaction is skipped, the second is served
        @test http_get("$(base_url(vcr))/step/second") == "second-body"
        @test last_index(vcr) == 1
        @test_throws VcrError set_playback_range(vcr, 9, -1)
        clear_playback_range(vcr)
        @test get_playback_range(vcr) === nothing
    end
    # a record handle refuses a range
    mktempdir() do dir
        rec = record(joinpath(dir, "refused.md"), "http://127.0.0.1:1")
        @test_throws VcrError set_playback_range(rec, 0, -1)
        close!(rec)
    end
end

# Volatile values (docs/volatile-values.md): conformance against the shared
# tapes in core_tests/volatile and the volatile_fixture driver.
@testset "Volatile values" begin
    ROOT = normpath(joinpath(@__DIR__, "..", ".."))
    vtape(name) = joinpath(ROOT, "core_tests", "volatile", name)
    driver(mode, base) = success(pipeline(Cmd([joinpath(ROOT, "target", "test-tools", "volatile_fixture"), mode, base]);
                                          stdout=devnull, stderr=devnull))
    failure_of(f) = try; f(); ""; catch err; sprint(showerror, err); end

    @testset "tape-declared rules, no rules in code" begin
        playback(vtape("wcf.md"); pretty_xml=2) do vcr
            @test driver("wcf", base_url(vcr))
            @test occursin("binding: {{messageId-1}} = ", volatile_report(vcr))
        end
    end

    @testset "profile file" begin
        playback(vtape("wcf_plain.md"); pretty_xml=2, volatile_profile=vtape("profile.md")) do vcr
            @test driver("wcf", base_url(vcr))
        end
    end

    @testset "rules in code" begin
        rules = [("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>"),
                 ("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/"),
                 ("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;"),
                 ("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")]
        playback(vtape("wcf_plain.md"); pretty_xml=2, volatile_rules=rules) do vcr
            @test driver("wcf", base_url(vcr))
        end
    end

    @testset "markers" begin
        playback(vtape("wcf_dollar.md"); pretty_xml=2, volatile_markers=DollarCurly) do vcr
            @test driver("wcf", base_url(vcr))
        end
        @test occursin("DollarCurly", failure_of(() -> playback(vtape("wcf_dollar.md"); pretty_xml=2)))
    end

    @testset "cases: correlation, then mismatch diagnostics" begin
        playback(vtape("cases.md")) do vcr
            @test driver("cases", base_url(vcr))
            reset_cursor(vcr)
            @test driver("cases-mismatch", base_url(vcr))
            @test occursin("{{caseId-1}} = 42", last_error(vcr; consume=false))
            last_error(vcr)  # consuming read: nothing left unretrieved at close
        end
    end

    @testset "bind" begin
        @test occursin("caseId", failure_of(() -> playback(vtape("cases_recorded.md"))))
        playback(vtape("cases_recorded.md"); volatile_binds=["caseId" => "42"]) do vcr
            @test driver("cases", base_url(vcr))
        end
    end

    @testset "bad rules fail the open with the core's message" begin
        @test occursin("needs at least one placeholder",
                       failure_of(() -> playback(vtape("cases.md"); volatile_rules=[("request body", "no placeholder")])))
        msg = failure_of(() -> playback(vtape("cases.md"); volatile_rules=[("response body", "\"caseId\":\"{{id}}\"")]))
        @test occursin("conflicts with", msg) && occursin("(tape)", msg)
        @test !isempty(failure_of(() -> playback(vtape("cases.md"); volatile_rules=[("x", "a {{b}}", "regex")])))
    end
end
