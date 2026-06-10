-- mutation.lua — the Lua binding's record-mode mutation suite, mirroring the
-- Go binding's mutation_test.go: redaction, notes, header removal, no-leak
-- between fixtures, and fail-if-changed drift detection. Upstream is the
-- throwaway python3 server (helpers.start_upstream); tapes go to temp paths.
--   LUA_CPATH="./?.so;;" SERVIRTIUM_VCR_LIB=<abs>/libservirtium_vcr.so lua5.4 tests/mutation.lua

local here = arg[0]:match("^(.*)[/\\]") or "."
package.path  = here .. "/../?.lua;" .. here .. "/?.lua;" .. package.path
package.cpath = here .. "/../?.so;" .. package.cpath

local servirtium = require("servirtium")
local h = require("helpers")

math.randomseed(os.time() + 2)

-- record redacts the response body before it lands on the tape ---------------
do
    h.case("record redacts the response body")
    local up = h.start_upstream({ body = "value=secret-token" })
    local tape = h.temp_tape("rec.md")

    local rec = assert(servirtium.record(tape, up.base_url)
        :redact(servirtium.FIELD_RESPONSE_BODY, "secret-token", "REDACTED")
        :port(0):start())
    h.curl_get(rec:base_url(), "/x")
    h.eq(rec:close(), "", "close returns no error")
    up.close()

    local text = h.read_file(tape)
    h.contains(text, "REDACTED", "tape contains REDACTED")
    h.not_contains(text, "secret-token", "tape must not contain the secret")
    os.remove(tape)
end

-- record attaches a note ------------------------------------------------------
do
    h.case("record attaches a note")
    local up = h.start_upstream({})
    local tape = h.temp_tape("rec.md")

    local rec = assert(servirtium.record(tape, up.base_url)
        :note("Why this exists", "documents the call")
        :port(0):start())
    h.curl_get(rec:base_url(), "/x")
    h.eq(rec:close(), "", "close returns no error")
    up.close()

    h.contains(h.read_file(tape), "## [Note] Why this exists:", "note heading on tape")
    os.remove(tape)
end

-- record removes a named response header -------------------------------------
do
    h.case("record removes a named response header")
    local tape1 = h.temp_tape("rec1.md")
    local tape2 = h.temp_tape("rec2.md")

    -- Phase 1: without removal, X-Trace-Id is captured.
    local up1 = h.start_upstream({ extra_headers = { ["X-Trace-Id"] = "abc123" } })
    local rec = assert(servirtium.record(tape1, up1.base_url):port(0):start())
    h.curl_get(rec:base_url(), "/x")
    h.eq(rec:close(), "", "phase 1 close")
    up1.close()
    h.contains(h.read_file(tape1), "X-Trace-Id", "phase 1: header captured")

    -- Phase 2: with removal, it's gone.
    local up2 = h.start_upstream({ extra_headers = { ["X-Trace-Id"] = "abc123" } })
    local rec2 = assert(servirtium.record(tape2, up2.base_url)
        :remove_header(servirtium.FIELD_RESPONSE_HEADERS, "X-Trace-Id")
        :port(0):start())
    h.curl_get(rec2:base_url(), "/x")
    h.eq(rec2:close(), "", "phase 2 close")
    up2.close()
    h.not_contains(h.read_file(tape2), "X-Trace-Id", "phase 2: header removed")

    os.remove(tape1); os.remove(tape2)
end

-- mutation state does not leak between fixtures ------------------------------
do
    h.case("mutation state does not leak between fixtures")
    local tape1 = h.temp_tape("rec1.md")
    local tape2 = h.temp_tape("rec2.md")

    -- Fixture A registers a redaction for "leak".
    local upA = h.start_upstream({ body = "leak" })
    local a = assert(servirtium.record(tape1, upA.base_url)
        :redact(servirtium.FIELD_RESPONSE_BODY, "leak", "SCRUBBED")
        :port(0):start())
    h.curl_get(a:base_url(), "/x")
    h.eq(a:close(), "", "fixture A close")
    upA.close()
    h.contains(h.read_file(tape1), "SCRUBBED", "fixture A: SCRUBBED")

    -- Fixture B registers NO redaction; A's must not leak in.
    local upB = h.start_upstream({ body = "leak" })
    local b = assert(servirtium.record(tape2, upB.base_url):port(0):start())
    h.curl_get(b:base_url(), "/x")
    h.eq(b:close(), "", "fixture B close")
    upB.close()
    local t2 = h.read_file(tape2)
    h.contains(t2, "leak", "fixture B: un-redacted body present")
    h.not_contains(t2, "SCRUBBED", "fixture B: A's redaction did not leak")

    os.remove(tape1); os.remove(tape2)
end

-- fail-if-changed returns an error on drift ----------------------------------
do
    h.case("fail-if-changed returns an error on drift")
    local tape = h.temp_tape("rec.md")

    -- First record creates the tape — no drift, no error.
    local up1 = h.start_upstream({ body = "v1" })
    local first = assert(servirtium.record(tape, up1.base_url)
        :fail_if_changed():port(0):start())
    h.curl_get(first:base_url(), "/x")
    h.eq(first:close(), "", "first record should not drift")
    up1.close()

    -- Re-record with a changed upstream — close must return a drift error,
    -- while still writing the new tape for git diff.
    local up2 = h.start_upstream({ body = "v2-changed" })
    local second = assert(servirtium.record(tape, up2.base_url)
        :fail_if_changed():port(0):start())
    h.curl_get(second:base_url(), "/x")
    local err = second:close()
    h.truthy(err ~= "", "expected a drift error from close")
    up2.close()
    h.contains(h.read_file(tape), "v2-changed", "drift: new tape still written")

    os.remove(tape)
end

h.done("mutation")
