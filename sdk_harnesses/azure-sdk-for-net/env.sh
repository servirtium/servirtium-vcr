# Sourced by the harness scripts. Everything .NET writes (NuGet packages and
# caches, the dotnet CLI home, MSBuild temp files) goes under target/, so
# wiping this harness is `rm -rf sdk_harnesses/azure-sdk-for-net/target`.
# The only thing outside it is the dotnet SDK itself.
H=${H:-$(cd "$(dirname "$0")" && pwd)}
T="$H/target"
. "$H/versions.env"
export DOTNET_CLI_HOME="$T/dotnet-home"
export NUGET_PACKAGES="$T/nuget/packages"
export NUGET_HTTP_CACHE_PATH="$T/nuget/http-cache"
export NUGET_PLUGINS_CACHE_PATH="$T/nuget/plugins-cache"
export NUGET_SCRATCH="$T/nuget/scratch"
export TMPDIR="$T/tmp"
# .NET keeps a certificate revocation list cache under $HOME/.dotnet/corefx,
# whatever DOTNET_CLI_HOME says; a HOME inside target/ keeps that here too.
export HOME="$T/home"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_NOLOGO=1
export DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1
export DOTNET_GENERATE_ASPNET_CERTIFICATE=false
export DOTNET_ADD_GLOBAL_TOOLS_TO_PATH=false
# No MSBuild or VBCSCompiler server left running after a build.
export MSBUILDDISABLENODEREUSE=1
export DOTNET_CLI_USE_MSBUILD_SERVER=0
export UseSharedCompilation=false
mkdir -p "$HOME" "$DOTNET_CLI_HOME" "$NUGET_PACKAGES" "$NUGET_HTTP_CACHE_PATH" "$NUGET_PLUGINS_CACHE_PATH" "$NUGET_SCRATCH" "$TMPDIR"

# A dotnet SDK installed under target/ (see README) wins over the system one.
if [ -x "$T/dotnet/dotnet" ]; then
    export DOTNET_ROOT="$T/dotnet"
    export PATH="$T/dotnet:$PATH"
fi

AZSDK="$T/azsdk"
BLOBS_TESTS_CSPROJ="$AZSDK/sdk/storage/Azure.Storage.Blobs/tests/Azure.Storage.Blobs.Tests.csproj"
TFM=net10.0
