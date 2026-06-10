-- run_all.lua — aggregating runner for the Lua binding suite. Runs each
-- tests/*.lua file in a fresh lua5.4 subprocess (so a crash in one is isolated
-- and the python3 upstreams are reaped) and fails if any file fails.
--
-- Invoked by .tests.ae as:
--   LUA_CPATH="./?.so;;" SERVIRTIUM_VCR_LIB=<abs> lua5.4 tests/run_all.lua
-- Each child inherits LUA_CPATH / SERVIRTIUM_VCR_LIB from the environment.

local here = arg[0]:match("^(.*)[/\\]") or "."

local files = { "playback.lua", "record.lua", "mutation.lua" }

local failed = 0
for _, f in ipairs(files) do
    local cmd = string.format('lua5.4 %q', here .. "/" .. f)
    print("== running " .. f .. " ==")
    local ok = os.execute(cmd)
    -- Lua 5.4: os.execute returns true|nil, "exit"|"signal", code
    if ok ~= true then
        failed = failed + 1
        io.stderr:write("** " .. f .. " FAILED **\n")
    end
end

if failed == 0 then
    print("lua: all test files passed")
    os.exit(0)
end
io.stderr:write(string.format("lua: %d test file(s) failed\n", failed))
os.exit(1)
