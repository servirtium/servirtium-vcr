# playback_test.jl — playback facts for the Julia binding.
#
# Proves Julia drives libservirtium_vcr's flat C ABI directly (via ccall) against the
# canonical one-interaction tape (GET /ok -> 200 text/plain "ok-body") — the
# same tape every other binding in this repo replays byte-for-byte. Needs only
# the libservirtium_vcr.so (SERVIRTIUM_VCR_LIB). Uses Julia's Test stdlib.
using Test
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
