#!/usr/bin/env bash
#
# Honest runner for the D binding's playback facts: compile-and-run
# tests/playback_test.d with the binding module and the engine .so linked in,
# and exit with the compiler/test exit code.
#
# Why a shell script instead of aeb's `d.test()` builder: d.test runs
# `dmd … -run <file> 2>&1 | tee <log>`, and a shell pipeline reports the exit
# status of its LAST command — so tee's 0 masks both a dmd compile error and a
# failing test, and the leaf goes green on a red suite. That was observed here:
# this binding did not compile at all (an extern(C) function-pointer linkage
# error) and `aeb d/.tests.ae` still reported "1/1 PASS". `bash.test` runs
# `bash <script>` directly, so the exit code below is the one aeb sees.
# (Same root cause as aeb's cpp.tests; see cpp/.tests.ae.)
set -euo pipefail

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
d_dir="$(dirname "$here")"
# The engine .so as core/.build.ae stages it next to the source tree — the same
# fixed relative path the go binding's cgo LDFLAGS bake in.
native="$(cd "$d_dir/../core/native" && pwd)"

cd "$d_dir"
exec dmd -Isrc \
    -L-L"$native" -L-lservirtium_vcr -L-rpath -L"$native" \
    src/servirtium/package.d \
    -run tests/playback_test.d
