# Notes to self (LLM assisting on servirtium-vcr)

Not a CLAUDE.md — short, opinionated, written for a future LLM picking up
mid-task. Re-read at the start of every session. The code is the source of
truth; this is just the map so your *first* attempt lands clean.

## What this is, in one paragraph

Servirtium records an HTTP conversation to a human-readable **Markdown tape**
once, then **replays** it forever — offline, deterministic, git-diffable. This
repo is **one native engine + thin per-language bindings**. The engine
(`core/vcr.ae`, pure Aether: parser/emitter, tape store, matcher, dispatchers,
record) compiles via `core/embed.ae` (the C ABI) to
`core/native/libservirtium_vcr.so`. Every language directory
(`go/`, `python/`, `rust/`, …) is a **thin FFI shim** over that one `.so` — no
re-implementation of Servirtium logic per language. That's the whole design:
the old "each language has its own recorder/replayer/server" era is over (see
the archived `servirtium/README` repo). Byte-identical recording across
languages is now *structural*, not a cross-impl test.

## The one rule

**Bindings carry no logic.** A binding opens a handle, configures it, starts the
server, hands back a base URL, and stops. Anything smarter than marshalling
strings across the FFI belongs in `core/`, not in a binding. If you're tempted
to parse a tape or match a request in a binding, stop — that's the engine's job.

## Adding a language (the entire job)

There is **no tutorial, and there shouldn't be** — the existing bindings *are*
the spec. To add, say, Perl:

1. **Pick the nearest existing binding by FFI mechanism** and copy its shape.
   The README's Bindings table is the registry; the taxonomy:
   - **Load the `.so` at runtime** (most languages): `python/` ctypes,
     `ruby/` Fiddle, `javascript/` koffi, `rust/` libloading, `dotnet/` P/Invoke,
     `php/` ext-ffi, `dart/` dart:ffi, `pharo/` UnifiedFFI. ← Perl (FFI::Platypus)
     lives here.
   - **Link at build time**: `nim/` importc, `zig/` extern "C", `go/` cgo,
     `haskell/` ccall.
   - **C extension / native module**: `lua/` (Lua 5.4 C API).
   - **BEAM family — one shared NIF**: `erlang/` owns the canonical C NIF (the
     `servirtium_nif` OTP app, built once by `erlang/.build.ae`); `elixir/` and
     `gleam/` consume that SAME compiled module over the BEAM (no copied C
     source, no second `.so`) — see the BEAM note below.
   - **No FFI at all — over the Java jar**: `kotlin/ scala/ clojure/ groovy/`
     (JVM family; seamless interop, no second native binding).
2. **Bind the C ABI** (next section). `rust/src/native.rs` is the canonical 1:1
   reference for the full symbol table and signatures.
3. **Write one playback test** of the canonical tape
   (`<lang>/.../tapes/single_get.md`: `GET /ok` → `200 text/plain` body
   `ok-body`). Assert the body is `ok-body` and `last_kind == 0` (Ok). Most
   bindings just curl the playback server.
4. **Add a `.tests.ae` leaf** (see Build/test). It `build.dep`s
   `core/.build.ae`, then compiles + runs the test with `SERVIRTIUM_VCR_LIB`
   pointed at the engine `.so`.
5. **Verify**: `aeb <lang>/.tests.ae` → exit 0, `test: <lang>`.

That's it. I added Nim/Zig/Lua/Erlang/Gleam this way with no guide — just the
17 existing bindings + the ABI table.

## The C ABI (`aether_vcr_embed_*`)

Per-listener, handle-based: **N independent VCR servers run concurrently in one
process** ("one server per port"). Every config/diagnostic/lifecycle call takes
the opaque handle. `NULL` handle = open failed. Returned `char*` are
**caller-owned, NUL-terminated** — copy out, then free with
`aether_vcr_embed_free_string`. Most config setters return a `char*` error
(empty string = OK).

Lifecycle: `open_playback(label, tape, host, port)` /
`open_playback_url(label, url, host, port)` /
`open_record(label, tape, upstream_base, host, port)` → handle;
`start(h)` (`<0` = fail); `base_url(h, host)`; `port(h)`;
`stop(h)`; `stop_and_flush(h, tape)` (+ `_fail_if_changed` / `_or_check`
variants for drift detection); `tape_length(h)`; `reset_cursor(h)`.

Diagnostics (read after a request): `last_kind(h)` (Outcome, below),
`last_index(h)`, `last_error(h)`, `clear_last_error(h)`.

Config: `redact(h, field, pat, repl)` / `unredact(...)`;
`normalize_whole_tape(h, pat, name)` vs `redact_whole_tape(h, pat, repl)`
(see Gotchas); `remove_header(h, field, name)`;
`strict_ignore_common_headers(h)`; `set_strict_headers(h, int)`;
`note(h, k, v)`; `static_content(h, mount, dir)`; `untaped(h, path)`;
`indent_code_blocks(h)` / `emphasize_http_verbs(h)`; plus `clear_*` resets.

`Field` (int): `Path=1, ResponseBody=2, RequestHeaders=3, RequestBody=4,
ResponseHeaders=5`.

`Outcome`/`last_kind` (int): `Ok=0, PathOrMethodDiff=1, HeaderMissing=2,
HeaderValueDiff=3, HeaderUnexpected=4, TapeExhausted=5, BodyDiff=6,
RecordError=7`. Anything non-zero = a mismatch; the test should assert `0`.

The `.so` is found via `SERVIRTIUM_VCR_LIB` (abs path, set by every `.tests.ae`),
else `native/` next to the binding, else the OS loader.

## Build/test (aeb)

The build runner is **aeb** (sibling repo `../aeb`; its `LLM.md` is the deep
reference). Quick facts:

- **Not on `PATH`** in a fresh shell — it's at `~/.local/bin/aeb`. Prefix
  `export PATH="$HOME/.local/bin:$PATH"` or call it by full path.
- A build leaf is a **dot-prefixed `.ae`** with entrypoint `aeb(cap) { b =
  build.start() … }` (the old `main()` was migrated; don't migrate ordinary
  Aether *programs* like `core_tests/*_probe.ae` / `test_vcr_*.ae` — those keep
  `main()`).
- `.tests.ae` classifies as a **test** node; any other custom name
  (`.record.ae`, `.triple.ae`, …) is a generic leaf, run by name.
- Edges are literal strings: `build.dep(b, "core/.build.ae")` — every binding
  deps the engine node so the `.so` is built first.
- **Per-node output goes to `target/.aeb/logs/<label>.log`**, not stdout. When
  a leaf "passes silently", read the log for the body's `println`.
- **Never run two top-level `aeb` invocations concurrently** — they clobber the
  shared `target/_ae_build_all` workspace. Run leaves sequentially.

## Gotchas / hard-won

- **Two normalization verbs, don't confuse them.** `normalize_whole_tape(pat,
  name)` correlates matches into `{{name-N}}` tokens (use for things that recur
  and must stay consistent — UUIDs, CSRF tokens). `redact_whole_tape(pat, repl)`
  collapses every match to one constant (use for variable-cardinality noise —
  dates). Both operate across the *whole* tape (request + response), not one
  field.
- **At record time, strip volatile request headers** (`remove_header(
  RequestHeaders, …)` for `User-Agent`, `Accept-*`, `sec-ch-*`, `Origin`,
  `Referer`, …) or strict-match playback will reject a real browser's headers.
  `untaped(path)` keeps incidental fetches (e.g. `/favicon.ico`) off the tape
  and out of the playback cursor.
- **JVM family ≠ a binding.** `kotlin/scala/clojure/groovy` consume the Java
  jar via seamless interop — their `.tests.ae` installs the Java jar to `~/.m2`
  first, then runs `mvn test`. No second `.so` binding.
- **BEAM family shares one NIF (Erlang owns it).** `erlang/.build.ae` compiles
  the canonical NIF ONCE into the OTP app `servirtium_nif`
  (`erlang/_build/servirtium_nif/{ebin,priv}`). `elixir/` and `gleam/` `build.dep`
  on that node and load the SAME compiled `servirtium_nif` module over the BEAM —
  Elixir via `defdelegate` in `Servirtium.Native`, Gleam via `@external`. Erlang
  is the BEAM's "Java" here, exactly as the one Java jar backs the JVM four.
  Putting the shared app on a consumer's code path: `erl`/escript honor
  **ERL_LIBS** (point it at `erlang/_build`); **mix does NOT** fold ERL_LIBS in,
  so Elixir's `test_helper.exs` does `Code.append_path` from `SERVIRTIUM_NIF_EBIN`;
  `gleam test` honors ERL_LIBS. The loader (`servirtium_nif.erl`) finds the `.so`
  via `code:priv_dir(servirtium_nif)`, or a `SERVIRTIUM_NIF_DIR` override.
- The website (`../servirtium-site`, Jekyll) publishes the Storybook demo at
  `/storybook/`; Jekyll silently drops files whose names start with `_`, and its
  `compress.html` layout collapses 2+ space runs (bites SVG/Storybook chunks).

## Repo geography

`core/` engine + ABI. `<lang>/` one binding each (its own README is the
per-language source of truth). `core_tests/` pure-Aether engine probes.
`integration/` end-to-end demos (subversion checkout, climate API, the
Vue+Storybook+Selenium component-test demo). Root `README.md` has the Bindings
table (the registry) and the layout block.
