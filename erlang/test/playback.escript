#!/usr/bin/env escript
%%
%% Smoke test for the Erlang Servirtium binding: start a playback VCR over a
%% one-interaction tape (GET /ok -> 200 text/plain "ok-body"), drive it with
%% curl, and assert the body + a clean match. Exits 0 on success, non-zero on
%% any failure. Run with ERL_LIBS=_build (so the `servirtium`/`servirtium_nif`
%% app + its priv/servirtium_nif.so resolve) from erlang/ (so tapes/ resolves).

main(_) ->
    named_secrets(),

    Directory = "/tmp/vcr-helpers-erlang-" ++ os:getpid(),
    ok = file:make_dir(Directory),
    Run = fun(Action, Extra) ->
        Command = "../target/test-tools/redaction_fixture " ++ Action ++ " '" ++ Directory ++ "'" ++ Extra,
        Output = os:cmd(Command ++ " 2>&1; printf '\\nRC:%s' $?"),
        [Text, "0"] = string:split(Output, "\nRC:", trailing),
        string:trim(Text)
    end,
    try
        Upstream = Run("start", ""),
        Recorder = servirtium:record(Directory ++ "/tape.md", Upstream),
        try
            ok = servirtium:redact_header(Recorder, "Authorization"),
            ok = servirtium:redact_query_param(Recorder, "password"),
            ok = servirtium:redact_json_field(Recorder, "secretKey"),
            Run("drive", " '" ++ servirtium:base_url(Recorder) ++ "'"),
            ok = servirtium:last_kind(Recorder)
        after ok = servirtium:close(Recorder) end,
        Run("check", "")
    after
        {ok, Names} = file:list_dir(Directory),
        [file:delete(filename:join(Directory, Name)) || Name <- Names],
        file:del_dir(Directory)
    end,


    DiagnosticServer = servirtium:playback("../core_tests/diagnostics/playback.md"),
    ok = servirtium:test_context(DiagnosticServer, "Erlang scenario", "scenario.test", 123),
    Driven = os:cmd("../target/test-tools/diagnostic_fixture '" ++ servirtium:base_url(DiagnosticServer) ++ "' && echo DRIVER_OK"),
    true = string:find(Driven, "DRIVER_OK") =/= nomatch,
    true = string:find(servirtium:last_error(DiagnosticServer, false), "owner") =/= nomatch,
    true = string:find(servirtium:last_error(DiagnosticServer, false), "scenario.test:123") =/= nomatch,
    nomatch = string:find(servirtium:diagnostics_json(DiagnosticServer, false), "\"retrieved\":1"),
    true = string:find(servirtium:last_error(DiagnosticServer), "owner") =/= nomatch,
    true = string:find(servirtium:diagnostics_json(DiagnosticServer, false), "\"retrieved\":0") =/= nomatch,
    {'EXIT', _} = (catch servirtium:assert_no_mismatches(DiagnosticServer)),
    ok = servirtium:test_context(DiagnosticServer, "next test", "", 0),
    ok = servirtium:assert_no_mismatches(DiagnosticServer),
    "[]" = servirtium:diagnostics_json(DiagnosticServer, false),
    ok = servirtium:close(DiagnosticServer),

    Tape = "tapes/single_get.md",
    Vcr = servirtium:playback(Tape),
    BaseUrl = servirtium:base_url(Vcr),
    io:format("base_url = ~s~n", [BaseUrl]),

    Body0 = os:cmd("curl -s " ++ BaseUrl ++ "/ok"),
    Body = string:trim(Body0, trailing, "\n"),
    Kind = servirtium:last_kind(Vcr),
    io:format("body = ~p, last_kind = ~p~n", [Body, Kind]),

    ok = servirtium:close(Vcr),

    case {Body, Kind} of
        {"ok-body", ok} ->
            io:format("PASS: erlang servirtium playback~n", []),
            halt(0);
        _ ->
            io:format(standard_error,
                "FAIL: expected {\"ok-body\", ok}, got {~p, ~p}~n",
                [Body, Kind]),
            halt(1)
    end.

named_secrets() ->
    Dir = "/tmp/vcr-secrets-erlang-" ++ os:getpid(), ok = file:make_dir(Dir),
    Tape = Dir ++ "/tape.md", Owner = self(),
    Run = fun(Action, Arg) ->
        Output = os:cmd("../target/test-tools/secret_fixture " ++ Action ++ " '" ++ Arg ++ "' 2>&1; printf '\nRC:%s' $?"),
        [Text, "0"] = string:split(Output, "\nRC:", trailing), string:trim(Text)
    end,
    Rec = servirtium:secret_redactor(servirtium:record(Tape, Run("start", Dir)), fun(Key, R) ->
        Owner = self(),
        case Key of <<"password">> ->
            Owner ! redacted,
            [_, Service | _] = binary:split(maps:get(path,R), <<"/">>, [global]),
            <<(string:uppercase(Service))/binary, "_PASSWORD">>;
            _ -> undefined
        end
    end),
    Run("drive", servirtium:base_url(Rec)),
    receive redacted -> error(early_callback) after 0 -> ok end,
    ok = servirtium:close(Rec),
    lists:foreach(fun(_) -> receive redacted -> ok after 0 -> error(missing_callback) end end, lists:seq(1,20)),
    Run("check", Tape),
    Replay = servirtium:playback_with_secrets(Tape, fun(Token) ->
        Owner = self(), [Service, <<>>] = binary:split(Token, <<"_PASSWORD">>),
        <<"pw-", (string:lowercase(Service))/binary, "&secret">>
    end),
    Run("drive", servirtium:base_url(Replay)), ok = servirtium:assert_no_mismatches(Replay),
    ok = servirtium:close(Replay), Run("check", Tape),
    {ok, Files} = file:list_dir(Dir), [file:delete(Dir ++ "/" ++ F) || F <- Files], file:del_dir(Dir), ok.
