#!/usr/bin/env sh
#
# get-package.sh — hand me the servirtium package for MY language.
#
#   curl -fsSL https://raw.githubusercontent.com/servirtium/servirtium-vcr/main/get-package.sh | sh -s -- ruby
#   ./get-package.sh ruby                 # from a checkout
#   ./get-package.sh                      # list the languages
#   ./get-package.sh all                  # build every language's package
#
# What it does: ensures the Aether toolchain (`ae`) and build runner (`aeb`) are
# present (via ./bootstrap.sh, which pins both), runs ONE aeb target —
# `<lang>/.package.ae` — and then copies the resulting artifact into ./out/
# (override with OUT=) and prints the exact command to consume it.
#
# PACKAGING RUNS NO TESTS. It builds the engine .so, bundles it where that
# language's loader or linker expects it, and stops. So this works on a box
# with no pytest, no rspec, no JUnit — you get the gem/wheel/nupkg regardless.
# (The test suites are `aeb <lang>/.tests.ae`; the install-from-scratch proofs
# are `aeb <lang>/.example.ae`.)
#
# Nothing here publishes to a registry. These are local artifacts: a file you
# install by path, or a source package you point a path/replace dep at.
#
# Env overrides:
#   OUT              where artifacts are copied        (default: ./out)
#   SERVIRTIUM_SRC   checkout to build in, when piped  (default: $HOME/.cache/servirtium-vcr)
#   PREFIX           toolchain install prefix          (default: $HOME/.local)
set -eu

OUT="${OUT:-$PWD/out}"
REPO_URL="${REPO_URL:-https://github.com/servirtium/servirtium-vcr.git}"

say()  { printf '\033[1;36m==>\033[0m %s\n' "$*"; }
note() { printf '    %s\n' "$*"; }
die()  { printf '\033[1;31merror:\033[0m %s\n' "$*" >&2; exit 1; }

# ---- the language table -------------------------------------------------
# One row per language: <lang> <kind> <artifact-path-relative-to-repo>
# kind drives the "how to consume it" hint below. A path of "-" means the
# artifact is not a file in the tree (installed to ~/.m2).
langs_table() {
    cat <<'TABLE'
python     file      python/dist
ruby       file      ruby/pkg/servirtium.gem
javascript file      javascript/pkgout
dotnet     feed      dotnet/pkg
fsharp     feed      fsharp/pkg
c          tarball   c/servirtium-c-2.0.0.tar.gz
cpp        tarball   cpp/servirtium-cpp-2.0.0.tar.gz
lua        dir       lua/dist
php        source    php
dart       source    dart
pharo      source    pharo
julia      source    julia
rust       source    rust
go         source    go
nim        source    nim
zig        source    zig
haskell    source    haskell
crystal    source    crystal
swift      source    swift
d          source    d
erlang     beam      erlang/_build_pkg
elixir     beam      elixir/_build_pkg
gleam      beam      gleam/_build_pkg
lfe        beam      lfe/_build_pkg
java       m2        -
kotlin     m2        -
scala      m2        -
clojure    m2        -
groovy     m2        -
TABLE
}

list_langs() {
    say "servirtium-vcr — 29 language bindings over one native engine"
    echo
    langs_table | awk '{printf "%s ", $1}' | fold -s -w 70 | sed 's/^/  /'
    echo
    echo
    note "usage:  $0 <language>     (or 'all')"
}

# ---- how to consume what we just built ---------------------------------
consume_hint() {
    _lang="$1"; _kind="$2"; _dest="$3"
    echo
    say "consume it:"
    case "$_lang:$_kind" in
        python:*)     note "pip install $_dest/*.whl" ;;
        ruby:*)       note "gem install $_dest" ;;
        javascript:*) note "npm install $_dest/*.tgz" ;;
        *:feed)       note "dotnet nuget add source $_dest --name servirtium-local"
                      note "dotnet add package Servirtium.Vcr$( [ "$_lang" = fsharp ] && echo .FSharp )" ;;
        *:tarball)    note "tar xzf $_dest   # then:"
                      note "PKG_CONFIG_PATH=\$PWD/dist/lib/pkgconfig pkg-config --cflags --libs servirtium$( [ "$_lang" = cpp ] && echo -cpp )"
                      note "(the prefix is relocatable — the .pc anchors on its own directory)" ;;
        lua:*)        note "package.cpath = '$_dest/?.so;' .. package.cpath   -- then require 'servirtium'" ;;
        php:*)        note "composer config repositories.servirtium path $_dest && composer require servirtium/servirtium-php:@dev" ;;
        dart:*)       note "dependency_overrides:  servirtium: {path: $_dest}" ;;
        pharo:*)      note "load pharo/src into your image; ServirtiumLibrary libPath: '$_dest/native/libservirtium_vcr.so'" ;;
        julia:*)      note "julia -e 'using Pkg; Pkg.develop(path=\"$_dest\")'" ;;
        rust:*)       note "servirtium = { path = \"$_dest\" }        # in Cargo.toml" ;;
        go:*)         note "go mod edit -replace github.com/servirtium/servirtium-go=$_dest" ;;
        nim:*)        note "nim c --path:$_dest/src your_test.nim" ;;
        zig:*)        note "point your build.zig at $_dest (engine .so in $_dest/native)" ;;
        haskell:*)    note "cabal build with a path source-repository-package at $_dest" ;;
        crystal:*)    note "dependencies:  servirtium: {path: $_dest}   # in shard.yml" ;;
        swift:*)      note ".package(path: \"$_dest\")                  # in Package.swift" ;;
        d:*)          note "dub add-local $_dest 2.0.0" ;;
        *:beam)       note "ERL_LIBS=$_dest   (mix: SERVIRTIUM_NIF_EBIN=$_dest/servirtium_nif/ebin)" ;;
        *:m2)         note "installed to ~/.m2 — add the dependency:"
                      note "com.paulhammant.servirtium:servirtium-vcr$( [ "$_lang" = java ] || echo "-$_lang" ):2.0.0-SNAPSHOT" ;;
    esac
    echo
    note "The engine .so travels inside the package; no SERVIRTIUM_VCR_LIB needed."
}

# ---- locate a checkout to build in --------------------------------------
find_repo() {
    # Run from inside the repo (the normal case)?
    if [ -f "$PWD/.packages.ae" ] && [ -d "$PWD/core" ]; then
        printf '%s' "$PWD"; return
    fi
    # Next to the script (./get-package.sh from anywhere)?
    _here="$(cd "$(dirname "$0")" 2>/dev/null && pwd || true)"
    if [ -n "$_here" ] && [ -f "$_here/.packages.ae" ]; then
        printf '%s' "$_here"; return
    fi
    # Piped from curl: clone (or refresh) a cache checkout.
    _src="${SERVIRTIUM_SRC:-$HOME/.cache/servirtium-vcr}"
    command -v git >/dev/null 2>&1 || die "git is required to fetch the sources (or run this from a checkout)"
    if [ -d "$_src/.git" ]; then
        say "refreshing $_src" >&2
        git -C "$_src" pull --ff-only --quiet || true
    else
        say "cloning $REPO_URL -> $_src" >&2
        mkdir -p "$(dirname "$_src")"
        git clone --depth 1 --quiet "$REPO_URL" "$_src"
    fi
    printf '%s' "$_src"
}

# ---- main ---------------------------------------------------------------
[ "$#" -ge 1 ] || { list_langs; exit 0; }
LANG_ARG="$1"

REPO="$(find_repo)"
[ -f "$REPO/bootstrap.sh" ] || die "no bootstrap.sh in $REPO — is this a servirtium-vcr checkout?"

if [ "$LANG_ARG" = all ]; then
    say "building every language's package (no tests)"
    ( cd "$REPO" && sh ./bootstrap.sh .packages.ae )
    say "done — artifacts are in the checkout; re-run with a single language to have one copied out"
    exit 0
fi

row="$(langs_table | awk -v l="$LANG_ARG" '$1 == l')"
[ -n "$row" ] || { printf '\033[1;31merror:\033[0m unknown language "%s"\n\n' "$LANG_ARG" >&2; list_langs >&2; exit 1; }
kind="$(printf '%s' "$row"  | awk '{print $2}')"
apath="$(printf '%s' "$row" | awk '{print $3}')"

say "building the $LANG_ARG package (no tests)"
( cd "$REPO" && sh ./bootstrap.sh "$LANG_ARG/.package.ae" )

# Copy the artifact out, unless it lives in ~/.m2 (nothing to copy) or IS the
# checkout itself (a source package — point your build at it in place).
dest="$REPO/$apath"
if [ "$kind" = m2 ]; then
    consume_hint "$LANG_ARG" "$kind" "-"
elif [ "$kind" = source ]; then
    consume_hint "$LANG_ARG" "$kind" "$dest"
else
    [ -e "$dest" ] || die "expected artifact at $dest but it is not there (did the package step change?)"
    mkdir -p "$OUT/$LANG_ARG"
    cp -R "$dest" "$OUT/$LANG_ARG/"
    copied="$OUT/$LANG_ARG/$(basename "$dest")"
    say "copied -> $copied"
    consume_hint "$LANG_ARG" "$kind" "$copied"
fi
