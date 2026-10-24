-- helpers.lua — shared test utilities for the Lua binding suite.
--
-- Loaded by each tests/*.lua via `require("helpers")` after the package paths
-- are pointed at lua/ (so servirtium + helpers both resolve). Provides:
--   * a tiny assert-style harness (h.eq / h.contains / h.truthy)
--   * GET/POST over curl (the binding has no stdlib HTTP client)
--   * a throwaway Aether upstream for record-mode tests (fixed body, header,
--     echoes the request method/body to a sidecar file)
--   * temp-tape paths under the OS temp dir (never into tapes/)

local H = {}

-- ---- locate sibling dirs ---------------------------------------------------

H.here = (arg[0] and arg[0]:match("^(.*)[/\\]")) or "."
H.lua_dir  = H.here .. "/.."
H.tapes_dir = H.lua_dir .. "/tapes"

-- ---- assertions ------------------------------------------------------------

local failures = 0
local current = "?"

function H.case(name) current = name end

local function fail(msg)
    failures = failures + 1
    io.stderr:write(string.format("  FAIL [%s]: %s\n", current, msg))
end

function H.eq(got, want, what)
    if got ~= want then
        fail(string.format("%s: expected %q, got %q", what or "value",
            tostring(want), tostring(got)))
        return false
    end
    return true
end

function H.truthy(cond, what)
    if not cond then
        fail((what or "condition") .. ": expected truthy")
        return false
    end
    return true
end

function H.contains(haystack, needle, what)
    if not string.find(haystack, needle, 1, true) then
        fail(string.format("%s: expected to contain %q in:\n%s",
            what or "text", needle, haystack))
        return false
    end
    return true
end

function H.not_contains(haystack, needle, what)
    if string.find(haystack, needle, 1, true) then
        fail(string.format("%s: must NOT contain %q in:\n%s",
            what or "text", needle, haystack))
        return false
    end
    return true
end

-- Finish a test file: print a summary line and exit non-zero on any failure.
function H.done(suite)
    if failures == 0 then
        print("lua: " .. suite .. " — all cases passed")
        os.exit(0)
    end
    io.stderr:write(string.format("lua: %s — %d failure(s)\n", suite, failures))
    os.exit(1)
end

-- ---- HTTP over curl --------------------------------------------------------

-- GET base..path -> body string. (-s silent, follows nothing.)
function H.curl_get(base, path)
    local p = io.popen("curl -s " .. base .. (path or ""))
    local body = p:read("*a")
    p:close()
    return body
end

-- GET returning the HTTP status code (no body). Uses -o /dev/null -w "%{http_code}".
function H.curl_status(base, path)
    local p = io.popen("curl -s -o /dev/null -w '%{http_code}' " .. base .. (path or ""))
    local code = p:read("*a")
    p:close()
    return tonumber(code)
end

-- GET with an extra header, returning the body. header is a "Name: value" string.
function H.curl_get_header(base, path, header)
    local p = io.popen("curl -s -H " .. string.format("%q", header) ..
        " " .. base .. (path or ""))
    local body = p:read("*a")
    p:close()
    return body
end

-- POST a text/plain body, returning the response body.
function H.curl_post(base, path, body)
    local p = io.popen("curl -s -X POST -H 'Content-Type: text/plain' --data-binary " ..
        string.format("%q", body) .. " " .. base .. (path or ""))
    local out = p:read("*a")
    p:close()
    return out
end

-- ---- temp tapes ------------------------------------------------------------

-- A temp tape path under the OS temp dir (NEVER into tapes/). Each call yields
-- a unique path so fixtures never collide.
function H.temp_tape(name)
    local t = os.tmpname()           -- creates a unique file; we want its dir
    os.remove(t)
    local dir = t:match("^(.*)[/\\]") or "/tmp"
    return dir .. "/servirtium_lua_" .. tostring(math.random(1, 1e9)) .. "_" .. (name or "rec.md")
end

function H.read_file(path)
    local f = io.open(path, "rb")
    if not f then return nil end
    local data = f:read("*a")
    f:close()
    return data
end

-- ---- compiled Aether throwaway upstream -----------------------------------

-- Response configuration crosses the process boundary as files, never source.
function H.start_upstream(opts)
    opts = opts or {}
    local port_file = H.temp_tape("port.txt")
    local sidecar = H.temp_tape("last.txt")
    local body_file = H.temp_tape("body.txt")
    local headers_file = H.temp_tape("headers.txt")
    local function write(path, value)
        local file = assert(io.open(path, "wb")); file:write(value); file:close()
    end
    write(body_file, opts.body or "upstream-body")
    local headers = {}
    for key, value in pairs(opts.extra_headers or {}) do headers[#headers + 1] = key .. ": " .. value end
    write(headers_file, table.concat(headers, "\n"))
    local function quote(value) return "'" .. value:gsub("'", "'\\''") .. "'" end
    local tool = H.here .. "/../../target/test-tools/test_upstream"
    local args = {tool, body_file, opts.content_type or "text/plain", port_file, sidecar, headers_file, opts.chunked and "1" or "0"}
    for i, value in ipairs(args) do args[i] = quote(value) end
    local child = assert(io.popen(table.concat(args, " ") .. " >/dev/null 2>&1 & echo $!"))
    local pid = child:read("*a"):gsub("%s+", ""); child:close()
    local port
    for _ = 1, 200 do
        local value = H.read_file(port_file)
        if value and #value > 0 then port = tonumber(value); break end
        os.execute("sleep 0.02")
    end
    assert(port, "Aether upstream did not report a port")
    return {
        base_url = "http://127.0.0.1:" .. port,
        port = port,
        close = function()
            os.execute("kill " .. pid .. " >/dev/null 2>&1")
            for _, path in ipairs({port_file, sidecar, body_file, headers_file}) do os.remove(path) end
        end,
        last = function()
            local value = H.read_file(sidecar) or ""
            local method, request_body = value:match("^(.-)\n(.*)$")
            return method or "", request_body or ""
        end,
    }
end

return H
