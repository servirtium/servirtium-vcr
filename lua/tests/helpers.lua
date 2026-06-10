-- helpers.lua — shared test utilities for the Lua binding suite.
--
-- Loaded by each tests/*.lua via `require("helpers")` after the package paths
-- are pointed at lua/ (so servirtium + helpers both resolve). Provides:
--   * a tiny assert-style harness (h.eq / h.contains / h.truthy)
--   * GET/POST over curl (the binding has no stdlib HTTP client)
--   * a throwaway python3 upstream for record-mode tests (fixed body, header,
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

-- ---- python3 throwaway upstream -------------------------------------------

-- start_upstream(opts) launches a one-process python3 HTTP server bound to a
-- free 127.0.0.1 port and returns a table { base_url, port, close(), last() }.
--   opts.body          response body (default "upstream-body")
--   opts.content_type  Content-Type (default "text/plain")
--   opts.extra_headers map of extra response headers
--   opts.chunked       if true, omit Content-Length so python chunks the reply
--
-- The server echoes the last request method + body to a sidecar file so tests
-- can assert what the VCR forwarded (last() reads it).
function H.start_upstream(opts)
    opts = opts or {}
    local body = opts.body or "upstream-body"
    local content_type = opts.content_type or "text/plain"
    local extra = opts.extra_headers or {}
    local chunked = opts.chunked and "1" or "0"

    local port_file = H.temp_tape("port.txt"):gsub("%.md$", "")
    local sidecar   = H.temp_tape("last.txt"):gsub("%.md$", "")
    local script    = H.temp_tape("upstream.py"):gsub("%.md$", "")

    -- Build a python source file. The server writes the bound port to port_file
    -- once listening, and the last request (method\nbody) to sidecar per call.
    local extra_lines = {}
    for k, v in pairs(extra) do
        table.insert(extra_lines, string.format("        self.send_header(%q, %q)", k, v))
    end
    local py = ([[
import http.server, socketserver, sys

BODY = %s
CTYPE = %q
CHUNKED = %s
PORTFILE = %q
SIDECAR = %q

class H(http.server.BaseHTTPRequestHandler):
    def _handle(self):
        length = int(self.headers.get('Content-Length') or 0)
        data = self.rfile.read(length) if length else b''
        with open(SIDECAR, 'wb') as f:
            f.write(self.command.encode() + b'\n' + data)
        payload = BODY
        self.send_response(200)
        self.send_header('Content-Type', CTYPE)
%s
        if CHUNKED:
            self.send_header('Transfer-Encoding', 'chunked')
            self.end_headers()
            chunk = ('%%x\r\n' %% len(payload)).encode() + payload + b'\r\n0\r\n\r\n'
            self.wfile.write(chunk)
        else:
            self.send_header('Content-Length', str(len(payload)))
            self.end_headers()
            self.wfile.write(payload)
    def do_GET(self): self._handle()
    def do_POST(self): self._handle()
    def do_PUT(self): self._handle()
    def log_message(self, *a): pass

with socketserver.TCPServer(('127.0.0.1', 0), H) as srv:
    with open(PORTFILE, 'w') as f:
        f.write(str(srv.server_address[1]))
    srv.serve_forever()
]]):format(string.format("%q", body):gsub("\\\n", "\\n"), content_type, chunked,
           port_file, sidecar, table.concat(extra_lines, "\n"))

    -- BODY must be bytes in python; wrap the quoted literal as a b"..." string.
    py = py:gsub("BODY = (%b\"\")", "BODY = b%1", 1)

    local f = assert(io.open(script, "w"))
    f:write(py)
    f:close()

    -- Launch detached; capture pid so we can kill it.
    local pidp = io.popen("python3 " .. script .. " >/dev/null 2>&1 & echo $!")
    local pid = pidp:read("*a"):gsub("%s+", "")
    pidp:close()

    -- Wait for the port file.
    local port
    for _ = 1, 200 do
        local pf = io.open(port_file, "r")
        if pf then
            local s = pf:read("*a")
            pf:close()
            if s and #s > 0 then port = tonumber(s); break end
        end
        os.execute("sleep 0.02")
    end
    assert(port, "python3 upstream did not report a port")

    return {
        base_url = "http://127.0.0.1:" .. port,
        port = port,
        close = function()
            os.execute("kill " .. pid .. " >/dev/null 2>&1")
            os.remove(script); os.remove(port_file); os.remove(sidecar)
        end,
        last = function()
            local s = H.read_file(sidecar) or ""
            local method, b = s:match("^(.-)\n(.*)$")
            return method or "", b or ""
        end,
    }
end

return H
