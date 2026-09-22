#!/usr/bin/env bash
# Bruno-import demo: hydrate a Bruno collection into a Servirtium tape, then
# replay it with the real service switched off.
#
#   ./bruno_import_demo/run-demo.sh
#
# Needs: python3 (stdlib only) + a built ./target/servirtium (aeb core/.cli.ae).
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
CLI="$ROOT/target/servirtium"
TAPE="${TAPE:-$HERE/widgets.md}"

[ -x "$CLI" ] || { echo "build the CLI first:  aeb core/.cli.ae" >&2; exit 1; }

cleanup() { [ -n "${SVC:-}" ] && kill "$SVC" 2>/dev/null || true
            [ -n "${REPLAY:-}" ] && kill "$REPLAY" 2>/dev/null || true; }
trap cleanup EXIT

echo "==> 1. start the contrived widget service (python3, stdlib only)"
python3 "$HERE/service.py" > "$HERE/.port" 2>/dev/null &
SVC=$!
sleep 2
PORT="$(head -1 "$HERE/.port")"
echo "    listening on 127.0.0.1:$PORT"

echo "==> 2. hydrate the Bruno collection into a tape (makes REAL calls)"
rm -f "$TAPE"
"$CLI" import-bru "$HERE/collection" "http://127.0.0.1:$PORT" "$TAPE"

echo "==> 3. lint the tape"
"$CLI" check --canonical "$TAPE"

echo "==> 4. stop the real service — everything below is replay"
kill "$SVC" 2>/dev/null || true; SVC=""
sleep 1

echo "==> 5. replay the tape"
"$CLI" serve "$TAPE" 8131 >/dev/null 2>&1 &
REPLAY=$!
sleep 2
printf '    GET    /widgets    -> '; curl -s http://127.0.0.1:8131/widgets; echo
printf '    POST   /widgets    -> '; curl -s -X POST -H 'Content-Type: application/json' \
  --data-binary '{
    "name": "flange",
    "colour": "blue"
  }' http://127.0.0.1:8131/widgets; echo
printf '    PUT    /widgets/2  -> '; curl -s -X PUT -H 'Content-Type: application/json' \
  --data-binary '{
    "colour": "green"
  }' http://127.0.0.1:8131/widgets/2; echo
printf '    DELETE /widgets/2  -> '; curl -s -X DELETE http://127.0.0.1:8131/widgets/2; echo

echo "==> done — those four responses came from $TAPE, not from python"
