-- playback.lua — the Lua binding's playback test suite, mirroring the Go
-- binding's playback_test.go. Drives real HTTP with curl against playback
-- servers (one server per port). Run from lua/ with:
--   LUA_CPATH="./?.so;;" SERVIRTIUM_VCR_LIB=<abs>/libservirtium_vcr.so lua5.4 tests/playback.lua

local here = arg[0]:match("^(.*)[/\\]") or "."
package.path  = here .. "/../?.lua;" .. here .. "/?.lua;" .. package.path
package.cpath = here .. "/../?.so;" .. package.cpath

local servirtium = require("servirtium")
local h = require("helpers")

local function tape(name) return h.tapes_dir .. "/" .. name end

-- replays a recorded GET ------------------------------------------------------
do
    h.case("replays a recorded GET")
    local srv = assert(servirtium.playback(tape("single_get.md"))
        :label("replays a recorded GET"):port(0):start())

    h.truthy(srv:port() > 0, "OS-assigned port")
    h.eq(srv:tape_length(), 1, "tape length")

    local body = h.curl_get(srv:base_url(), "/ok")
    h.eq(body, "ok-body", "body")
    h.eq(srv:last_kind(), servirtium.OK, "last_kind")
    h.eq(srv:last_error(), "", "last_error")
    srv:close()
end

-- flags a path mismatch via diagnostics --------------------------------------
do
    h.case("flags a path mismatch")
    local srv = assert(servirtium.playback(tape("single_get.md")):port(0):start())
    h.curl_get(srv:base_url(), "/nope")
    h.truthy(srv:last_kind() ~= servirtium.OK, "mismatch outcome (not Ok)")
    h.truthy(srv:last_error() ~= "", "mismatch diagnostic non-empty")
    srv:close()
end

-- unredaction lets a scrubbed tape match -------------------------------------
do
    h.case("unredaction lets a scrubbed tape match")
    local srv = assert(servirtium.playback(tape("secure_get.md"))
        :strict_headers()
        :unredact(servirtium.FIELD_REQUEST_HEADERS, "Bearer REDACTED", "Bearer real-token")
        :port(0):start())

    -- curl sends a default User-Agent; the strict tape only records
    -- Authorization, so suppress it (-H "User-Agent:") to match the block.
    local p = io.popen("curl -s -H 'Authorization: Bearer real-token' " ..
        "-H 'User-Agent:' -H 'Accept:' " .. srv:base_url() .. "/secure")
    local body = p:read("*a"); p:close()

    h.eq(body, "secret-ok", "body")
    h.eq(srv:last_kind(), servirtium.OK, "last_kind (" .. srv:last_error() .. ")")
    srv:close()
end

-- strict matching flags a missing request header -----------------------------
do
    h.case("strict matching flags a missing request header")
    local srv = assert(servirtium.playback(tape("secure_get.md"))
        :strict_headers()
        :unredact(servirtium.FIELD_REQUEST_HEADERS, "Bearer REDACTED", "Bearer real-token")
        :port(0):start())

    -- No Authorization header at all -> mismatch.
    h.curl_get(srv:base_url(), "/secure")
    h.truthy(srv:last_kind() ~= servirtium.OK, "mismatch outcome (not Ok)")
    h.truthy(srv:last_error() ~= "", "mismatch diagnostic non-empty")
    srv:close()
end

-- static content served from disk --------------------------------------------
do
    h.case("static content served from disk")
    local dir = h.temp_tape("assets"):gsub("%.md$", "")
    os.execute("mkdir -p " .. dir)
    local f = assert(io.open(dir .. "/asset.txt", "w"))
    f:write("static-asset"); f:close()

    local srv = assert(servirtium.playback(tape("single_get.md"))
        :static_content("/files", dir):port(0):start())

    h.eq(h.curl_get(srv:base_url(), "/files/asset.txt"), "static-asset", "from disk")
    h.eq(h.curl_get(srv:base_url(), "/ok"), "ok-body", "from tape (unaffected)")
    srv:close()
    os.execute("rm -rf " .. dir)
end

-- untaped path 404s without consuming the cursor -----------------------------
do
    h.case("untaped 404s without consuming the cursor")
    local srv = assert(servirtium.playback(tape("single_get.md"))
        :untaped("/favicon.ico"):port(0):start())

    h.eq(h.curl_status(srv:base_url(), "/favicon.ico"), 404, "untaped 404")
    -- The normal recorded interaction still replays (cursor wasn't consumed).
    h.eq(h.curl_get(srv:base_url(), "/ok"), "ok-body", "tape still replays")
    h.eq(srv:last_kind(), servirtium.OK, "last_kind after untaped")
    srv:close()
end

-- two playback servers at once (one server per port) -------------------------
do
    h.case("two playback servers at once")
    local a = assert(servirtium.playback(tape("single_get.md")):port(0):start())
    local b = assert(servirtium.playback(tape("secure_get.md")):port(0):start())

    h.truthy(a:port() ~= b:port(), "distinct ports")
    h.eq(h.curl_get(a:base_url(), "/ok"), "ok-body", "server A from its tape")

    local p = io.popen("curl -s -H 'Authorization: Bearer REDACTED' " ..
        "-H 'User-Agent:' -H 'Accept:' " .. b:base_url() .. "/secure")
    h.eq(p:read("*a"), "secret-ok", "server B from its tape"); p:close()

    a:close(); b:close()
end

h.done("playback")
