# Subversion interop

The Subversion-family VCR tests, ported from the Aether stdlib's
`tests/integration/svn_*` into the monorepo so they ride on `core/` (the engine
now lives here) — they were the last live importers of the old Aether VCR
module, so bringing them here unblocks deleting that module upstream
(`aether/VCR-MOVED-TO-MONOREPO.md`, Phase 2).

Subversion's checkout is a long WebDAV/HTTP conversation with protocol-critical
details (duplicate-keyed `DAV:` headers, custom verbs like `REPORT`/`PROPFIND`),
so it's a stern test of the VCR's byte-faithful record/replay.

No `.sh` runners — each leaf orchestrates inline in Aether (`os.system`),
mirroring `core_tests` (Aether probes built against the pure-Aether engine,
plain `ae build`, no `--extra`) and the container-lifecycle pattern (the svn-CLI leaf brings a VCR server up,
drives `svn`, tears it down).

## Leaves

```sh
# Offline, fast — two pure-Aether replay probes:
aeb integration/subversion_interop/.tests.ae
#   checkout_via_vcr  — replays the 17-interaction canonical checkout tape and
#                       asserts byte-equality on status/body/headers (17/17)
#   strict_match      — strict-match diagnostics (last_kind/index/error) (4/4)

# The real `svn` client driven through the VCR (needs the svn binary; skips if
# absent). The svn analog of the TodoBackend browser test:
aeb integration/subversion_interop/.svn_checkout.ae
#   brings up checkout_server.ae replaying tapes/svn_checkout_scrubbed.tape,
#   runs `svn checkout` against it, asserts the working tree matches.
```

## Fixtures (`tapes/`)

- `ExampleSubversionCheckoutRecording.md` — the canonical 17-interaction SVN
  checkout tape (from Servirtium-Java's corpus).
- `tiny.tape` — one interaction, for the strict-match diagnostics.
- `svn_checkout_scrubbed.tape` — the canonical tape pre-scrubbed (blanked
  recorded request headers/body; a synthetic 404 spliced for the
  SVN-1.14-only `REPORT` so the modern `svn` client replays cleanly).

The gated *live* svn.apache.org checkout (the record-equivalent half of the
upstream `svn_checkout_fs_equivalence` test) was intentionally not ported — it
needs network; the offline replay above is the CI-worthy proof.
