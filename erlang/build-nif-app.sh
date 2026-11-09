#!/bin/sh
# Build the BEAM family's native pieces from a prebuilt release library, no Aether needed:
#   DEST/servirtium_nif/{ebin,priv}   the shared NIF OTP app (libservirtium_vcr beside the NIF,
#                                      $ORIGIN / @loader_path rpath, so the app is relocatable)
#   DEST/servirtium_erl/ebin          the Erlang `servirtium` module (Hex: servirtium_erl)
# Elixir (`servirtium`), Gleam (`servirtium_gleam`) and LFE (`servirtium_lfe`) all use the
# servirtium_nif app; only Erlang users need servirtium_erl.
#
#   VER=v2.0.0-alpha.14 sh build-nif-app.sh ./beam-libs
#   SRC=main VER=v2.0.0-alpha.14 sh build-nif-app.sh ./beam-libs   # sources from another ref
#   LIB=/path/to/libservirtium_vcr.so sh build-nif-app.sh ./beam-libs   # use a local library
#
# VER  release tag whose libservirtium_vcr asset to download (default: SERVIRTIUM_VCR_VERSION on main)
# SRC  tag/branch the NIF C source and Erlang sources come from (default: VER), or a
#      local checkout directory
# LIB  a local libservirtium_vcr (.so/.dylib); skips the download
# Needs: erl, erlc, cc, curl (and sha256sum or shasum). Prints the ERL_LIBS value to use.
set -eu

DEST="${1:?usage: build-nif-app.sh DEST_DIR}"
RAW="${RAW:-https://raw.githubusercontent.com/servirtium/servirtium-vcr}"
VER="${VER:-$(curl -fsSL $RAW/main/SERVIRTIUM_VCR_VERSION)}"
SRC="${SRC:-$VER}"

case "$(uname -s)-$(uname -m)" in
  Linux-x86_64)  P=linux-x86_64; E=so ;;
  Linux-aarch64) P=linux-arm64;  E=so ;;
  Darwin-arm64)  P=macos-arm64;  E=dylib ;;
  Darwin-x86_64) P=macos-x86_64; E=dylib ;;
  *) echo "unsupported platform $(uname -s)-$(uname -m): build from the release assets by hand" >&2; exit 1 ;;
esac

mkdir -p "$DEST"
DEST="$(cd "$DEST" && pwd)"
APP="$DEST/servirtium_nif"
EAPP="$DEST/servirtium_erl"
rm -rf "$APP" "$EAPP"
mkdir -p "$APP/ebin" "$APP/priv" "$EAPP/ebin"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

if [ -n "${LIB:-}" ]; then
  cp "$LIB" "$APP/priv/libservirtium_vcr.$E"
else
  REL=https://github.com/servirtium/servirtium-vcr/releases/download/$VER
  ASSET=libservirtium_vcr-$VER-$P.$E
  curl -fsSL -o "$WORK/$ASSET" "$REL/$ASSET"
  curl -fsSL -o "$WORK/$ASSET.sha256" "$REL/$ASSET.sha256"
  ( cd "$WORK" && { sha256sum -c "$ASSET.sha256" >/dev/null 2>&1 || shasum -a 256 -c "$ASSET.sha256" >/dev/null; } ) \
    || { echo "checksum mismatch for $ASSET" >&2; exit 1; }
  cp "$WORK/$ASSET" "$APP/priv/libservirtium_vcr.$E"
fi

for f in c_src/servirtium_nif.c src/servirtium_nif.erl src/servirtium.erl src/servirtium_nif.app src/servirtium_erl.app; do
  if [ -d "$SRC/erlang" ]; then cp "$SRC/erlang/$f" "$WORK/"
  else curl -fsSL -o "$WORK/$(basename "$f")" "$RAW/$SRC/erlang/$f"; fi
done

ERTS_INC="$(erl -noshell -eval 'io:format("~s/usr/include",[code:root_dir()]),halt()')"
if [ "$E" = dylib ]; then
  cc -O2 -std=c11 -fPIC -Wno-unused-parameter -I"$ERTS_INC" -shared -undefined dynamic_lookup \
     "$WORK/servirtium_nif.c" -L"$APP/priv" -lservirtium_vcr -Wl,-rpath,@loader_path \
     -o "$APP/priv/servirtium_nif.so"
else
  cc -O2 -std=c11 -fPIC -Wno-unused-parameter -I"$ERTS_INC" -shared \
     "$WORK/servirtium_nif.c" -L"$APP/priv" -lservirtium_vcr -Wl,-rpath,'$ORIGIN' \
     -o "$APP/priv/servirtium_nif.so"
fi
erlc -o "$APP/ebin" "$WORK/servirtium_nif.erl"
erlc -o "$EAPP/ebin" "$WORK/servirtium.erl"
cp "$WORK/servirtium_nif.app" "$APP/ebin/"
cp "$WORK/servirtium_erl.app" "$EAPP/ebin/"

echo "built $APP and $EAPP"
echo "ERL_LIBS=$DEST"
