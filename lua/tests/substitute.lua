-- substitute.lua — response substitution + assert_all_consumed.
local here = arg[0]:match("^(.*)[/\\]") or "."
package.path  = here .. "/../?.lua;" .. here .. "/?.lua;" .. package.path
package.cpath = here .. "/../?.so;" .. package.cpath

local servirtium = require("servirtium")
local h = require("helpers")

do
    h.case("substitute rewrites a custom placeholder; assert_all_consumed")
    local srv = assert(servirtium.playback(h.tapes_dir .. "/substitute.md")
        :substitute(servirtium.FIELD_RESPONSE_BODY, "@@HOST@@", "http://sub.example")
        :port(0):start())

    h.truthy(not pcall(function() srv:assert_all_consumed() end),
        "assert_all_consumed errors before any request")
    h.eq(h.curl_get(srv:base_url(), "/sub"), "at http://sub.example/x", "substituted body")
    h.eq(srv:last_kind(), servirtium.OK, "last_kind")
    h.truthy(pcall(function() srv:assert_all_consumed() end),
        "assert_all_consumed OK after replay")
    srv:close()
end

h.done("substitute")
