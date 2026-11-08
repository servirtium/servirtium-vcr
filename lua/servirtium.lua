-- servirtium.lua — idiomatic Lua surface over the C extension `servirtium_native.so`.
--
-- The C module (csrc/servirtium.c, loaded here via require) is a thin 1:1
-- wrapper over libservirtium_vcr's aether_vcr_embed_* C ABI. This
-- file layers an object-style API on top, mirroring the mature Go binding:
--
--   * servirtium.playback(tape)            -> a PlaybackBuilder
--   * servirtium.record(tape, upstream)    -> a RecordBuilder
--
-- Both builders expose chainable configuration (return self) and a :start()
-- that opens the native handle, applies the staged config to *that* handle
-- (one server per port — nothing process-global), then begins serving. start()
-- returns a Server object (or nil + message on failure).
--
--   local servirtium = require("servirtium")
--   local srv = assert(servirtium.playback("tapes/single_get.md"):port(0):start())
--   local body = io.popen("curl -s " .. srv:base_url() .. "/ok"):read("*a")
--   assert(srv:last_kind() == servirtium.OK)
--   srv:close()
--
-- In playback, close() stops the server. In record, close() flushes the tape
-- (stop_and_flush, or the fail-if-changed variant) so the recording is written.
-- Servers default to port 0 (the OS picks a free port; read it back via
-- :base_url() / :port()).
--
-- For backwards compatibility, servirtium.playback(tape) / record(tape, up) can
-- still be used as a one-shot "open + start" — calling any Server method on the
-- returned builder transparently starts it. See the compatibility shim below.

local C = require("servirtium_native")  -- the compiled C extension (servirtium_native.so)

local M = {}

-- ---- constants (field selectors + outcome codes) --------------------------

M.FIELD_PATH             = C.FIELD_PATH
M.FIELD_RESPONSE_BODY    = C.FIELD_RESPONSE_BODY
M.FIELD_REQUEST_HEADERS  = C.FIELD_REQUEST_HEADERS
M.FIELD_REQUEST_BODY     = C.FIELD_REQUEST_BODY
M.FIELD_RESPONSE_HEADERS = C.FIELD_RESPONSE_HEADERS
M.FIELD_RESPONSE         = C.FIELD_RESPONSE -- substitution-only: body AND headers

M.OK                  = C.OK
M.PATH_OR_METHOD_DIFF = C.PATH_OR_METHOD_DIFF
M.HEADER_MISSING      = C.HEADER_MISSING
M.HEADER_VALUE_DIFF   = C.HEADER_VALUE_DIFF
M.HEADER_UNEXPECTED   = C.HEADER_UNEXPECTED
M.TAPE_EXHAUSTED      = C.TAPE_EXHAUSTED
M.BODY_DIFF           = C.BODY_DIFF
M.RECORD_ERROR        = C.RECORD_ERROR

-- Staging never calls Lua from a native HTTP worker.
local function secret_stage(handle, callback, resolving)
    local function check(message) if message ~= "" then error(message, 0) end end
    local function get(part) return C.secret_get(handle, part) end
    local ok, err = pcall(function()
        check(C.secret_begin(handle, resolving and 1 or 0))
        while true do
            local next = C.secret_next(handle)
            if next < 0 then error("Secret staging aborted", 0) end
            if next == 0 then break end
            local value
            if resolving then value = callback(get(2))
            else value = callback(get(1), {method=get(3), path=get(4), location=get(5),
                format=get(6), field_path=get(7), interaction=C.secret_interaction(handle)}) end
            if value ~= nil then
                if type(value) ~= "string" then error("Secret callbacks must return a string or nil", 0) end
                check(C.secret_apply(handle, value))
            end
        end
        check(C.secret_finish(handle))
    end)
    if not ok then C.secret_abort(handle); C.stop(handle); error(err, 0) end
end

-- ---- Server ---------------------------------------------------------------

local Server = {}
Server.__index = Server

function Server:base_url(host)
    return C.base_url(self._handle, host or self._host or "127.0.0.1")
end

function Server:port()
    return C.port(self._handle)
end

function Server:tape_length()
    return C.tape_length(self._handle)
end

function Server:last_kind()
    return C.last_kind(self._handle)
end

function Server:last_index()
    return C.last_index(self._handle)
end

function Server:last_error(consume)
    return C.last_error_ex(self._handle, consume ~= false)
end

function Server:diagnostics_json(consume)
    return C.diagnostics_json(self._handle, consume == true)
end
function Server:assert_no_mismatches()
    local diagnostic = C.assert_no_mismatches(self._handle)
    if diagnostic ~= "" then error(diagnostic, 2) end
end
function Server:test_context(name, source_file, source_line)
    C.test_context(self._handle, name, source_file or "", source_line or 0)
end

-- "TLSv1.3" (or similar) of the last TLS connection, "" if none.
function Server:last_tls_protocol()
    return C.last_tls_protocol(self._handle)
end

function Server:clear_substitutions()
    C.clear_substitutions(self._handle)
end

-- Raises if any recorded interaction was not replayed.
function Server:assert_all_consumed()
    local err = C.assert_all_consumed(self._handle)
    if err ~= "" then error(err, 2) end
end

-- Raises if any redaction rule never matched.
function Server:assert_all_redactions_used()
    local err = C.assert_all_redactions_used(self._handle)
    if err ~= "" then error(err, 2) end
end

-- Raises if any unfilled placeholder remains in a replayed response.
function Server:assert_no_unfilled_placeholders()
    local err = C.assert_no_unfilled_placeholders(self._handle)
    if err ~= "" then error(err, 2) end
end

function Server:clear_last_error()
    C.clear_last_error(self._handle)
end

function Server:reset_cursor()
    C.reset_cursor(self._handle)
end

-- Stage a note (record mode) for the next interaction to be captured. Returns
-- libservirtium_vcr's error string ("" on success).
function Server:note(title, body)
    return C.note(self._handle, title, body)
end

-- Stop the server. For a record server this flushes the tape to disk
-- (stop_and_flush, or the fail-if-changed variant when fail_if_changed was set
-- on the builder). Returns "" on success, or a non-empty error/drift message.
-- Idempotent.
function Server:close()
    if self._closed then return "" end
    self._closed = true
    if self._secret_redactor then secret_stage(self._handle, self._secret_redactor, false) end
    if self._mode == "record" then
        if self._fail_if_changed then
            return C.stop_and_flush_fail_if_changed(self._handle, self._tape)
        end
        return C.stop_and_flush(self._handle, self._tape)
    end
    C.stop(self._handle)
    return ""
end

-- Record mode: stop the server and DROP the captured recording WITHOUT writing
-- a tape. Call this on a test's failure path so a failed run never mints a tape
-- that later replays as the truth. Safe to call instead of close(); once
-- discarded, close() is a no-op. No-op outside record mode. Idempotent.
function Server:discard()
    if self._closed then return "" end
    self._closed = true
    if self._mode == "record" then
        return C.discard(self._handle, self._tape)
    end
    C.stop(self._handle)
    return ""
end

-- Playback only: replay just interactions from..to (inclusive, 0-based, the
-- tape's "## Interaction N" numbers; to < 0 = through the last). Returns
-- libservirtium_vcr's error string ("" on success; non-empty on a record
-- server or an impossible range).
function Server:set_playback_range(from, to)
    return C.set_playback_range(self._handle, from, to)
end

-- Replay the whole tape again.
function Server:clear_playback_range()
    C.clear_playback_range(self._handle)
end

-- The playback range in force: from, to, or nil when none is set.
function Server:get_playback_range()
    local from = C.get_playback_range_from(self._handle)
    if from < 0 then return nil end
    return from, C.get_playback_range_to(self._handle)
end

-- Record mode: whether sort_json_keys / sort_response_headers are on, and
-- clear_stable_order() turns every stable-order rule off.
function Server:sort_json_keys_enabled()
    return C.get_sort_json_keys(self._handle)
end

function Server:sort_response_headers_enabled()
    return C.get_sort_response_headers(self._handle)
end

function Server:clear_stable_order()
    C.clear_stable_order(self._handle)
end

local function new_server(handle, mode, tape, host, fail_if_changed)
    return setmetatable({
        _handle = handle,
        _mode = mode,
        _tape = tape,
        _host = host,
        _fail_if_changed = fail_if_changed or false,
        _closed = false,
    }, Server)
end

-- ---- shared builder config (applied to a handle between open and start) ----

-- check(err, op) raises a Lua error if libservirtium_vcr returned a non-empty error
-- string from a mutation setter, matching the Go binding's checkErr behaviour.
local function check(err, op)
    if err ~= nil and err ~= "" then
        error("vcr " .. op .. " failed: " .. err, 0)
    end
end

-- apply_base wires the config shared by both builders: header removals, static
-- mounts, untaped paths (all honored in playback and record mode).
local function apply_base(b, handle)
    for _, hr in ipairs(b._header_removals) do
        check(C.remove_header(handle, hr.field, hr.name), "remove_header")
    end
    if b._ignore_volatile_headers then
        check(C.ignore_volatile_headers(handle), "ignore_volatile_headers")
    end
    if b._remove_transport_headers then
        check(C.remove_transport_headers(handle), "remove_transport_headers")
    end
    for _, vendor in ipairs(b._cloud_vendors) do
        check(C.remove_cloud_headers(handle, vendor), "remove_cloud_headers")
    end
    if b._redact_credentials then
        check(C.redact_credentials(handle), "redact_credentials")
    end
    for _, name in ipairs(b._credential_headers) do
        check(C.redact_credential_header(handle, name), "redact_credential_header")
    end
    for _, sc in ipairs(b._static_content) do
        check(C.static_content(handle, sc.mount, sc.dir), "static_content")
    end
    for _, p in ipairs(b._untaped) do
        check(C.untaped(handle, p), "untaped")
    end
    if b._tls then
        check(C.set_tls(handle, b._tls.cert, b._tls.key), "set_tls")
    end
    if b._tls_pem then
        check(C.set_tls_pem(handle, b._tls_pem.cert, b._tls_pem.key), "set_tls_pem")
    end
end

local function base_builder(tape, host)
    return {
        _tape = tape,
        _host = host or "127.0.0.1",
        _port = 0,
        _label = "servirtium",
        _header_removals = {},
        _ignore_volatile_headers = false,
        _remove_transport_headers = false,
        _cloud_vendors = {},
        _redact_credentials = false,
        _credential_headers = {},
        _static_content = {},
        _untaped = {},
        _tls = nil,
        _tls_pem = nil,
    }
end

-- ---- PlaybackBuilder ------------------------------------------------------

local PlaybackBuilder = {}
PlaybackBuilder.__index = PlaybackBuilder

function PlaybackBuilder:host(h)  self._host = h;  return self end
function PlaybackBuilder:port(p)  self._port = p;  return self end
function PlaybackBuilder:label(l) self._label = l; return self end

function PlaybackBuilder:strict_headers()
    self._strict_headers = true
    return self
end

-- Opt in to matching request bodies by semantic JSON equality (key order /
-- whitespace ignored) instead of byte-for-byte. Non-JSON bodies fall back to
-- byte-exact.
function PlaybackBuilder:match_json_body()
    self._match_json_body = true
    return self
end

-- Opt in to matching request bodies by semantic XML equality (attribute order /
-- insignificant whitespace ignored; element order significant) instead of
-- byte-for-byte — the SOAP/XML twin of match_json_body. Non-XML bodies fall
-- back to byte-exact.
function PlaybackBuilder:match_xml_body()
    self._match_xml_body = true
    return self
end

-- Opt in to reusable, order-independent playback: matches any recorded
-- interaction (not just the next in sequence) and doesn't consume it — for
-- polling/retries or non-deterministic request order.
function PlaybackBuilder:match_multiple()
    self._match_multiple = true
    return self
end

function PlaybackBuilder:remove_header(field, name)
    table.insert(self._header_removals, { field = field, name = name })
    return self
end

-- Drop the per-request volatile headers modern clients inject on every call —
-- distributed-tracing / correlation ids (traceparent, tracestate, Request-Id,
-- X-Request-Id, X-Correlation-Id, baggage) — from BOTH the recorded expectation
-- and the live request before matching. Works in playback and record mode.
function PlaybackBuilder:ignore_volatile_headers()
    self._ignore_volatile_headers = true
    return self
end

-- Leave the connection-describing headers (Host, Connection, Content-Length and
-- the other hop-by-hop headers, Accept-Encoding) out of the recording. Works in
-- playback and record mode.
function PlaybackBuilder:remove_transport_headers()
    self._remove_transport_headers = true
    return self
end

-- Drop a cloud vendor's per-request headers; vendor is one of "aws", "azure",
-- "cloudflare", "fastly", "gcp". Call again for more vendors.
function PlaybackBuilder:remove_cloud_headers(vendor)
    table.insert(self._cloud_vendors, vendor)
    return self
end

-- Redact the common credential headers (Authorization, Cookie, Set-Cookie,
-- X-Api-Key, X-Auth-Token, ...) as numbered tokens. Register on the playback
-- builder too, as with every rule.
function PlaybackBuilder:redact_credentials()
    self._redact_credentials = true
    return self
end

-- One more credential header with the same treatment as redact_credentials.
function PlaybackBuilder:redact_credential_header(name)
    table.insert(self._credential_headers, name)
    return self
end

-- Replay only interactions from..to of the tape (inclusive, 0-based, the
-- tape's "## Interaction N" numbers; to < 0 = through the last). Selection is
-- by number only. start() returns nil, err if the range is refused.
function PlaybackBuilder:playback_range(from, to)
    self._playback_range = { from = from, to = to }
    return self
end

-- Match playback on this specific request header's value (ignoring the rest of
-- the recorded header block); repeatable.
function PlaybackBuilder:match_header(name)
    table.insert(self._match_headers, name)
    return self
end

function PlaybackBuilder:unredact(field, pattern, repl)
    table.insert(self._unredactions, { field = field, pattern = pattern, repl = repl })
    return self
end

-- Serve https:// using this PEM certificate and key (PEM cert + key: ECDSA P-256/P-384/P-521, Ed25519, or RSA 2048-16384).
function PlaybackBuilder:tls(cert_path, key_path)
    self._tls = { cert = cert_path, key = key_path }
    return self
end

-- Like tls, but the PEM certificate and key are passed in memory (not file paths), so no private key is written to disk.
function PlaybackBuilder:tls_from_pem(cert_pem, key_pem)
    self._tls_pem = { cert = cert_pem, key = key_pem }
    return self
end

-- Rewrite playback responses: replace pattern with repl in the given field.
-- Pass required=false to exempt an unused rule from assert_all_redactions_used.
function PlaybackBuilder:substitute(field, pattern, repl, required)
    if required == nil then required = true end
    table.insert(self._substitutions, { field = field, pattern = pattern, repl = repl, required = required })
    return self
end

-- Like substitute, but an unused rule is not reported.
function PlaybackBuilder:substitute_optional(field, pattern, repl)
    return self:substitute(field, pattern, repl, false)
end

function PlaybackBuilder:static_content(mount, dir)
    table.insert(self._static_content, { mount = mount, dir = dir })
    return self
end

function PlaybackBuilder:untaped(path)
    table.insert(self._untaped, path)
    return self
end

-- start() opens the playback server, applies this fixture's config to its
-- handle, then begins serving. Returns a Server, or nil + message on failure.
function PlaybackBuilder:secret_resolver(callback)
    assert(type(callback) == "function"); self._secret_resolver = callback; return self
end

function PlaybackBuilder:start()
    local handle, err = C.open_playback(self._tape, self._host, self._port, self._label)
    if not handle then return nil, err end

    local ok, perr = pcall(function()
        apply_base(self, handle)
        if self._strict_headers then
            C.set_strict_headers(handle, true)
        end
        if self._match_json_body then
            C.set_match_json_body(handle, true)
        end
        if self._match_xml_body then
            C.set_match_xml_body(handle, true)
        end
        if self._match_multiple then
            C.set_match_multiple(handle, true)
        end
        if self._playback_range then
            check(C.set_playback_range(handle, self._playback_range.from, self._playback_range.to),
                  "set_playback_range")
        end
        for _, name in ipairs(self._match_headers) do
            C.match_header(handle, name)
        end
        for _, u in ipairs(self._unredactions) do
            check(C.unredact(handle, u.field, u.pattern, u.repl), "unredact")
        end
        for _, s in ipairs(self._substitutions) do
            check(C.substitute(handle, s.field, s.pattern, s.repl, s.required and 1 or 0), "substitute")
        end
    end)
    if not ok then
        C.stop(handle)
        return nil, tostring(perr)
    end

    if self._secret_resolver then secret_stage(handle, self._secret_resolver, true) end
    if C.start(handle) < 0 then
        local msg = C.last_error(handle)
        C.stop(handle)
        return nil, (msg ~= "" and msg) or "playback failed to begin serving"
    end
    return new_server(handle, "playback", self._tape, self._host)
end

-- ---- RecordBuilder --------------------------------------------------------

local RecordBuilder = {}
RecordBuilder.__index = RecordBuilder

function RecordBuilder:host(h)  self._host = h;  return self end
function RecordBuilder:port(p)  self._port = p;  return self end
function RecordBuilder:label(l) self._label = l; return self end

function RecordBuilder:remove_header(field, name)
    table.insert(self._header_removals, { field = field, name = name })
    return self
end

-- Drop the per-request volatile headers modern clients inject on every call
-- (tracing / correlation ids) from the recorded expectation and the live
-- request before matching. The record-mode twin of the playback setter.
function RecordBuilder:ignore_volatile_headers()
    self._ignore_volatile_headers = true
    return self
end

-- Leave the connection-describing headers (Host, Connection, Content-Length and
-- the other hop-by-hop headers, Accept-Encoding) out of the recording. Works in
-- playback and record mode.
function RecordBuilder:remove_transport_headers()
    self._remove_transport_headers = true
    return self
end

-- Drop a cloud vendor's per-request headers; vendor is one of "aws", "azure",
-- "cloudflare", "fastly", "gcp". Call again for more vendors.
function RecordBuilder:remove_cloud_headers(vendor)
    table.insert(self._cloud_vendors, vendor)
    return self
end

-- Redact the common credential headers (Authorization, Cookie, Set-Cookie,
-- X-Api-Key, X-Auth-Token, ...) as numbered tokens. Register on the playback
-- builder too, as with every rule.
function RecordBuilder:redact_credentials()
    self._redact_credentials = true
    return self
end

-- One more credential header with the same treatment as redact_credentials.
function RecordBuilder:redact_credential_header(name)
    table.insert(self._credential_headers, name)
    return self
end

function RecordBuilder:redact(field, pattern, repl)
    table.insert(self._redactions, { field = field, pattern = pattern, repl = repl })
    return self
end

function RecordBuilder:redact_header(name, replacement, field)
    table.insert(self._redactions, { operation = "redact_header", field = field or 3, pattern = name, repl = replacement or "[REDACTED]" })
    return self
end

function RecordBuilder:redact_query_param(name, replacement, field)
    table.insert(self._redactions, { operation = "redact_query_param", field = field or 1, pattern = name, repl = replacement or "[REDACTED]" })
    return self
end

function RecordBuilder:redact_json_field(name, replacement, field)
    table.insert(self._redactions, { operation = "redact_json_field", field = field or 4, pattern = name, repl = replacement or "[REDACTED]" })
    return self
end

function RecordBuilder:normalize_whole_tape(pattern, name)
    table.insert(self._normalizations, { pattern = pattern, name = name })
    return self
end

function RecordBuilder:redact_whole_tape(pattern, repl)
    table.insert(self._whole_tape_redactions, { pattern = pattern, repl = repl })
    return self
end

function RecordBuilder:tls(cert_path, key_path)
    self._tls = { cert = cert_path, key = key_path }
    return self
end

-- Like tls, but the PEM certificate and key are passed in memory (not file paths), so no private key is written to disk.
function RecordBuilder:tls_from_pem(cert_pem, key_pem)
    self._tls_pem = { cert = cert_pem, key = key_pem }
    return self
end

function RecordBuilder:static_content(mount, dir)
    table.insert(self._static_content, { mount = mount, dir = dir })
    return self
end

function RecordBuilder:untaped(path)
    table.insert(self._untaped, path)
    return self
end

function RecordBuilder:note(title, body)
    self._note = { title = title, body = body }
    return self
end

function RecordBuilder:indent_code_blocks()
    self._indent_code_blocks = true
    return self
end

function RecordBuilder:emphasize_http_verbs()
    self._emphasize_http_verbs = true
    return self
end

-- Pretty-print recorded XML response bodies (indent 1..16; 0 = off); request bodies are never changed. Falls back to byte-exact if the body isn't well-formed XML.
function RecordBuilder:pretty_xml(indent)
    self._pretty_xml = indent or 2
    return self
end

-- Pretty-print recorded JSON response bodies (indent 1..16; 0 = off), keeping key order and number spellings; request bodies are never changed.
function RecordBuilder:pretty_json(indent)
    self._pretty_json = indent or 2
    return self
end

-- Stable ordering (record side, all opt-in; the tape is byte-exact without
-- them). Sorted JSON is only written pretty-printed: sort_json_keys or
-- sort_json_array* without pretty_json is refused when the tape is written
-- (close() returns "sort_json_keys needs pretty_json: ...").
-- Sort JSON object keys at every depth in recorded JSON response bodies.
function RecordBuilder:sort_json_keys(on)
    self._sort_json_keys = (on == nil) or on
    return self
end

-- Sort the JSON response arrays `path` selects (JSON pointer, "*" for one
-- segment, "" the root array, or a bare member name) by member `by` ("" =
-- each element's canonical JSON). Repeatable. start() returns nil, err if the
-- core refuses the rule.
function RecordBuilder:sort_json_array(path, by)
    table.insert(self._sort_json_arrays, { path = path, by = by })
    return self
end

-- The same, only for requests whose path (query included) matches the regex.
function RecordBuilder:sort_json_array_at(request, path, by)
    table.insert(self._sort_json_arrays, { request = request, path = path, by = by })
    return self
end

-- Sort response header lines by name (case-insensitive).
function RecordBuilder:sort_response_headers(on)
    self._sort_response_headers = (on == nil) or on
    return self
end

-- Sort one response header's comma-separated items ("Allow"). Repeatable.
function RecordBuilder:sort_header_value(name)
    table.insert(self._sort_header_values, name)
    return self
end

-- Verify an https upstream against this PEM CA file.
function RecordBuilder:upstream_cafile(path)
    self._upstream_cafile = path
    return self
end

-- Put text under "## LICENSE NOTICE" at the top of each tape; playback ignores it.
function RecordBuilder:add_license_notice(text)
    self._license_notice = text
    return self
end

function RecordBuilder:fail_if_changed()
    self._fail_if_changed = true
    return self
end

-- start() opens the record server, applies config to its handle, stages the
-- builder note (after open_record reloaded the tape), then begins serving.
-- Returns a Server (whose :close() flushes the tape), or nil + message.
function RecordBuilder:secret_redactor(callback)
    assert(type(callback) == "function"); self._secret_redactor = callback; return self
end

function RecordBuilder:start()
    local handle, err = C.open_record(self._tape, self._upstream, self._host,
                                      self._port, self._label)
    if not handle then return nil, err end

    local ok, perr = pcall(function()
        apply_base(self, handle)
        if self._indent_code_blocks then
            C.indent_code_blocks(handle)
        end
        if self._emphasize_http_verbs then
            C.emphasize_http_verbs(handle)
        end
        if self._pretty_xml > 0 then
            C.set_pretty_xml(handle, self._pretty_xml)
        end
        if self._pretty_json > 0 then
            C.set_pretty_json(handle, self._pretty_json)
        end
        if self._sort_json_keys then
            C.set_sort_json_keys(handle, true)
        end
        for _, r in ipairs(self._sort_json_arrays) do
            if r.request then
                check(C.sort_json_array_at(handle, r.request, r.path, r.by), "sort_json_array_at")
            else
                check(C.sort_json_array(handle, r.path, r.by), "sort_json_array")
            end
        end
        if self._sort_response_headers then
            C.set_sort_response_headers(handle, true)
        end
        for _, name in ipairs(self._sort_header_values) do
            check(C.sort_header_value(handle, name), "sort_header_value")
        end
        if self._upstream_cafile then
            check(C.set_upstream_cafile(handle, self._upstream_cafile), "set_upstream_cafile")
        end
        if self._license_notice then
            check(C.add_license_notice(handle, self._license_notice), "add_license_notice")
        end
        for _, r in ipairs(self._redactions) do
            check(C[r.operation or "redact"](handle, r.field, r.pattern, r.repl), "redact")
        end
        for _, n in ipairs(self._normalizations) do
            check(C.normalize_whole_tape(handle, n.pattern, n.name), "normalize_whole_tape")
        end
        for _, w in ipairs(self._whole_tape_redactions) do
            check(C.redact_whole_tape(handle, w.pattern, w.repl), "redact_whole_tape")
        end
        -- Stage the note now (open_record cleared the tape) so it attaches to
        -- the first interaction the SUT triggers — before serving begins.
        if self._note then
            check(C.note(handle, self._note.title, self._note.body), "note")
        end
    end)
    if not ok then
        C.stop(handle)
        return nil, tostring(perr)
    end

    if C.start(handle) < 0 then
        local msg = C.last_error(handle)
        C.stop(handle)
        return nil, (msg ~= "" and msg) or "record failed to begin serving"
    end
    local server = new_server(handle, "record", self._tape, self._host, self._fail_if_changed)
    server._secret_redactor = self._secret_redactor
    return server
end

-- ---- builder entry points -------------------------------------------------

-- A compatibility shim: historically servirtium.playback(tape) returned a
-- *started* server directly (so callers could do srv:base_url() immediately).
-- The new fluent API returns a builder. To keep both working, the builder is
-- given a metatable that lazily starts on first Server-method access and then
-- delegates — so old call sites (no :start()) and new ones (with chained
-- config + :start()) both work.

local SERVER_METHODS = {
    base_url = true, port = true, tape_length = true, last_kind = true,
    last_index = true, last_error = true, clear_last_error = true,
    reset_cursor = true, note = true, close = true,
    set_playback_range = true, clear_playback_range = true, get_playback_range = true,
    sort_json_keys_enabled = true, sort_response_headers_enabled = true,
    clear_stable_order = true,
    last_tls_protocol = true, clear_substitutions = true,
    assert_all_consumed = true, assert_all_redactions_used = true,
    assert_no_unfilled_placeholders = true,
}

local function attach_lazy_start(builder, builder_mt)
    -- Wrap __index so that accessing a Server method auto-starts the builder.
    local raw_index = builder_mt.__index
    return setmetatable(builder, {
        __index = function(self, key)
            local bv = raw_index[key]
            if bv ~= nil then return bv end
            if SERVER_METHODS[key] then
                local srv, serr = self:start()
                if not srv then error("servirtium start failed: " .. tostring(serr), 0) end
                -- Re-key this table as the started server for subsequent calls.
                for k, v in pairs(srv) do rawset(self, k, v) end
                setmetatable(self, Server)
                return Server[key]
            end
            return nil
        end,
    })
end

function M.playback(tapePath, opts)
    local b = base_builder(tapePath, opts and opts.host)
    b._unredactions = {}
    b._substitutions = {}
    b._strict_headers = false
    b._match_json_body = false
    b._match_xml_body = false
    b._match_multiple = false
    b._match_headers = {}
    if opts then
        if opts.port  ~= nil then b._port  = opts.port  end
        if opts.label ~= nil then b._label = opts.label end
    end
    return attach_lazy_start(b, PlaybackBuilder)
end

function M.record(tapePath, upstream, opts)
    local b = base_builder(tapePath, opts and opts.host)
    b._upstream = upstream
    b._redactions = {}
    b._normalizations = {}
    b._whole_tape_redactions = {}
    b._note = nil
    b._indent_code_blocks = false
    b._emphasize_http_verbs = false
    b._pretty_xml = 0
    b._pretty_json = 0
    b._sort_json_keys = false
    b._sort_json_arrays = {}
    b._sort_response_headers = false
    b._sort_header_values = {}
    b._fail_if_changed = false
    if opts then
        if opts.port  ~= nil then b._port  = opts.port  end
        if opts.label ~= nil then b._label = opts.label end
    end
    return attach_lazy_start(b, RecordBuilder)
end

-- ---- free-function aliases (some callers prefer servirtium.base_url(srv)) ---

function M.base_url(srv, host) return srv:base_url(host) end
function M.port(srv)           return srv:port() end
function M.last_kind(srv)      return srv:last_kind() end
function M.last_error(srv)     return srv:last_error() end
function M.close(srv)          return srv:close() end
function M.discard(srv)        return srv:discard() end

return M
