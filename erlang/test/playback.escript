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

    volatile_values(),
    open_failure_and_lifecycle(),
    stable_order(),
    playback_range(),

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

%% A gen_tcp upstream answering every request with a JSON body.
json_upstream(Body) ->
    {ok, Listen} = gen_tcp:listen(0, [binary, {active, false}, {reuseaddr, true}, {packet, raw}]),
    {ok, Port} = inet:port(Listen),
    Pid = spawn(fun() -> json_loop(Listen, Body) end),
    {Pid, Listen, "http://127.0.0.1:" ++ integer_to_list(Port)}.

json_loop(Listen, Body) ->
    case gen_tcp:accept(Listen) of
        {ok, Sock} ->
            {ok, _} = gen_tcp:recv(Sock, 0, 2000),
            gen_tcp:send(Sock, ["HTTP/1.1 200 OK\r\nContent-Type: application/json\r\nContent-Length: ",
                                integer_to_list(byte_size(Body)), "\r\nConnection: close\r\n\r\n", Body]),
            gen_tcp:close(Sock),
            json_loop(Listen, Body);
        _ -> ok
    end.

record_json(Tape, Configure) ->
    {Pid, Listen, Upstream} = json_upstream(<<"{\"b\":1,\"a\":{\"z\":2,\"y\":3}}">>),
    Rec = servirtium:record(Tape, Upstream),
    try
        Configure(Rec),
        _ = os:cmd("curl -s " ++ servirtium:base_url(Rec) ++ "/data"),
        servirtium:close(Rec)
    after
        exit(Pid, kill), gen_tcp:close(Listen)
    end.

%% Stable ordering: (a) sorted + pretty JSON is written, (b) sorted JSON
%% without pretty_json is refused when the tape is written.
stable_order() ->
    Dir = "/tmp/vcr-stable-erlang-" ++ os:getpid(), ok = file:make_dir(Dir),
    try
        TapeA = Dir ++ "/sorted.md",
        ok = record_json(TapeA, fun(R) ->
            ok = servirtium:set_sort_json_keys(R, true),
            true = servirtium:get_sort_json_keys(R),
            ok = servirtium:set_pretty_json(R, 2)
        end),
        {ok, Bin} = file:read_file(TapeA),
        Text = binary_to_list(Bin),
        true = string:find(Text, "\"a\": {\n    \"y\": 3,\n    \"z\": 2\n  },\n  \"b\": 1") =/= nomatch,
        TapeB = Dir ++ "/refused.md",
        {error, Msg} = record_json(TapeB, fun(R) -> ok = servirtium:set_sort_json_keys(R, true) end),
        true = string:find(Msg, "sort_json_keys needs pretty_json") =/= nomatch,
        Probe = servirtium:record(Dir ++ "/probe.md", "http://127.0.0.1:1"),
        {'EXIT', {{servirtium, _}, _}} = (catch servirtium:sort_header_value(Probe, "")),
        ok = servirtium:set_sort_response_headers(Probe, true),
        true = servirtium:get_sort_response_headers(Probe),
        ok = servirtium:clear_stable_order(Probe),
        false = servirtium:get_sort_response_headers(Probe),
        _ = servirtium:close(Probe)
    after
        {ok, Names} = file:list_dir(Dir),
        [file:delete(filename:join(Dir, N)) || N <- Names],
        file:del_dir(Dir)
    end.

%% Playback range: a replay that skips the first interaction and serves a
%% later one; a record server refuses a range.
playback_range() ->
    Vcr = servirtium:playback("tapes/range.md"),
    try
        -1 = servirtium:get_playback_range_from(Vcr),
        ok = servirtium:set_playback_range(Vcr, 1, -1),
        1 = servirtium:get_playback_range_from(Vcr),
        2 = servirtium:get_playback_range_to(Vcr),
        Url = servirtium:base_url(Vcr),
        "second-body" = string:trim(os:cmd("curl -s " ++ Url ++ "/step/second"), trailing, "\n"),
        1 = servirtium:last_index(Vcr),
        {'EXIT', {{servirtium, _}, _}} = (catch servirtium:set_playback_range(Vcr, 9, -1)),
        ok = servirtium:clear_playback_range(Vcr),
        -1 = servirtium:get_playback_range_from(Vcr)
    after ok = servirtium:close(Vcr) end,
    Rec = servirtium:record("/tmp/vcr-range-refused-" ++ os:getpid() ++ ".md", "http://127.0.0.1:1"),
    try
        {'EXIT', {{servirtium, Reason}, _}} = (catch servirtium:set_playback_range(Rec, 0, -1)),
        true = is_binary(Reason)
    after _ = servirtium:close(Rec) end.

%% A missing tape surfaces its reason through open_error (no global open
%% error); repeated open/start/close is leak-free and a second close is a no-op.
open_failure_and_lifecycle() ->
    {'EXIT', {{servirtium, {playback_open_failed, _, Why}}, _}} =
        (catch servirtium:playback("tapes/definitely_missing.md")),
    true = string:find(Why, "definitely_missing") =/= nomatch,
    lists:foreach(fun(_) ->
        Vcr = servirtium:playback("tapes/single_get.md"),
        true = servirtium:port(Vcr) > 0,
        ok = servirtium:close(Vcr),
        ok = servirtium:close(Vcr)
    end, lists:seq(1, 50)).

%% Volatile values (docs/volatile-values.md), conformance checks 1-7.
volatile_values() ->
    Tapes = "../core_tests/volatile/",
    Run = fun(Mode, Server) ->
        Out = os:cmd("../target/test-tools/volatile_fixture " ++ Mode ++ " '" ++ servirtium:base_url(Server) ++ "' 2>&1; echo RC:$?"),
        case string:find(Out, "RC:0") of
            nomatch -> error({driver_failed, Mode, Out});
            _ -> ok
        end
    end,
    %% 1: rules in the tape only
    S1 = servirtium:playback_with(Tapes ++ "wcf.md", [{pretty_xml, 2}]),
    ok = Run("wcf", S1),
    true = string:find(servirtium:volatile_report(S1), "binding: {{messageId-1}} = ") =/= nomatch,
    ok = servirtium:close(S1),
    %% 2: a profile file
    S2 = servirtium:playback_with(Tapes ++ "wcf_plain.md",
        [{pretty_xml, 2}, {volatile_profile, filename:absname(Tapes ++ "profile.md")}]),
    ok = Run("wcf", S2),
    ok = servirtium:close(S2),
    %% 3: rules in code
    S3 = servirtium:playback_with(Tapes ++ "wcf_plain.md",
        [{pretty_xml, 2},
         {volatile_rule, "request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>"},
         {volatile_rule, "request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/"},
         {volatile_rule, "request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;"},
         {volatile_rule, "response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>"}]),
    ok = Run("wcf", S3),
    ok = servirtium:close(S3),
    %% 4: markers
    S4 = servirtium:playback_with(Tapes ++ "wcf_dollar.md",
        [{pretty_xml, 2}, {volatile_markers, dollar_curly}]),
    ok = Run("wcf", S4),
    ok = servirtium:close(S4),
    true = string:find(start_error(Tapes ++ "wcf_dollar.md", [{pretty_xml, 2}]), "DollarCurly") =/= nomatch,
    %% 5: correlated rules in the tape, then a mismatch names the token
    S5 = servirtium:playback(Tapes ++ "cases.md"),
    ok = Run("cases", S5),
    ok = servirtium:reset_cursor(S5),
    ok = Run("cases-mismatch", S5),
    true = string:find(servirtium:last_error(S5, false), "{{caseId-1}} = 42") =/= nomatch,
    _ = servirtium:last_error(S5, true),
    ok = servirtium:close(S5),
    %% 6: bind
    true = string:find(start_error(Tapes ++ "cases_recorded.md", []), "caseId") =/= nomatch,
    S6 = servirtium:playback_with(Tapes ++ "cases_recorded.md", [{bind, "caseId", "42"}]),
    ok = Run("cases", S6),
    ok = servirtium:close(S6),
    %% 7: errors fail the start with the core's message
    true = string:find(start_error(Tapes ++ "cases.md", [{volatile_rule, "request body", "no placeholder"}]),
                       "needs at least one placeholder") =/= nomatch,
    M2 = start_error(Tapes ++ "cases.md", [{volatile_rule, "response body", "\"caseId\":\"{{id}}\""}]),
    true = string:find(M2, "conflicts with") =/= nomatch,
    true = string:find(M2, "(tape)") =/= nomatch,
    _ = start_error(Tapes ++ "cases.md", [{volatile_rule, "x", "a {{b}}", "regex"}]),
    ok.

%% The core's message from a start that must fail.
start_error(Tape, Opts) ->
    try servirtium:playback_with(Tape, Opts) of
        _ -> error(expected_start_failure)
    catch error:{servirtium, Reason} -> element(tuple_size(Reason), Reason) end.
