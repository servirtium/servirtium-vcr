# Climate interop

The canonical Servirtium "weather" walkthrough — a real-world HTTP API client
for the WorldBank climate XML API (mirror at
`https://servirtium.github.io/worldbank-climate-recordings`), tested offline by
replaying a committed VCR tape. Ported from the Aether engine's
`contrib/climate_http_tests/` into the monorepo so it rides on `core/` (the
engine now lives here) — together with `subversion_interop`, these were the
last live importers of the old Aether VCR module, so bringing the climate tests
here removes the final external consumer and unblocks deleting that module
upstream (`aether/VCR-MOVED-TO-MONOREPO.md`).

The SUT is `module.ae`: a plain `std.http.client` consumer (no VCR import) that
computes average annual rainfall by averaging every `<double>` in the response,
and turns the API's body-content failure modes (the upstream returns HTTP 200
either way) into error strings — bad country code → "bad country code",
unsupported date range → "date range not supported".

No `.sh` runners — each leaf orchestrates inline in Aether (`os.system`),
mirroring `core_tests` and `subversion_interop`: the Aether probes are built
against the local engine with `--extra core/aether_vcr.c` from the repo root
(so `import core.vcr` resolves `core/vcr.ae` and the C runtime links in), then
run inline.

## Leaves

```sh
# Offline, fast — the everyday CI test. One pure-Aether replay probe:
aeb integration/climate_interop/.tests.ae
#   test_climate_via_vcr  — loads the committed 5-interaction tape, spins the
#                           VCR up on :18099, drives module.ae's client against
#                           it, asserts the 5 results (gbr/fra/egy means + the
#                           two body-content failure modes). Fully offline.

# On-demand, hits the live GitHub-Pages mirror over HTTPS (the record-equivalent
# / live half). Honors AETHER_SKIP_NETWORK (replays the committed tape / skips):
aeb integration/climate_interop/.record.ae
#   test_climate_record_then_replay — Servirtium step 3. Tape present (default,
#                           it's committed) → replays it on :18100. Delete the
#                           tape and re-run to record from the live mirror; set
#                           AETHER_VCR_RECORD=1 with a tape present for the
#                           re-record byte-diff check.
#   test_climate_real      — Servirtium step 1. The 5 assertions straight
#                           against DEFAULT_BASE (the live mirror), no VCR.
#                           Skips under AETHER_SKIP_NETWORK.
```

## Fixtures (`tapes/`)

- `climate_5_endpoints.tape` — the canonical 5-interaction tape (gbr/fra/egy
  1980-1999, gbr 1985-1995, mde 1980-1999), captured verbatim from the
  GitHub-Pages mirror. The committed fixture the offline test replays.

The `module.ae` exports `DEFAULT_BASE` and `get_ave_annual_rainfall_from`; the
test probes import them as `integration.climate_interop.<symbol>` (the import
path is derived from the file's location under the repo root when built from
there).
