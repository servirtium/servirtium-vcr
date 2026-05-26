#!/usr/bin/env bash
# Record the TodoBackend CRUD tape: bring the Kotlin/http4k SUT up in a
# container, run the Mocha spec through a record-mode VCR (Selenium), flush the
# tape, tear the container down. Manual / on-demand — NOT an aeb node (a normal
# build must never spin a container or need the sibling SUT source).
#
#   ./record.sh          # builds the SUT image if absent, records the tape
#
# Pending an aeb "manual node" primitive (see aeb/manual-node-on-demand-wish.md),
# this stays a shell script; once aeb can mark a node on-demand, it becomes a
# first-class aeb container-orchestration node.
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/../.." && pwd)"                 # servirtium-vcr/
LIB="$ROOT/core/native/libservirtium_vcr.so"
IMAGE="todobackend-sut:latest"
SUT_SRC="${TODOBACKEND_SRC:-$ROOT/../todobackend-for-compatibility-kit}"
NAME="tbsut-rec"
VCR_PORT=51080
BE_PORT=54321

ENGINE="$(command -v podman || command -v docker)"
[ -n "$ENGINE" ] || { echo "record: need podman or docker"; exit 1; }

[ -f "$LIB" ] || { echo "record: missing $LIB — run 'aeb core/.build.ae' first"; exit 1; }

if ! "$ENGINE" image exists "$IMAGE" >/dev/null 2>&1; then
  echo "record: building $IMAGE from $SUT_SRC"
  [ -d "$SUT_SRC" ] || { echo "record: SUT source not at $SUT_SRC (set TODOBACKEND_SRC)"; exit 1; }
  "$ENGINE" build -t "$IMAGE" -f "$HERE/Containerfile.sut" "$SUT_SRC"
fi

cleanup() { "$ENGINE" rm -f "$NAME" >/dev/null 2>&1 || true; }
trap cleanup EXIT
cleanup

# UP: the SUT's baseUrl is the VCR origin, so the todo URLs it returns point
# back at the VCR (and get recorded) rather than straight at the backend.
"$ENGINE" run -d --name "$NAME" -p "${BE_PORT}:8000" \
  --entrypoint /app/bin/http4k-todo-backend "$IMAGE" \
  8000 "http://127.0.0.1:${VCR_PORT}" >/dev/null

ready=0
for _ in $(seq 1 50); do
  if curl -fsS -o /dev/null "http://127.0.0.1:${BE_PORT}/" 2>/dev/null; then ready=1; break; fi
  sleep 0.3
done
[ "$ready" = 1 ] || { echo "record: SUT never healthy on :${BE_PORT}"; exit 1; }
echo "record: SUT up on :${BE_PORT}"

SERVIRTIUM_VCR_LIB="$LIB" PYTHONPATH="$ROOT/python:$HERE" \
  TODOBACKEND_UPSTREAM="http://127.0.0.1:${BE_PORT}" \
  python3 "$HERE/record.py"
