# servirtium-lfe

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **LFE** (Lisp Flavoured Erlang).

You point your system-under-test at a local URL. In **playback** it replays
a recorded markdown tape (no network); in **record** it forwards to the real
service, returns the live response, and writes the tape. Same tape, both
directions.

```lisp
(let* ((vcr (servirtium_lfe:playback "tapes/single_get.md"))
       (url (servirtium_lfe:base_url vcr)))
  ;; point the system-under-test at url
  (io:format "~s~n" (list (os:cmd (++ "curl -s " url "/ok"))))
  (servirtium_lfe:last_kind vcr)   ; 'ok — optional: assert a clean match
  (servirtium_lfe:close vcr))
```

## What this is (and isn't)

This is a thin LFE layer over the **Aether VCR** core. All record/replay
machinery — markdown parse/emit, the HTTP server, request matching, redactions,
notes, drift detection, static bypass, gzip/chunked handling — lives in the
in-repo, pure-Aether `core/vcr.ae` module. This binding drives a precompiled
native build of that core through a C NIF; it does **not** reimplement
Servirtium in LFE.

### Consumes the shared Erlang NIF (over the BEAM)

LFE compiles to BEAM, so it consumes the **one** canonical Servirtium NIF —
the `servirtium_nif` OTP app the Erlang binding builds once
(`erlang/_build/servirtium_nif`). LFE ships **no** C source and **no** NIF
module of its own: `src/servirtium_lfe.lfe` calls the shared module directly
(`(servirtium_nif:open_playback …)`), and the app is put on the BEAM code path
at test time via **ERL_LIBS** (so the module and its `priv/servirtium_nif.so`
resolve the standard OTP way, `code:priv_dir`). LFE is the BEAM family's
fourth rider, alongside Erlang, Elixir and Gleam — exactly as one Java jar
backs the JVM family's five.

## Layout

- `src/servirtium_lfe.lfe` — the idiomatic LFE API: `playback`, `record`,
  `base_url`, `port`, `tape_length`, `last_kind`, `last_error`, `last_index`,
  `close`. Mirrors the Erlang twin (`erlang/src/servirtium.erl`)
  function-for-function over the identical NIF.
- `test/playback_test.lfe` — a plain `(main args)` conformance runner (no test
  framework): curls the VCR, asserts the body, a clean match, the tape length
  and a clean close.
- `tapes/single_get.md` — the canonical sample tape (`GET /ok` → `200
  text/plain` / `ok-body`), byte-identical to every other binding's copy.

## Two LFE-specific notes

**Public names use underscores.** LFE lets a local def use hyphens, but a
*remote* call `servirtium_lfe:base-url` does not resolve to the exported
`'base-url'` atom — so the cross-module API is underscore-named
(`base_url`, `last_kind`, `tape_length`). Internal helpers stay hyphenated.

**`record` is an LFE core form** (Erlang records). The exported `record/2` and
`record/3` therefore cannot call each other — a local `(record …)` parses as
the core form — so both delegate to an internal `open-recording`. The public
name stays `record` for parity with the Erlang/Elixir/Gleam twins; a remote
`servirtium_lfe:record/2,3` resolves to the function, not the form. lfec prints
one **expected** warning on every build, `redefining core function record/3`,
which LFE gives no way to suppress selectively (only `-Werror` and
`nowarn_unused_vars` exist). Don't "fix" it by renaming the export.

## Building and testing

**Get the native library** (`libservirtium_vcr`) for your OS/arch from the
[GitHub releases](https://github.com/servirtium/servirtium-vcr/releases) — one
prebuilt shared library per platform, each with a `.sha256` — and (optionally)
verify it:

```sh
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.1/libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so
curl -LO https://github.com/servirtium/servirtium-vcr/releases/download/v2.0.0-alpha.1/libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so.sha256
sha256sum -c libservirtium_vcr-v2.0.0-alpha.1-linux-x86_64.so.sha256   # -> OK
```

Available platforms: linux (x86_64, arm64), macOS (x86_64, arm64), Windows
(x86_64, arm64), FreeBSD (x86_64). No Aether toolchain is needed to *use* the
library. (For macOS use the `.dylib`, for Windows the `.dll`.)

**Build the package locally.** Nothing is published to a package registry yet,
so you build both halves yourself. LFE ships **no** C source of its own — the
native side is the shared `servirtium_nif` OTP app owned by the Erlang binding —
but it does compile its own BEAM module (`servirtium_lfe`) with `lfec`. Needs
`lfec`/`lfe` on PATH (plus the C compiler + Erlang/OTP for the NIF). So:

1. Build the shared Erlang NIF first, per the [Erlang README's "Build the
   package locally"](../erlang/README.md) — this produces the `servirtium_nif`
   app.
2. Compile this binding's own LFE module and stage it as an OTP app:

   ```sh
   mkdir -p servirtium_lfe/ebin
   lfec -o servirtium_lfe/ebin lfe/src/servirtium_lfe.lfe
   cp lfe/src/servirtium_lfe.app servirtium_lfe/ebin/servirtium_lfe.app
   ```

3. Put both apps' parent dir(s) on `ERL_LIBS` so `code:priv_dir` finds the NIF
   and its `libservirtium_vcr.so`, then run over the BEAM the standard OTP way.

(The `aeb lfe/.package.ae` build assembles both `servirtium_lfe` and the shared
`servirtium_nif` under one dir a consumer points `ERL_LIBS` at.)

LFE doesn't link this lib directly — it loads the shared Erlang NIF, and it's
that NIF (`servirtium_nif`) which needs `libservirtium_vcr` present. So the
download matters one layer down: obtaining/building the Erlang `servirtium_nif`
app (which links the lib) is the prerequisite here. Drop the downloaded lib
where the NIF build finds it and build that app the way the
[erlang README](../erlang/README.md) describes; then `ERL_LIBS` puts it on the
BEAM code path for the LFE test run.

Contributors who want to build the lib from source instead (Aether toolchain
required) can use `aeb`:

There is no C step here — the shared `servirtium_nif` app is built by the
Erlang binding. Needs `lfec`/`lfe` on PATH (the leaf SKIPs loudly otherwise),
plus Erlang/OTP and `cc` for the NIF.

```sh
aeb lfe/.tests.ae    # deps erlang/.build.ae + core; lfec-compiles, then runs
                     # (playback_test:main (list)) with ERL_LIBS=_build
```

By hand, after the Erlang binding's `.build.ae` has produced the shared app:

```sh
# from lfe/
lfec -o /tmp/lfe-out src/servirtium_lfe.lfe test/playback_test.lfe
ERL_LIBS=../erlang/_build lfe -noshell -pa /tmp/lfe-out \
  -pa ../erlang/_build/servirtium_nif/ebin \
  -eval '(playback_test:main (list))' -eval '(halt 0)'
```
