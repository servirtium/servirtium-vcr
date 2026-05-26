#!/usr/bin/env bash
# Load the Tonel src/ into a throwaway copy of the Pharo image and run the
# Servirtium-Tests SUnit suite HEADLESS, exiting non-zero on any failure or
# error. This is the bar for the binding.
#
# We never mutate the developer's base image: we work on a fresh copy under
# build/ so repeated runs are deterministic. The native engine and tape
# resources are located via env vars (SERVIRTIUM_VCR_LIB / SERVIRTIUM_TAPES_DIR)
# so the binding finds them regardless of where this repo lives.
#
# Env overrides:
#   PHARO_DIR   directory holding the `pharo` VM + Pharo.image
#               (default: $HOME/.local/pharo)
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
PHARO_DIR="${PHARO_DIR:-$HOME/.local/pharo}"

say() { printf '\033[1;36m==>\033[0m %s\n' "$*"; }
die() { printf '\033[1;31merror:\033[0m %s\n' "$*" >&2; exit 1; }

[ -x "$PHARO_DIR/pharo" ] || die "Pharo VM not found at '$PHARO_DIR/pharo' (set PHARO_DIR)."
[ -f "$PHARO_DIR/Pharo.image" ] || die "Pharo.image not found in '$PHARO_DIR' (set PHARO_DIR)."

LIB="${SERVIRTIUM_VCR_LIB:-$HERE/native/libservirtium_vcr.so}"
[ -f "$LIB" ] || die "native engine missing: $LIB (run ./build-native.sh)."

export SERVIRTIUM_VCR_LIB="$LIB"
export SERVIRTIUM_TAPES_DIR="$HERE/src/Servirtium-Tests/tapes"

# ---- fresh image copy under build/ ----
BUILD="$HERE/build"
mkdir -p "$BUILD"
cp -f "$PHARO_DIR/Pharo.image" "$BUILD/Servirtium.image"
cp -f "$PHARO_DIR/Pharo.changes" "$BUILD/Servirtium.changes" 2>/dev/null || true
# The .sources file lives next to the VM; point the copy at it via a symlink.
for src in "$PHARO_DIR"/*.sources; do
  [ -e "$src" ] && ln -sf "$src" "$BUILD/$(basename "$src")"
done

run_pharo() { "$PHARO_DIR/pharo" "$BUILD/Servirtium.image" "$@"; }

# ---- 1. load the Tonel project via the Metacello baseline ----
say "loading src/ (BaselineOfServirtium, tests group) into the image"
run_pharo eval --save "
[ Metacello new
	baseline: 'Servirtium';
	repository: 'tonel://', '$HERE/src';
	load: 'tests'.
'LOADED' ] on: Error do: [ :e |
	Stdio stdout nextPutAll: 'LOAD FAILED: '; nextPutAll: e messageText; lf.
	Smalltalk exitFailure ]
" || die "Metacello load failed."

# ---- 2. run the suite headless, fail the process on any failure/error ----
say "running Servirtium-Tests headless"
run_pharo eval "
| suite result |
suite := TestSuite named: 'Servirtium-Tests'.
(Smalltalk at: #SystemNavigation) default
	allClasses
	select: [ :c | c category = 'Servirtium-Tests' and: [ c inheritsFrom: TestCase ] ]
	thenDo: [ :c | c isAbstract ifFalse: [ suite addTests: c buildSuiteFromSelectors tests ] ].
result := suite run.
Stdio stdout
	nextPutAll: 'TESTS run='; print: result runCount;
	nextPutAll: ' passed='; print: result passedCount;
	nextPutAll: ' failures='; print: result failureCount;
	nextPutAll: ' errors='; print: result errorCount; lf.
result failures do: [ :t |
	Stdio stdout nextPutAll: 'FAILURE: '; nextPutAll: t printString; lf ].
result errors do: [ :t |
	Stdio stdout nextPutAll: 'ERROR: '; nextPutAll: t printString; lf ].
(result failureCount + result errorCount) > 0
	ifTrue: [ Smalltalk exitFailure ]
	ifFalse: [ Stdio stdout nextPutAll: 'ALL GREEN'; lf ].
Smalltalk exitSuccess
" && status=0 || status=$?
if [ "${status:-1}" -eq 0 ]; then
  say "all tests passed"
else
  die "test run reported failures/errors (exit ${status:-1})."
fi
