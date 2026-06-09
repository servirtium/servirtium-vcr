%% servirtium — idiomatic Erlang wrapper over the Aether VCR core.
%%
%% Record/replay HTTP service tests in the Servirtium markdown tape format.
%% Point your system-under-test at base_url/1. In playback it replays a
%% recorded markdown tape (no network); in record it forwards to the real
%% upstream, returns the live response, and writes the tape on close.
%%
%%   Vcr = servirtium:playback("tapes/single_get.md"),
%%   Url = servirtium:base_url(Vcr),
%%   Body = os:cmd("curl -s " ++ Url ++ "/ok"),
%%   ok = servirtium:close(Vcr).
%%
%% All record/replay machinery — markdown parse/emit, the HTTP server, request
%% matching, redactions, drift detection, etc. — lives in the in-repo Aether
%% `core/vcr.ae` engine. This module only drives the control surface through
%% the C NIF in servirtium_nif (which is the Elixir binding's C NIF, retargeted
%% to the `servirtium_nif` module).
%%
%% A running server is an opaque map; treat it as a token.
-module(servirtium).

-export([
    playback/1, playback/2,
    record/2, record/3,
    base_url/1,
    port/1,
    tape_length/1,
    last_kind/1,
    last_error/1,
    last_index/1,
    close/1
]).

-export_type([server/0, outcome/0]).

-opaque server() :: #{
    handle := non_neg_integer(),
    host := string(),
    mode := playback | record,
    tape := string()
}.

-type outcome() ::
    ok
    | path_or_method_diff
    | header_missing
    | header_value_diff
    | header_unexpected
    | tape_exhausted
    | body_diff
    | record_error.

%% VCR_KIND_* -> atom (mirrors core/vcr.ae).
-define(KIND(N),
    case N of
        0 -> ok;
        1 -> path_or_method_diff;
        2 -> header_missing;
        3 -> header_value_diff;
        4 -> header_unexpected;
        5 -> tape_exhausted;
        6 -> body_diff;
        7 -> record_error;
        _ -> ok
    end
).

%% ---- public entry points -------------------------------------------------

%% Replay a Servirtium markdown tape from disk, binding an OS-chosen free port.
-spec playback(string()) -> server().
playback(TapePath) ->
    playback(TapePath, "127.0.0.1").

-spec playback(string(), string()) -> server().
playback(TapePath, Host) ->
    Handle = servirtium_nif:open_playback(
        list_to_binary(""),
        list_to_binary(TapePath),
        list_to_binary(Host),
        0
    ),
    case Handle of
        0 -> error({servirtium, {playback_open_failed, TapePath}});
        _ -> ok
    end,
    case servirtium_nif:start(Handle) of
        Rc when Rc < 0 ->
            Detail = binary_to_list(servirtium_nif:last_error(Handle)),
            servirtium_nif:stop(Handle),
            error({servirtium, {playback_start_failed, TapePath, Detail}});
        _ ->
            #{handle => Handle, host => Host, mode => playback, tape => TapePath}
    end.

%% Record: forward each request to UpstreamBase, capture the exchange, and
%% write the tape to TapePath on close/1. Binds an OS-chosen free port.
-spec record(string(), string()) -> server().
record(TapePath, UpstreamBase) ->
    record(TapePath, UpstreamBase, "127.0.0.1").

-spec record(string(), string(), string()) -> server().
record(TapePath, UpstreamBase, Host) ->
    Handle = servirtium_nif:open_record(
        list_to_binary(""),
        list_to_binary(TapePath),
        list_to_binary(UpstreamBase),
        list_to_binary(Host),
        0
    ),
    case Handle of
        0 -> error({servirtium, {record_open_failed, TapePath, UpstreamBase}});
        _ -> ok
    end,
    case servirtium_nif:start(Handle) of
        Rc when Rc < 0 ->
            Detail = binary_to_list(servirtium_nif:last_error(Handle)),
            servirtium_nif:stop(Handle),
            error({servirtium, {record_start_failed, TapePath, Detail}});
        _ ->
            #{handle => Handle, host => Host, mode => record, tape => TapePath}
    end.

%% ---- running-server members ----------------------------------------------

%% Base URL the SUT should target, e.g. "http://127.0.0.1:54213".
-spec base_url(server()) -> string().
base_url(#{handle := H, host := Host}) ->
    binary_to_list(servirtium_nif:base_url(H, list_to_binary(Host))).

%% The OS-resolved port the server is listening on.
-spec port(server()) -> integer().
port(#{handle := H}) ->
    servirtium_nif:port(H).

%% Tape entry count (playback), or interactions captured so far (record).
-spec tape_length(server()) -> integer().
tape_length(#{handle := H}) ->
    servirtium_nif:tape_length(H).

%% Outcome atom of the most-recent dispatch (ok, body_diff, ...).
-spec last_kind(server()) -> outcome().
last_kind(#{handle := H}) ->
    N = servirtium_nif:last_kind(H),
    ?KIND(N).

%% Most-recent dispatch diagnostic; "" when none flagged.
-spec last_error(server()) -> string().
last_error(#{handle := H}) ->
    binary_to_list(servirtium_nif:last_error(H)).

%% Tape index of the most-recent matched interaction, or -1.
-spec last_index(server()) -> integer().
last_index(#{handle := H}) ->
    servirtium_nif:last_index(H).

%% Stop the server. In record mode this also flushes the captured tape to
%% disk. Returns ok, or {error, Msg} on a record-flush problem. Idempotent-ish
%% (a second close on the same handle is undefined; close once).
-spec close(server()) -> ok | {error, string()}.
close(#{mode := playback, handle := H}) ->
    servirtium_nif:stop(H),
    ok;
close(#{mode := record, handle := H, tape := Tape}) ->
    Res = servirtium_nif:stop_and_flush(H, list_to_binary(Tape)),
    case Res of
        <<>> -> ok;
        Msg when is_binary(Msg) -> {error, binary_to_list(Msg)}
    end.
