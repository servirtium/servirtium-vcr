#!/usr/bin/env bash
# Cut a GitHub Release for a tag and attach the cross-built libservirtium_vcr artifacts +
# their checksums. Manual, CLI-only — no GitHub Actions, no repo settings, no
# secrets: it uses your existing `gh` auth to create the release and upload
# assets.
#
# libservirtium_vcr ONLY, on purpose. This ships the native libservirtium_vcr.* per OS/CPU —
# the one thing that's hard for a user to produce. It does NOT publish the
# per-language packages (wheel / gem / jar / nupkg / …) or push to any registry
# (PyPI / npm / Maven / …): those are the `.package.ae` nodes' job and a
# credentialed, per-registry concern that is deliberately out of scope here.
#
# Usage:
#   release/publish.sh v1.2.3               # build (if needed) + create the release
#   release/publish.sh v1.2.3 --draft       # create as a draft to review first
#   release/publish.sh v1.2.3 --no-build    # use whatever is already in release/dist
#
# Steps: ensure artifacts for <tag> exist (build them unless --no-build), then
# `gh release create <tag>` with every artifact, its .sha256, and SHA256SUMS.txt.
set -uo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
DIST="$ROOT/release/dist"
cd "$ROOT"

die() { printf 'publish: %s\n' "$*" >&2; exit 1; }
have() { command -v "$1" >/dev/null 2>&1; }

TAG=""; NO_BUILD=0; GH_FLAGS=()
for a in "$@"; do
  case "$a" in
    --no-build)   NO_BUILD=1 ;;
    --draft)      GH_FLAGS+=(--draft) ;;
    --prerelease) GH_FLAGS+=(--prerelease) ;;
    -*)           die "unknown flag: $a" ;;
    *)            [ -z "$TAG" ] && TAG="$a" || die "unexpected arg: $a" ;;
  esac
done
[ -n "$TAG" ] || die "usage: release/publish.sh <tag> [--draft] [--prerelease] [--no-build]"
case "$TAG" in v*) ;; *) die "tag should look like vX.Y.Z (got '$TAG')" ;; esac

have gh || die "gh (GitHub CLI) not found — install it, or upload release/dist/* by hand"
gh auth status >/dev/null 2>&1 || die "gh is not authenticated — run 'gh auth login'"

# One release serves BOTH consumers of this repo:
#   - source consumers (git clone + checkout <tag>, then build libservirtium_vcr with aeb)
#     get the tree AT THE TAGGED COMMIT;
#   - FFI consumers who don't want to build get the prebuilt libservirtium_vcr.*
#     assets built HERE.
# So the tag and the binaries must be the SAME code. Pin the tag to the exact
# commit we build, and refuse to build from a dirty tracked tree (untracked
# scratch is fine) — otherwise the two consumers could get different sources.
COMMIT="$(git rev-parse HEAD)"
if [ -n "$(git status --porcelain --untracked-files=no)" ]; then
  die "working tree has uncommitted TRACKED changes — commit or stash them so the
       tag ($TAG @ ${COMMIT:0:9}) and the built binaries are the same code
       (untracked files are fine; use 'git status' to see what's dirty)"
fi

# Build the matrix for this tag unless told to reuse dist.
if [ "$NO_BUILD" = "0" ]; then
  printf 'publish: building artifacts for %s …\n' "$TAG"
  RELEASE_TAG="$TAG" "$HERE/build.sh" || die "build failed — fix it, or --no-build to publish existing dist"
fi

# Collect what to upload: every artifact, its sidecar, and the manifest.
# nullglob makes an unmatched glob expand to nothing (not a literal), so an empty
# dist yields an empty list rather than bogus filenames.
shopt -s nullglob
bins=( "$DIST"/*.so "$DIST"/*.dylib "$DIST"/*.dll "$DIST"/*.dll.lib )
sums=( "$DIST"/*.sha256 )
manifest=( "$DIST"/SHA256SUMS.txt )   # nullglob: empty if it doesn't exist
shopt -u nullglob
[ "${#bins[@]}" -gt 0 ] || die "no libservirtium_vcr artifacts in release/dist — run release/build.sh (or drop --no-build)"
assets=( "${bins[@]}" "${sums[@]}" "${manifest[@]}" )
# Count only the loadable libraries (not the Windows .dll.lib import stubs) for
# the "N platform artifacts" note.
nbin=0; for f in "${bins[@]}"; do case "$f" in *.dll.lib) ;; *) nbin=$((nbin+1)) ;; esac; done

# The os-arch combinations shipped — derived from the actual libservirtium_vcr libs in dist
# (their names carry -<os>-<arch>.<ext>), so this stays true as the matrix
# grows/shrinks rather than hardcoding. Deduped, comma-listed.
plats="$(
  for f in "${bins[@]}"; do
    case "$f" in *.dll.lib) continue ;; esac
    b="$(basename "$f")"
    # Take just the trailing <os>-<arch> (the last two dash-segments before the
    # extension), NOT ${b#prefix-*-} — the tag itself can contain a dash
    # (v1.0.0-rc1), which would leak into the list. sed keeps this tag-agnostic.
    printf '%s\n' "$b" | sed -E 's/\.(so|dylib|dll)$//; s/.*-([^-]+-[^-]+)$/\1/'
  done | sort -u | awk 'NR>1{printf ", "} {printf "%s", $0} END{if (NR) print ""}'
)"

notes="Cross-built \`libservirtium_vcr\` core library, ${nbin} platform artifact(s) — each with a \`.sha256\` (and a combined \`SHA256SUMS.txt\`): ${plats}.

This is the \`libservirtium_vcr\` core library only — the one thing that's hard to produce.
Point any binding at a downloaded artifact via \`SERVIRTIUM_VCR_LIB=/path/to/lib…\`
(or your OS loader path). The per-language packages (wheel / gem / jar / …) are
NOT here — build those from the tagged source with \`aeb <lang>/.package.ae\`.

Built from a single Linux host via \`ae build --target\` (zig cc), so every
artifact is the same deterministic bytes a target would build. See
\`release/README.md\` for the build-here / attest-on-hardware model."

printf 'publish: creating release %s (tag -> %s) with %d asset(s)%s …\n' \
  "$TAG" "${COMMIT:0:9}" "${#assets[@]}" "$([ "${#GH_FLAGS[@]}" -gt 0 ] && echo " (${GH_FLAGS[*]})")"

# --target "$COMMIT": create the tag at the exact commit we built, NOT at the
# remote default-branch HEAD (gh's default) — that could be a different commit
# than the one whose tree produced these binaries.
gh release create "$TAG" "${GH_FLAGS[@]}" \
  --target "$COMMIT" \
  --title "$TAG" --notes "$notes" \
  "${assets[@]}" \
  || die "gh release create failed"

printf 'publish: done — %s\n' "$(gh release view "$TAG" --json url -q .url 2>/dev/null || echo "$TAG created")"
