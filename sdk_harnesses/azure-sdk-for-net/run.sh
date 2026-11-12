#!/bin/sh
# The Azure SDK for .NET's own Azure.Storage.Blobs tests with Servirtium in
# the middle.
#
#   run.sh build              fetch the SDK at the pin (fetch.sh), build its
#                             Blobs test project with the harness added
#   run.sh record   [FILTER]  Azurite in a container (testcontainers-dotnet),
#                             every test's HTTP recorded to tapes/
#   run.sh direct   [FILTER]  Azurite, no Servirtium: which tests Azurite
#                             itself passes (the baseline for exclusions)
#   run.sh playback [FILTER]  no container and no engine: every test replays
#                             its tape
#   run.sh tamper TAPE TEST SED
#                             copy tapes/ to target/, edit TAPE there with
#                             the sed expression SED, play TEST back against
#                             the copy: it must fail
#   run.sh negative           every tamper in negative.txt
#
# FILTER is a dotnet test --filter expression; the default is every class in
# selection.txt, each in its own test process.
# Libraries come from the repo build: aeb dotnet/Servirtium.Vcr/.build.ae
# (or this directory's .build.ae) makes libservirtium_vcr.so first.
set -eu
H=$(cd "$(dirname "$0")" && pwd)
. "$H/env.sh"
ROOT=$(cd "$H/../.." && pwd)
cmd=${1:-}
[ $# -gt 0 ] && shift

selected_classes() {
    grep -v '^#' "$H/selection.txt" | grep -v '^[[:space:]]*$'
}

# Each selected class in its own test process (one process for them all
# grew past 16 GB of memory on the way through), then the totals.
run_selection() {
    mode=$1 tapes=$2
    fails=0
    for cls in $(selected_classes); do
        short=${cls##*.}
        echo "== $mode $short"
        run_tests "$mode" "$tapes" "FullyQualifiedName~$cls" "$mode-$short" || fails=$((fails + 1))
    done
    for k in Passed Failed Skipped; do
        n=$(cat "$T"/results-"$mode"-*.log | grep -E "^ *$k: " | awk '{s += $2} END {print s + 0}')
        echo "$mode total $k: $n"
    done
    [ "$fails" -eq 0 ]
}

run_tests() {
    mode=$1 tapes=$2 filter=$3 tag=$4
    export AZURE_TEST_MODE=Live
    export SERVIRTIUM_MODE="$mode" SERVIRTIUM_TAPES="$tapes" SERVIRTIUM_WORK="$T/work/$mode"
    export SERVIRTIUM_PORT="${SERVIRTIUM_PORT:-10170}"
    export SERVIRTIUM_VCR_LIB="${SERVIRTIUM_VCR_LIB:-$ROOT/target/build/core/lib/libservirtium_vcr.so}"
    export SERVIRTIUM_EXCLUDED="$H/excluded.txt:$H/excluded-by-hand.txt"
    export AZURITE_IMAGE AZSDK_COMMIT
    rm -rf "$T/results/$tag"
    # cd: run outside the SDK checkout, whose global.json asks for one exact
    # SDK feature band.
    cd "$H"
    set +e
    dotnet test "$BLOBS_TESTS_CSPROJ" --no-build -f "$TFM" \
        --filter "$filter" \
        --results-directory "$T/results/$tag" --logger "trx;LogFileName=$tag.trx" \
        --logger "console;verbosity=normal" \
        -- NUnit.NumberOfTestWorkers=1 > "$T/results-$tag.log" 2>&1
    rc=$?
    set -e
    tail -5 "$T/results-$tag.log"
    echo "log: $T/results-$tag.log"
    return $rc
}

# Copy tapes/ to target/, edit TAPE there with the sed expression, play
# TEST back against the copy: it must fail.
tamper() {
    tape=$1 test=$2 expr=$3
    rm -rf "$T/tampered" && mkdir -p "$T/tampered" && cp -R "$H/tapes/." "$T/tampered/"
    sed "$expr" "$H/tapes/$tape" > "$T/tampered/$tape"
    if cmp -s "$H/tapes/$tape" "$T/tampered/$tape"; then
        echo "tamper: '$expr' changed nothing in $tape" >&2
        return 2
    fi
    echo "tamper: $tape"
    diff "$H/tapes/$tape" "$T/tampered/$tape" | cut -c1-160 | sed 's/^/    /' || true
    if DOCKER_HOST=unix:///nonexistent/x.sock run_tests playback "$T/tampered" "$test" tamper; then
        echo "tamper: $test PASSED against an altered tape: playback proves nothing" >&2
        return 1
    fi
    grep -A1 'Error Message:' "$T/results-tamper.log" | grep -v 'Error Message:' | cut -c1-200 | sed 's/^ */    failed with: /'
    echo "tamper: $test failed against the altered tape, as it must"
}

case "$cmd" in
build)
    "$H/fetch.sh"
    cd "$H"
    dotnet build "$BLOBS_TESTS_CSPROJ" -f "$TFM" \
        -p:CustomAfterMicrosoftCommonTargets="$H/harness/Servirtium.AzureHarness.targets" \
        -p:RestoreConfigFile="$H/harness/NuGet.Config" \
        -p:TestcontainersAzuriteVersion="$TESTCONTAINERS_AZURITE_VERSION" \
        -p:RunAnalyzers=false -p:TreatWarningsAsErrors=false \
        > "$T/build.log" 2>&1 || { tail -40 "$T/build.log"; exit 1; }
    tail -3 "$T/build.log"
    ;;
record|direct)
    # testcontainers-dotnet finds Docker, or Podman through its Docker API
    # socket. Rootless Podman: point DOCKER_HOST at the user socket. Ryuk
    # (the reaper sidecar) is off; the harness disposes the container itself.
    if [ -z "${DOCKER_HOST:-}" ] && [ -S "/run/user/$(id -u)/podman/podman.sock" ]; then
        export DOCKER_HOST="unix:///run/user/$(id -u)/podman/podman.sock"
    fi
    export TESTCONTAINERS_RYUK_DISABLED=true
    rm -f "$T/work/$cmd/oversized.txt"
    if [ $# -gt 0 ]; then run_tests "$cmd" "$H/tapes" "$1" "$cmd"; else rm -f "$T"/results-"$cmd"-*.log; run_selection "$cmd" "$H/tapes"; fi
    ;;
playback)
    # No container engine: a stray attempt to reach one fails loudly.
    export DOCKER_HOST=unix:///nonexistent/servirtium-playback-needs-no-engine.sock
    if [ $# -gt 0 ]; then run_tests playback "$H/tapes" "$1" playback; else rm -f "$T"/results-playback-*.log; run_selection playback "$H/tapes"; fi
    ;;
tamper)
    tamper "$1" "$2" "$3"
    ;;
negative)
    # Each line of negative.txt: TAPE | TEST FILTER | SED. Every one must
    # make its test fail.
    grep -v '^#' "$H/negative.txt" | grep -v '^[[:space:]]*$' | while IFS='|' read -r tape test expr; do
        tape=$(echo "$tape" | sed 's/^ *//; s/ *$//')
        test=$(echo "$test" | sed 's/^ *//; s/ *$//')
        expr=$(echo "$expr" | sed 's/^ *//; s/ *$//')
        ( tamper "$tape" "$test" "$expr" ) || exit 1
    done
    ;;
*)
    sed -n '2,20p' "$0"
    exit 2
    ;;
esac
