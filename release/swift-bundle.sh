#!/usr/bin/env bash
# Build the SwiftPM artifact bundle that the root Package.swift's binaryTarget
# downloads: servirtium-vcr-swift-<tag>.artifactbundle.zip (+ .sha256).
#
# WHY A STATIC-LIBRARY ARTIFACT BUNDLE (and not an XCFramework, or the .so/.dylib)
# - SwiftPM refuses unsafeFlags (-L/-rpath) in a dependency resolved by version,
#   so `from:` needs the native core to arrive as a binaryTarget.
# - An XCFramework is Apple-only. SwiftPM's artifact bundle can carry a C
#   STATIC library for any platform since Swift 6.2 (SE-0482, type
#   "staticLibrary", one variant per target triple with its headers and module
#   map). Dynamic libraries are not supported in an artifact bundle (SE-0482
#   lists them as a future direction), so the bundle holds .a archives.
# - SE-0482 is written for non-Apple platforms, but SwiftPM applies it on macOS
#   too (verified with Swift 6.4 / Xcode 27: the macOS variants link and replay).
#   So ONE bundle serves macOS (arm64, x86_64) and Linux glibc (x86_64, arm64),
#   from ONE manifest, with no per-platform target conditions.
# - A static archive needs no rpath and no install location: the core is linked
#   into the consumer's binary. Its only undefined symbols are libc / libm /
#   libpthread / libdl (Aether's runtime is inside the archive; no openssl or
#   zlib), which SE-0482 requires and which the manifest links by name.
#
# Not in the bundle: Linux musl (would need the Swift Static Linux SDK to verify;
# triples x86_64-swift-linux-musl / aarch64-swift-linux-musl), Windows, FreeBSD.
# Those consumers use the source form (SERVIRTIUM_VCR_LIB_DIR + branch:).
#
# HOW: `ae build --emit=staticlib --target <triple>` (zig cc; the cross path is
# the only one that emits a static archive) archives the program and the whole
# Aether runtime into one .a. It does NOT include --extra C files (ae 0.897.0:
# the staticlib path archives only the program object and the runtime objects),
# so core/_embed_strdup.c is compiled with zig cc for the same triple and added
# with zig ar. Each variant is checked for that member before the bundle is zipped.
#
# The zip is not bit-reproducible (the archives carry build paths), so its
# checksum is only known once it is built. The release workflow therefore writes
# the checksum into Package.swift AFTER publishing it, on a commit of its own
# tagged with the bare semver tag SwiftPM resolves; see release/README.md.
#
# Usage: release/swift-bundle.sh <tag> <outdir>
#   e.g. release/swift-bundle.sh v2.0.0-alpha.14 release/dist
# Needs ae (the release pin), zig, zip (or python3) and a sha256 tool.
set -euo pipefail

TAG="${1:?usage: swift-bundle.sh <tag> <outdir>}"
OUT="${2:?usage: swift-bundle.sh <tag> <outdir>}"
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
mkdir -p "$OUT"
OUT="$(cd "$OUT" && pwd)"

die() { printf 'swift-bundle: %s\n' "$*" >&2; exit 1; }
command -v ae  >/dev/null || die "ae not on PATH"
command -v zig >/dev/null || die "zig not on PATH"
command -v zip >/dev/null || command -v python3 >/dev/null || die "zip (or python3) not on PATH"
sha256() { if command -v sha256sum >/dev/null; then sha256sum "$@"; else shasum -a 256 "$@"; fi; }

SEMVER="${TAG#v}"
NAME="servirtium-vcr-swift-${TAG}.artifactbundle.zip"
WORK="$(mktemp -d "${TMPDIR:-/tmp}/svcr-swift-bundle.XXXXXX")"
trap 'rm -rf "$WORK"' EXIT
BUNDLE="$WORK/servirtium_vcr.artifactbundle"
mkdir -p "$BUNDLE/include"

# macOS deployment target. ae passes zig an unversioned `-target
# <cpu>-macos-none`, and zig's default minimum then depends on the HOST: 13.0
# on a Mac, 15.0 on the Linux release runner (measured, zig 0.16.0), and zig
# ignores -mmacosx-version-min and MACOSX_DEPLOYMENT_TARGET for it. Only a
# versioned triple (`aarch64-macos.13.0-none`) sets it. ae 0.897.0 has no
# option for this (AETHER_IOS_MIN exists for iOS only), so a `zig` shim first
# on PATH rewrites the macOS triple for this script's builds alone. It must
# match `platforms: [.macOS(.v13)]` in Package.swift. Remove the shim when ae
# can take a macOS deployment target.
MACOS_MIN=13.0
REAL_ZIG="$(command -v zig)"
mkdir -p "$WORK/zigshim"
cat > "$WORK/zigshim/zig" <<SHIM
#!/bin/sh
n=\$#
while [ "\$n" -gt 0 ]; do
  a=\$1; shift; n=\$((n - 1))
  case "\$a" in *-macos-none) a="\${a%-none}.$MACOS_MIN-none" ;; esac
  set -- "\$@" "\$a"
done
exec "$REAL_ZIG" "\$@"
SHIM
chmod +x "$WORK/zigshim/zig"
export PATH="$WORK/zigshim:$PATH"

# ae target | zig triple (for the bridge) | bundle dir | SwiftPM triple
VARIANTS="
aarch64-macos aarch64-macos-none macos-arm64  arm64-apple-macosx
x86_64-macos  x86_64-macos-none  macos-x86_64 x86_64-apple-macosx
x86_64-linux  x86_64-linux-gnu   linux-x86_64 x86_64-unknown-linux-gnu
aarch64-linux aarch64-linux-gnu  linux-arm64  aarch64-unknown-linux-gnu
"

json_variants=""
while read -r aet zt dir triple; do
  [ -n "$aet" ] || continue
  mkdir -p "$BUNDLE/$dir"
  lib="$BUNDLE/$dir/libservirtium_vcr.a"
  log="$WORK/$dir.log"
  printf 'swift-bundle:   %-14s -> %s ... ' "$aet" "$dir/libservirtium_vcr.a"
  # Same flags as core/.build.ae's release shared_lib (caps + --size).
  ( cd "$ROOT/core" && ae build embed.ae --emit=staticlib --with=fs,net,os,extern \
      --size --target "$aet" -o "$lib" ) >"$log" 2>&1 \
    || { echo FAILED; tail -30 "$log" >&2; die "static build failed for $aet"; }
  zig cc -target "$zt" -Os -fPIC -c "$ROOT/core/_embed_strdup.c" -o "$WORK/$dir-embed_strdup.o" \
    || die "compiling the string bridge for $zt failed"
  zig ar rs "$lib" "$WORK/$dir-embed_strdup.o" || die "adding the string bridge for $aet failed"
  # The bridge object must be a member now, and the C ABI in the archive's
  # symbol index (portable checks: zig ar lists members, and the index is text).
  zig ar t "$lib" | grep -qx "$dir-embed_strdup.o" \
    || { echo FAILED; die "$dir: the string bridge is not in the archive"; }
  LC_ALL=C grep -aq aether_vcr_embed_open_playback "$lib" \
    || { echo FAILED; die "$dir: the C ABI is not in the archive"; }
  echo ok
  [ -n "$json_variants" ] && json_variants="$json_variants,"
  json_variants="$json_variants
        {
          \"path\": \"$dir/libservirtium_vcr.a\",
          \"supportedTriples\": [\"$triple\"],
          \"staticLibraryMetadata\": {
            \"headerPaths\": [\"include\"],
            \"moduleMapPath\": \"include/module.modulemap\"
          }
        }"
done <<EOF
$VARIANTS
EOF

# The same header the in-tree systemLibrary uses; the module map is the
# bundle's own (no `link` lines: the manifest links libm/libpthread/libdl).
cp "$ROOT/swift/Sources/CServirtiumVcr/include/servirtium_vcr.h" "$BUNDLE/include/"
cat > "$BUNDLE/include/module.modulemap" <<'EOF'
// libservirtium_vcr's flat C ABI (aether_vcr_embed_*), as the Swift module
// CServirtiumVcr: the binaryTarget the root Package.swift downloads.
module CServirtiumVcr {
    header "servirtium_vcr.h"
    export *
}
EOF
# The artifact name must equal the binaryTarget name in Package.swift.
cat > "$BUNDLE/info.json" <<EOF
{
  "schemaVersion": "1.0",
  "artifacts": {
    "CServirtiumVcr": {
      "version": "$SEMVER",
      "type": "staticLibrary",
      "variants": [$json_variants
      ]
    }
  }
}
EOF

rm -f "$OUT/$NAME" "$OUT/$NAME.sha256"
# Sorted entries and no extra attributes, so the listing is stable.
if command -v zip >/dev/null; then
  ( cd "$WORK" && find servirtium_vcr.artifactbundle -print | LC_ALL=C sort | zip -q -X -@ "$OUT/$NAME" ) \
    || die "zipping the bundle failed"
else
  ( cd "$WORK" && python3 -I -c '
import os, sys, zipfile
with zipfile.ZipFile(sys.argv[1], "w", zipfile.ZIP_DEFLATED) as z:
    for d, dirs, files in os.walk("servirtium_vcr.artifactbundle"):
        dirs.sort()
        z.write(d)
        for f in sorted(files): z.write(os.path.join(d, f))
' "$OUT/$NAME" ) || die "zipping the bundle failed"
fi
( cd "$OUT" && sha256 "$NAME" > "$NAME.sha256" )
printf 'swift-bundle: %s (%s) sha256 %s\n' "$NAME" "$(du -h "$OUT/$NAME" | cut -f1)" "$(cut -d' ' -f1 "$OUT/$NAME.sha256")"
