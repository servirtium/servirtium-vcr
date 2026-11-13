# Servirtium.jl — the Julia binding over libservirtium_vcr.
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
# Julia's built-in `ccall` invokes libservirtium_vcr's flat C ABI (aether_vcr_embed_*)
# DIRECTLY — no glue, no second copy of the marshalling rules to drift from
# core/embed.ae. The libservirtium_vcr.so is located via SERVIRTIUM_VCR_LIB (an absolute
# path env), so ccall's library handle is that path.
#
# This module carries NO record/replay logic: markdown parse/emit, the HTTP
# server, request matching, redactions and drift detection all live in the
# in-repo pure-Aether core/vcr.ae libservirtium_vcr. What Julia adds is a do-block form
# that always closes the server, enums for Field/Outcome, caller-owned-string
# handling, and a typed error.
module Servirtium

export Vcr, VcrError, Field, Outcome,
    Path, ResponseBody, RequestHeaders, RequestBody, ResponseHeaders,
    Ok, PathOrMethodDiff, HeaderMissing, HeaderValueDiff, HeaderUnexpected,
    TapeExhausted, BodyDiff, RecordError,
    playback, playback_url, record, SecretRequest, secret_redactor!,
    base_url, port, tape_length, reset_cursor,
    diagnostics_json, assert_no_mismatches, test_context,
    last_kind, last_error, last_index, clear_last_error, matched_cleanly,
    redact_header, redact_query_param, redact_json_field,
    redact, unredact, VolatileMarkers, Mustache, DollarCurly, Wikilink,
    volatile_rule, volatile_bind, volatile_profile, volatile_markers, volatile_report, redact_whole_tape, remove_header,
    match_header, note, static_content, untaped,
    strict_ignore_common_headers, ignore_volatile_headers, set_strict_headers,
    set_match_json_body, set_match_xml_body, set_match_multiple,
    indent_code_blocks, emphasize_http_verbs, set_pretty_xml,
    set_pretty_json, get_pretty_json,
    remove_transport_headers, remove_cloud_headers,
    redact_credentials, redact_credential_header,
    set_upstream_cafile, add_license_notice,
    set_sort_json_keys, get_sort_json_keys, sort_json_array, sort_json_array_at,
    set_sort_response_headers, get_sort_response_headers, sort_header_value,
    clear_stable_order,
    set_playback_range, clear_playback_range, get_playback_range,
    close!, flush!, flush_fail_if_changed!, flush_or_check!, discard!,
    har_import, har_export

"""
    LIB

Absolute path to libservirtium_vcr shared library, resolved once at load time in three
steps — the same order every binding in this repo uses:

1. `SERVIRTIUM_VCR_LIB` when set (how each `.tests.ae` leaf hands the
   freshly-built libservirtium_vcr in, and the explicit escape hatch for a consumer);
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

# Marker style for placeholders and tokens in volatile rules and tapes.
@enum VolatileMarkers begin
    Mustache = 0
    DollarCurly = 1
    Wikilink = 2
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
    secret_redactor::Union{Function,Nothing}
end
Vcr(handle, host, tape, closed) = Vcr(handle, host, tape, closed, nothing)

"""The live handle; throws once the VCR has been closed (and destroyed)."""
alive(vcr::Vcr) = vcr.handle == C_NULL ? throw(VcrError("the server is already stopped")) : vcr.handle

"""Destroy the VCR exactly once and forget the handle; later calls are no-ops."""
function release!(vcr::Vcr)
    h = vcr.handle
    vcr.handle = C_NULL
    vcr.closed = true
    h == C_NULL || ccall((:aether_vcr_embed_destroy, LIB), Cvoid, (Ptr{Cvoid},), h)
    return nothing
end

struct SecretRequest
    method::String
    path::String
    location::String
    format::String
    field_path::String
    interaction::Int
end
secret_redactor!(vcr::Vcr, callback::Function) = (vcr.secret_redactor = callback; vcr)
function secret_stage(handle; redactor=nothing, resolver=nothing)
    get(part) = take(ccall((:aether_vcr_embed_secret_get, LIB), Ptr{Cchar}, (Ptr{Cvoid}, Cint), handle, part))
    try
        check(ccall((:aether_vcr_embed_secret_begin, LIB), Ptr{Cchar}, (Ptr{Cvoid}, Cint), handle, resolver === nothing ? 0 : 1), "secret_begin")
        while true
            next = ccall((:aether_vcr_embed_secret_next, LIB), Cint, (Ptr{Cvoid},), handle)
            next < 0 && throw(VcrError("Secret staging aborted"))
            next == 0 && break
            value = resolver === nothing ? redactor(get(1), SecretRequest(get(3), get(4), get(5), get(6), get(7),
                ccall((:aether_vcr_embed_secret_interaction, LIB), Cint, (Ptr{Cvoid},), handle))) : resolver(get(2))
            if value !== nothing
                value isa AbstractString || throw(ArgumentError("Secret callbacks must return a string or nothing"))
                check(ccall((:aether_vcr_embed_secret_apply, LIB), Ptr{Cchar}, (Ptr{Cvoid}, Cstring), handle, value), "secret_apply")
            end
        end
        check(ccall((:aether_vcr_embed_secret_finish, LIB), Ptr{Cchar}, (Ptr{Cvoid},), handle), "secret_finish")
    catch
        ccall((:aether_vcr_embed_secret_abort, LIB), Cvoid, (Ptr{Cvoid},), handle)
        rethrow()
    end
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

"""An open always returns a handle; a failed one carries its own reason. Read
it, destroy the dead handle, and throw. Shared by every open below."""
function opened(handle::Ptr{Cvoid}, failure::AbstractString)
    handle == C_NULL && throw(VcrError("$failure: out of memory"))
    reason = take(ccall((:aether_vcr_embed_open_error, LIB), Ptr{Cchar}, (Ptr{Cvoid},), handle))
    if !isempty(reason)
        ccall((:aether_vcr_embed_destroy, LIB), Cvoid, (Ptr{Cvoid},), handle)
        throw(VcrError("$failure: $reason"))
    end
    return handle
end

"""Start an opened handle; on any failure stop and destroy it and throw rather
than handing back a dead server."""
function started(handle::Ptr{Cvoid}, failure::AbstractString; stage=nothing)
    try
        stage === nothing || stage(handle)
        if ccall((:aether_vcr_embed_start, LIB), Cint, (Ptr{Cvoid},), handle) < 0
            detail = take(ccall((:aether_vcr_embed_last_error, LIB), Ptr{Cchar},
                                (Ptr{Cvoid},), handle))
            throw(VcrError(isempty(detail) ? failure : "$failure: $detail"))
        end
    catch
        ccall((:aether_vcr_embed_stop, LIB), Cvoid, (Ptr{Cvoid},), handle)
        ccall((:aether_vcr_embed_destroy, LIB), Cvoid, (Ptr{Cvoid},), handle)
        rethrow()
    end
    return handle
end

"""A pre-start stage applying markers (first), profiles, rules and binds.
`rules` is a vector of `(scope, pattern)` or `(scope, pattern, kind)`; `binds`
a vector of `name => value`; `profiles` a path or vector of paths. `inner` is an
optional stage to run first."""
function volatile_stage(rules, binds, profiles, markers, inner=nothing; pretty_xml::Integer=0, pretty_json::Integer=0)
    (rules === nothing && binds === nothing && profiles === nothing && markers === nothing &&
        pretty_xml == 0 && pretty_json == 0) && return inner
    return handle -> begin
        inner === nothing || inner(handle)
        # Canonical-form matching must be on before the tape's rules are applied at start.
        pretty_xml > 0 && ccall((:aether_vcr_embed_set_pretty_xml, LIB), Cvoid, (Ptr{Cvoid}, Cint), handle, pretty_xml)
        pretty_json > 0 && ccall((:aether_vcr_embed_set_pretty_json, LIB), Cvoid, (Ptr{Cvoid}, Cint), handle, pretty_json)
        markers === nothing || check(ccall((:aether_vcr_embed_set_volatile_markers, LIB), Ptr{Cchar},
                                           (Ptr{Cvoid}, Cint), handle, Int(markers)), "volatile_markers")
        for path in (profiles === nothing ? () : profiles isa AbstractString ? (profiles,) : profiles)
            check(ccall((:aether_vcr_embed_volatile_profile, LIB), Ptr{Cchar},
                        (Ptr{Cvoid}, Cstring), handle, path), "volatile_profile")
        end
        for r in (rules === nothing ? () : rules)
            kind = length(r) > 2 ? r[3] : "template"
            check(ccall((:aether_vcr_embed_volatile_rule, LIB), Ptr{Cchar},
                        (Ptr{Cvoid}, Cstring, Cstring, Cstring), handle, r[1], kind, r[2]), "volatile_rule")
        end
        for (name, value) in (binds === nothing ? () : binds)
            check(ccall((:aether_vcr_embed_volatile_bind, LIB), Ptr{Cchar},
                        (Ptr{Cvoid}, Cstring, Cstring), handle, name, value), "volatile_bind")
        end
    end
end

"""
    playback(tape_path; host="127.0.0.1", port=0, volatile_rules=nothing,
             volatile_binds=nothing, volatile_profile=nothing, volatile_markers=nothing,
             pretty_xml=0, pretty_json=0) -> Vcr
    playback(f, tape_path; host="127.0.0.1", port=0)

Replay a Servirtium markdown tape from disk. The do-block form closes the
server when the block ends, on every path including an exception.
"""
function playback(tape_path::AbstractString; host::AbstractString="127.0.0.1",
                  port::Integer=0, secret_resolver=nothing,
                  volatile_rules=nothing, volatile_binds=nothing,
                  volatile_profile=nothing, volatile_markers=nothing,
                  pretty_xml::Integer=0, pretty_json::Integer=0)
    h = ccall((:aether_vcr_embed_open_playback, LIB), Ptr{Cvoid},
              (Cstring, Cstring, Cstring, Cint), "", tape_path, host, port)
    failure = "playback open failed: $tape_path"
    opened(h, failure)
    stage = secret_resolver === nothing ? nothing : hh -> secret_stage(hh; resolver=secret_resolver)
    stage = volatile_stage(volatile_rules, volatile_binds, volatile_profile, volatile_markers, stage; pretty_xml, pretty_json)
    Vcr(started(h, failure; stage), String(host), String(tape_path), false)
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
    failure = "playback-url open failed: $tape_url"
    Vcr(started(opened(h, failure), failure), String(host), nothing, false)
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
                host::AbstractString="127.0.0.1", port::Integer=0,
                volatile_rules=nothing, volatile_binds=nothing,
                volatile_profile=nothing, volatile_markers=nothing,
                pretty_xml::Integer=0, pretty_json::Integer=0)
    h = ccall((:aether_vcr_embed_open_record, LIB), Ptr{Cvoid},
              (Cstring, Cstring, Cstring, Cstring, Cint),
              "", tape_path, upstream_base, host, port)
    failure = "record open failed: $tape_path"
    Vcr(started(opened(h, failure), failure; stage=volatile_stage(volatile_rules, volatile_binds, volatile_profile, volatile_markers; pretty_xml, pretty_json)),
        String(host), String(tape_path), false)
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
                                (Ptr{Cvoid}, Cstring), alive(vcr), vcr.host))

"""The OS-resolved port the server is listening on."""
port(vcr::Vcr) = Int(ccall((:aether_vcr_embed_port, LIB), Cint, (Ptr{Cvoid},), alive(vcr)))

"""Tape entry count (playback), or interactions captured so far (record)."""
tape_length(vcr::Vcr) = Int(ccall((:aether_vcr_embed_tape_length, LIB), Cint,
                                  (Ptr{Cvoid},), alive(vcr)))

"""Rewind the playback cursor to the top of the tape."""
reset_cursor(vcr::Vcr) = ccall((:aether_vcr_embed_reset_cursor, LIB), Cvoid,
                               (Ptr{Cvoid},), alive(vcr))

# ---- diagnostics ----------------------------------------------------------

"""Outcome of the most-recent dispatch. `Ok` means a clean match."""
last_kind(vcr::Vcr) = Outcome(ccall((:aether_vcr_embed_last_kind, LIB), Cint,
                                    (Ptr{Cvoid},), alive(vcr)))

"""True when the most-recent dispatch matched cleanly."""
matched_cleanly(vcr::Vcr) = last_kind(vcr) == Ok

"""Most-recent dispatch diagnostic; "" when none flagged."""
last_error(vcr::Vcr; consume::Bool=true) = take(ccall((:aether_vcr_embed_last_error_ex, LIB), Ptr{Cchar},
    (Ptr{Cvoid}, Cint), alive(vcr), consume ? 1 : 0))

"""Tape index of the most-recent matched interaction, or -1."""
last_index(vcr::Vcr) = Int(ccall((:aether_vcr_embed_last_index, LIB), Cint,
                                 (Ptr{Cvoid},), alive(vcr)))

diagnostics_json(vcr::Vcr; consume::Bool=false) = take(ccall((:aether_vcr_embed_diagnostics_json, LIB), Ptr{Cchar},
    (Ptr{Cvoid}, Cint), alive(vcr), consume ? 1 : 0))
assert_no_mismatches(vcr::Vcr) = check(ccall((:aether_vcr_embed_assert_no_mismatches, LIB), Ptr{Cchar}, (Ptr{Cvoid},), alive(vcr)), "assert_no_mismatches")
test_context(vcr::Vcr, name; source_file="", source_line=0) = ccall((:aether_vcr_embed_test_context, LIB), Cvoid,
    (Ptr{Cvoid}, Cstring, Cstring, Cint), alive(vcr), name, source_file, source_line)

clear_last_error(vcr::Vcr) = ccall((:aether_vcr_embed_clear_last_error, LIB), Cvoid,
                                   (Ptr{Cvoid},), alive(vcr))

# ---- config (each throws VcrError if libservirtium_vcr rejects it) ---------------

redact(vcr::Vcr, field::Field, pattern, replacement) =
    check(ccall((:aether_vcr_embed_redact, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cint, Cstring, Cstring),
                alive(vcr), Int(field), pattern, replacement), "redact")

redact_header(vcr::Vcr, name; replacement="[REDACTED]", field::Field=RequestHeaders) =
    check(ccall((:aether_vcr_embed_redact_header, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cint, Cstring, Cstring),
                alive(vcr), Int(field), name, replacement), "redact_header")

redact_query_param(vcr::Vcr, name; replacement="[REDACTED]", field::Field=Path) =
    check(ccall((:aether_vcr_embed_redact_query_param, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cint, Cstring, Cstring),
                alive(vcr), Int(field), name, replacement), "redact_query_param")

redact_json_field(vcr::Vcr, name; replacement="[REDACTED]", field::Field=RequestBody) =
    check(ccall((:aether_vcr_embed_redact_json_field, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cint, Cstring, Cstring),
                alive(vcr), Int(field), name, replacement), "redact_json_field")

unredact(vcr::Vcr, field::Field, pattern, replacement) =
    check(ccall((:aether_vcr_embed_unredact, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cint, Cstring, Cstring),
                alive(vcr), Int(field), pattern, replacement), "unredact")

"""A volatile-value rule (docs/volatile-values.md): `scope` such as "request body",
`pattern` holding `{{placeholders}}`, `kind` "template" (default) or "regex".
Prefer the `volatile_rules` keyword of `playback`/`record`, which applies rules
before the server starts so a bad rule fails the open with the core's message."""
volatile_rule(vcr::Vcr, scope, pattern, kind="template") =
    check(ccall((:aether_vcr_embed_volatile_rule, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring, Cstring, Cstring), alive(vcr), scope, kind, pattern), "volatile_rule")

"""Bind a real value to a placeholder name or a token (`"caseId"` or `"{{caseId-1}}"`).
Named `volatile_bind` because `bind` collides with `Sockets.bind`."""
volatile_bind(vcr::Vcr, name_or_token, value) =
    check(ccall((:aether_vcr_embed_volatile_bind, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring, Cstring), alive(vcr), name_or_token, value), "volatile_bind")

"""Load a volatile-values profile file."""
volatile_profile(vcr::Vcr, path) =
    check(ccall((:aether_vcr_embed_volatile_profile, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), alive(vcr), path), "volatile_profile")

"""Marker style (`Mustache`, `DollarCurly`, `Wikilink`); set before any rule."""
volatile_markers(vcr::Vcr, style::VolatileMarkers) =
    check(ccall((:aether_vcr_embed_set_volatile_markers, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cint), alive(vcr), Int(style)), "volatile_markers")

"""The volatile rules and bindings, as text."""
volatile_report(vcr::Vcr) =
    take(ccall((:aether_vcr_embed_volatile_report, LIB), Ptr{Cchar}, (Ptr{Cvoid},), alive(vcr)))

"""Collapse every match to one constant (variable-cardinality noise — dates)."""
redact_whole_tape(vcr::Vcr, pattern, replacement) =
    check(ccall((:aether_vcr_embed_redact_whole_tape, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring, Cstring), alive(vcr), pattern, replacement),
          "redact_whole_tape")

remove_header(vcr::Vcr, field::Field, name) =
    check(ccall((:aether_vcr_embed_remove_header, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cint, Cstring), alive(vcr), Int(field), name),
          "remove_header")

"""Require this request header's live value to equal the recorded one. Also
suppresses the automatic full-block header match unless strict headers are
explicitly on — surgical, not all-or-nothing."""
match_header(vcr::Vcr, name) =
    check(ccall((:aether_vcr_embed_match_header, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), alive(vcr), name), "match_header")

note(vcr::Vcr, title, body) =
    check(ccall((:aether_vcr_embed_note, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring, Cstring), alive(vcr), title, body), "note")

static_content(vcr::Vcr, mount_path, fs_dir) =
    check(ccall((:aether_vcr_embed_static_content, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring, Cstring), alive(vcr), mount_path, fs_dir),
          "static_content")

untaped(vcr::Vcr, path) =
    check(ccall((:aether_vcr_embed_untaped, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), alive(vcr), path), "untaped")

strict_ignore_common_headers(vcr::Vcr) =
    ccall((:aether_vcr_embed_strict_ignore_common_headers, LIB), Cvoid,
          (Ptr{Cvoid},), alive(vcr))

"""Drop the per-request volatile headers modern clients inject on every call —
distributed-tracing / correlation ids (traceparent, tracestate, Request-Id,
X-Request-Id, X-Correlation-Id, baggage) — from BOTH the recorded expectation
and the live request before matching. The companion to
`strict_ignore_common_headers`; works in playback and record mode."""
ignore_volatile_headers(vcr::Vcr) =
    check(ccall((:aether_vcr_embed_ignore_volatile_headers, LIB), Ptr{Cchar},
                (Ptr{Cvoid},), alive(vcr)), "ignore_volatile_headers")

set_strict_headers(vcr::Vcr, on::Bool) =
    ccall((:aether_vcr_embed_set_strict_headers, LIB), Cvoid,
          (Ptr{Cvoid}, Cint), alive(vcr), on ? 1 : 0)

"""Opt-in: a request body that differs byte-for-byte gets a second chance at
semantic JSON equality (key order + whitespace ignored, array order
significant). A non-JSON body always falls back to the byte-exact verdict."""
set_match_json_body(vcr::Vcr, on::Bool) =
    ccall((:aether_vcr_embed_set_match_json_body, LIB), Cvoid,
          (Ptr{Cvoid}, Cint), alive(vcr), on ? 1 : 0)

"""Opt-in: a request body that differs byte-for-byte gets a second chance at
semantic XML equality (attribute order + insignificant whitespace ignored;
element order significant) — the SOAP/XML twin of `set_match_json_body`. A
non-XML body always falls back to the byte-exact verdict."""
set_match_xml_body(vcr::Vcr, on::Bool) =
    ccall((:aether_vcr_embed_set_match_xml_body, LIB), Cvoid,
          (Ptr{Cvoid}, Cint), alive(vcr), on ? 1 : 0)

"""Opt-in: search ALL interactions for one that fits and replay it WITHOUT
consuming it, so repeated and out-of-order requests both match."""
set_match_multiple(vcr::Vcr, on::Bool) =
    ccall((:aether_vcr_embed_set_match_multiple, LIB), Cvoid,
          (Ptr{Cvoid}, Cint), alive(vcr), on ? 1 : 0)

indent_code_blocks(vcr::Vcr) =
    ccall((:aether_vcr_embed_indent_code_blocks, LIB), Cvoid, (Ptr{Cvoid},), alive(vcr))

emphasize_http_verbs(vcr::Vcr) =
    ccall((:aether_vcr_embed_emphasize_http_verbs, LIB), Cvoid, (Ptr{Cvoid},), alive(vcr))

"""
    set_pretty_xml(vcr::Vcr, indent::Integer=2)

Shared XML layout setting: format recorded request and response bodies; match XML requests on playback (indent 1..16; 0 = off). Falls back to byte-exact if the body isn't well-formed XML.
"""
set_pretty_xml(vcr::Vcr, indent::Integer=2) =
    ccall((:aether_vcr_embed_set_pretty_xml, LIB), Cvoid, (Ptr{Cvoid}, Cint), alive(vcr), indent)

"""
    set_pretty_json(vcr::Vcr, indent::Integer=2)

Format recorded JSON request and response bodies, keeping key order and number spellings; playback matches JSON request layout.
"""
set_pretty_json(vcr::Vcr, indent::Integer=2) =
    ccall((:aether_vcr_embed_set_pretty_json, LIB), Cvoid, (Ptr{Cvoid}, Cint), alive(vcr), indent)

"""Current pretty-JSON indent (0 = off)."""
get_pretty_json(vcr::Vcr) =
    Int(ccall((:aether_vcr_embed_get_pretty_json, LIB), Cint, (Ptr{Cvoid},), alive(vcr)))

# Opt-in header presets: each registers ordinary rules, listed under the
# preset's name in the recording-rules footer. Each throws on failure.

"""Leave the connection-describing headers (Host, Connection, Content-Length
and the other hop-by-hop headers, Accept-Encoding) out of the recording."""
remove_transport_headers(vcr::Vcr) =
    check(ccall((:aether_vcr_embed_remove_transport_headers, LIB), Ptr{Cchar},
                (Ptr{Cvoid},), alive(vcr)), "remove_transport_headers")

"""Drop a cloud vendor's per-request headers; `vendor` is one of "aws",
"azure", "cloudflare", "fastly", "gcp"."""
remove_cloud_headers(vcr::Vcr, vendor) =
    check(ccall((:aether_vcr_embed_remove_cloud_headers, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), alive(vcr), vendor), "remove_cloud_headers")

"""Redact the common credential headers (Authorization, Cookie, Set-Cookie,
X-Api-Key, X-Auth-Token, ...) as numbered tokens. Register on the playback
handle too, as with every rule."""
redact_credentials(vcr::Vcr) =
    check(ccall((:aether_vcr_embed_redact_credentials, LIB), Ptr{Cchar},
                (Ptr{Cvoid},), alive(vcr)), "redact_credentials")

"""One more credential header with the same treatment as `redact_credentials`."""
redact_credential_header(vcr::Vcr, name) =
    check(ccall((:aether_vcr_embed_redact_credential_header, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), alive(vcr), name), "redact_credential_header")

"""Record mode: verify an https upstream against this PEM CA file."""
set_upstream_cafile(vcr::Vcr, path) =
    check(ccall((:aether_vcr_embed_set_upstream_cafile, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), alive(vcr), path), "set_upstream_cafile")

"""Record mode: put `text` under "## LICENSE NOTICE" at the top of each tape;
playback ignores it."""
add_license_notice(vcr::Vcr, text) =
    check(ccall((:aether_vcr_embed_add_license_notice, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), alive(vcr), text), "add_license_notice")

# Opt-in stable ordering (record side; off by default, so the tape is
# byte-exact without them). Sorted JSON is only written pretty-printed: a
# record with set_sort_json_keys / sort_json_array* but without
# set_pretty_json is refused when the tape is written (`flush!` throws a
# VcrError mentioning "sort_json_keys needs pretty_json").

"""Sort JSON object keys at every depth in recorded JSON response bodies."""
set_sort_json_keys(vcr::Vcr, on::Bool=true) =
    ccall((:aether_vcr_embed_set_sort_json_keys, LIB), Cvoid,
          (Ptr{Cvoid}, Cint), alive(vcr), on ? 1 : 0)

"""Whether `set_sort_json_keys` is on."""
get_sort_json_keys(vcr::Vcr) =
    ccall((:aether_vcr_embed_get_sort_json_keys, LIB), Cint, (Ptr{Cvoid},), alive(vcr)) != 0

"""
    sort_json_array(vcr, path, by)

Sort the JSON response arrays `path` selects (a JSON pointer from the root, `"*"`
for any one segment, `""` the root array, or a bare member name) by member `by`
(`""` sorts by each element's canonical JSON). Throws `VcrError` with the
refusal reason.
"""
sort_json_array(vcr::Vcr, path, by) =
    check(ccall((:aether_vcr_embed_sort_json_array, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring, Cstring), alive(vcr), path, by), "sort_json_array")

"""The same, only for requests whose path (query included) matches the regex `request`."""
sort_json_array_at(vcr::Vcr, request, path, by) =
    check(ccall((:aether_vcr_embed_sort_json_array_at, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring, Cstring, Cstring), alive(vcr), request, path, by),
          "sort_json_array_at")

"""Sort response header lines by name (case-insensitive)."""
set_sort_response_headers(vcr::Vcr, on::Bool=true) =
    ccall((:aether_vcr_embed_set_sort_response_headers, LIB), Cvoid,
          (Ptr{Cvoid}, Cint), alive(vcr), on ? 1 : 0)

"""Whether `set_sort_response_headers` is on."""
get_sort_response_headers(vcr::Vcr) =
    ccall((:aether_vcr_embed_get_sort_response_headers, LIB), Cint, (Ptr{Cvoid},), alive(vcr)) != 0

"""Sort one response header's comma-separated items (`"Allow"`). Throws `VcrError` with the refusal reason."""
sort_header_value(vcr::Vcr, name) =
    check(ccall((:aether_vcr_embed_sort_header_value, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cstring), alive(vcr), name), "sort_header_value")

"""Turn every stable-order rule off."""
clear_stable_order(vcr::Vcr) =
    ccall((:aether_vcr_embed_clear_stable_order, LIB), Cvoid, (Ptr{Cvoid},), alive(vcr))

# Playback range (playback only): replay a slice of a tape, selected by the
# tape's interaction NUMBER.

"""
    set_playback_range(vcr, from, to)

Replay only interactions `from`..`to` (0-based, inclusive, the tape's
`## Interaction N` numbers; `to < 0` = through the last). Throws `VcrError` on
a record handle or an impossible range.
"""
set_playback_range(vcr::Vcr, from::Integer, to::Integer) =
    check(ccall((:aether_vcr_embed_set_playback_range, LIB), Ptr{Cchar},
                (Ptr{Cvoid}, Cint, Cint), alive(vcr), from, to), "set_playback_range")

"""Replay the whole tape again."""
clear_playback_range(vcr::Vcr) =
    ccall((:aether_vcr_embed_clear_playback_range, LIB), Cvoid, (Ptr{Cvoid},), alive(vcr))

"""The range in force as `(from, to)`, or `nothing` when none is set."""
function get_playback_range(vcr::Vcr)
    from = Int(ccall((:aether_vcr_embed_get_playback_range_from, LIB), Cint, (Ptr{Cvoid},), alive(vcr)))
    from < 0 && return nothing
    to = Int(ccall((:aether_vcr_embed_get_playback_range_to, LIB), Cint, (Ptr{Cvoid},), alive(vcr)))
    return (from, to)
end
for (fn, sym) in ((:clear_redactions, :aether_vcr_embed_clear_redactions),
                  (:clear_unredactions, :aether_vcr_embed_clear_unredactions),
                  (:clear_header_removals, :aether_vcr_embed_clear_header_removals),
                  (:clear_match_headers, :aether_vcr_embed_clear_match_headers),
                  (:clear_static_content, :aether_vcr_embed_clear_static_content),
                  (:clear_untaped, :aether_vcr_embed_clear_untaped),
                  (:clear_format_options, :aether_vcr_embed_clear_format_options))
    @eval begin
        $fn(vcr::Vcr) = ccall(($(QuoteNode(sym)), LIB), Cvoid, (Ptr{Cvoid},), alive(vcr))
        export $fn
    end
end

# ---- shutdown -------------------------------------------------------------
# Every path stops (or flushes/discards, which stops) and then destroys the VCR
# exactly once; the handle is cleared so a second call is a no-op.

"""Stop the server, discarding any recording. Idempotent."""
function close!(vcr::Vcr)
    vcr.closed && return nothing
    vcr.closed = true
    ccall((:aether_vcr_embed_stop, LIB), Cvoid, (Ptr{Cvoid},), vcr.handle)
    release!(vcr)
end

function flush_with!(vcr::Vcr, native::Function, what::AbstractString,
                     tape_path::Union{AbstractString,Nothing})
    vcr.closed && return nothing
    vcr.closed = true
    h = vcr.handle
    try
        if vcr.secret_redactor !== nothing
            try
                secret_stage(h; redactor=vcr.secret_redactor)
            catch
                ccall((:aether_vcr_embed_stop, LIB), Cvoid, (Ptr{Cvoid},), h)
                rethrow()
            end
        end
        tape = tape_path === nothing ? something(vcr.tape, "") : tape_path
        check(native(h, tape), what)
    finally
        release!(vcr)
    end
end

"""Stop and write the captured tape. `tape_path` defaults to the one the
recorder was opened with. Idempotent."""
flush!(vcr::Vcr, tape_path::Union{AbstractString,Nothing}=nothing) =
    flush_with!(vcr, (h, t) -> ccall((:aether_vcr_embed_stop_and_flush, LIB), Ptr{Cchar}, (Ptr{Cvoid}, Cstring), h, t), "flush", tape_path)

"""As `flush!`, but fails if the fresh recording differs from what is already
on disk (drift detection for a checked-in tape)."""
flush_fail_if_changed!(vcr::Vcr, tape_path::Union{AbstractString,Nothing}=nothing) =
    flush_with!(vcr, (h, t) -> ccall((:aether_vcr_embed_stop_and_flush_fail_if_changed, LIB), Ptr{Cchar}, (Ptr{Cvoid}, Cstring), h, t), "flush_fail_if_changed", tape_path)

"""As `flush!`, but only CHECKS against an existing tape instead of overwriting
it when one is already present."""
flush_or_check!(vcr::Vcr, tape_path::Union{AbstractString,Nothing}=nothing) =
    flush_with!(vcr, (h, t) -> ccall((:aether_vcr_embed_stop_and_flush_or_check, LIB), Ptr{Cchar}, (Ptr{Cvoid}, Cstring), h, t), "flush_or_check", tape_path)

"""Record mode: stop the server and DROP the captured recording WITHOUT writing
a tape. Call this on a test's failure path so a failed run never mints a tape
that later replays as the truth. Idempotent; the complement of `flush!`
(commit on success, `discard!` on failure)."""
function discard!(vcr::Vcr, tape_path::Union{AbstractString,Nothing}=nothing)
    vcr.closed && return nothing
    vcr.closed = true
    tape = tape_path === nothing ? something(vcr.tape, "") : tape_path
    try
        check(ccall((:aether_vcr_embed_discard, LIB), Ptr{Cchar},
                    (Ptr{Cvoid}, Cstring), vcr.handle, tape), "discard")
    finally
        release!(vcr)
    end
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
