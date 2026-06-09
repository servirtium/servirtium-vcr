#!/bin/sh
# Compile the Lua 5.4 C extension (csrc/servirtium.c) into servirtium_native.so,
# linking the shared Aether VCR engine with an embedded rpath so the .so is
# found at runtime without LD_LIBRARY_PATH.
#
# Usage: ./build.sh [CORE_NATIVE_DIR]
#   CORE_NATIVE_DIR defaults to ../core/native (the monorepo dev layout).
set -e

DIR="$(cd "$(dirname "$0")" && pwd)"
CORE="${1:-$DIR/../core/native}"
CORE="$(cd "$CORE" && pwd)"

cc -O2 -shared -fPIC $(pkg-config --cflags lua5.4) \
   "$DIR/csrc/servirtium.c" \
   -L"$CORE" -lservirtium_vcr -Wl,-rpath,"$CORE" \
   -o "$DIR/servirtium_native.so"

echo "built $DIR/servirtium_native.so (linked $CORE/libservirtium_vcr.so)"
