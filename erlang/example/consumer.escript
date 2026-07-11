#!/usr/bin/env escript
%%
%% Third-party consumer example for the Erlang binding. Uses the INSTALLED
%% servirtium_nif OTP app (resolved via ERL_LIBS, the standard OTP way — the
%% `servirtium` module + its priv/servirtium_nif.so). The NIF finds the engine
%% libservirtium_vcr.so beside it in priv/ via a $ORIGIN rpath — self-contained
%% and relocatable, with no SERVIRTIUM_VCR_LIB and no reference to the repo core/.

main(_) ->
    Tape = "tapes/single_get.md",
    Vcr = servirtium:playback(Tape),
    BaseUrl = servirtium:base_url(Vcr),

    Body0 = os:cmd("curl -s " ++ BaseUrl ++ "/ok"),
    Body = string:trim(Body0, trailing, "\n"),
    Kind = servirtium:last_kind(Vcr),
    ok = servirtium:close(Vcr),

    case {Body, Kind} of
        {"ok-body", ok} ->
            io:format("PASS[discovery]: consumer replayed the canonical tape from the servirtium_nif OTP app~n", []),
            halt(0);
        _ ->
            io:format(standard_error, "FAIL: expected {\"ok-body\", ok}, got {~p, ~p}~n", [Body, Kind]),
            halt(1)
    end.
