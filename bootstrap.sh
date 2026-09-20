#!/usr/bin/env bash
# One-command casual-dev bootstrap for the servirtium-vcr monorepo.
#
# Ensures the Aether toolchain (`ae`) and the build runner (`aeb`) are present
# and recent enough, then runs `aeb` to build libservirtium_vcr, the Go
# binding, and the up_poke_down demo.
#
# The toolchains are installed via their canonical remote installers — they
# work from a bare clone (no sibling checkouts), install released builds to a
# user prefix, run no tests, build no contrib:
#     aether: https://raw.githubusercontent.com/aether-lang-dev/aether/main/get.sh
#     aeb:    https://raw.githubusercontent.com/aether-lang-dev/aeb/main/install.sh
#
# Idempotent: a no-op for the toolchain when `ae`/`aeb` are already good.
# Requires `curl` to install them; no build-from-source fallback.
#
# Env overrides:
#   PREFIX        install prefix                 (default: $HOME/.local; no sudo)
#   AETHER_REF    ae tag/branch/SHA to install   (default: $AE_FETCH below)
#   AEB_REF       aeb tag/branch/SHA to install  (default: latest tag) — pin in CI
#   MIN_AE        minimum acceptable ae version  (default: $AE_PIN below)
#   AEB_TIMEOUT   passed through to aeb (seconds)  (optional)
# Extra args pass through to `aeb` (e.g. ./bootstrap.sh .tests.ae).
set -euo pipefail

# ---- Aether pin: ONE number, deliberately.
#
# This used to be two numbers on two clocks (the aeb repo's
# AETHER_PIN / AETHER_FETCH pattern): a FLOOR at the oldest ae that could
# compile libservirtium_vcr, and a KNOWN-GOOD release to fetch when the floor was not
# met. That is the more permissive design, and we have collapsed it on purpose.
#
#   AE_PIN == AE_FETCH == the one Aether this repo is VERIFIED against.
#
# Why the change. The old floor (0.413.0, the release that moved base64_decode
# into std.encoding) was the last point at which anyone could name a primitive
# libservirtium_vcr needs. It was never the oldest ae that actually WORKS here — it
# was the oldest nobody had disproved. Every sweep this repo has ever published
# ran on AE_FETCH, so a permissive floor advertised support for ~250 releases
# that nothing verifies, and handed anyone sitting in that range a toolchain
# combination we have never built.
#
# It also removes a failure mode that is genuinely nasty rather than merely
# untested: `ae` and `aetherc` are separate binaries and aetherc does the
# codegen, so a box can end up mixing versions (see the AE_FETCH note below —
# it cost an afternoon). One number means "install exactly this", and the
# split cannot arise from following our own instructions.
#
# Cost, stated honestly: a user with a perfectly good ae 0.650 on PATH now
# gets a fetch they did not strictly need. That is the trade — a fetch is
# cheap, and "supported" now means "tested".
#
# Move BOTH numbers together, after a successful build+test on the new release
# (libservirtium_vcr + core_tests + the language sweep). A newer number is not
# automatically better; it is another thing to have tested. Aether cuts
# releases fast — do not chase HEAD by hand.
AE_PIN="0.698.0"
AE_FETCH="v0.698.0"    # The genuine FLOOR is still 0.675 — aeb's SDK needs
                       # fs.make_temp_file, and this repo's libservirtium_vcr needs no newer
                       # primitive. We pin 0.698 (>= aeb v0.319's AETHER_PIN of
                       # 0.696; 0.698 also FIXES the dotnet closure-codegen bug —
                       # see the sweep note below), keeping "one ae, matching the
                       # build runner". So 0.698 is a tracking bump; 0.675 is the
                       # requirement.
                       # WHY the 0.696/v0.319 line below (bumped from 0.695/v0.317): aeb v0.319
                       # ships the emit_binary_package target() cross-emit + the
                       # 0.681 libaether FLOOR-GUARD (aeb-link now fails with a
                       # legible "runtime archive older than 0.681" instead of a
                       # cryptic `undefined reference to os_arch_raw`), and pins ae
                       # 0.696 (hardened `ae add` contract: a binary package now
                       # REQUIRES a .sha256 — emit_binary_package writes it, so
                       # release/ stays compliant). This unblocked release/build.sh
                       # switching from hand-synthesis to the aeb builder loop.
                       # PREBUILT WEAK-EMIT still clean: the @c_callback weak-emit
                       # (ae PR #2043 / AETHER_WEAK_DEF) is present in the 0.696
                       # prebuilt (`strings aetherc | grep AETHER_WEAK_DEF` = 4).
                       # VERIFIED (this box) on ae 0.696/0.698 + aeb MAIN ahead of
                       # v0.319 (v0.319-N-g…, which carries the mkdir + dotnet-rename
                       # fixes the v0.319 TAG lacks — see the ⚠ known-broken note in
                       # the aeb pin section): libservirtium_vcr build + go/rust
                       # .tests.ae 1/1 + the full release/ builder-loop matrix (7/7,
                       # see release/build.sh). NOT verified on the exact v0.319 tag
                       # (its dotnet/fsharp leaves cannot link); the release
                       # cross-build path doesn't touch those, but installing the
                       # bare tag and sweeping would still hit them until a newer
                       # aeb tag exists.
                       # The SDK-gated leaves (dotnet/kotlin/scala/haskell/lua/php/
                       # pharo/swift) are unrun here (no SDKs) — sweep them on the
                       # provisioned box; the dotnet closure-codegen bug below
                       # still applies until aeb ships the rename OR ae fixes it.
                       # ---- CachyOS SWEEP, RE-RUN ON ae 0.698 + aeb main
                       # (v0.319-2-g5fde2d5, NOT the pinned tag — see the aeb pin
                       # note below for why that distinction matters): 92 leaves,
                       # 91 green. 33/34 .tests.ae, 29/29 .package.ae, 29/29
                       # .example.ae. The ONE red is pharo (unchanged
                       # run=12 passed=6 errors=6 — every record-mode test plus
                       # static content; playback fine). Identical tallies on
                       # 0.696 and 0.697 immediately before, so three consecutive
                       # releases regressed nothing here.
                       # THE CLOSURE CODEGEN BUG IS FIXED AS OF ae 0.698.
                       # Full history, because the middle step misleads: 0.675
                       # introduced it; 0.697 shipped a PARTIAL fix (055fcc7d)
                       # that made upstream's own regression test pass while the
                       # shape that started this still failed; 0.698 completed it
                       # (0745fa85) and all five rows of the matrix are clean,
                       # including the real dotnet module with aeb's rename
                       # reverted. Measured, not inferred — the revert was proven
                       # (vr_ refs 6->0), the build ran (rc=0), it passed
                       # positively ("1/1 PASS", not merely no error), and the
                       # SDK was restored and re-asserted.
                       # aeb's 6af17aa rename nevertheless STAYS: it is still
                       # load-bearing on 0.675-0.697 inclusive, so removing it
                       # re-opens a whole-graph build failure for anyone pinned
                       # lower. Retiring it is gated on aeb's AETHER_PIN reaching
                       # 0.698, which is aeb's call, not this repo's.
                       # For the record, the trigger was an enclosing `if`
                       # specifically (a `while` or function scope compiles).
                       # Filed upstream with a 35-line reproducer. It fails at orchestrator link,
                       # so on an aeb without the rename it stops every node
                       # in the graph, not just the dotnet ones. Mechanism: a
                       # closure's own locals are unified with same-named locals
                       # in an earlier, already-closed block, promoted to heap
                       # cells, then captured outside their declaring block.
                       # Measured bisect: clean 0.668; broken 0.675, 0.677,
                       # 0.681, 0.696. aeb's dotnet module was byte-identical
                       # v0.311->v0.319 throughout, which is what makes it an
                       # Aether bug rather than an SDK one. Full writeup:
                       # docs/handover-ae-0675-closure-capture-codegen-bug.md.
                       # ruby/swift/integration also need
                       # env (gem bin on PATH, LD_LIBRARY_PATH for swift's
                       # libncurses shim, python selenium) — all green once set,
                       # see docs/dev-setup.md.
                       # ---- (0.668 note, kept — its split-toolchain warning still bites) ----
                       # verified on ae 0.668.0 + the RELEASED aeb v0.310:
                       # libservirtium_vcr + CLI + core_tests (all 6 leaves) + cli-tests,
                       # 28 of the 29 language leaves, all 29 .package.ae, and
                       # all 29 .example.ae — green in sequential sweeps.
                       # 0.668.0 is also what aeb v0.310 pins internally, so
                       # this repo and the build runner now agree on one
                       # Aether. MIND THE SPLIT TOOLCHAIN: `ae` and `aetherc`
                       # are separate binaries and aetherc does the codegen, so
                       # a half-upgrade silently mixes versions — installing
                       # 0.666 into ~/.local/bin while a version-managed
                       # ~/.aether stayed on 0.650 made every core_tests leaf
                       # fail with "Unknown option: --emit-deps" (0.666's ae
                       # passing a flag only 0.666's aetherc knows). `ae
                       # --version` prints both and warns when they disagree;
                       # `ae install <v> && ae use <v>` moves the managed
                       # install so they don't. The one that is
                       # not green is pharo (6/12 error: every record-mode test
                       # + static content; playback fine) — a real open
                       # question, not a missing tool. python/ruby/haskell need
                       # a one-time dev-dep setup that is NOT obvious on a
                       # PEP-668 distro with a dynamic-only GHC: see
                       # docs/dev-setup.md. Ratcheted to match the sibling
                       # toolchains (aeb v0.310 pins Aether 0.668.0), so
                       # servirtium builds against the same ae the build runner
                       # ships. AE_PIN moves with it (they are one number now —
                       # see the pin note above); nothing in libservirtium_vcr NEEDS a
                       # 0.668 primitive, so this is a "pin what we verify"
                       # choice, not a discovered requirement.
# ---- aeb pin: ONE number too, matching the AE_PIN policy above.
#
#   aeb floor == AEB_REF == v0.319 == the one aeb this repo is VERIFIED against.
#
# Collapsed from the old permissive floor (>= 0.308) for the same reason the
# Aether pin was: every sweep this repo publishes runs on AEB_REF, so a lower
# floor advertised support for releases nothing verifies. v0.319 pins ae 0.696
# (its AETHER_PIN), so the two toolchains move as a pair — install them together.
#
# Kept for the record, because it is the last nameable aeb requirement and
# explains why 0.308 was ever the number: scala/.tests.ae calls scala's
# source_layout("maven idiomatic"), absent before 0.308 (on 0.307 the leaf dies
# with "Undefined function 'source_layout'"); d/.tests.ae relies on d.test
# propagating the compiler/test exit code instead of tee's (before 0.308 a
# failing D suite — or one that did not compile at all — reported PASS); and
# groovy needs 0.308's groovyc cache key to notice edited sources. (Earlier
# history: v0.298 made the bundle installer make-free; v0.300 aligned the
# release asset on x86_64.)
#
# ⚠ v0.319 IS KNOWN-BROKEN IN TWO WAYS, AND NO NEWER TAG EXISTS (2026-09-19).
# It is still the pin, deliberately — see "why not just point at main" below.
#
#   1. It CONTAINS aeb 9faf844, which dropped the `mkdir -p` from the dep
#      staging loop when that became a bare fs.copy_tree, across 7 SDKs. Any
#      stage() into a not-yet-existing directory then copies NOTHING and leaves
#      the destination dead — silently. Fixed in aeb 5fde2d5, AFTER the tag.
#      On the selenium side this killed every .example.ae at its assert_file and,
#      once fixed, exposed five further packaging breaks it had been masking.
#      THIS REPO IS CLEAN OF THAT CLASS: no .package.ae / .example.ae / .dist.ae
#      node reaches outside its own directory, and a full sweep with 5fde2d5 in
#      place turned up nothing new. But note that any sweep run on v0.315..v0.319
#      was a MASKED-MKDIR sweep and is weaker evidence than it looks.
#   2. It LACKS aeb 6af17aa, the dotnet SDK's closure-local rename. Without it
#      ae >= 0.675 emits invalid C for lib/dotnet/module.ae ("'idx' undeclared"),
#      which fails at ORCHESTRATOR LINK — so it does not merely break the dotnet
#      leaves, it stops every node in any graph containing them. The underlying
#      Aether codegen bug is still live on 0.696 (measured, by reverting only the
#      rename); 6af17aa only hides it. See
#      docs/handover-ae-0675-closure-capture-codegen-bug.md.
#
# So: a tag carrying BOTH 5fde2d5 and 6af17aa is what this repo actually wants,
# and cutting one is the fix. Until then AEB_REF stays at v0.319 rather than
# tracking main, because AEB_REF takes a TAG: pointing it at a branch would
# trade a known-broken pin for an UNPINNED one, which is worse — the failure
# mode stops being "a bug we have written down" and becomes "whatever main was
# that day". (Same call the selenium sibling made, independently.)
#
# DISCLOSURE, so the sweep numbers are not read as more than they are: the
# 91/92 sweep recorded below was run on aeb main at v0.319-2-g5fde2d5 — i.e.
# WITH both fixes — not on the pinned v0.319. On the pin itself the dotnet and
# fsharp leaves cannot link at all. Installing exactly AEB_REF and sweeping is
# therefore expected to be WORSE than what is recorded, not better.
#
# HONEST LIMITATION — this floor is a documentation contract, NOT enforced.
# Step 2 below accepts ANY aeb already on PATH (`command -v aeb` → skip),
# unlike the ae check, which compares versions. That is not laziness: an aeb
# installed from a release TARBALL reports
#     aeb 0.0.0-dev+<hash>   (git unknown, installed <date>)
# with no parseable version, so a version_ge gate would either reject every
# tarball install or be trivially fooled. AEB_REF is what gets installed when
# aeb is ABSENT; when it is present the repo relies on the failure being loud
# (a missing setter is an "Undefined function" compile error, not a silent
# wrong answer). If you want it enforced, the fix belongs upstream in aeb —
# have `aeb --version` report the release it was built from even for tarball
# installs.

HERE="$(cd "$(dirname "$0")" && pwd)"
PREFIX="${PREFIX:-$HOME/.local}"; export PREFIX
MIN_AE="${MIN_AE:-$AE_PIN}"
AETHER_GET_URL="https://raw.githubusercontent.com/aether-lang-dev/aether/main/get.sh"
AEB_INSTALL_URL="https://raw.githubusercontent.com/aether-lang-dev/aeb/main/install.sh"

say() { printf '\033[1;36m==>\033[0m %s\n' "$*"; }
die() { printf '\033[1;31merror:\033[0m %s\n' "$*" >&2; exit 1; }
version_ge() { [ "$(printf '%s\n%s\n' "$2" "$1" | sort -V | head -n1)" = "$2" ]; }
ae_version() { ae --version 2>/dev/null | head -n1 | sed -E 's/^ae ([0-9]+\.[0-9]+\.[0-9]+).*/\1/'; }

# fetch_run URL : download an installer to a temp file and run it under sh,
# inheriting the (exported) env the caller set. Avoids `curl | sh` masking a
# fetch failure.
fetch_run() {
    command -v curl >/dev/null 2>&1 || die "curl is required to install the Aether toolchain (or install ae/aeb yourself and re-run)."
    local tmp rc; tmp="$(mktemp)"
    if curl -fsSL "$1" -o "$tmp"; then sh "$tmp"; rc=$?; else rc=$?; fi
    rm -f "$tmp"; return $rc
}

export PATH="$PREFIX/bin:$PATH"   # so freshly-installed ae/aeb are found below

# ---- 0. Preflight: a C compiler + make ----
# Aether compiles to C and hands off to a C compiler; the source-tarball
# installers for ae/aeb (get.sh / install.sh) also need make + cc. Check up
# front so a missing compiler fails clearly HERE, not cryptically later inside
# `ae build` (a --emit=lib link error) or the toolchain installer.
command -v cc >/dev/null 2>&1 || command -v gcc >/dev/null 2>&1 || command -v clang >/dev/null 2>&1 \
    || die "a C compiler (cc/gcc/clang) is required — Aether compiles to C. Install e.g. build-essential (Debian/Ubuntu) or the Xcode Command Line Tools (macOS)."
command -v make >/dev/null 2>&1 \
    || die "GNU make is required to build the Aether toolchain from source. Install e.g. build-essential / make."

# ---- 1. Aether toolchain (ae) ----
if command -v ae >/dev/null 2>&1 && have="$(ae_version || true)" && [ -n "$have" ] && version_ge "$have" "$MIN_AE"; then
    say "ae $have already on PATH (>= $MIN_AE) — skipping"
else
    say "installing ae via get.sh (AETHER_REF=${AETHER_REF:-$AE_FETCH}, PREFIX=$PREFIX)"
    AETHER_REF="${AETHER_REF:-$AE_FETCH}" fetch_run "$AETHER_GET_URL" || die "ae install failed (get.sh)."
    command -v ae >/dev/null 2>&1 || die "ae installed but not on PATH — ensure $PREFIX/bin is on PATH."
    say "ae $(ae_version) ready"
fi

# ---- 2. Build runner (aeb) ----
if command -v aeb >/dev/null 2>&1; then
    say "aeb already on PATH — skipping"
else
    say "installing aeb via install.sh (AEB_REF=${AEB_REF:-latest}, PREFIX=$PREFIX)"
    AEB_REF="${AEB_REF:-}" AETHER="$(command -v ae)" fetch_run "$AEB_INSTALL_URL" || die "aeb install failed (install.sh)."
    command -v aeb >/dev/null 2>&1 || die "aeb installed but not on PATH — ensure $PREFIX/bin is on PATH."
fi
say "using aeb: $(command -v aeb)"

# ---- 3. Build the project ----
cd "$HERE"
case ":$PATH:" in *":$PREFIX/bin:"*) : ;; *) say "tip: add '$PREFIX/bin' to your shell PATH permanently";; esac

# With explicit args, honor them verbatim. Otherwise, DON'T `aeb --scan` the
# whole tree — that builds all 29 bindings and is guaranteed to fail on any box
# lacking a toolchain (every box). Instead, sniff which language toolchains are
# present and build only those leaves. `core` (libservirtium_vcr) always
# builds: it needs only `ae` + a C compiler, which we just ensured.
#
# Table rows: "<command-to-probe> <leaf-to-build>". If the command is on PATH,
# the leaf is added; otherwise it's skipped (and reported). The gating command
# is the binding's compiler/runtime, matched to each leaf's language module.
if [ "$#" -gt 0 ]; then
    targets="$*"
else
    targets="core/.build.ae core/.cli.ae"  # always — libservirtium_vcr + CLI need only ae + cc
    skipped=""
    while read -r cmd leaf; do
        [ -n "$cmd" ] || continue
        if command -v "$cmd" >/dev/null 2>&1; then
            targets="$targets $leaf"
        else
            skipped="$skipped ${leaf%%/*}(no $cmd)"
        fi
    done <<'TOOLCHAINS'
go       go/.tests.ae
cargo    rust/.tests.ae
python3  python/.tests.ae
ruby     ruby/.tests.ae
node     javascript/.tests.ae
dotnet   dotnet/Servirtium.Vcr.Tests/.tests.ae
javac    java/.build.ae
kotlinc  kotlin/.build.ae
scala    scala/.build.ae
clojure  clojure/.build.ae
groovy   groovy/.build.ae
erl      erlang/.build.ae
elixir   elixir/.tests.ae
gleam    gleam/.tests.ae
ghc      haskell/.tests.ae
lua5.4   lua/.tests.ae
nim      nim/.tests.ae
zig      zig/.tests.ae
php      php/.tests.ae
dart     dart/.tests.ae
pharo    pharo/.tests.ae
lfec     lfe/.tests.ae
dotnet   fsharp/.tests.ae
cc       c/.tests.ae
c++      cpp/.tests.ae
crystal  crystal/.tests.ae
julia    julia/.tests.ae
swift    swift/.tests.ae
dmd      d/.tests.ae
TOOLCHAINS
    [ -n "$skipped" ] && say "skipping (toolchain absent):$skipped"
fi

# Build all targets in one aeb invocation: current aeb builds every positional
# target as one DAG (independent nodes run concurrently) and exits non-zero if
# any leaf fails — verified on aeb v0.219-4-ge76afd1. (Older aeb built only the
# first target and could exit 0 on a failed leaf; if you see only one thing
# build, `make install` a current aeb.)
# shellcheck disable=SC2086  # word-splitting the sniffed target list is intentional
say "aeb $targets"
if ! aeb $targets; then
    cat >&2 <<EOF

aeb reported a failure above. Common causes:
  - A '--emit=lib ... recompile with -fPIC' link error means a stale pre-0.182
    ae. Reinstall the pinned one:  AETHER_REF=$AE_FETCH $0
  - A binding's toolchain is present but too old / mismatched (e.g. a JDK newer
    than kotlinc/groovyc support), or a test runner is missing (pytest, rspec).
    Build a known-good subset:  $0 core/.build.ae
EOF
    exit 1
fi
say "done."
