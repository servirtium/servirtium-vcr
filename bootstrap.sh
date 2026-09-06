#!/usr/bin/env bash
# One-command casual-dev bootstrap for the servirtium-vcr monorepo.
#
# Ensures the Aether toolchain (`ae`) and the build runner (`aeb`) are present
# and recent enough, then runs `aeb` to build the native VCR engine, the Go
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

# ---- Aether pin: two numbers on two clocks (pattern borrowed from the aeb
# repo's AETHER_PIN / AETHER_FETCH files — see ../aeb for the long rationale).
#
#   AE_PIN    is a FLOOR: the oldest ae that can compile this repo's engine.
#             An already-installed ae >= AE_PIN is accepted as-is (no fetch).
#             Move it ONLY when the code starts using a primitive an older
#             ae lacks, in the same commit — never speculatively.
#             Current evidence: core/vcr.ae uses std.encoding.base64_decode,
#             which moved there (as a string! error-union) in ae 0.413.
#   AE_FETCH  is the KNOWN-GOOD release get.sh installs when the floor is
#             not met. MUST be >= AE_PIN. Bump it deliberately after a
#             successful build+test on the new release — a newer number is
#             not automatically better, it is another thing to have tested.
#             Aether cuts releases fast; do not chase HEAD by hand.
AE_PIN="0.413.0"
AE_FETCH="v0.645.0"    # verified: engine + CLI + core_tests 4/4 + cli-tests 18/18
                       # + go/rust/js/java/dotnet(13/13) + erlang/elixir/gleam
                       # (OTP 27, Elixir 1.20.4) bindings + climate/svn integration
                       # green on 0.645.0. (The earlier 0.643 ratchet first tripped
                       # a latent Interaction-struct under-alloc in core/vcr.ae — a
                       # real heap bug, not a toolchain regression; fixed by
                       # malloc(sizeof(T)) and valgrind-clean since.)
# aeb floor: the Shape A (b-free bldr.build{}) leaves in this repo need
# aeb >= 0.297. install.sh fetches latest, which satisfies that; an older
# aeb already on PATH fails loudly on `import bldr` rather than silently.

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
# whole tree — that builds all 21 bindings and is guaranteed to fail on any box
# lacking a toolchain (every box). Instead, sniff which language toolchains are
# present and build only those leaves. `core` (the native engine) always
# builds: it needs only `ae` + a C compiler, which we just ensured.
#
# Table rows: "<command-to-probe> <leaf-to-build>". If the command is on PATH,
# the leaf is added; otherwise it's skipped (and reported). The gating command
# is the binding's compiler/runtime, matched to each leaf's language module.
if [ "$#" -gt 0 ]; then
    targets="$*"
else
    targets="core/.build.ae core/.cli.ae"  # always — engine + CLI need only ae + cc
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
