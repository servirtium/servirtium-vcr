-- Lua binding playback test. Loads the C extension (servirtium_native.so) via
-- the idiomatic wrapper (servirtium.lua), opens a playback server on the
-- single_get.md tape, and replays GET /ok over real HTTP with curl.
--
-- Run from lua/ with:
--   LUA_CPATH="./?.so;;" lua5.4 tests/playback.lua
-- (the C module links the engine with an rpath, so libservirtium_vcr.so is
-- found automatically; SERVIRTIUM_VCR_LIB is honored by the .tests.ae path.)

-- Resolve paths relative to this script so the test runs from any cwd.
local here = arg[0]:match("^(.*)[/\\]") or "."
package.path  = here .. "/../?.lua;" .. package.path
package.cpath = here .. "/../?.so;" .. package.cpath

local servirtium = require("servirtium")

local tape = here .. "/../tapes/single_get.md"

local srv, err = servirtium.playback(tape)   -- port 0 by default
assert(srv, "playback() failed: " .. tostring(err))

local base = srv:base_url()
assert(base ~= "" and base ~= nil, "base_url() returned empty")
print("base_url: " .. base)

-- Replay GET /ok over real HTTP.
local pipe = io.popen("curl -s " .. base .. "/ok")
local body = pipe:read("*a")
pipe:close()

print("body: " .. tostring(body))
assert(body == "ok-body",
       string.format("expected body %q, got %q", "ok-body", tostring(body)))

local kind = srv:last_kind()
assert(kind == servirtium.OK,
       "expected last_kind Ok(0), got " .. tostring(kind) ..
       " (last_error: " .. tostring(srv:last_error()) .. ")")

srv:close()

print("lua: playback test passed (body == 'ok-body', last_kind == Ok)")
