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
#     aether: https://raw.githubusercontent.com/aether-lang-org/aether/main/get.sh
#     aeb:    https://raw.githubusercontent.com/aether-lang-org/aeb/main/install.sh
#
# Idempotent: a no-op for the toolchain when `ae`/`aeb` are already good.
# Requires `curl` to install them; no build-from-source fallback.
#
# Env overrides:
#   PREFIX        install prefix                 (default: $HOME/.local; no sudo)
#   AETHER_REF    ae tag/branch/SHA to install   (default: latest tag) — pin in CI
#   AEB_REF       aeb tag/branch/SHA to install  (default: latest tag) — pin in CI
#   MIN_AE        minimum acceptable ae version  (default: 0.183.0)
#   AEB_TIMEOUT   passed through to aeb (seconds)  (optional)
# Extra args pass through to `aeb` (e.g. ./bootstrap.sh .tests.ae).
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
PREFIX="${PREFIX:-$HOME/.local}"; export PREFIX
MIN_AE="${MIN_AE:-0.183.0}"
AETHER_GET_URL="https://raw.githubusercontent.com/aether-lang-org/aether/main/get.sh"
AEB_INSTALL_URL="https://raw.githubusercontent.com/aether-lang-org/aeb/main/install.sh"

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

# ---- 1. Aether toolchain (ae) ----
if command -v ae >/dev/null 2>&1 && have="$(ae_version || true)" && [ -n "$have" ] && version_ge "$have" "$MIN_AE"; then
    say "ae $have already on PATH (>= $MIN_AE) — skipping"
else
    say "installing ae via get.sh (AETHER_REF=${AETHER_REF:-latest}, PREFIX=$PREFIX)"
    AETHER_REF="${AETHER_REF:-}" fetch_run "$AETHER_GET_URL" || die "ae install failed (get.sh)."
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
case ":$PATH:" in *":$PREFIX/bin:"*) : ;; *) say "tip: add '$PREFIX/bin' to your shell PATH permanently";; esac
say "running aeb (native engine -> Go binding -> tests -> up_poke_down demo)"
cd "$HERE"
if ! aeb "$@"; then
    rc=$?
    cat >&2 <<EOF

aeb failed (exit $rc). Common first-build cause:
  A '--emit=lib ... recompile with -fPIC' link error means a stale pre-0.182
  ae. Reinstall a current one, then re-run:  AETHER_REF=v0.184.0 $0
EOF
    exit $rc
fi
say "done."
