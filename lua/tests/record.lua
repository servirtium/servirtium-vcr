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

h.done("record")
