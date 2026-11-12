#!/usr/bin/env bash
# Fail during the bundle build if any native dependency is missing. Link every
# target; execute only a matching host target. No Swift SDK is needed for this
# C ABI check (the published SwiftPM check still exercises the Swift wrapper).
set -euo pipefail
AE_TARGET="${1:?usage: check-static-library.sh <ae-target> <zig-target> <archive> <workdir>}"
ZIG_TARGET="${2:?missing zig target}"
ARCHIVE="${3:?missing archive}"
WORK="${4:?missing workdir}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$WORK"
libraries=()
case "$AE_TARGET" in
  *-linux) libraries=(-lm -lpthread -ldl) ;;
  *-macos) ;;
  *) echo "static consumer: unsupported target $AE_TARGET" >&2; exit 1 ;;
esac
if ! zig cc -target "$ZIG_TARGET" -O2 \
    -I "$ROOT/swift/Sources/CServirtiumVcr/include" \
    "$ROOT/release/static-consumer.c" "$ARCHIVE" "${libraries[@]}" \
    -o "$WORK/consumer" > "$WORK/link.log" 2>&1; then
  cat "$WORK/link.log" >&2
  echo "static consumer: $AE_TARGET failed to link" >&2
  exit 1
fi
echo "static consumer: $AE_TARGET linked"
case "$(uname -s):$(uname -m):$AE_TARGET" in
  Linux:x86_64:x86_64-linux|Linux:aarch64:aarch64-linux|Darwin:arm64:aarch64-macos|Darwin:x86_64:x86_64-macos)
    "$WORK/consumer" "$ROOT/swift/example/tapes/single_get.md" \
      "$ROOT/bruno_import_demo/collection" "$WORK/converted"
    ;;
esac
