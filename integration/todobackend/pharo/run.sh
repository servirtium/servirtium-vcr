#!/usr/bin/env bash
# Run the TodoBackend Mocha suite in real headless Chrome via Parasol (Pharo's
# Selenium WebDriver client) against a Pharo-hosted Servirtium VCR.
#
#   ./run.sh playback     # offline: replay the committed tape (CI artifact)
#   ./run.sh record       # forward to TODOBACKEND_UPSTREAM and (re)record
#
# Mirrors the Python harness, but drives Chrome from Pharo. The wiring is:
#
#     Pharo image (Servirtium + Parasol)  ->  Selenium Server (/wd/hub)  ->  chromedriver  ->  Chrome
#
# Parasol talks the WebDriver protocol over /wd/hub to a Selenium *Server* — it
# does NOT speak to chromedriver directly (chromedriver serves /session, not
# /wd/hub). So this script starts a `selenium-server standalone` (backed by the
# cached chromedriver) on an ephemeral port and tears it down afterwards. This
# is exactly how Parasol's own CI drives Chrome.
#
# We never mutate the developer's base image: a fresh copy is loaded under
# build/ each run (Servirtium from ../../../pharo/src, Parasol from GitHub).
#
# Env overrides:
#   PHARO_DIR             Pharo VM + Pharo.image dir   (default $HOME/.local/pharo)
#   SELENIUM_SERVER_JAR   selenium-server standalone jar (Selenium 4.x).
#                         Default: $HOME/.cache/selenium/selenium-server.jar
#   SERVIRTIUM_VCR_LIB    the native engine .so (required; set by the .ae leaf)
#   TODOBACKEND_UPSTREAM  (record only) live SUT base URL
set -euo pipefail

PHASE="${1:-playback}"
HERE="$(cd "$(dirname "$0")" && pwd)"
BASE="$(cd "$HERE/.." && pwd)"            # integration/todobackend — suite/ + tapes/ live here
PHARO_DIR="${PHARO_DIR:-$HOME/.local/pharo}"
SELENIUM_SERVER_JAR="${SELENIUM_SERVER_JAR:-$HOME/.cache/selenium/selenium-server.jar}"

say() { printf '\033[1;36m==>\033[0m %s\n' "$*"; }
die() { printf '\033[1;31merror:\033[0m %s\n' "$*" >&2; exit 1; }

[ -x "$PHARO_DIR/pharo" ]      || die "Pharo VM not found at '$PHARO_DIR/pharo' (set PHARO_DIR)."
[ -f "$PHARO_DIR/Pharo.image" ] || die "Pharo.image not found in '$PHARO_DIR' (set PHARO_DIR)."
[ -f "$SELENIUM_SERVER_JAR" ]  || die "Selenium server jar missing: $SELENIUM_SERVER_JAR (set SELENIUM_SERVER_JAR)."
[ -n "${SERVIRTIUM_VCR_LIB:-}" ] || die "set SERVIRTIUM_VCR_LIB to the native engine .so"
command -v java >/dev/null     || die "java not found (needed for the Selenium server)."

DRIVER="$(find "$HOME/.cache/selenium" -name chromedriver -type f 2>/dev/null | head -1)"
[ -n "$DRIVER" ] || die "cached chromedriver not found under ~/.cache/selenium."

export SERVIRTIUM_TAPES_DIR="$BASE/tapes"
export TODOBACKEND_SUITE="$BASE/suite"
export TODOBACKEND_TAPE="$BASE/tapes/todobackend_crud.md"

# ---- fresh image copy + load Servirtium and Parasol ----
BUILD="$HERE/build"
mkdir -p "$BUILD"
cp -f "$PHARO_DIR/Pharo.image" "$BUILD/Tb.image"
cp -f "$PHARO_DIR/Pharo.changes" "$BUILD/Tb.changes" 2>/dev/null || true
for src in "$PHARO_DIR"/*.sources; do
  [ -e "$src" ] && ln -sf "$src" "$BUILD/$(basename "$src")"
done
run_pharo() { "$PHARO_DIR/pharo" "$BUILD/Tb.image" "$@"; }

say "loading Servirtium (../../../pharo/src) + Parasol core into a throwaway image"
run_pharo eval --save "
[ Metacello new baseline: 'Servirtium';
    repository: 'tonel://', '$HERE/../../../pharo/src'; load: 'core'.
  Metacello new baseline: 'Parasol';
    repository: 'github://SeasideSt/Parasol:master/repository'; load: 'core'.
  'LOADED' ] on: Error do: [ :e |
    Stdio stdout nextPutAll: 'LOAD FAILED: '; nextPutAll: e messageText; lf.
    Smalltalk exitFailure ]
" || die "Metacello load (Servirtium + Parasol) failed."

# ---- Selenium server on an ephemeral port, backed by the cached chromedriver ----
SELENIUM_PORT="$(python3 -c 'import socket; s=socket.socket(); s.bind(("127.0.0.1",0)); print(s.getsockname()[1]); s.close()')"
export SELENIUM_PORT
say "starting Selenium server on :$SELENIUM_PORT (driver: $DRIVER)"
java -jar "$SELENIUM_SERVER_JAR" standalone \
  --port "$SELENIUM_PORT" --selenium-manager false \
  -I chrome >"$BUILD/selenium.out" 2>"$BUILD/selenium.err" &
SE_PID=$!
cleanup() { kill "$SE_PID" >/dev/null 2>&1 || true; }
trap cleanup EXIT

ready=0
for _ in $(seq 1 40); do
  if curl -fsS -o /dev/null "http://127.0.0.1:$SELENIUM_PORT/wd/hub/status" 2>/dev/null; then ready=1; break; fi
  sleep 1
done
[ "$ready" -eq 1 ] || die "Selenium server never became ready on :$SELENIUM_PORT (see $BUILD/selenium.err)."

# ---- run the requested phase: file in the shared harness, then the program ----
case "$PHASE" in
  playback) PROG="$HERE/playback.st" ;;
  record)   PROG="$HERE/record.st" ;;
  *) die "unknown phase '$PHASE' (use playback|record)" ;;
esac

say "running $PHASE"
run_pharo eval "
'$HERE/harness.st' asFileReference readStreamDo: [ :s | Smalltalk compiler evaluate: s upToEnd ].
'$PROG' asFileReference readStreamDo: [ :s | Smalltalk compiler evaluate: s upToEnd ].
"
