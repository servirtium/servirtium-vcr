#!/bin/sh
# Fetch Azure/azure-sdk-for-net (MIT) at the pinned commit into target/azsdk,
# sparse: only what the Azure.Storage.Blobs test project needs to build.
# Nothing fetched here is checked in. Then apply the one harness patch to
# Azure.Core.TestFramework (see framework-live-determinism.patch and the
# README's "What is patched").
#
# Idempotent: a checkout already at the pin is left alone (the patch is
# re-applied only if missing).
set -eu
H=$(cd "$(dirname "$0")" && pwd)
. "$H/versions.env"
T="$H/target"
D="$T/azsdk"
mkdir -p "$T"

if [ ! -d "$D/.git" ]; then
    git init -q "$D"
    git -C "$D" remote add origin "$AZSDK_REPO"
fi

git -C "$D" sparse-checkout set --no-cone \
    '/global.json' '/NuGet.Config' '/Directory.Build.props' '/Directory.Build.targets' \
    '/eng/' \
    '/sdk/*.props' '/sdk/*.targets' \
    '/sdk/core/Azure.Core/src/Shared/' \
    '/sdk/core/Azure.Core.TestFramework/' \
    '/sdk/storage/*.props' '/sdk/storage/*.targets' \
    '/sdk/storage/Azure.Storage.Blobs/' \
    '/sdk/storage/Azure.Storage.Common/' \
    '/sdk/storage/Azure.Storage.Internal.Avro/src/' \
    '/sdk/storage/Azure.Storage.Blobs.Batch/src/' \
    '/sdk/storage/Azure.Storage.Files.Shares/src/' \
    '/sdk/storage/Azure.Storage.Files.Shares/*.props'

have=$(git -C "$D" rev-parse -q --verify HEAD 2>/dev/null || true)
if [ "$have" != "$AZSDK_COMMIT" ]; then
    git -C "$D" fetch -q --depth 1 --filter=blob:none origin "$AZSDK_COMMIT"
    git -C "$D" -c advice.detachedHead=false checkout -q --force "$AZSDK_COMMIT"
fi

# The harness patch: Live mode takes its random seed and "now" from the
# harness when it supplies them (tests and Storage sources untouched).
if git -C "$D" apply --check "$H/framework-live-determinism.patch" 2>/dev/null; then
    git -C "$D" apply "$H/framework-live-determinism.patch"
elif ! git -C "$D" apply --reverse --check "$H/framework-live-determinism.patch" 2>/dev/null; then
    echo "fetch.sh: framework-live-determinism.patch neither applies nor is applied at $AZSDK_COMMIT" >&2
    exit 1
fi
echo "azure-sdk-for-net at $(git -C "$D" rev-parse HEAD) (sparse, patched) in $D"
