#!/usr/bin/env bash
# Build + run the Aether-level engine tests (test_vcr_*.ae) against the local
# engine source: each compiles `import core.vcr` (core/vcr.ae) and links the
# hand-written core/vcr.ae (pure Aether), producing a test binary whose
# exit code is pass/fail. Needs `ae` on PATH.
set -uo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
mkdir -p target/core_tests
pass=0; fail=0; failed=""
for t in core_tests/test_vcr_*.ae; do
  n="$(basename "$t" .ae)"
  if ae build "$t" -o "target/core_tests/$n" >"target/core_tests/$n.log" 2>&1 \
     && "target/core_tests/$n" >>"target/core_tests/$n.log" 2>&1; then
    pass=$((pass + 1))
  else
    fail=$((fail + 1)); failed="$failed $n"
  fi
done
echo "core_tests: $pass passed, $fail failed"
[ "$fail" -eq 0 ] || { echo "FAILED:$failed"; exit 1; }
