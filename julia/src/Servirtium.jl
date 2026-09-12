# Servirtium.jl — the Julia binding over the shared Aether VCR engine.
#
# Servirtium records an HTTP conversation to a human-readable markdown tape
# once, then replays it forever — offline, deterministic, git-diffable. Point
# your system-under-test at `base_url(vcr)` and drive it with plain HTTP.
#
#   playback("tapes/single_get.md") do vcr
#       body = read(`curl -s "$(base_url(vcr))/ok"`, String)
#       @test body == "ok-body"
#       @test last_kind(vcr) == Ok
#   end
#
# Julia's built-in `ccall` invokes the engine's flat C ABI (aether_vcr_embed_*)
# DIRECTLY — no glue, no second copy of the marshalling rules to drift from
# core/embed.ae. The engine .so is located via SERVIRTIUM_VCR_LIB (an absolute
# path env), so ccall's library handle is that path.
#
# This module carries NO record/replay logic: markdown parse/emit, the HTTP
# server, request matching, redactions and drift detection all live in the
# in-repo pure-Aether core/vcr.ae engine. What Julia adds is a do-block form
# that always closes the server, enums for Field/Outcome, caller-owned-string
# handling, and a typed error.
module Servirtium

export Vcr, VcrError, Field, Outcome,
    Path, ResponseBody, RequestHeaders, RequestBody, ResponseHeaders,
    Ok, PathOrMethodDiff, HeaderMissing, HeaderValueDiff, HeaderUnexpected,
    TapeExhausted, BodyDiff, RecordError,
    playback, playback_url, record,
    base_url, port, tape_length, reset_cursor,
    last_kind, last_error, last_index, clear_last_error, matched_cleanly,
    redact, unredact, normalize_whole_tape, redact_whole_tape, remove_header,
    match_header, note, static_content, untaped,
    strict_ignore_common_headers, set_strict_headers,
    set_match_json_body, set_match_multiple,
    indent_code_blocks, emphasize_http_verbs,
    close!, flush!, flush_fail_if_changed!, flush_or_check!,
    har_import, har_export

"""
    LIB

Absolute path to the engine shared library, resolved once at load time in three
steps — the same order every binding in this repo uses:

1. `SERVIRTIUM_VCR_LIB` when set (how each `.tests.ae` leaf hands the
   freshly-built engine in, and the explicit escape hatch for a consumer);
2. `native/libservirtium_vcr.so` bundled beside the installed package (what
   `julia/.package.ae` stages, so a `Pkg.add`-ed copy is zero-config);
3. the bare soname, letting the OS loader find a system-installed copy.
"""
const LIB = let
    explicit = get(ENV, "SERVIRTIUM_VCR_LIB", "")
    bundled = normpath(joinpath(@__DIR__, "..", "native", "libservirtium_vcr.so"))
    if !isempty(explicit)
        explicit
    elseif isfile(bundled)
        bundled
    else
        "libservirtium_vcr.so"
    end
end

"""Raised when a server can't be opened/started, or a config call or record
flush reports an error."""
struct VcrError <: Exception
    msg::String
end
Base.showerror(io::IO, e::VcrError) = print(io, "VcrError: ", e.msg)

"""
    Field

Field selector for redactions / unredactions / header removals. Values mirror
the FIELD_* constants in core/vcr.ae.
"""
@enum Field begin
    Path = 1
    ResponseBody = 2
    RequestHeaders = 3
    RequestBody = 4
    ResponseHeaders = 5
end

"""
    Outcome

Per-dispatch outcome. Anything but `Ok` is a mismatch. Values mirror the
VCR_KIND_* constants in core/vcr.ae.
"""
@enum Outcome begin
    Ok = 0
    PathOrMethodDiff = 1
    HeaderMissing = 2
    HeaderValueDiff = 3
    HeaderUnexpected = 4
    TapeExhausted = 5
    BodyDiff = 6
    RecordError = 7
end

"""A running VCR server. One handle per instance, so N servers can run
concurrently in one process — one per port."""
mutable struct Vcr
    handle::Ptr{Cvoid}
    host::String
    tape::Union{String,Nothing}
    closed::Bool
end

# ---- the caller-owned-string discipline, in exactly one place -------------

"""Adopt an owned char* from the ABI as a Julia String and release it."""
function take(ptr::Ptr{Cchar})
    ptr == C_NULL && return ""
    s = unsafe_string(ptr)
    ccall((:aether_vcr_embed_free_string, LIB), Cvoid, (Ptr{Cchar},), ptr)
    return s
end

"""A config call's owned error string; empty means OK, anything else throws."""
function check(ptr::Ptr{Cchar}, what::AbstractString)
    err = take(ptr)
    isempty(err) || throw(VcrError("$what: $err"))
    return nothing
end

# ---- lifecycle ------------------------------------------------------------

"""Start an opened handle, cleaning up and throwing rather than handing back a
dead server. Shared by every open below."""
function started(handle::Ptr{Cvoid}, failure::AbstractString)
    handle == C_NULL && throw(VcrError(failure))
    if ccall((:aether_vcr_embed_start, LIB), Cint, (Ptr{Cvoid},), handle) < 0
        detail = take(ccall((:aether_vcr_embed_last_error, LIB), Ptr{Cchar},
                            (Ptr{Cvoid},), handle))
        ccall((:aether_vcr_embed_stop, LIB), Cvoid, (Ptr{Cvoid},), handle)
        throw(VcrError(isempty(detail) ? failure : "$failure: $detail"))
    end
    return handle
end

"""
    playback(tape_path; host="127.0.0.1", port=0) -> Vcr
    playback(f, tape_path; host="127.0.0.1", port=0)

Replay a Servirtium markdown tape from disk. The do-block form closes the
server when the block ends, on every path including an exception.
"""
function playback(tape_path::AbstractString; host::AbstractString="127.0.0.1",
                  port::Integer=0)
    h = ccall((:aether_vcr_embed_open_playback, LIB), Ptr{Cvoid},
              (Cstring, Cstring, Cstring, Cint), "", tape_path, host, port)
    Vcr(started(h, "playback open failed: $tape_path"), String(host),
        String(tape_path), false)
end

function playback(f::Function, tape_path::AbstractString; kwargs...)
    vcr = playback(tape_path; kwargs...)
    try
        f(vcr)
    finally
        close!(vcr)
    end
end

"""Replay a tape fetched from a URL rather than the filesystem."""
function playback_url(tape_url::AbstractString; host::AbstractString="127.0.0.1",
                      port::Integer=0)
    h = ccall((:aether_vcr_embed_open_playback_url, LIB), Ptr{Cvoid},
              (Cstring, Cstring, Cstring, Cint), "", tape_url, host, port)
    Vcr(started(h, "playback-url open failed: $tape_url"), String(host), nothing, false)
end

"""
    record(tape_path, upstream_base; host="127.0.0.1", port=0) -> Vcr
    record(f, tape_path, upstream_base; host="127.0.0.1", port=0)

Forward each request to `upstream_base`, return the live response to the SUT,
and capture the exchange. The do-block form flushes the tape when the block
ends normally, and DISCARDS it if the block threw — a failed test shouldn't
overwrite a good tape.
"""
function record(tape_path::AbstractString, upstream_base::AbstractString;
                host::AbstractString="127.0.0.1", port::Integer=0)
    h = ccall((:aether_vcr_embed_open_record, LIB), Ptr{Cvoid},
              (Cstring, Cstring, Cstring, Cstring, Cint),
              "", tape_path, upstream_base, host, port)
    Vcr(started(h, "record open failed: $tape_path"), String(host),
        String(tape_path), false)
end

function record(f::Function, tape_path::AbstractString,
                upstream_base::AbstractString; kwargs...)
    vcr = record(tape_path, upstream_base; kwargs...)
    try
        result = f(vcr)
        flush!(vcr)
        result
    catch
        close!(vcr)
        rethrow()
    end
end

# ---- introspection --------------------------------------------------------

"""Base URL the SUT should target, e.g. "http://127.0.0.1:54213"."""
base_url(vcr::Vcr) = take(ccall((:aether_vcr_embed_base_url, LIB), Ptr{Cchar},
                                (Ptr{Cvoid}, Cstring), vcr.handle, vcr.host))

"""The OS-resolved port the server is listening on."""
port(vcr::Vcr) = Int(ccall((:aether_vcr_embed_port, LIB), Cint, (Ptr{Cvoid},), vcr.handle))

"""Tape entry count (playback), or interactions captured so far (record)."""
tape_length(vcr::Vcr) = Int(ccall((:aether_vcr_embed_tape_length, LIB), Cint,
                                  (Ptr{Cvoid},), vcr.handle))

"""Rewind the playback cursor to the top of the tape."""
reset_cursor(vcr::Vcr) = ccall((:aether_vcr_embed_reset_cursor, LIB), Cvoid,
                               (Ptr{Cvoid},), vcr.handle)

# ---- diagnostics ----------------------------------------------------------

"""Outcome of the most-recent dispatch. `Ok` means a clean match."""
last_kind(vcr::Vcr) = Outcome(ccall((:aether_vcr_embed_last_kind, LIB), Cint,
                                    (Ptr{Cvoid},), vcr.handle))

"""True when the most-recent dispatch matched cleanly."""
matched_cleanly(vcr::Vcr) = last_kind(vcr) == Ok

"""Most-recent dispatch diagnostic; "" when none flagged."""
last_error(vcr::Vcr) = take(ccall((:aether_vcr_embed_last_error, LIB), Ptr{Cchar},
                                  (Ptr{Cvoid},), vcr.handle))

"""Tape index of the most-recent matched interaction, or -1."""
last_index(vcr::Vcr) = Int(ccall((:aether_vcr_embed_last_index, LIB), Cint,
                                 (Ptr{Cvoid},), vcr.handle))

clear_last_error(vcr::Vcr) = ccall((:aether_vcr_embed_clear_last_error, LIB), Cvoid,
                                   (Ptr{Cvoid},), vcr.handle)

# ---- config (each throws VcrError if the engine rejects it) ---------------

redact(vcr::Vcr, field::Field, pattern, replacement) =
    check(ccall((:aether_vcr_embed_redact, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cint, Cstring, Cstring),
                vcr.handle, Int(field), pattern, replacement), "redact")

unredact(vcr::Vcr, field::Field, pattern, replacement) =
    check(ccall((:aether_vcr_embed_unredact, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cint, Cstring, Cstring),
                vcr.handle, Int(field), pattern, replacement), "unredact")

"""Correlate every match into {{name-N}} tokens (things that recur and must
stay consistent across the whole tape — UUIDs, CSRF tokens)."""
normalize_whole_tape(vcr::Vcr, pattern, name) =
    check(ccall((:aether_vcr_embed_normalize_whole_tape, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring, Cstring), vcr.handle, pattern, name),
          "normalize_whole_tape")

"""Collapse every match to one constant (variable-cardinality noise — dates)."""
redact_whole_tape(vcr::Vcr, pattern, replacement) =
    check(ccall((:aether_vcr_embed_redact_whole_tape, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring, Cstring), vcr.handle, pattern, replacement),
          "redact_whole_tape")

remove_header(vcr::Vcr, field::Field, name) =
    check(ccall((:aether_vcr_embed_remove_header, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cint, Cstring), vcr.handle, Int(field), name),
          "remove_header")

"""Require this request header's live value to equal the recorded one. Also
suppresses the automatic full-block header match unless strict headers are
explicitly on — surgical, not all-or-nothing."""
match_header(vcr::Vcr, name) =
    check(ccall((:aether_vcr_embed_match_header, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), vcr.handle, name), "match_header")

note(vcr::Vcr, title, body) =
    check(ccall((:aether_vcr_embed_note, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring, Cstring), vcr.handle, title, body), "note")

static_content(vcr::Vcr, mount_path, fs_dir) =
    check(ccall((:aether_vcr_embed_static_content, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring, Cstring), vcr.handle, mount_path, fs_dir),
          "static_content")

untaped(vcr::Vcr, path) =
    check(ccall((:aether_vcr_embed_untaped, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), vcr.handle, path), "untaped")

strict_ignore_common_headers(vcr::Vcr) =
    ccall((:aether_vcr_embed_strict_ignore_common_headers, LIB), Cvoid,
          (Ptr{Cvoid},), vcr.handle)

set_strict_headers(vcr::Vcr, on::Bool) =
    ccall((:aether_vcr_embed_set_strict_headers, LIB), Cvoid,
          (Ptr{Cvoid}, Cint), vcr.handle, on ? 1 : 0)

"""Opt-in: a request body that differs byte-for-byte gets a second chance at
semantic JSON equality (key order + whitespace ignored, array order
significant). A non-JSON body always falls back to the byte-exact verdict."""
set_match_json_body(vcr::Vcr, on::Bool) =
    ccall((:aether_vcr_embed_set_match_json_body, LIB), Cvoid,
          (Ptr{Cvoid}, Cint), vcr.handle, on ? 1 : 0)

"""Opt-in: search ALL interactions for one that fits and replay it WITHOUT
consuming it, so repeated and out-of-order requests both match."""
set_match_multiple(vcr::Vcr, on::Bool) =
    ccall((:aether_vcr_embed_set_match_multiple, LIB), Cvoid,
          (Ptr{Cvoid}, Cint), vcr.handle, on ? 1 : 0)

indent_code_blocks(vcr::Vcr) =
    ccall((:aether_vcr_embed_indent_code_blocks, LIB), Cvoid, (Ptr{Cvoid},), vcr.handle)

emphasize_http_verbs(vcr::Vcr) =
    ccall((:aether_vcr_embed_emphasize_http_verbs, LIB), Cvoid, (Ptr{Cvoid},), vcr.handle)

for (fn, sym) in ((:clear_redactions, :aether_vcr_embed_clear_redactions),
                  (:clear_unredactions, :aether_vcr_embed_clear_unredactions),
                  (:clear_normalizations, :aether_vcr_embed_clear_normalizations),
                  (:clear_header_removals, :aether_vcr_embed_clear_header_removals),
                  (:clear_match_headers, :aether_vcr_embed_clear_match_headers),
                  (:clear_static_content, :aether_vcr_embed_clear_static_content),
                  (:clear_untaped, :aether_vcr_embed_clear_untaped),
                  (:clear_format_options, :aether_vcr_embed_clear_format_options))
    @eval begin
        $fn(vcr::Vcr) = ccall(($(QuoteNode(sym)), LIB), Cvoid, (Ptr{Cvoid},), vcr.handle)
        export $fn
    end
end

# ---- shutdown -------------------------------------------------------------

"""Stop the server, discarding any recording. Idempotent."""
function close!(vcr::Vcr)
    vcr.closed && return nothing
    vcr.closed = true
    ccall((:aether_vcr_embed_stop, LIB), Cvoid, (Ptr{Cvoid},), vcr.handle)
    return nothing
end

"""Stop and write the captured tape. `tape_path` defaults to the one the
recorder was opened with. Idempotent."""
function flush!(vcr::Vcr, tape_path::Union{AbstractString,Nothing}=nothing)
    vcr.closed && return nothing
    vcr.closed = true
    tape = tape_path === nothing ? something(vcr.tape, "") : tape_path
    check(ccall((:aether_vcr_embed_stop_and_flush, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), vcr.handle, tape), "flush")
end

"""As `flush!`, but fails if the fresh recording differs from what is already
on disk (drift detection for a checked-in tape)."""
function flush_fail_if_changed!(vcr::Vcr, tape_path::Union{AbstractString,Nothing}=nothing)
    vcr.closed && return nothing
    vcr.closed = true
    tape = tape_path === nothing ? something(vcr.tape, "") : tape_path
    check(ccall((:aether_vcr_embed_stop_and_flush_fail_if_changed, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), vcr.handle, tape), "flush_fail_if_changed")
end

"""As `flush!`, but only CHECKS against an existing tape instead of overwriting
it when one is already present."""
function flush_or_check!(vcr::Vcr, tape_path::Union{AbstractString,Nothing}=nothing)
    vcr.closed && return nothing
    vcr.closed = true
    tape = tape_path === nothing ? something(vcr.tape, "") : tape_path
    check(ccall((:aether_vcr_embed_stop_and_flush_or_check, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), vcr.handle, tape), "flush_or_check")
end

# ---- converters (no server handle) ---------------------------------------

"""HAR 1.2 capture -> Servirtium markdown tape. Throws VcrError on failure."""
har_import(har_path::AbstractString, tape_path::AbstractString) =
    check(ccall((:aether_vcr_embed_har_import, LIB), Ptr{Cchar},
                (Cstring, Cstring), har_path, tape_path), "har_import")

"""Servirtium markdown tape -> HAR 1.2 JSON. Throws VcrError on failure."""
har_export(tape_path::AbstractString, har_path::AbstractString) =
    check(ccall((:aether_vcr_embed_har_export, LIB), Ptr{Cchar},
                (Cstring, Cstring), tape_path, har_path), "har_export")

end # module
