# Dev-dependency setup (per language)

Building and packaging every binding needs only each language's **compiler**.
Running a binding's in-tree `<lang>/.tests.ae` additionally needs its **test
runner**, and three of them need a one-time setup that isn't obvious — the
notes below are what took this box from 25/29 to 28/29 green.

None of this needs root. All three are user-level.

> Packaging never needs any of it: `aeb <lang>/.package.ae` and
> `./get-package.sh <lang>` build the wheel/gem/etc. with no test runner
> installed. See [packaging.md](packaging.md).

## Python — `pytest`, past PEP 668

Arch/Debian mark the system Python "externally managed", so `pip install`
refuses outright:

```
error: externally-managed-environment
```

The leaf runs `python3 -m pytest`, i.e. the **system** interpreter, so a venv
elsewhere won't be seen. Install into the user site-packages:

```sh
pip install --user --break-system-packages pytest
python3 -c "import pytest; print(pytest.__version__)"   # sanity check
```

`--user` keeps it in `~/.local/lib/python3.x/site-packages` and touches no
system file; the scary-sounding flag only overrides the PEP 668 marker. The
distro package (`pacman -S python-pytest`, `apt install python3-pytest`) is
equally fine if you have root.

## Ruby — `bundle`, and two traps

```sh
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"   # gem bin dir
bundle config set --global path "$HOME/.gem/bundle"
cd ruby && bundle install
```

Two things bite:

- **The gem executable dir is not on PATH.** RubyGems installs `bundle`,
  `rspec` and friends into `~/.local/share/gem/ruby/<ver>/bin`, which no shell
  profile adds by default — so `bundle` is "command not found" even though the
  gem is installed.
- **Bundler defaults to the SYSTEM gem dir** and fails with
  `Bundler::PermissionError` writing to `/usr/lib/ruby/gems`. The global
  `bundle config path` above redirects it somewhere writable, per user, with no
  file added to this repo. (Note `gem install --install-dir` is the equivalent
  escape for plain `gem`: Arch patches RubyGems to IGNORE `GEM_HOME` on
  install, which `ruby/.example.ae` already documents.)

The Gemfile also declares `erb` explicitly. Ruby 3.4 moved it from a *default*
gem to a *bundled* one, so under bundler it is no longer on the load path
unless requested — and `rspec-core` requires it. Without it the suite dies at
startup on any Ruby >= 3.4 with `cannot load such file -- erb (LoadError)`.

## Haskell — a dynamic-only GHC

Symptom, while cabal builds a dependency (QuickCheck, appar, blaze-builder…):

```
Could not find module 'Prelude'
There are files missing in the 'base-4.18.2.1' package
```

That is not a corrupt install. Arch/CachyOS ship GHC **dynamic-only**:
`ghc-libs` carries the `.so`s and there is no `ghc-static`, so `base` has no
`.a` archives. Executables already default to dynamic there — which is why
simple builds (and `haskell/.example.ae`) worked all along — but cabal's
default `library-vanilla: True` tries to build each dependency library
*statically* against archives that aren't there.

Tell cabal to match the distro, in `~/.config/cabal/config`:

```
library-vanilla: False
shared: True
executable-dynamic: True
```

Alternatives: install `ghc-static` (needs root), or use a self-contained
[ghcup](https://www.haskell.org/ghcup/) toolchain, which ships both ways and
needs no cabal config. This box has a ghcup GHC 9.10.3 installed but not on
PATH; the settings above use the system 9.6.6 that the rest of the repo is
verified against.

## Swift — the two library shims

Swift 6.0.3 on CachyOS won't even print `--version` without two compatibility
symlinks, because the distro moved on from the sonames the toolchain was built
against:

```sh
ln -sf /usr/lib/libncursesw.so.6 ~/.local/lib/libncurses.so.6
ln -sf /usr/lib/libxml2.so.16    ~/.local/lib/libxml2.so.2
export LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"
```

Without `LD_LIBRARY_PATH` exported, `swift/.tests.ae` fails with
`swift: error while loading shared libraries: libncurses.so.6` — which looks
like a binding bug and is not one. The shims are deliberately **not** baked
into the leaf: pointing a build at a soname the platform doesn't actually
provide is the sort of thing that should stay an explicit, visible local
choice rather than something the repo does behind your back.

## Selenium — for the browser integration leaf

`integration/.tests.ae` drives real headless Chrome through the Python
binding, so it needs `selenium` importable by the *system* `python3` (the leaf
shells out to bare `python3`):

```sh
python3 -m pip install --user --break-system-packages selenium
```

No browser install is needed and none is wanted: Selenium Manager downloads a
matching Chrome-for-Testing on first run, entirely under `~/.cache`. That
matters on a box without passwordless sudo, where `pacman -S chromium` is not
an option — this leaf is still runnable.

## What's still red after all this

`pharo/.tests.ae` — 6 of 12 error, every record-mode test plus static content;
playback passes. That one is a real open question, not a missing tool.
Unchanged on ae 0.677 / aeb v0.312, so it is not a toolchain regression.

`dotnet/…/.tests.ae` and `fsharp/.tests.ae` — red for a reason that has
nothing to do with dev deps: ae 0.675 regressed closure codegen and emits
invalid C for aeb's dotnet SDK. See
[`handover-ae-0675-closure-capture-codegen-bug.md`](handover-ae-0675-closure-capture-codegen-bug.md)
for the diagnosis and the verified 2-line workaround.
