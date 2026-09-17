# Handover: re-run the language sweep on ae 0.675 / aeb v0.311 (CachyOS)

_2026-09-15. For the sibling running this repo on CachyOS. Short + specific._

> **UPDATE 2026-09-16 (commit cf2db47): now ae 0.677 / aeb v0.312 — sweep against
> THAT.** aeb v0.312 fixes a v0.311 SDK bug (SIGSEGV/E0200 in seq_filter on ae
> 0.675, hitting python/dart/gleam/bldr/moonbit) I had missed — so verifying on
> v0.312 matters MORE, not less. Everything below still applies; just read
> "0.675/v0.311" as "0.677/v0.312". (0.675 is still the true floor — 0.677 only
> tracks aeb's own pin.) I re-verified go/rust/js/gleam + core on 0.677; the
> SDK-gated leaves in the table below remain your box's to check.

## What I did, and the honest gap

Ratcheted the toolchain **ae 0.668 → 0.675 / aeb v0.310 → v0.311** (commit
`fff0258`). This was a **forced** ae bump, not pin-what-we-verify: aeb v0.311's
SDK refactor calls `fs.make_temp_file`, a stdlib primitive **absent before ae
0.675** (verified missing in 0.650 and 0.668). Building this repo with aeb v0.311
on ae 0.668 fails to *link* — `undefined reference to fs_make_temp_file_raw`. So
ae and aeb genuinely move together now; that's in the `AE_FETCH` note.

**The gap:** your 0.668 pin note recorded the **full 29-language sweep** (28/29
green, pharo the exception). I could **not** reproduce that sweep on 0.675,
because this box (ChromeOS/crostini Debian) is missing the SDKs. What I *did*
verify on ae 0.675 + released aeb v0.311:

- libservirtium_vcr + CLI + `core_tests` (all 4 leaves) + `cli-tests` 18/18 — green;
- `go` / `rust` / `javascript` `.tests.ae` — 1/1 each;
- a virginal `debian:13-slim` one-liner (`AE_PIN=0.675.0 AEB_REF=v0.311 | sh`) →
  clone → `aeb go/.tests.ae` — green end-to-end.

The v0.307..v0.311 changes are internal refactors (native fs/string replacing
shell-outs) plus several false-green fixes; none rewrite how a leaf is authored.
So I expect the sweep to stay green — but it is **unverified on 0.675**, and the
`AE_FETCH` note says so.

## The ask — verify these on CachyOS (you have the SDKs, I don't)

On this box these SDKs are **absent**, so their `.tests.ae` / `.build.ae` leaves
went unrun on 0.675. On CachyOS they're the ones worth a sweep:

| Leaf | gated on (missing here) |
|---|---|
| `dotnet/Servirtium.Vcr.Tests/.tests.ae`, `fsharp/.tests.ae` | `dotnet` |
| `kotlin/.build.ae` | `kotlinc` |
| `scala/.build.ae` (+ `scala/.tests.ae`) | `scala` |
| `haskell/.tests.ae` | `ghc` |
| `lua/.tests.ae` | `lua5.4` |
| `php/.tests.ae` | `php` |
| `pharo/.tests.ae` | `pharo` (the one you flagged 6/12 on 0.668 — recheck on 0.675) |
| `swift/.tests.ae` | `swift` (new since I last swept; never run here) |

I verified go/rust/js and the core; you have the rest. The quickest confidence
check is your usual full sweep on the freshly-pinned toolchain
(`AE_PIN=0.675.0 AEB_REF=v0.311`). If any leaf regresses on 0.675 that was green
on 0.668, that's a real find — the SDK refactors are supposed to be
behaviour-preserving.

## Watch-outs specific to a differently-provisioned box

- **Split-toolchain footgun (your own 0.668 note).** It bit me again: a dangling
  `~/.local/bin/ae` mis-reported `0.653` while `~/.aether/versions/` topped out
  at 0.650 — so `aeb` picked up an ae with no `--emit-deps` / no
  `fs.make_temp_file` and failed cryptically. On CachyOS after the bump, confirm
  `ae --version` shows **0.675 for both `ae` and `aetherc`** (`ae install 0.675 &&
  ae use 0.675`) before trusting a red leaf.
- **dev-dep leaves.** python/ruby (and haskell) need the one-time setup in
  [`dev-setup.md`](dev-setup.md); on a box without it they report FAIL for an
  environmental reason (`bundler: command not found: rspec`, PEP-668 pytest),
  which is *not* a 0.675 regression. Don't read those as toolchain breakage.

## Pins are already bumped and pushed

`bootstrap.sh` / `README.md` / `docs/alternate_aeb_and_ae_install.md` are at
`AE_PIN=AE_FETCH=0.675.0`, aeb floor `>= 0.308`, `AEB_REF` tracking `v0.311`
(commit `fff0258`). If your CachyOS sweep is fully green, the `AE_FETCH` note can
drop its "sweep NOT re-run on 0.675" caveat. If pharo/swift/etc. regress, that's
the thing to chase (or file to aeb, if it's an SDK-refactor bug).
