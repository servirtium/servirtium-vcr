#!/usr/bin/env escript
%%! -pa ebin
%%
%% Smoke test for the Erlang Servirtium binding: start a playback VCR over a
%% one-interaction tape (GET /ok -> 200 text/plain "ok-body"), drive it with
%% curl, and assert the body + a clean match. Exits 0 on success, non-zero on
%% any failure. Run from erlang/ so ./priv/servirtium_nif.so resolves.

main(_) ->
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
