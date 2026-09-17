#!/usr/bin/env bash
# Cross-build the engine (libservirtium_vcr) for the release matrix from ONE host,
# and emit each artifact with a .sha256 — ready for out-of-band on-target
# attestation (run the binding suite on real hardware and attest a hash).
#
# libservirtium_vcr is pure Aether (+ a ~12-line C string bridge); `ae build
# --target=<triple>` cross-compiles via zig cc, no per-OS runner. Output name:
# libservirtium_vcr-<tag>-<os>-<arch>.<ext> (.so linux / .dylib macos / .dll
# windows). Alongside each: <artifact>.sha256, and a combined
# release/dist/SHA256SUMS.txt.
#
# libservirtium_vcr ONLY — this deliberately ships the one thing that is hard for a user to
# produce: the native shared library, per OS/CPU. It does NOT build the
# per-language packages (wheel / gem / jar / nupkg / …) — those are the
# `.package.ae` nodes' job and a registry/credentialed concern, out of scope here.
#
# Usage:
#   release/build.sh                    # core matrix (linux+macos x86_64/arm64)
#   RELEASE_EXTRA_TARGETS=1 release/build.sh   # + windows (slow) + freebsd (needs sysroot)
#   RELEASE_TAG=v1.2.3 release/build.sh  # stamp the tag into artifact names
#                                          (default: `git describe`, else "dev")
#   TARGETS="aarch64-macos" release/build.sh   # override the matrix entirely
set -uo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
# shellcheck disable=SC1091
. "$HERE/targets.env"
cd "$ROOT"

export PATH="${PREFIX:-$HOME/.local}/bin:$HOME/.aether/bin:$PATH"

say()  { printf 'release: %s\n' "$*"; }
die()  { printf 'release: %s\n' "$*" >&2; exit 1; }
have() { command -v "$1" >/dev/null 2>&1; }

have ae  || die "ae not on PATH — install the pinned toolchain (see ../bootstrap.sh / ../README.md)"
have zig || die "zig not on PATH — required for cross-compilation (ae build --target)"
have sha256sum || die "sha256sum required to checksum artifacts"

TAG="${RELEASE_TAG:-$(git describe --tags --always 2>/dev/null || echo dev)}"

# Resolve the matrix.
if [ -n "${TARGETS:-}" ]; then
  MATRIX="$TARGETS"
else
  MATRIX="$RELEASE_TARGETS"
  [ "${RELEASE_EXTRA_TARGETS:-0}" = "1" ] && MATRIX="$MATRIX $RELEASE_EXTRA_TARGETS_LIST"
fi

DIST="$ROOT/release/dist"
rm -rf "$DIST"; mkdir -p "$DIST"

# triple -> {os, arch, extension} for the artifact name.
os_of()  { case "$1" in *-linux|*-linux-musl) echo linux;; *-macos) echo macos;; *-windows) echo windows;; *-freebsd) echo freebsd;; *) echo unknown;; esac; }
arch_of(){ case "$1" in aarch64-*) echo arm64;; x86_64-*) echo x86_64;; *) echo "$1";; esac; }
ext_of() { case "$1" in *-macos) echo dylib;; *-windows) echo dll;; *) echo so;; esac; }

say "engine: libservirtium_vcr  tag: $TAG"
say "matrix: $MATRIX"
echo

built=0; failed=0
for t in $MATRIX; do
  os=$(os_of "$t"); arch=$(arch_of "$t"); ext=$(ext_of "$t")
  name="libservirtium_vcr-${TAG}-${os}-${arch}.${ext}"
  out="$DIST/$name"
  log="$DIST/.$t.log"

  # FreeBSD needs a base sysroot; skip loudly rather than fail if it's absent.
  if [ "$os" = "freebsd" ] && [ -z "${AETHER_SYSROOT:-}" ]; then
    say "SKIP $t — set AETHER_SYSROOT to a FreeBSD base sysroot (see aether-crossbuild)"
    continue
  fi

  printf 'release:   %-18s -> %s ... ' "$t" "$name"
  # --with=fs,net mirrors core/.build.ae's caps("fs,net") — libservirtium_vcr's HTTP
  #   server/client (net) + tape file I/O (fs). --extra is the ~12-line
  #   caller-owned-string C bridge (core/_embed_strdup.c), given as an ABSOLUTE
  #   path: ae's cross path (--target) does not resolve a relative --extra from
  #   CWD (the native path was forgiving; an absolute path builds on every
  #   target). --size strips. Built from core/ so `import vcr` resolves.
  if ( cd "$ROOT/core" \
       && ae build --emit=lib --with=fs,net --size --target="$t" \
            embed.ae --extra "$ROOT/core/_embed_strdup.c" -o "$out" ) >"$log" 2>&1; then
    ( cd "$DIST" && sha256sum "$name" > "$name.sha256" )
    # Windows emits an import library (<dll>.lib) beside the DLL — needed only by
    # a consumer that LINKS the DLL at build time (our FFI bindings dlopen at
    # runtime and don't need it, but ship it so Windows is first-class). Checksum
    # it too.
    if [ "$os" = "windows" ] && [ -f "$out.lib" ]; then
      ( cd "$DIST" && sha256sum "$name.lib" > "$name.lib.sha256" )
    fi
    printf 'ok  (%s)\n' "$(file -b "$out" 2>/dev/null | cut -c1-42)"
    built=$((built+1))
    rm -f "$log"
  else
    printf 'FAILED\n'
    sed 's/^/release:     /' "$log" | grep -iE 'error|fatal' | head -3
    # A failed cross build can leave partial output in dist/ (a half-written
    # <out>, and ae's generated <out>.c when the C stage errored) — remove it so
    # a later --no-build publish, or a human, never mistakes debris for an
    # artifact. The .log is KEPT on failure (the else branch), unlike success.
    rm -f "$out" "$out.c" "$out.lib"
    failed=$((failed+1))
  fi
done

echo
# A combined checksum manifest over every artifact (not the .sha256 sidecars).
# Named SHA256SUMS.txt so a browser renders it inline (no forced download).
( cd "$DIST" && sha256sum ./*.so ./*.dylib ./*.dll ./*.dll.lib 2>/dev/null > SHA256SUMS.txt || true )

say "built $built libservirtium_vcr artifact(s) into release/dist/ ($failed failed)"
[ "$built" -gt 0 ] || die "no artifacts built"
[ "$failed" -eq 0 ] || die "$failed target(s) failed — see release/dist/.<triple>.log"
