-- record.lua — the Lua binding's record test suite, mirroring the Go binding's
-- record_test.go. Record-mode tests need a live upstream: we spawn a throwaway
-- python3 HTTP server (see helpers.start_upstream) since Lua 5.4 has no stdlib
-- sockets. Tapes are written to temp paths (never into tapes/). Run from lua/:
--   LUA_CPATH="./?.so;;" SERVIRTIUM_VCR_LIB=<abs>/libservirtium_vcr.so lua5.4 tests/record.lua

local here = arg[0]:match("^(.*)[/\\]") or "."
package.path  = here .. "/../?.lua;" .. here .. "/?.lua;" .. package.path
package.cpath = here .. "/../?.so;" .. package.cpath

local servirtium = require("servirtium")
local h = require("helpers")

math.randomseed(os.time() + 1)

-- record then replay the same interaction (with de-chunking on the record path)
do
    h.case("record then replays same interaction")
    local up = h.start_upstream({ body = "hello-from-upstream", chunked = true })
    local tape = h.temp_tape("rec.md")

    local rec = assert(servirtium.record(tape, up.base_url):port(0):start())
    local body = h.curl_get(rec:base_url(), "/greeting")
    h.eq(body, "hello-from-upstream", "recorded (live) body")
    h.eq(rec:close(), "", "close (flush) returns no error")
    up.close()

    h.truthy(h.read_file(tape) ~= nil, "record-mode close wrote the tape")

    -- replay offline
    local play = assert(servirtium.playback(tape):port(0):start())
    h.eq(h.curl_get(play:base_url(), "/greeting"), "hello-from-upstream", "replayed body")
    h.eq(play:last_kind(), servirtium.OK, "last_kind (" .. play:last_error() .. ")")
    play:close()
    os.remove(tape)
end

-- record + replay a POST with a body -----------------------------------------
do
    h.case("record and replay a POST with a body")
    local up = h.start_upstream({ body = "created" })
    local tape = h.temp_tape("rec.md")

    local rec = assert(servirtium.record(tape, up.base_url):port(0):start())
    h.eq(h.curl_post(rec:base_url(), "/submit", "ping"), "created", "live POST response")
    local method = up.last()
    h.eq(method, "POST", "upstream saw POST")
    h.eq(rec:close(), "", "close returns no error")
    up.close()

    -- replay the same POST offline
    local play = assert(servirtium.playback(tape):port(0):start())
    h.eq(h.curl_post(play:base_url(), "/submit", "ping"), "created", "replayed POST response")
    h.eq(play:last_kind(), servirtium.OK, "last_kind (" .. play:last_error() .. ")")
    play:close()
    os.remove(tape)
end


do
    h.case("structured redaction helpers")
    local directory = os.tmpname()
    os.remove(directory)
    assert(os.execute("mkdir -p '" .. directory .. "'"))
    local fixture = here .. "/../../core_tests/redaction_fixture.py"
    local function fixture_run(action, url)
        local command = "python3 '" .. fixture .. "' " .. action .. " '" .. directory .. "'"
        if url then command = command .. " '" .. url .. "'" end
        local process = assert(io.popen(command .. " 2>&1"))
        local output = process:read("*a")
        local ok = process:close()
        assert(ok, output)
        return (output:gsub("%s+$", ""))
    end
    local upstream = fixture_run("start")
    local rec = assert(servirtium.record(directory .. "/tape.md", upstream)
        :redact_header("Authorization"):redact_query_param("password"):redact_json_field("secretKey"):start())
    fixture_run("drive", rec:base_url())
    h.eq(rec:last_kind(), servirtium.OK, "structured record outcome")
    h.eq(rec:close(), "", "structured flush")
    fixture_run("check")
    for _, name in ipairs({"url", "done", "capture.json", "tape.md"}) do os.remove(directory .. "/" .. name) end
    os.remove(directory)
end

do
    h.case("retained replay diagnostics")
    local root = here .. "/../.."
    local server = assert(servirtium.playback(root .. "/core_tests/diagnostics/playback.md"):start())
    server:test_context("Lua scenario", "scenario.test", 123)
    local success = os.execute("python3 '" .. root .. "/core_tests/diagnostic_fixture.py' '" .. server:base_url() .. "'")
    h.truthy(success, "HTTP mismatch driver")
    h.truthy(server:last_error(false):find("owner", 1, true), "observer last error")
    h.truthy(server:last_error(false):find("scenario.test:123", 1, true), "coordinates")
    h.truthy(not server:diagnostics_json():find('"retrieved":1', 1, true), "observer does not consume")
    h.truthy(server:last_error():find("owner", 1, true), "latest consuming read")
    h.truthy(server:diagnostics_json():find('"retrieved":0', 1, true), "earlier failure remains unread")
    local ok, diagnostic = pcall(function() server:assert_no_mismatches() end)
    h.truthy(not ok and diagnostic:find("admin", 1, true), "assertion reports earlier failure")
    server:test_context("next test")
    server:assert_no_mismatches()
    h.eq(server:diagnostics_json(), "[]", "test boundary clears events")
    server:close()
end

do
    h.case("named secrets round trip")
    local directory = os.tmpname(); os.remove(directory)
    assert(os.execute("mkdir -p '" .. directory .. "'"))
    local fixture = here .. "/../../core_tests/secret_fixture.py"
    local function run(action, arg)
        local process = assert(io.popen("python3 '" .. fixture .. "' " .. action .. " '" .. arg .. "' 2>&1"))
        local output = process:read("*a"); local ok = process:close(); assert(ok, output)
        return (output:gsub("%s+$", ""))
    end
    local count = 0; local tape = directory .. "/tape.md"
    local rec = assert(servirtium.record(tape, run("start", directory)):secret_redactor(function(key, request)
        if key == "password" then count = count + 1; return request.path:match("^/([^/]+)"):upper() .. "_PASSWORD" end
    end):start())
    run("drive", rec:base_url()); h.eq(count, 0, "deferred callback")
    h.eq(rec:close(), "", "secret flush"); h.eq(count, 20, "field count"); run("check", tape)
    local replay = assert(servirtium.playback(tape):secret_resolver(function(token)
        return "pw-" .. token:gsub("_PASSWORD$", ""):lower() .. "&secret"
    end):start())
    run("drive", replay:base_url()); replay:assert_no_mismatches(); replay:close(); run("check", tape)
    for _, name in ipairs({"url", "done", "tape.md"}) do os.remove(directory .. "/" .. name) end
    os.remove(directory)
end

h.done("record")
