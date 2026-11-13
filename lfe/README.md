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

## Getting it

Hex package and OTP application: **`servirtium_lfe`** (module `servirtium_lfe`). It calls the
shared native OTP app **`servirtium_nif`**, which `erlang/build-nif-app.sh` builds from a
prebuilt release library (needs `erl`, `erlc`, `cc`, `curl`, plus `lfec` for this package; no
Aether). Nothing is on Hex yet; once published it is `{deps, [{servirtium_lfe, "2.0.0-alpha.17"}]}.`
in `rebar.config`. Until then, in your LFE project:

```sh
VER=v2.0.0-alpha.17                      # a release tag of servirtium-vcr
RAW=https://raw.githubusercontent.com/servirtium/servirtium-vcr

# 1. the native app (SRC=main until a release tag contains erlang/build-nif-app.sh)
mkdir -p beam-libs
curl -fsSL $RAW/main/erlang/build-nif-app.sh | SRC=main VER=$VER sh -s -- ./beam-libs

# 2. the LFE app: compile the one source file into its own OTP app directory
mkdir -p beam-libs/servirtium_lfe/ebin
curl -fsSL -o servirtium_lfe.lfe $RAW/$VER/lfe/src/servirtium_lfe.lfe
curl -fsSL -o beam-libs/servirtium_lfe/ebin/servirtium_lfe.app $RAW/$VER/lfe/src/servirtium_lfe.app
lfec -o beam-libs/servirtium_lfe/ebin servirtium_lfe.lfe
rm servirtium_lfe.lfe

# 3. put the apps on the code path
export ERL_LIBS=$PWD/beam-libs

# 4. check it: the repo's consumer replays a recorded tape
mkdir -p tapes
curl -fsSL -o tapes/single_get.md $RAW/$VER/lfe/example/tapes/single_get.md
curl -fsSL -o consumer.lfe $RAW/$VER/lfe/example/consumer.lfe
lfec -o . consumer.lfe
lfe -noshell -pa . -eval '(consumer:main (list))' -eval '(halt 0)'     # -> PASS ...
```

### Notes for coding agents

- Package `servirtium_lfe`; its OTP app lists `servirtium_nif` in `applications`. Both app
  directories must be under a directory named in `ERL_LIBS`.
- `undef` on `servirtium_lfe:...` means the `.beam` is not compiled or `ERL_LIBS` does not
  name `beam-libs`; `undef` on `servirtium_nif:...` or `bad_name` means the NIF app is missing
  from the same place.
- NIF load failures (`load_failed`, `cannot open shared object file`) mean `priv/` lost the
  library beside `servirtium_nif.so`; move the app directory whole. Do not set
  `SERVIRTIUM_VCR_LIB`.
- `lfec` comes from an LFE install (rebar3_lfe or a release); `lfec: command not found` is
  that, not a Servirtium problem.
- In-repo development: `aeb lfe/.tests.ae`.

## Stable ordering and playback range

Opt-in, off by default. Stable ordering is record side, for a service that sends
the same response in a different order every run; the tape is byte-exact without it.

```lisp
(let ((rec (servirtium_lfe:record "tapes/data.md" upstream)))
  (servirtium_lfe:set_pretty_json rec 2)               ; sorted JSON is only written pretty-printed
  (servirtium_lfe:set_sort_json_keys rec 'true)        ; object keys sorted at every depth
  (servirtium_lfe:sort_json_array rec "/items" "/id")  ; path, by
  (servirtium_lfe:sort_json_array_at rec "^/users" "" "name") ; request regex, path, by
  (servirtium_lfe:set_sort_response_headers rec 'true)
  (servirtium_lfe:sort_header_value rec "Allow")
  ;; ... drive the system under test ...
  (servirtium_lfe:close rec))
```

A rule the core refuses raises `#(servirtium Reason)`. Sorting JSON without
`set_pretty_json` is refused when the tape is written, so `close` returns
`#(error "sort_json_keys needs pretty_json: ...")` and writes nothing.
`get_sort_json_keys` / `get_sort_response_headers` read the switches back;
`clear_stable_order` turns every rule off.

Replay only a slice of a tape, by the tape's `## Interaction N` number (0-based,
inclusive; `to` < 0 = through the last):

```lisp
(let ((vcr (servirtium_lfe:playback "tapes/journey.md")))
  (servirtium_lfe:set_playback_range vcr 4 6)     ; raises #(servirtium Reason) if refused
  (servirtium_lfe:get_playback_range_from vcr)    ; -1 when none is set
  (servirtium_lfe:clear_playback_range vcr))
```

A record server refuses a range, so a test cannot overwrite a journey's tape with a slice.
## Volatile values

Values that change run to run (ids, timestamps) are declared as volatile
values, in playback and record alike. Options are applied before the server
starts; a bad rule fails the start with the core's message.

```lisp
(let ((vcr (servirtium_lfe:playback_with "tapes/create_case.md"
             (list (tuple 'pretty_xml 2)
                   (tuple 'volatile_rule "request body" "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")
                   (tuple 'volatile_rule "response body" "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")))))
  ;; ... drive the system under test ...
  (io:format "~s" (list (servirtium_lfe:volatile_report vcr)))   ; rules and token bindings
  (servirtium_lfe:close vcr))
```

Other options: `#(volatile_rule scope pattern "regex")`, `#(bind "caseId" "42")`
(attach a real value to a token), `#(volatile_profile path)` and
`#(volatile_markers dollar_curly)` (applied first).

`servirtium_lfe:record_with` takes the same options. Guide:
[`docs/volatile-values.md`](../docs/volatile-values.md).

## Building and testing

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
