-- Third-party consumer example for the Lua binding.
--
-- Requires the `servirtium` module from an INSTALLED package dir (on
-- LUA_PATH/LUA_CPATH) and replays the canonical tape. The C extension
-- (servirtium_native.so) finds the engine libservirtium_vcr.so beside it via a
-- $ORIGIN rpath — so the package is self-contained and relocatable, with no
-- SERVIRTIUM_VCR_LIB and no reference to the repo's core/.

local servirtium = require("servirtium")

local function fail(msg)
    io.stderr:write("FAIL: " .. msg .. "\n")
    os.exit(1)
end

local srv = assert(servirtium.playback("tapes/single_get.md"):port(0):start())

local body = io.popen("curl -s " .. srv:base_url() .. "/ok"):read("*a")
if body ~= "ok-body" then
    fail("expected body 'ok-body', got '" .. tostring(body) .. "'")
end
if srv:last_kind() ~= servirtium.OK then
    fail("expected OK, got " .. tostring(srv:last_kind()))
end
srv:close()

print("PASS[discovery]: consumer replayed the canonical tape from the servirtium lua package")
