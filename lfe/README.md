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
