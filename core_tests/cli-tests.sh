#!/usr/bin/env bash
# Black-box tests for the standalone `servirtium` CLI (core/cli.ae):
# serve (MatchMultiple default + --ordered), check (+ --canonical), and the
# HAR import/export round-trip — all driven through the built binary with
# curl, the way a user would. Needs `ae` on PATH (builds the CLI if aeb's
# core/.cli.ae hasn't already) and curl.
set -uo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
BIN="target/servirtium"
PORT=18131
GOLDEN="go/example/tapes/single_get.md"

if [ ! -x "$BIN" ]; then
  mkdir -p target
  ae build core/cli.ae -o "$BIN" >target/cli-build.log 2>&1 \
    || { echo "FAIL: cannot build CLI (see target/cli-build.log)"; exit 1; }
fi

TMP="$(mktemp -d)"
SRV_PID=""
cleanup() { [ -n "$SRV_PID" ] && kill "$SRV_PID" 2>/dev/null; rm -rf "$TMP"; }
trap cleanup EXIT

pass=0; fail=0
ok()  { pass=$((pass+1)); echo "  ok: $1"; }
bad() { fail=$((fail+1)); echo "  FAIL: $1"; }

# Start `servirtium serve $1...` in the background and wait until it answers.
serve_bg() {
  "$BIN" serve "$@" >"$TMP/serve.log" 2>&1 &
  SRV_PID=$!
  for _ in $(seq 1 50); do
    curl -s -o /dev/null "http://127.0.0.1:$PORT/__probe__" && return 0
    kill -0 "$SRV_PID" 2>/dev/null || { cat "$TMP/serve.log"; return 1; }
    sleep 0.1
  done
  return 1
}
serve_stop() { [ -n "$SRV_PID" ] && kill "$SRV_PID" 2>/dev/null; wait "$SRV_PID" 2>/dev/null; SRV_PID=""; }

echo "=== servirtium CLI tests ==="

# ---- check ----
if "$BIN" check "$GOLDEN" >/dev/null 2>&1; then
  ok "check: golden tape parses"
else
  bad "check: golden tape should parse"
fi

if "$BIN" check --canonical "$GOLDEN" >/dev/null 2>&1; then
  ok "check --canonical: golden tape is emitter-canonical"
else
  bad "check --canonical: golden tape should be canonical"
fi

printf 'this is not a servirtium tape\n' >"$TMP/garbage.md"
if "$BIN" check "$TMP/garbage.md" >/dev/null 2>&1; then
  bad "check: garbage file should fail"
else
  ok "check: garbage file fails (exit 1)"
fi

# Loose spacing (blank line after each fence — other implementations' style):
# lenient parse accepts it, --canonical rejects it.
awk '{print} /^```$/{print ""}' "$GOLDEN" >"$TMP/loose.md"
if "$BIN" check "$TMP/loose.md" >/dev/null 2>&1; then
  ok "check: loose-spacing tape still parses (lenient)"
else
  bad "check: loose-spacing tape should parse"
fi
if "$BIN" check --canonical "$TMP/loose.md" >/dev/null 2>&1; then
  bad "check --canonical: loose-spacing tape should fail"
else
  ok "check --canonical: loose-spacing tape fails"
fi

# Mixed list: one good + one bad -> exit 1 (any failure fails the run)
if "$BIN" check "$GOLDEN" "$TMP/garbage.md" >/dev/null 2>&1; then
  bad "check: good+bad list should exit 1"
else
  ok "check: good+bad list exits 1"
fi

# ---- serve (default: MatchMultiple — repeatable) ----
if serve_bg "$GOLDEN" "$PORT"; then
  b1="$(curl -s "http://127.0.0.1:$PORT/ok")"
  b2="$(curl -s "http://127.0.0.1:$PORT/ok")"
  if [ "$b1" = "ok-body" ] && [ "$b2" = "ok-body" ]; then
    ok "serve: /ok answers repeatedly (MatchMultiple default)"
  else
    bad "serve: expected ok-body twice, got '$b1' / '$b2'"
  fi
else
  bad "serve: server did not come up"
fi
serve_stop

# ---- serve --ordered (strict: consumed once, then 599) ----
if serve_bg "$GOLDEN" "$PORT" --ordered; then
  b1="$(curl -s "http://127.0.0.1:$PORT/ok")"
  s2="$(curl -s -o /dev/null -w '%{http_code}' "http://127.0.0.1:$PORT/ok")"
  if [ "$b1" = "ok-body" ] && [ "$s2" = "599" ]; then
    ok "serve --ordered: first /ok ok-body, second 599 (tape exhausted)"
  else
    bad "serve --ordered: expected ok-body then 599, got '$b1' then status $s2"
  fi
else
  bad "serve --ordered: server did not come up"
fi
serve_stop

# ---- serve with a comma-separated tape list (concatenated) ----
# Second tape: the golden with path/body renamed (same canonical shape).
sed 's|/ok|/two|; s|ok-body|two-body|' "$GOLDEN" >"$TMP/two.md"

# Default mode: union k/v store — both tapes answer, repeatably.
if serve_bg "$GOLDEN,$TMP/two.md" "$PORT"; then
  b1="$(curl -s "http://127.0.0.1:$PORT/ok")"
  b2="$(curl -s "http://127.0.0.1:$PORT/two")"
  b3="$(curl -s "http://127.0.0.1:$PORT/ok")"
  if [ "$b1" = "ok-body" ] && [ "$b2" = "two-body" ] && [ "$b3" = "ok-body" ]; then
    ok "serve a,b: union store — /ok and /two both answer, repeatably"
  else
    bad "serve a,b: got '$b1' '$b2' '$b3', wanted ok-body two-body ok-body"
  fi
else
  bad "serve a,b: server did not come up"
fi
serve_stop

# Ordered mode: one long script — a's interactions then b's, each consumed once.
if serve_bg "$GOLDEN,$TMP/two.md" "$PORT" --ordered; then
  b1="$(curl -s "http://127.0.0.1:$PORT/ok")"
  b2="$(curl -s "http://127.0.0.1:$PORT/two")"
  s3="$(curl -s -o /dev/null -w '%{http_code}' "http://127.0.0.1:$PORT/two")"
  if [ "$b1" = "ok-body" ] && [ "$b2" = "two-body" ] && [ "$s3" = "599" ]; then
    ok "serve a,b --ordered: concatenated script — /ok, /two, then 599"
  else
    bad "serve a,b --ordered: got '$b1' '$b2' status $s3, wanted ok-body two-body 599"
  fi
else
  bad "serve a,b --ordered: server did not come up"
fi
serve_stop

# A bad tape anywhere in the list refuses to start.
if serve_bg "$GOLDEN,$TMP/garbage.md" "$PORT"; then
  bad "serve a,garbage: should refuse to start"
else
  ok "serve a,garbage: refuses to start (bad tape in list)"
fi
serve_stop

# ---- import / export (HAR bridge, absorbed from servirtium-har) ----
cat >"$TMP/mini.har" <<'HAR'
{"log":{"version":"1.2","entries":[{"request":{"method":"GET","url":"http://x/ok","headers":[]},"response":{"status":200,"headers":[{"name":"Content-Type","value":"text/plain"}],"content":{"mimeType":"text/plain","text":"ok-body"}}}]}}
HAR
if "$BIN" import "$TMP/mini.har" "$TMP/imported.md" >/dev/null 2>&1; then
  ok "import: HAR -> tape"
  if "$BIN" check --canonical "$TMP/imported.md" >/dev/null 2>&1; then
    ok "import: imported tape is emitter-canonical"
  else
    bad "import: imported tape should be canonical"
  fi
  # Full circle: serve the imported tape, curl it.
  if serve_bg "$TMP/imported.md" "$PORT"; then
    b="$(curl -s "http://127.0.0.1:$PORT/ok")"
    if [ "$b" = "ok-body" ]; then
      ok "serve: imported tape replays (HAR -> tape -> serve -> curl)"
    else
      bad "serve: imported tape gave '$b', wanted ok-body"
    fi
  else
    bad "serve: imported tape server did not come up"
  fi
  serve_stop
  if "$BIN" export "$TMP/imported.md" "$TMP/roundtrip.har" >/dev/null 2>&1 \
     && [ -s "$TMP/roundtrip.har" ]; then
    ok "export: tape -> HAR"
  else
    bad "export: tape -> HAR failed"
  fi
else
  bad "import: HAR -> tape failed"
fi

# ---- usage / bad args ----
"$BIN" >/dev/null 2>&1; [ $? -eq 2 ] && ok "no args -> usage, exit 2" || bad "no args should exit 2"
"$BIN" frobnicate >/dev/null 2>&1; [ $? -eq 2 ] && ok "unknown command -> exit 2" || bad "unknown command should exit 2"
"$BIN" serve "$GOLDEN" notaport >/dev/null 2>&1; [ $? -eq 2 ] && ok "bad port -> exit 2" || bad "bad port should exit 2"

echo "cli-tests: $pass passed, $fail failed"
[ "$fail" -eq 0 ] || exit 1
