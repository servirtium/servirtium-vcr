#!/usr/bin/env bash
# Cross-build the Servirtium core lib (libservirtium_vcr) for the release matrix from ONE host,
# and emit each artifact with a .sha256 — ready for out-of-band on-target
# attestation (run the binding suite on real hardware and attest a hash).
#
# libservirtium_vcr is pure Aether (+ a ~12-line C string bridge). Each triple is
# built by ONE `aeb core/.build.ae` run with SVCR_TARGET set: aeb's
# aether.shared_lib(){target()} cross-compiles via `ae build --target` (zig cc,
# no per-OS runner) and aether.emit_binary_package(){target()} stages the matching
# `ae add` binary-package asset in the SAME pass — so one method yields BOTH the
# raw FFI lib and the ae-add package per triple (no hand-synthesis, no drift; the
# builder owns the trio format). Output name: libservirtium_vcr-<tag>-<os>-<arch>.<ext>
# GNU and musl ae-add assets keep distinct identities (aeb v0.330 + ae 0.838).
# (.so linux / .dylib macos / .dll windows). Alongside each: <artifact>.sha256, a
# combined release/dist/SHA256SUMS.txt, and release/dist/ae-add/ (the `ae add` set).
# Needs aeb >= v0.319 (its emit_binary_package target() cross-emit + the 0.681
# libaether floor-guard).
#
# libservirtium_vcr ONLY — this deliberately ships the one thing that is hard for a user to
# produce: the native shared library, per OS/CPU. It does NOT build the
# per-language packages (wheel / gem / jar / nupkg / …) — those are the
# `.package.ae` nodes' job and a registry/credentialed concern, out of scope here.
#
# Usage:
#   release/build.sh                    # linux glibc/musl + macos x86_64/arm64
#   RELEASE_EXTRA_TARGETS=1 release/build.sh   # + windows (slow) + freebsd-x86_64
#                                                (freebsd auto-picks a per-arch base
#                                                 from CROSSBUILD_BASES; skips if absent)
#   RELEASE_TAG=v1.2.3 release/build.sh  # stamp the tag into artifact names
#                                          (default: `git describe`, else "dev")
#   TARGETS="aarch64-macos" release/build.sh   # override the matrix entirely
set -uo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
# shellcheck disable=SC1091
. "$HERE/targets.env"
cd "$ROOT"

export PATH="${AETHER_HOME:+$AETHER_HOME/bin:}${PREFIX:-$HOME/.local}/bin:$HOME/.aether/bin:$PATH"

say()  { printf 'release: %s\n' "$*"; }
die()  { printf 'release: %s\n' "$*" >&2; exit 1; }
have() { command -v "$1" >/dev/null 2>&1; }

have ae  || die "ae not on PATH — install the pinned toolchain (see ../bootstrap.sh / ../README.md)"
have aeb || die "aeb not on PATH — install the pinned toolchain (see ../bootstrap.sh / ../README.md)"
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
# ae-add/ holds the `ae add`-installable binary-package set (one asset per triple
# + one shared aether.toml). aeb's emit_binary_package produces these directly;
# the loop copies each triple's ae-add output here as it builds.
AEADD="$DIST/ae-add"; mkdir -p "$AEADD"

# FreeBSD cross needs an ARCH-SPECIFIC base sysroot: sys/_ucontext.h pulls the
# arch's <machine/ucontext.h> (where mcontext_t lives), so an x86_64 base cannot
# satisfy an aarch64 target and vice-versa. `ae build` reads the base from the
# AETHER_SYSROOT env var, so we must point it at the RIGHT base per target arch,
# not share one value across the whole matrix.
#   CROSSBUILD_BASES : dir holding <cpu>-freebsd<ver> base sysroots
#                      (default: aether-crossbuild's bases/)
#   FREEBSD_VER      : FreeBSD major used in the base dir name (default 15)
# An explicit AETHER_SYSROOT in the environment still wins (single-target use),
# but for a multi-arch run leave it unset and let this resolve per target.
CROSSBUILD_BASES="${CROSSBUILD_BASES:-$HOME/scm/aether-crossbuild/bases}"
FREEBSD_VER="${FREEBSD_VER:-15}"
# echo the base-sysroot path for a freebsd triple, or empty if none is present.
freebsd_base_of() {
  case "$1" in
    aarch64-*) _cpu=aarch64 ;;
    x86_64-*)  _cpu=x86_64 ;;
    *) echo ""; return ;;
  esac
  _b="$CROSSBUILD_BASES/${_cpu}-freebsd${FREEBSD_VER}"
  [ -d "$_b" ] && echo "$_b" || echo ""
}

# triple -> {os, arch, extension} for the artifact name.
os_of()  { case "$1" in *-linux|*-linux-musl) echo linux;; *-macos) echo macos;; *-windows) echo windows;; *-freebsd) echo freebsd;; *) echo unknown;; esac; }
arch_of(){ case "$1" in aarch64-*) echo arm64;; x86_64-*) echo x86_64;; *) echo "$1";; esac; }
ext_of() { case "$1" in *-macos) echo dylib;; *-windows) echo dll;; *) echo so;; esac; }

say "core lib: libservirtium_vcr  tag: $TAG"
say "matrix: $MATRIX"
echo

built=0; failed=0; packaged=0
for t in $MATRIX; do
  os=$(os_of "$t"); arch=$(arch_of "$t"); ext=$(ext_of "$t")
  variant=""
  case "$t" in *-linux-musl) variant="-musl" ;; esac
  name="libservirtium_vcr-${TAG}-${os}-${arch}${variant}.${ext}"
  out="$DIST/$name"
  log="$DIST/.$t.log"

  # FreeBSD needs an ARCH-SPECIFIC base sysroot. Resolve it per target: an
  # explicit AETHER_SYSROOT wins (single-target use), else pick the base matching
  # THIS target's arch. Skip loudly if none is present — never fall back to a
  # different-arch base (that yields the `mcontext_t` mismatch).
  TARGET_SYSROOT=""
  if [ "$os" = "freebsd" ]; then
    TARGET_SYSROOT="${AETHER_SYSROOT:-$(freebsd_base_of "$t")}"
    if [ -z "$TARGET_SYSROOT" ]; then
      say "SKIP $t — no ${arch} FreeBSD base sysroot (looked in $CROSSBUILD_BASES for *-freebsd${FREEBSD_VER}; see aether-crossbuild)"
      continue
    fi
  fi

  printf 'release:   %-18s -> %s ... ' "$t" "$name"
  # ONE aeb run per triple: core/.build.ae reads SVCR_TARGET and runs
  #   aether.shared_lib(){ size() target(t) }         -> the cross lib (--size)
  #   aether.emit_binary_package(){ stem() target(t) } -> matching ae-add asset
  # AEB_RELEASE_TAG stamps the ae-add asset name; AETHER_SYSROOT (per-arch base
  # for freebsd, empty otherwise) is scoped to this run — emit only READS the
  # built .so so it inherits the sysroot cleanly. The cross build leaves the lib
  # at target/build/core/lib/ (name cross-mangled: libservirtium_vcr.so for
  # linux/freebsd, .so.dll for windows, .so.dylib for macos) and the ae-add trio
  # under target/build/core/ae-add/. Clean per-triple so nothing leaks between
  # targets (a prior triple's ae-add/ would otherwise be re-collected).
  rm -rf "$ROOT/target/build/core/ae-add" "$ROOT/target/build/core/lib"
  if ( cd "$ROOT" \
       && export SVCR_TARGET="$t" AEB_RELEASE_TAG="$TAG" AETHER_SYSROOT="$TARGET_SYSROOT" \
       && aeb core/.build.ae ) >"$log" 2>&1; then
    # Collect the raw FFI lib (the on-disk name is cross-mangled; find it).
    libdir="$ROOT/target/build/core/lib"
    src=""
    for cand in "$libdir/libservirtium_vcr.${ext}" "$libdir/libservirtium_vcr.so.${ext}" "$libdir/libservirtium_vcr.so"; do
      [ -f "$cand" ] && { src="$cand"; break; }
    done
    if [ -z "$src" ]; then
      printf 'FAILED\n'; say "  built but no lib found under $libdir"; failed=$((failed+1)); continue
    fi
    cp "$src" "$out" || die "could not stage $name"
    ( cd "$DIST" && sha256sum "$name" > "$name.sha256" ) || die "could not checksum $name"
    # Windows also emits an import library (<dll>.lib) — ship it (a consumer that
    # LINKS the DLL at build time needs it; our FFI bindings dlopen and don't).
    if [ "$os" = "windows" ]; then
      [ -s "$libdir/libservirtium_vcr.so.lib" ] || die "missing Windows import library for $t"
      cp "$libdir/libservirtium_vcr.so.lib" "$out.lib" || die "could not stage Windows import library for $t"
      ( cd "$DIST" && sha256sum "$name.lib" > "$name.lib.sha256" ) || die "could not checksum Windows import library for $t"
    fi
    # Collect this triple's ae-add asset trio (aeb named it in the ae-add
    # <os>-<arch> spelling automatically; aether.toml is identical each run).
    cp "$ROOT/target/build/core/ae-add/"servirtium_vcr-* "$AEADD/" || die "missing ae-add assets for $t"
    cp "$ROOT/target/build/core/ae-add/aether.toml" "$AEADD/" || die "missing ae-add manifest for $t"
    packaged=$((packaged+1))
    printf 'ok  (%s)\n' "$(file -b "$out" 2>/dev/null | cut -c1-42)"
    built=$((built+1))
    rm -f "$log"
  else
    printf 'FAILED\n'
    sed 's/^/release:     /' "$log" | grep -iE 'error|fatal|os_arch_raw|older than' | head -3
    failed=$((failed+1))
  fi
done

echo
# A combined checksum manifest over the engine libraries (not the .sha256
# sidecars). Named SHA256SUMS.txt so a browser renders it inline. Generated
# here so the --engine-only pre-check below (which reads this manifest) sees it;
# it is REGENERATED after the binding packages so the jar + nupkg join it.
( cd "$DIST" && sha256sum ./*.so ./*.dylib ./*.dll ./*.dll.lib 2>/dev/null > SHA256SUMS.txt || true )

# The ae-add set (per-triple assets + .sha256 + aether.toml) was produced by
# aeb's emit_binary_package and collected in the loop above — no post-processing.
if [ "$built" -gt 0 ] && [ -f "$AEADD/aether.toml" ]; then
  say "staged ae-add/ binary-package set ($packaged triple(s) + aether.toml) for \`ae add\`"
fi

# ---- official multi-platform binding packages (opt-in) ----------------------
# SCOPE: ONLY the fat Java jar and the multi-RID .NET nupkg. svcr deliberately
# does NOT ship ruby/python/js/crystal/julia binding packages from here (core +
# ae-add only — see release/README.md); this widens the release for exactly the
# two multi-platform packages a consumer cannot easily assemble themselves.
#
# Gated on RELEASE_BINDING_PACKAGES=1 so a normal `release/build.sh` is unchanged.
# The fat jar embeds the SIX verified glibc/macos/windows release libraries (via
# core/.releaseJarMatrix.ae, overriding java's core/.build.ae dep). The nupkg is
# built from the hand-written multi-TFM dotnet/Servirtium.Vcr/Servirtium.Vcr.pkg.csproj
# (net8.0 + net48, so a legacy .NET Framework 4.8 consumer works alongside modern
# .NET) with all EIGHT NuGet RIDs staged from release/dist — see the nupkg block
# below. The in-repo dev build / tests / fsharp are unaffected (they use the
# aeb-generated net8.0 csproj).
if [ "${RELEASE_BINDING_PACKAGES:-0}" = "1" ]; then
  have aeb || die "RELEASE_BINDING_PACKAGES=1 requires aeb"
  # Validate the raw release libraries before any package is allowed to embed
  # one (proves the Linux C ABI exports too). Engine mode verifies the libs
  # and ae-add set without demanding the jar/nupkg yet.
  ( cd "$ROOT" && SVCR_RELEASE_TAG="$TAG" SVCR_ARTIFACTS_MODE=engine aeb release/.artifacts.ae ) || die "engine artifact verification failed"

  # -- the fat multi-platform Java jar (mvn, via java/.package.ae) --
  say "building the fat multi-platform Java jar (6 natives) …"
  if ( cd "$ROOT" && RELEASE_BINDING_PACKAGES=1 AEB_PER_NODE=0 aeb \
         java/.package.ae \
         --overrideDep core/.build.ae=core/.releaseJarMatrix.ae ) >"$DIST/.jar.log" 2>&1; then
    # maven.install writes the jar to java/target/; its name carries the pom
    # version (2.0.0-alpha2), not the git tag. Stage the main jar (not
    # -sources/-javadoc) with a .sha256.
    jar=""
    for cand in "$ROOT"/java/target/servirtium-vcr-*.jar; do
      case "$cand" in *-sources.jar|*-javadoc.jar) continue ;; esac
      [ -f "$cand" ] && { jar="$cand"; break; }
    done
    [ -n "$jar" ] || die "fat jar not found under java/target/"
    cp "$jar" "$DIST/" || die "could not stage $(basename "$jar")"
    ( cd "$DIST" && sha256sum "$(basename "$jar")" > "$(basename "$jar").sha256" ) \
      || die "could not checksum $(basename "$jar")"
    say "  jar: $(basename "$jar") ($(du -h "$jar" | cut -f1)) staged + .sha256"
    rm -f "$DIST/.jar.log"
  else
    tail -80 "$DIST/.jar.log" >&2
    die "fat Java jar build failed — see $DIST/.jar.log"
  fi

  # -- the multi-TFM, multi-RID .NET nupkg (dotnet pack, hand-written csproj) --
  say "building the multi-TFM, multi-RID .NET nupkg (net8.0 + net48, 8 RIDs) …"
  # The shipped nupkg is built from the HAND-WRITTEN multi-target packaging
  # project dotnet/Servirtium.Vcr/Servirtium.Vcr.pkg.csproj (net8.0;net48 — two
  # DLLs, one package, so a legacy .NET Framework 4.8 consumer works alongside
  # modern .NET). aeb's dotnet SDK only emits a single <TargetFramework>, so this
  # one leaf uses dotnet pack directly. The in-repo dev build/tests/fsharp are
  # unaffected — they still use the aeb-generated net8.0 csproj.
  #
  # Stage the 8 verified release libraries into dotnet/Servirtium.Vcr/native/<rid>/
  # where the pkg.csproj's <None> globs read them (same dirs .releaseBuild.ae used).
  if ( set -e
       cd "$ROOT"
       # Relative to $ROOT (we just cd'd there), so an empty var can never make
       # this an absolute path like /native.
       rm -rf dotnet/Servirtium.Vcr/native
       stage_rid() { # <release-dist-name> <rid> <packaged-name>
         local src="$DIST/$1" rid="$2" name="$3"
         [ -f "$src" ] || { echo "release NuGet library missing: $src" >&2; return 1; }
         mkdir -p "dotnet/Servirtium.Vcr/native/$rid"
         cp "$src" "dotnet/Servirtium.Vcr/native/$rid/$name"
       }
       stage_rid "libservirtium_vcr-$TAG-linux-x86_64.so"       linux-x64        libservirtium_vcr.so
       stage_rid "libservirtium_vcr-$TAG-linux-arm64.so"        linux-arm64      libservirtium_vcr.so
       stage_rid "libservirtium_vcr-$TAG-linux-x86_64-musl.so"  linux-musl-x64   libservirtium_vcr.so
       stage_rid "libservirtium_vcr-$TAG-linux-arm64-musl.so"   linux-musl-arm64 libservirtium_vcr.so
       stage_rid "libservirtium_vcr-$TAG-macos-x86_64.dylib"    osx-x64          libservirtium_vcr.dylib
       stage_rid "libservirtium_vcr-$TAG-macos-arm64.dylib"     osx-arm64        libservirtium_vcr.dylib
       stage_rid "libservirtium_vcr-$TAG-windows-x86_64.dll"    win-x64          servirtium_vcr.dll
       stage_rid "libservirtium_vcr-$TAG-windows-arm64.dll"     win-arm64        servirtium_vcr.dll
       dotnet pack dotnet/Servirtium.Vcr/Servirtium.Vcr.pkg.csproj -c Release \
         -o target/dist/dotnet/Servirtium.Vcr/nupkg --nologo
     ) >"$DIST/.nupkg.log" 2>&1; then
    # dotnet pack writes the .nupkg under target/dist/dotnet/Servirtium.Vcr/nupkg/.
    nupkgdir="$ROOT/target/dist/dotnet/Servirtium.Vcr/nupkg"
    [ -d "$nupkgdir" ] || die "nupkg output directory missing: $nupkgdir"
    found=0
    for nupkg in "$nupkgdir"/*.nupkg; do
      [ -f "$nupkg" ] || continue
      cp "$nupkg" "$DIST/" || die "could not stage $(basename "$nupkg")"
      ( cd "$DIST" && sha256sum "$(basename "$nupkg")" > "$(basename "$nupkg").sha256" ) \
        || die "could not checksum $(basename "$nupkg")"
      say "  nupkg: $(basename "$nupkg") ($(du -h "$nupkg" | cut -f1)) staged + .sha256"
      found=$((found+1))
    done
    [ "$found" -gt 0 ] || die "no .nupkg produced in $nupkgdir"
    rm -f "$DIST/.nupkg.log"
  else
    tail -80 "$DIST/.nupkg.log" >&2
    die "multi-RID .NET nupkg build failed — see $DIST/.nupkg.log"
  fi
fi

# Regenerate the combined manifest so the jar + nupkg ride it too (a no-op
# re-list of the engine libs when RELEASE_BINDING_PACKAGES is unset — the glob
# simply finds no .jar/.nupkg). SHA256SUMS.txt is thus always complete.
( cd "$DIST" && sha256sum ./*.so ./*.dylib ./*.dll ./*.dll.lib ./*.jar ./*.nupkg 2>/dev/null > SHA256SUMS.txt || true )

say "built $built libservirtium_vcr artifact(s) into release/dist/ ($failed failed)"
[ "$built" -gt 0 ] || die "no artifacts built"
[ "$failed" -eq 0 ] || die "$failed target(s) failed — see release/dist/.<triple>.log"
