#!/usr/bin/env bash
# Bruno-import demo: hydrate a Bruno collection into a Servirtium tape, then
# replay it with the real service switched off.
#
#   ./bruno_import_demo/run-demo.sh
#
# Needs: aeb bruno_import_demo/.build.ae (CLI + Aether service), and curl.
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
CLI="$ROOT/target/servirtium"
SERVICE="$ROOT/target/widget-service"
TAPE="${TAPE:-$HERE/widgets.md}"

[ -x "$CLI" ] && [ -x "$SERVICE" ] || { echo "build the demo first: aeb bruno_import_demo/.build.ae" >&2; exit 1; }

cleanup() { [ -n "${SVC:-}" ] && kill "$SVC" 2>/dev/null || true
            [ -n "${REPLAY:-}" ] && kill "$REPLAY" 2>/dev/null || true; }
trap cleanup EXIT

echo "==> 1. start the contrived widget service (Aether)"
"$SERVICE" > "$HERE/.port" 2>/dev/null &
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
printf '    GET    /widgets    -> '; curl --fail-with-body -s http://127.0.0.1:8131/widgets; echo
printf '    POST   /widgets    -> '; curl --fail-with-body -s -X POST -H 'Content-Type: application/json' \
  --data-binary '{
    "name": "flange",
    "colour": "blue"
  }' http://127.0.0.1:8131/widgets; echo
printf '    PUT    /widgets/2  -> '; curl --fail-with-body -s -X PUT -H 'Content-Type: application/json' \
  --data-binary '{
    "colour": "green"
  }' http://127.0.0.1:8131/widgets/2; echo
printf '    DELETE /widgets/2  -> '; curl --fail-with-body -s -X DELETE http://127.0.0.1:8131/widgets/2; echo
printf '    GET    /widgets.xml -> '; curl --fail-with-body -s http://127.0.0.1:8131/widgets.xml; echo
printf '    POST   /widgets.xml -> '; curl --fail-with-body -s -X POST -H 'Content-Type: application/xml' \
  --data-binary '<widget><name>grommet</name><colour>amber</colour></widget>' \
  http://127.0.0.1:8131/widgets.xml; echo

echo "==> done — those six responses came from $TAPE, not from the service"
