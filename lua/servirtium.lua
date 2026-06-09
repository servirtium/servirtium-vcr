-- servirtium.lua — idiomatic Lua surface over the C extension `servirtium.so`.
--
-- The C module (csrc/servirtium.c, loaded here via require) is a thin 1:1
-- wrapper over the shared Aether VCR engine's aether_vcr_embed_* C ABI. This
-- file layers an object-style API on top: a server handle is a table with
-- methods, so callers can write `srv:base_url()` / `srv:close()`.
--
--   local servirtium = require("servirtium")
--   local srv = servirtium.playback("tapes/single_get.md")
--   local body = io.popen("curl -s " .. srv:base_url() .. "/ok"):read("*a")
--   assert(srv:last_kind() == servirtium.OK)
--   srv:close()
--
-- In playback, close() stops the server. In record, close() flushes the tape
-- (stop_and_flush) so the recording is written. Servers default to port 0
-- (the OS picks a free port; read it back via base_url()/port()).

local C = require("servirtium_native")  -- the compiled C extension (servirtium_native.so)

local M = {}

-- Re-export the constants the C module defines (field selectors + Ok).
M.OK                   = C.OK
M.FIELD_PATH           = C.FIELD_PATH
M.FIELD_RESPONSE_BODY  = C.FIELD_RESPONSE_BODY
M.FIELD_REQUEST_HEADERS = C.FIELD_REQUEST_HEADERS
M.FIELD_REQUEST_BODY   = C.FIELD_REQUEST_BODY
M.FIELD_RESPONSE_HEADERS = C.FIELD_RESPONSE_HEADERS

local Server = {}
Server.__index = Server

function Server:base_url(host)
    return C.base_url(self._handle, host or "127.0.0.1")
end

function Server:port()
    return C.port(self._handle)
end

function Server:last_kind()
    return C.last_kind(self._handle)
end

function Server:last_error()
    return C.last_error(self._handle)
end

-- Redact a recorded field (use the M.FIELD_* selectors). Returns the engine's
-- error string ("" on success).
function Server:redact(field, pattern, replacement)
    return C.redact(self._handle, field, pattern, replacement)
end

function Server:static_content(mount, dir)
    return C.static_content(self._handle, mount, dir)
end

function Server:normalize_whole_tape(pattern, name)
    return C.normalize_whole_tape(self._handle, pattern, name)
end

function Server:untaped(path)
    return C.untaped(self._handle, path)
end

-- Stop the server. For a record server this flushes the tape to disk
-- (stop_and_flush); for playback it just stops. Idempotent.
function Server:close()
    if self._closed then return "" end
    self._closed = true
    if self._mode == "record" then
        return C.stop_and_flush(self._handle, self._tape)
    end
    C.stop(self._handle)
    return ""
end

local function new_server(handle, mode, tape)
    return setmetatable(
        { _handle = handle, _mode = mode, _tape = tape, _closed = false },
        Server)
end

-- Open a playback server on the given tape and start it. Port defaults to 0.
-- Returns the server (table with methods), or nil + message on failure.
function M.playback(tapePath, opts)
    opts = opts or {}
    local handle, err = C.open_playback(
        tapePath, opts.host or "127.0.0.1", opts.port or 0,
        opts.label or "servirtium")
    if not handle then return nil, err end
    local rc = C.start(handle)
    if rc < 0 then
        local msg = C.last_error(handle)
        C.stop(handle)
        return nil, (msg ~= "" and msg) or "start failed"
    end
    return new_server(handle, "playback", tapePath)
end

-- Open a record server forwarding to `upstream`, and start it. close() will
-- flush the tape. Port defaults to 0.
function M.record(tapePath, upstream, opts)
    opts = opts or {}
    local handle, err = C.open_record(
        tapePath, upstream, opts.host or "127.0.0.1", opts.port or 0,
        opts.label or "servirtium")
    if not handle then return nil, err end
    local rc = C.start(handle)
    if rc < 0 then
        local msg = C.last_error(handle)
        C.stop(handle)
        return nil, (msg ~= "" and msg) or "start failed"
    end
    return new_server(handle, "record", tapePath)
end

-- Free-function aliases (some callers prefer servirtium.base_url(srv) etc.).
function M.base_url(srv, host) return srv:base_url(host) end
function M.port(srv)           return srv:port() end
function M.last_kind(srv)      return srv:last_kind() end
function M.last_error(srv)     return srv:last_error() end
function M.close(srv)          return srv:close() end

return M
