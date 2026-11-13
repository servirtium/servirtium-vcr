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

-- playback range: skip early interactions, serve a later one -----------------
do
    h.case("a playback range skips early interactions and serves a later one")
    local srv = assert(servirtium.playback(tape("range.md")):playback_range(1, -1):port(0):start())
    local from, to = srv:get_playback_range()
    h.eq(from, 1, "range from")
    h.eq(to, 2, "range to")
    h.eq(h.curl_get(srv:base_url(), "/step/second"), "second-body", "interaction 1 is served")
    h.eq(srv:last_index(), 1, "last_index")
    -- interaction 0 is outside the range: never served
    h.curl_get(srv:base_url(), "/step/first")
    h.contains(srv:last_error(), "outside the playback range", "outside the range is refused")
    h.truthy(srv:set_playback_range(9, -1) ~= "", "a range past the tape is refused")
    srv:clear_playback_range()
    h.eq(srv:get_playback_range(), nil, "cleared")
    srv:close()

    local bad = servirtium.playback(tape("range.md")):playback_range(9, -1):port(0):start()
    h.eq(bad, nil, "start() refuses an impossible range")
end
-- a missing tape reports why through the open path -------------------------
do
    h.case("a missing tape is reported by name")
    local srv, err = servirtium.playback("/nonexistent/no-such-tape.md"):port(0):start()
    h.eq(srv, nil, "start() fails")
    h.contains(err, "no-such-tape", "error names the tape")
end

-- open/start/close 50 times; double close is harmless ----------------------
do
    h.case("50 open/close cycles and double close")
    for _ = 1, 50 do
        local srv = assert(servirtium.playback(tape("single_get.md")):port(0):start())
        h.eq(h.curl_get(srv:base_url(), "/ok"), "ok-body", "body")
        srv:close()
        srv:close()
    end
end

-- volatile values (docs/volatile-values.md): shared tapes + volatile_fixture ---
do
    local root = h.here .. "/../.."
    local function vtape(name) return root .. "/core_tests/volatile/" .. name end
    local function driver(mode, base)
        return os.execute("'" .. root .. "/target/test-tools/volatile_fixture' '" .. mode .. "' '" .. base .. "'")
    end
    local function start_error(builder, ...)
        local srv, msg = builder:start()
        if srv then srv:close() end
        h.truthy(srv == nil, "start fails")
        for _, part in ipairs({...}) do h.contains(msg or "", part, "start error") end
    end

    h.case("volatile: tape-declared rules, none in code")
    local srv = assert(servirtium.playback(vtape("wcf.md")):pretty_xml(2):start())
    h.truthy(driver("wcf", srv:base_url()), "wcf driver")
    h.contains(srv:volatile_report(), "binding: {{messageId-1}} = ", "report")
    srv:close()

    h.case("volatile: profile file")
    srv = assert(servirtium.playback(vtape("wcf_plain.md")):pretty_xml(2)
        :volatile_profile(vtape("profile.md")):start())
    h.truthy(driver("wcf", srv:base_url()), "wcf driver")
    srv:close()

    h.case("volatile: rules in code")
    srv = assert(servirtium.playback(vtape("wcf_plain.md")):pretty_xml(2)
        :volatile_rule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")
        :volatile_rule("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/")
        :volatile_rule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;")
        :volatile_rule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")
        :start())
    h.truthy(driver("wcf", srv:base_url()), "wcf driver")
    srv:close()

    h.case("volatile: markers")
    srv = assert(servirtium.playback(vtape("wcf_dollar.md")):pretty_xml(2)
        :volatile_markers(servirtium.MARKERS_DOLLAR_CURLY):start())
    h.truthy(driver("wcf", srv:base_url()), "wcf driver")
    srv:close()
    start_error(servirtium.playback(vtape("wcf_dollar.md")):pretty_xml(2), "DollarCurly")

    h.case("volatile: cases correlation, then mismatch diagnostics")
    srv = assert(servirtium.playback(vtape("cases.md")):start())
    h.truthy(driver("cases", srv:base_url()), "cases driver")
    srv:reset_cursor()
    h.truthy(driver("cases-mismatch", srv:base_url()), "cases-mismatch driver")
    h.contains(srv:last_error(false), "{{caseId-1}} = 42", "binding named")
    srv:last_error()   -- consuming read: nothing left unretrieved at close
    srv:close()

    h.case("volatile: bind")
    start_error(servirtium.playback(vtape("cases_recorded.md")), "caseId")
    srv = assert(servirtium.playback(vtape("cases_recorded.md")):bind("caseId", "42"):start())
    h.truthy(driver("cases", srv:base_url()), "cases driver")
    srv:close()

    h.case("volatile: bad rules fail start with the core's message")
    start_error(servirtium.playback(vtape("cases.md")):volatile_rule("request body", "no placeholder"),
        "needs at least one placeholder")
    start_error(servirtium.playback(vtape("cases.md")):volatile_rule("response body", "\"caseId\":\"{{id}}\""),
        "conflicts with", "(tape)")
    start_error(servirtium.playback(vtape("cases.md")):volatile_rule("x", "a {{b}}", "regex"))
end

h.done("playback")
