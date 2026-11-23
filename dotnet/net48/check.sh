#!/bin/sh
# .NET Framework 4.8 consumers of the Servirtium.Vcr package, built (and on
# Windows run) from a packed .nupkg the way a user gets it:
#
#   (i)   sdk-packagereference: an SDK-style net48 MSTest project with a
#         PackageReference, built four ways: AnyCPU (both engines under
#         runtimes\win-*\native\), RuntimeIdentifier win-x64 (NuGet copies the
#         engine; the package's targets must add nothing), PlatformTarget x64
#         (one engine next to the assembly) and PlatformTarget x86 (refused,
#         SVCR001: there is no 32-bit engine);
#   (ii)  sdk-transitive: the tests reference a Gateway project that has the
#         PackageReference (buildTransitive/ is what reaches them);
#   (iii) packages-config: a classic console project with packages.config,
#         AnyCPU with Prefer32Bit=false (engine copied by build/net48/), and
#         with the template's Prefer32Bit=true (refused, SVCR001).
#
# Everywhere: restore, build, and check the output layout and the
# ReferenceCopyLocalPaths items (one engine per destination, never two). On
# Windows also: dotnet test (i) and (ii), run (iii). Off Windows nothing can
# run a net48 assembly, so nothing is run, and the script says so.
#
# packages.config restore is done the way nuget.exe does it, by extracting the
# .nupkg into packages\Servirtium.Vcr.<version>\ (no nuget.exe is needed).
#
# Usage: dotnet/net48/check.sh NUPKG_DIR WORK_DIR
#   NUPKG_DIR holds Servirtium.Vcr.<SERVIRTIUM_VCR_VERSION>.nupkg, packed from
#   dotnet/Servirtium.Vcr/Servirtium.Vcr.pkg.csproj with the Windows engines in.
#   WORK_DIR is scratch (its nuget-packages/ cache is kept between runs; this
#   package is cleared from it each run, since NuGet caches by version).
set -eu

here=$(cd "$(dirname "$0")" && pwd)
root=$(cd "$here/../.." && pwd)
[ $# -eq 2 ] || { echo "usage: $0 NUPKG_DIR WORK_DIR" >&2; exit 2; }
version=$(sed 's/^v//' "$root/SERVIRTIUM_VCR_VERSION" | tr -d '[:space:]')
nupkg="$1/Servirtium.Vcr.$version.nupkg"
[ -f "$nupkg" ] || { echo "no $nupkg" >&2; exit 2; }
mkdir -p "$2"
work=$(cd "$2" && pwd)

case "$(uname -s)" in
  MINGW*|MSYS*|CYGWIN*) windows=1 ;;
  *) windows=0 ;;
esac
# A path as dotnet.exe wants it.
np() { if [ "$windows" = 1 ]; then cygpath -w "$1"; else printf '%s' "$1"; fi; }

unset SERVIRTIUM_VCR_LIB || true
export DOTNET_CLI_TELEMETRY_OPTOUT=1 DOTNET_NOLOGO=1
packages="$work/nuget-packages"
mkdir -p "$packages"
export NUGET_PACKAGES="$(np "$packages")"
rm -rf "$packages/servirtium.vcr" "$work/tree" "$work/feed" "$work/logs"
mkdir -p "$work/tree" "$work/feed" "$work/logs"
cp "$nupkg" "$work/feed/"
cp -R "$here/." "$work/tree/"
tree="$work/tree"
cat > "$tree/nuget.config" <<EOF
<?xml version="1.0" encoding="utf-8"?>
<configuration>
  <packageSources>
    <clear />
    <add key="servirtium-local" value="$(np "$work/feed")" />
    <add key="nuget.org" value="https://api.nuget.org/v3/index.json" />
  </packageSources>
</configuration>
EOF

fails=0
pass() { echo "PASS  $*"; }
fail() { echo "FAIL  $*"; fails=$((fails + 1)); }
expect_file() { if [ -f "$2" ]; then pass "$1: $(echo "$2" | sed "s|$tree/||")"; else fail "$1: missing $(echo "$2" | sed "s|$tree/||")"; fi; }
expect_no_file() { if [ -e "$2" ]; then fail "$1: unexpected $(echo "$2" | sed "s|$tree/||")"; else pass "$1: no $(echo "$2" | sed "s|$tree/||")"; fi; }

# How many ReferenceCopyLocalPaths items name servirtium_vcr.dll once the
# references are resolved (the package's target included): one per engine the
# output gets, never two for one destination.
count_engines() { # project, extra msbuild args...
  proj=$1; shift
  dotnet msbuild "$(np "$proj")" -nologo -v:q "-p:ServirtiumVcrVersion=$version" "$@" \
    -t:ResolveReferences -getItem:ReferenceCopyLocalPaths > "$work/logs/items.json" 2>&1 || { cat "$work/logs/items.json" >&2; echo error; return 0; }
  grep -c '"Identity": *"[^"]*servirtium_vcr\.dll"' "$work/logs/items.json" || true
}

build() { # label, project, extra args...
  label=$1; proj=$2; shift 2
  log="$work/logs/$label.log"
  if dotnet build "$(np "$proj")" -nologo "-p:ServirtiumVcrVersion=$version" "$@" > "$log" 2>&1; then
    return 0
  fi
  return 1
}

echo "== Servirtium.Vcr $version, .NET Framework consumers ($( [ "$windows" = 1 ] && echo "Windows: build and run" || echo "not Windows: build only, nothing is run"))"

# ---- the package itself: API docs, README, repository ----------------------
listing=$(unzip -l "$nupkg" | awk '{print $4}')
for entry in lib/net48/Servirtium.Vcr.xml lib/net8.0/Servirtium.Vcr.xml README.md \
             build/net48/Servirtium.Vcr.targets buildTransitive/net48/Servirtium.Vcr.targets; do
  if printf '%s\n' "$listing" | grep -qx "$entry"; then pass "package: $entry"; else fail "package: no $entry"; fi
done
nuspec=$(unzip -p "$nupkg" Servirtium.Vcr.nuspec)
for want in '<repository type="git" url="https://github.com/servirtium/servirtium-vcr"' '<readme>README.md</readme>' '<license type="expression">MIT</license>'; do
  if printf '%s' "$nuspec" | grep -qF "$want"; then pass "nuspec: $want"; else fail "nuspec: no $want"; fi
done
# The docs say what VolatileRule's scope and kind are, without reading the native library.
if unzip -p "$nupkg" lib/net48/Servirtium.Vcr.xml | grep -q 'T:Servirtium.Vcr.VolatileScope'; then
  pass "Servirtium.Vcr.xml documents VolatileScope"
else
  fail "Servirtium.Vcr.xml does not document VolatileScope"
fi

# ---- (i) SDK-style, PackageReference -------------------------------------
for variant in anycpu rid-win-x64 x64 x86; do
  cp -R "$tree/sdk-packagereference" "$tree/sdk-pr-$variant"
done
pr() { echo "$tree/sdk-pr-$1/Consumer.SdkPackageReference.csproj"; }

if build i-anycpu "$(pr anycpu)"; then
  out="$tree/sdk-pr-anycpu/bin/Debug/net48"
  expect_file "(i) AnyCPU" "$out/runtimes/win-x64/native/servirtium_vcr.dll"
  expect_file "(i) AnyCPU" "$out/runtimes/win-arm64/native/servirtium_vcr.dll"
  expect_no_file "(i) AnyCPU" "$out/servirtium_vcr.dll"
  n=$(count_engines "$(pr anycpu)")
  [ "$n" = 2 ] && pass "(i) AnyCPU: 2 engine items (x64, arm64)" || fail "(i) AnyCPU: $n engine items, expected 2"
else
  fail "(i) AnyCPU build (log: $work/logs/i-anycpu.log)"; tail -20 "$work/logs/i-anycpu.log"
fi

if build i-rid "$(pr rid-win-x64)" -p:RuntimeIdentifier=win-x64; then
  out="$tree/sdk-pr-rid-win-x64/bin/Debug/net48/win-x64"
  expect_file "(i) RID win-x64" "$out/servirtium_vcr.dll"
  expect_no_file "(i) RID win-x64" "$out/runtimes"
  n=$(count_engines "$(pr rid-win-x64)" -p:RuntimeIdentifier=win-x64)
  # NuGet's own runtimes/win-x64/native item, and nothing more from the targets.
  [ "$n" = 1 ] && pass "(i) RID win-x64: 1 engine item" || fail "(i) RID win-x64: $n engine items, expected 1"
else
  fail "(i) RID win-x64 build (log: $work/logs/i-rid.log)"; tail -20 "$work/logs/i-rid.log"
fi

if build i-x64 "$(pr x64)" -p:PlatformTarget=x64; then
  out="$tree/sdk-pr-x64/bin/Debug/net48"
  expect_file "(i) x64" "$out/servirtium_vcr.dll"
  expect_no_file "(i) x64" "$out/runtimes"
else
  fail "(i) x64 build (log: $work/logs/i-x64.log)"; tail -20 "$work/logs/i-x64.log"
fi

if build i-x86 "$(pr x86)" -p:PlatformTarget=x86; then
  fail "(i) x86: the build succeeded; expected SVCR001"
elif grep -q 'SVCR001' "$work/logs/i-x86.log"; then
  pass "(i) x86: refused with SVCR001"
else
  fail "(i) x86: failed without SVCR001 (log: $work/logs/i-x86.log)"; tail -20 "$work/logs/i-x86.log"
fi

# ---- (ii) SDK-style, through a ProjectReference ---------------------------
tests="$tree/sdk-transitive/Tests/Consumer.SdkTransitive.csproj"
if build ii "$tests"; then
  out="$tree/sdk-transitive/Tests/bin/Debug/net48"
  expect_file "(ii) transitive" "$out/Servirtium.Vcr.dll"
  expect_file "(ii) transitive" "$out/runtimes/win-x64/native/servirtium_vcr.dll"
  expect_file "(ii) transitive" "$out/runtimes/win-arm64/native/servirtium_vcr.dll"
  # NuGet imports buildTransitive/ into both projects, and build/ into neither
  # directly (the one file imports the other), so the target is defined once.
  for g in "$tree/sdk-transitive/Tests/obj/Consumer.SdkTransitive.csproj.nuget.g.targets" \
           "$tree/sdk-transitive/Gateway/obj/Gateway.csproj.nuget.g.targets"; do
    name=$(basename "$g" .csproj.nuget.g.targets)
    if grep -qi 'servirtium.vcr.*buildTransitive.net48.Servirtium.Vcr.targets' "$g" \
       && ! grep -qi 'servirtium.vcr.*[/\\]build[/\\]net48.Servirtium.Vcr.targets' "$g"; then
      pass "(ii) $name imports buildTransitive/ only"
    else
      fail "(ii) $name: package imports: $(grep -i 'servirtium' "$g" | tr -s ' ')"
    fi
  done
else
  fail "(ii) transitive build (log: $work/logs/ii.log)"; tail -20 "$work/logs/ii.log"
fi

# ---- (iii) classic, packages.config ----------------------------------------
pc="$tree/packages-config"
pkgdir="$tree/packages/Servirtium.Vcr.$version"
mkdir -p "$pkgdir"
if command -v unzip >/dev/null 2>&1; then
  unzip -q "$nupkg" -d "$pkgdir"
else
  tar -xf "$(np "$nupkg")" -C "$(np "$pkgdir")"
fi
sed "s/@VERSION@/$version/g" "$pc/Consumer.PackagesConfig.csproj.in" > "$pc/Consumer.PackagesConfig.csproj"
sed "s/@VERSION@/$version/g" "$pc/packages.config.in" > "$pc/packages.config"
# Without Visual Studio the .NET Framework reference assemblies come from the
# NuGet package the SDK-style projects above restored.
refasm=$(ls -d "$packages"/microsoft.netframework.referenceassemblies.net48/*/build 2>/dev/null | head -1)
classic() { # label, extra args...
  label=$1; shift
  rm -rf "$pc/bin" "$pc/obj"
  dotnet msbuild "$(np "$pc/Consumer.PackagesConfig.csproj")" -nologo -restore:false \
    "-p:TargetFrameworkRootPath=$(np "$refasm")/" "$@" > "$work/logs/$label.log" 2>&1
}
if [ -z "$refasm" ]; then
  fail "(iii) no Microsoft.NETFramework.ReferenceAssemblies.net48 in $packages"
else
  if classic iii-prefer32 -p:Prefer32Bit=true; then
    fail "(iii) Prefer32Bit=true: the build succeeded; expected SVCR001"
  elif grep -q 'SVCR001' "$work/logs/iii-prefer32.log"; then
    pass "(iii) Prefer32Bit=true (the template's default): refused with SVCR001"
  else
    fail "(iii) Prefer32Bit=true: failed without SVCR001 (log: $work/logs/iii-prefer32.log)"; tail -20 "$work/logs/iii-prefer32.log"
  fi
  if classic iii; then
    out="$pc/bin/Debug"
    expect_file "(iii) packages.config" "$out/Consumer.PackagesConfig.exe"
    expect_file "(iii) packages.config" "$out/Servirtium.Vcr.dll"
    expect_file "(iii) packages.config" "$out/runtimes/win-x64/native/servirtium_vcr.dll"
    expect_file "(iii) packages.config" "$out/runtimes/win-arm64/native/servirtium_vcr.dll"
  else
    fail "(iii) packages.config build (log: $work/logs/iii.log)"; tail -20 "$work/logs/iii.log"
  fi
fi

# ---- (iv) the binding's own tests, built for net48 against the package --------
own="$tree/tests/Servirtium.Vcr.Tests.Net48.csproj"
if build iv "$own" "-p:ServirtiumVcrTestsDir=$(np "$root/dotnet/Servirtium.Vcr.Tests")"; then
  expect_file "(iv) the binding's tests on net48" "$tree/tests/bin/Debug/net48/servirtium_vcr.dll"
else
  fail "(iv) the binding's tests do not build for net48 (log: $work/logs/iv.log)"; grep -E 'error' "$work/logs/iv.log" | sort -u | head -20
fi

# ---- Windows: run them ------------------------------------------------------
if [ "$windows" = 1 ]; then
  for t in "i-anycpu|$(pr anycpu)|" "i-rid|$(pr rid-win-x64)|-p:RuntimeIdentifier=win-x64" \
           "i-x64|$(pr x64)|-p:PlatformTarget=x64" "ii|$tests|"; do
    label=${t%%|*}; rest=${t#*|}; proj=${rest%%|*}; extra=${rest#*|}
    # shellcheck disable=SC2086
    log="$work/logs/test-$label.log"
    # shellcheck disable=SC2086
    if dotnet test "$(np "$proj")" -nologo --no-build "-p:ServirtiumVcrVersion=$version" $extra \
         --logger "console;verbosity=normal" > "$log" 2>&1 \
       && grep -q 'Test Run Successful' "$log" && grep -q 'Passed: *2' "$log"; then
      pass "$label: dotnet test, $(grep -o 'Passed: *[0-9]*' "$log" | tail -1 | tr -s ' ')"
    else
      fail "$label: dotnet test (log: $log)"; tail -30 "$log"
    fi
  done
  # (iv): the fixtures they drive are Windows builds of core_tests/*_fixture.ae
  # in target/test-tools/ (TESTS_TOOLS names a directory to copy them from).
  if [ -n "${TESTS_TOOLS:-}" ]; then mkdir -p "$root/target/test-tools" && cp "$TESTS_TOOLS"/*.exe "$root/target/test-tools/"; fi
  log="$work/logs/test-iv.log"
  dotnet test "$(np "$own")" -nologo --no-build "-p:ServirtiumVcrVersion=$version" \
    "-p:ServirtiumVcrTestsDir=$(np "$root/dotnet/Servirtium.Vcr.Tests")" --logger "console;verbosity=normal" > "$log" 2>&1
  summary=$(grep -E 'Total tests|Passed:|Failed:|Skipped:' "$log" | tr -s ' ' | tr '\n' ' ')
  if grep -q 'Test Run Successful' "$log"; then
    pass "(iv) the binding's tests on net48: $summary"
  else
    fail "(iv) the binding's tests on net48: $summary (log: $log)"; grep -E '^\s+Failed |Error Message' -A3 "$log" | head -60
  fi
  if [ -f "$pc/bin/Debug/Consumer.PackagesConfig.exe" ]; then
    if "$pc/bin/Debug/Consumer.PackagesConfig.exe" > "$work/logs/run-iii.log" 2>&1; then
      pass "(iii) packages.config: ran, $(tr -d '\r' < "$work/logs/run-iii.log" | grep -o 'engine: .*' | sed 's|.*\\bin\\|bin\\|')"
    else
      fail "(iii) packages.config: run (log: $work/logs/run-iii.log)"; cat "$work/logs/run-iii.log"
    fi
  fi
fi

echo "== $fails failure(s)"
[ "$fails" = 0 ]
