%% servirtium_nif — raw NIF surface over the Aether VCR core's C-ABI.
%%
%% This is a 1:1 stub module: every function here is replaced at load time by
%% the native implementation in c_src/servirtium_nif.c (priv/servirtium_nif.so),
%% which links the engine in core/native/libservirtium_vcr.so. Until the NIF
%% loads, each body raises `nif_error(not_loaded)`.
%%
%% This is the CANONICAL Aether VCR NIF for the whole BEAM family. It is built
%% ONCE (as the OTP app `servirtium_nif`: this module + priv/servirtium_nif.so)
%% and the Elixir and Gleam bindings load this SAME compiled module over the
%% BEAM — they do not each compile their own copy of the C source. (Erlang is
%% the BEAM's lingua franca, so it owns the shared binding, exactly as the one
%% Java jar backs the Kotlin/Scala/Clojure/Groovy bindings.)
%%
%% Use `servirtium` (servirtium.erl) for the idiomatic Erlang API; this is the
%% thin FFI seam. The opaque server handle is a 64-bit integer (uintptr_t); 0
%% from open_* means failure. String results come back as binaries; mutation
%% funcs return <<>> on success or an error-message binary.
-module(servirtium_nif).

-on_load(init/0).

-export([
    %% lifecycle: open -> start
    open_playback/4,
    open_record/5,
    start/1,
    stop/1,
    stop_and_flush/2,
    stop_and_flush_fail_if_changed/2,
    %% introspection
    port/1,
    base_url/2,
    tape_length/1,
    reset_cursor/1,
    %% diagnostics
    last_error/1,
    last_kind/1,
    last_index/1,
    clear_last_error/1,
    %% mutations / config
    redact/4,
    unredact/4,
    normalize_whole_tape/3,
    redact_whole_tape/3,
    remove_header/3,
    match_header/2,
    note/3,
    static_content/3,
    untaped/2,
    set_strict_headers/2,
    set_match_json_body/2,
    set_match_multiple/2,
    indent_code_blocks/1,
    emphasize_http_verbs/1,
    clear_redactions/1,
    clear_unredactions/1,
    clear_header_removals/1,
    clear_match_headers/1,
    clear_static_content/1,
    clear_untaped/1,
    clear_format_options/1
]).

init() ->
    %% Resolve priv/servirtium_nif.so three ways, in order: an explicit
    %% SERVIRTIUM_NIF_DIR override (how a consumer that can't set ERL_LIBS
    %% points at the shared build); the OTP app's priv_dir (the normal path —
    %% the `servirtium_nif` app on the code path via ERL_LIBS, for Erlang,
    %% Elixir and Gleam alike); else a loose ./priv when run straight from a
    %% source tree.
    Base =
        case os:getenv("SERVIRTIUM_NIF_DIR") of
            false ->
                case code:priv_dir(servirtium_nif) of
                    {error, bad_name} -> filename:join("priv", "servirtium_nif");
                    Dir -> filename:join(Dir, "servirtium_nif")
                end;
            EnvDir ->
                filename:join(EnvDir, "servirtium_nif")
        end,
    erlang:load_nif(Base, 0).

%% ---- lifecycle: open -> start -------------------------------------------

open_playback(_Label, _TapePath, _Host, _Port) -> erlang:nif_error(not_loaded).
open_record(_Label, _TapePath, _UpstreamBase, _Host, _Port) -> erlang:nif_error(not_loaded).
start(_Handle) -> erlang:nif_error(not_loaded).
stop(_Handle) -> erlang:nif_error(not_loaded).
stop_and_flush(_Handle, _TapePath) -> erlang:nif_error(not_loaded).
stop_and_flush_fail_if_changed(_Handle, _TapePath) -> erlang:nif_error(not_loaded).

%% ---- introspection -------------------------------------------------------

port(_Handle) -> erlang:nif_error(not_loaded).
base_url(_Handle, _Host) -> erlang:nif_error(not_loaded).
tape_length(_Handle) -> erlang:nif_error(not_loaded).
reset_cursor(_Handle) -> erlang:nif_error(not_loaded).

%% ---- diagnostics ---------------------------------------------------------

last_error(_Handle) -> erlang:nif_error(not_loaded).
last_kind(_Handle) -> erlang:nif_error(not_loaded).
last_index(_Handle) -> erlang:nif_error(not_loaded).
clear_last_error(_Handle) -> erlang:nif_error(not_loaded).

%% ---- mutations / config --------------------------------------------------

redact(_Handle, _Field, _Pattern, _Replacement) -> erlang:nif_error(not_loaded).
unredact(_Handle, _Field, _Pattern, _Replacement) -> erlang:nif_error(not_loaded).
normalize_whole_tape(_Handle, _Pattern, _Name) -> erlang:nif_error(not_loaded).
redact_whole_tape(_Handle, _Pattern, _Replacement) -> erlang:nif_error(not_loaded).
remove_header(_Handle, _Field, _Name) -> erlang:nif_error(not_loaded).
match_header(_Handle, _Name) -> erlang:nif_error(not_loaded).
note(_Handle, _Title, _Body) -> erlang:nif_error(not_loaded).
static_content(_Handle, _MountPath, _FsDir) -> erlang:nif_error(not_loaded).
untaped(_Handle, _Path) -> erlang:nif_error(not_loaded).
set_strict_headers(_Handle, _On) -> erlang:nif_error(not_loaded).
set_match_json_body(_Handle, _On) -> erlang:nif_error(not_loaded).
set_match_multiple(_Handle, _On) -> erlang:nif_error(not_loaded).
indent_code_blocks(_Handle) -> erlang:nif_error(not_loaded).
emphasize_http_verbs(_Handle) -> erlang:nif_error(not_loaded).
clear_redactions(_Handle) -> erlang:nif_error(not_loaded).
clear_unredactions(_Handle) -> erlang:nif_error(not_loaded).
clear_header_removals(_Handle) -> erlang:nif_error(not_loaded).
clear_match_headers(_Handle) -> erlang:nif_error(not_loaded).
clear_static_content(_Handle) -> erlang:nif_error(not_loaded).
clear_untaped(_Handle) -> erlang:nif_error(not_loaded).
clear_format_options(_Handle) -> erlang:nif_error(not_loaded).
