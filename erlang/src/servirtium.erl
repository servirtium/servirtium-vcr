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
%% `core/vcr.ae` libservirtium_vcr. This module only drives the control surface through
%% the C NIF in servirtium_nif (which is the Elixir binding's C NIF, retargeted
%% to the `servirtium_nif` module).
%%
%% A running server is an opaque map; treat it as a token.
-module(servirtium).

-export([
    playback/1, playback/2, playback_with_secrets/2,
    secret_redactor/2,
    record/2, record/3,
    redact_header/2, redact_header/4,
    redact_query_param/2, redact_query_param/4,
    redact_json_field/2, redact_json_field/4,
    add_license_notice/2,
    set_pretty_json/2,
    remove_transport_headers/1,
    remove_cloud_headers/2,
    redact_credentials/1,
    redact_credential_header/2,
    set_upstream_cafile/2,
    set_sort_json_keys/2, get_sort_json_keys/1,
    sort_json_array/3, sort_json_array_at/4,
    set_sort_response_headers/2, get_sort_response_headers/1,
    sort_header_value/2,
    clear_stable_order/1,
    set_playback_range/3, clear_playback_range/1,
    get_playback_range_from/1, get_playback_range_to/1,
    base_url/1,
    port/1,
    tape_length/1,
    last_error/2, diagnostics_json/2, assert_no_mismatches/1, test_context/4,
    last_kind/1,
    last_error/1,
    last_index/1,
    close/1
]).

-export_type([server/0, outcome/0]).

-opaque server() :: #{
    handle := reference(),
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
playback(TapePath, Host) -> playback_open(TapePath, Host, undefined).

playback_with_secrets(TapePath, Resolver) when is_function(Resolver, 1) ->
    playback_open(TapePath, "127.0.0.1", Resolver).

playback_open(TapePath, Host, Resolver) ->
    Handle = servirtium_nif:open_playback(
        list_to_binary(""),
        list_to_binary(TapePath),
        list_to_binary(Host),
        0
    ),
    open_checked(Handle, fun(Why) -> {playback_open_failed, TapePath, Why} end),
    case Resolver of undefined -> ok; _ -> servirtium_nif:secret_stage(Handle, Resolver, true) end,
    case servirtium_nif:start(Handle) of
        Rc when Rc < 0 ->
            Detail = binary_to_list(servirtium_nif:last_error(Handle)),
            servirtium_nif:stop(Handle),
            servirtium_nif:destroy(Handle),
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
    open_checked(Handle, fun(Why) -> {record_open_failed, TapePath, UpstreamBase, Why} end),
    case servirtium_nif:start(Handle) of
        Rc when Rc < 0 ->
            Detail = binary_to_list(servirtium_nif:last_error(Handle)),
            servirtium_nif:stop(Handle),
            servirtium_nif:destroy(Handle),
            error({servirtium, {record_start_failed, TapePath, Detail}});
        _ ->
            #{handle => Handle, host => Host, mode => record, tape => TapePath}
    end.

%% An open_* call always yields a handle; a failed open is a dead one carrying its
%% reason. Read it, destroy the handle, and raise.
open_checked(Handle, Err) ->
    case servirtium_nif:open_error(Handle) of
        <<>> -> ok;
        Why ->
            servirtium_nif:destroy(Handle),
            error({servirtium, Err(binary_to_list(Why))})
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
%% disk, then frees the VCR. Returns ok, or {error, Msg} on a record-flush problem.
%% Idempotent: the handle is a resource, a second close is a harmless no-op.
-spec close(server()) -> ok | {error, string()}.
close(#{mode := playback, handle := H}) ->
    servirtium_nif:stop(H),
    servirtium_nif:destroy(H),
    ok;
close(#{mode := record, handle := H, tape := Tape} = Server) ->
    case maps:get(secret_redactor, Server, undefined) of
        undefined -> ok;
        Callback -> servirtium_nif:secret_stage(H, Callback, false)
    end,
    Res = servirtium_nif:stop_and_flush(H, list_to_binary(Tape)),
    servirtium_nif:destroy(H),
    case Res of
        <<>> -> ok;
        Msg when is_binary(Msg) -> {error, binary_to_list(Msg)}
    end.

%% Redact on tape emission; forwarding retains the original value.
redact_header(Server, Name) -> redact_header(Server, Name, <<"[REDACTED]">>, 3).
redact_header(#{handle := H}, Name, Replacement, Field) ->
    case servirtium_nif:redact_header(H, Field, unicode:characters_to_binary(Name), unicode:characters_to_binary(Replacement)) of
        <<>> -> ok;
        Error -> error({servirtium, Error})
    end.
%% Redact on tape emission; forwarding retains the original value.
redact_query_param(Server, Name) -> redact_query_param(Server, Name, <<"[REDACTED]">>, 1).
redact_query_param(#{handle := H}, Name, Replacement, Field) ->
    case servirtium_nif:redact_query_param(H, Field, unicode:characters_to_binary(Name), unicode:characters_to_binary(Replacement)) of
        <<>> -> ok;
        Error -> error({servirtium, Error})
    end.
%% Redact on tape emission; forwarding retains the original value.
redact_json_field(Server, Name) -> redact_json_field(Server, Name, <<"[REDACTED]">>, 4).
redact_json_field(#{handle := H}, Name, Replacement, Field) ->
    case servirtium_nif:redact_json_field(H, Field, unicode:characters_to_binary(Name), unicode:characters_to_binary(Replacement)) of
        <<>> -> ok;
        Error -> error({servirtium, Error})
    end.

%% Record mode: write Text under "## LICENSE NOTICE" at the top of each tape;
%% playback ignores it. Returns ok, or raises {servirtium, Error}.
add_license_notice(#{handle := H}, Text) ->
    str_result(servirtium_nif:add_license_notice(H, unicode:characters_to_binary(Text))).

%% Record mode: pretty-print recorded JSON response bodies (indent 1..16;
%% 0 = off); request bodies are never changed.
set_pretty_json(#{handle := H}, Indent) when is_integer(Indent) ->
    servirtium_nif:set_pretty_json(H, Indent).

%% Header presets (opt-in; each returns ok or raises {servirtium, Error}).
%% Host, Connection, Content-Length, the other hop-by-hop headers and the
%% request's Accept-Encoding.
remove_transport_headers(#{handle := H}) ->
    str_result(servirtium_nif:remove_transport_headers(H)).
%% Vendor: "aws", "azure", "cloudflare", "fastly" or "gcp".
remove_cloud_headers(#{handle := H}, Vendor) ->
    str_result(servirtium_nif:remove_cloud_headers(H, unicode:characters_to_binary(Vendor))).
%% Authorization, cookies, X-Api-Key and X-Auth-Token become numbered tokens.
redact_credentials(#{handle := H}) ->
    str_result(servirtium_nif:redact_credentials(H)).
%% One more credential header, its whole value a token named after it.
redact_credential_header(#{handle := H}, Name) ->
    str_result(servirtium_nif:redact_credential_header(H, unicode:characters_to_binary(Name))).

%% Record mode: verify an https upstream against this PEM CA file.
set_upstream_cafile(#{handle := H}, Path) ->
    str_result(servirtium_nif:set_upstream_cafile(H, unicode:characters_to_binary(Path))).

%% Stable ordering (record side, all opt-in; the tape is byte-exact without
%% them). Sorted JSON is only written pretty-printed: a record with
%% set_sort_json_keys/sort_json_array* but without set_pretty_json is refused
%% when the tape is written (close/1 returns {error, "sort_json_keys needs
%% pretty_json: ..."}).
%% JSON object keys sorted at every depth in recorded JSON response bodies.
set_sort_json_keys(#{handle := H}, On) when is_boolean(On) ->
    servirtium_nif:set_sort_json_keys(H, bool_int(On)).
get_sort_json_keys(#{handle := H}) ->
    servirtium_nif:get_sort_json_keys(H) =/= 0.
%% The JSON arrays Path selects (JSON pointer, "*" for one segment, "" the
%% root array, or a bare member name) sorted by member By ("" = canonical
%% JSON). Returns ok or raises {servirtium, Reason}.
sort_json_array(#{handle := H}, Path, By) ->
    str_result(servirtium_nif:sort_json_array(H, unicode:characters_to_binary(Path),
                                              unicode:characters_to_binary(By))).
%% The same, only for requests whose path (query included) matches Request.
sort_json_array_at(#{handle := H}, Request, Path, By) ->
    str_result(servirtium_nif:sort_json_array_at(H, unicode:characters_to_binary(Request),
                                                 unicode:characters_to_binary(Path),
                                                 unicode:characters_to_binary(By))).
%% Response header lines sorted by name (case-insensitive).
set_sort_response_headers(#{handle := H}, On) when is_boolean(On) ->
    servirtium_nif:set_sort_response_headers(H, bool_int(On)).
get_sort_response_headers(#{handle := H}) ->
    servirtium_nif:get_sort_response_headers(H) =/= 0.
%% One response header's comma-separated items sorted ("Allow"). Returns ok
%% or raises {servirtium, Reason}.
sort_header_value(#{handle := H}, Name) ->
    str_result(servirtium_nif:sort_header_value(H, unicode:characters_to_binary(Name))).
%% Every stable-order rule off.
clear_stable_order(#{handle := H}) ->
    servirtium_nif:clear_stable_order(H).

%% Playback only: replay just interactions From..To (inclusive, 0-based, the
%% tape's "## Interaction N" numbers; To < 0 = through the last). Set before
%% requests arrive. Returns ok or raises {servirtium, Reason} (e.g. on a
%% record server, or From past the tape).
set_playback_range(#{handle := H}, From, To) when is_integer(From), is_integer(To) ->
    str_result(servirtium_nif:set_playback_range(H, From, To)).
clear_playback_range(#{handle := H}) ->
    servirtium_nif:clear_playback_range(H).
%% The range in force, first and last interaction; -1 when none is set.
get_playback_range_from(#{handle := H}) ->
    servirtium_nif:get_playback_range_from(H).
get_playback_range_to(#{handle := H}) ->
    servirtium_nif:get_playback_range_to(H).

bool_int(true) -> 1;
bool_int(false) -> 0.

str_result(<<>>) -> ok;
str_result(Error) -> error({servirtium, Error}).

last_error(#{handle := H}, Consume) when is_boolean(Consume) ->
    binary_to_list(servirtium_nif:last_error_ex(H, case Consume of true -> 1; false -> 0 end)).
diagnostics_json(#{handle := H}, Consume) when is_boolean(Consume) ->
    binary_to_list(servirtium_nif:diagnostics_json(H, case Consume of true -> 1; false -> 0 end)).
assert_no_mismatches(#{handle := H}) ->
    case servirtium_nif:assert_no_mismatches(H) of
        <<>> -> ok;
        Error -> error({servirtium, Error})
    end.
test_context(#{handle := H}, Name, File, Line) ->
    servirtium_nif:test_context(H, unicode:characters_to_binary(Name), unicode:characters_to_binary(File), Line).

secret_redactor(#{mode := record} = Server, Callback) when is_function(Callback, 2) ->
    Server#{secret_redactor => Callback}.
