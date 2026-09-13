# consumer.jl — a third party using the packaged Julia binding.
#
# Runs against a RELOCATED copy of the package, Pkg.develop-ed into a throwaway
# depot, with SERVIRTIUM_VCR_LIB UNSET. Only the native/libservirtium_vcr.so
# bundled inside the package can satisfy `ccall`, via the module's
# bundled-path discovery step.
#
# Replays the canonical tape (GET /ok -> 200 text/plain "ok-body").
using Servirtium

const TAPE = joinpath(@__DIR__, "tapes", "single_get.md")

http_get(url) = chomp(read(`curl -s -S $url`, String))

vcr = playback(TAPE)
try
    body = http_get("$(base_url(vcr))/ok")
    if body != "ok-body" || last_kind(vcr) != Ok
        println(stderr, "FAIL: body=$body last_kind=$(last_kind(vcr))")
        exit(1)
    end
finally
    close!(vcr)
end
println("PASS[discovery]: consumer replayed the canonical tape from the installed package")
