# Notes to self (LLM assisting on servirtium-vcr)

Not a CLAUDE.md — short, opinionated, written for a future LLM picking up
mid-task. Re-read at the start of every session. The code is the source of
truth; this is just the map so your *first* attempt lands clean.

## What this is, in one paragraph

Servirtium records an HTTP conversation to a human-readable **Markdown tape**
once, then **replays** it forever — offline, deterministic, git-diffable. This
repo is **one native engine + thin per-language bindings**. The engine
(`core/vcr.ae`, pure Aether: parser/emitter, tape store, matcher, dispatchers,
record — the old 2133-line `aether_vcr.c` was folded in and deleted) compiles
via `core/embed.ae` (the C ABI) to `core/native/libservirtium_vcr.so`. The only
C left is `core/_embed_strdup.c` (~12 lines: the caller-owned-string
malloc/free bridge), linked via one `--extra` in `core/.build.ae`. Every language directory
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
`set_match_json_body(h, int)` (opt-in JSON-semantic request-body matching, below);
`note(h, k, v)`; `static_content(h, mount, dir)`; `untaped(h, path)`;
`indent_code_blocks(h)` / `emphasize_http_verbs(h)`; plus `clear_*` resets.

`Field` (int): `Path=1, ResponseBody=2, RequestHeaders=3, RequestBody=4,
ResponseHeaders=5`.

`Outcome`/`last_kind` (int): `Ok=0, PathOrMethodDiff=1, HeaderMissing=2,
HeaderValueDiff=3, HeaderUnexpected=4, TapeExhausted=5, BodyDiff=6,
RecordError=7`. Anything non-zero = a mismatch; the test should assert `0`.

The `.so` is found via `SERVIRTIUM_VCR_LIB` (abs path, set by every `.tests.ae`),
else `native/` next to the binding, else the OS loader.

Converter (no handle): `har_import(har_path, tape_path)` — turns a HAR 1.2 capture
into a Servirtium markdown tape (see the HAR section below).

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

## Third-party-consumer tests (`.package.ae` + `.example.ae`)

The in-tree `<lang>/.tests.ae` runs each binding's own suite against the source
tree with the engine `.so` handed in via `SERVIRTIUM_VCR_LIB` — it proves the
binding works, **not** that a downstream user can install and use it. That gap
is covered by a second layer every binding now has:

- **`<lang>/.package.ae`** builds the idiomatic distributable the way a consumer
  receives it, with the engine `.so` bundled inside — wheel/gem/npm-tgz/nupkg/
  jar-to-`~/.m2`/crate/Composer-copy/pub, or (for the compiled/linked group) the
  `.so` staged where the binding's linker/loader finds it.
- **`<lang>/.example.ae`** installs that artifact into a **clean** environment
  (`target/<lang>-consumer`, a fresh venv / isolated gem dir / local NuGet feed /
  relocated package) and runs `<lang>/example/` — a real consumer project that
  imports the **installed** package and replays the canonical `single_get` tape,
  **with `SERVIRTIUM_VCR_LIB` unset** (`env -u`), so only the bundled `.so`
  satisfies the load. Green = a naive `pip install` / `gem install` / … works.

Two `.so`-location modes (per the design decision): **explicit** — a first-class
`native_lib=`-style arg pins the path (Ruby `.native_lib`, Python `native_lib=`,
…; Pharo's `ServirtiumLibrary libPath:`); **discovery** — zero-config, the
installed package finds its own bundled `.so`. Java/.NET are discovery-only (the
`.so` ships as a jar/nupkg *resource* — no loose file to point at); the
compiled/linked group (go/rust/nim/zig/lua/haskell + the BEAM NIF) relies on a
relocatable rpath (`$ORIGIN` or a bundled `native/`), proven by publishing a
package copy with **no `core/` sibling** so the repo layout can't accidentally
satisfy the link. Run the whole set with `aeb <lang>/.example.ae …` (shared deps
— engine `.so`, the Java jar, the Erlang NIF — build once across the DAG).

**Record-and-compare (the `record` mode).** Playback-only consumer tests prove
the *player* works; they say nothing about whether the installed package's
*recorder* emits a tape that's interchangeable with the canonical one. Three
representative bindings — **Python** (FFI-loader), **Rust** (link-time), **Java**
(JVM/jar) — additionally record and assert **byte-identity** with the golden:
they record against a **tiny raw-socket HTTP upstream** (200 `text/plain`
`ok-body`), strip the volatile request headers the client injects *and* the
volatile response headers the upstream adds (Content-Length/Connection/Date/…),
flush, and compare the fresh tape to `single_get.md` byte-for-byte — then replay
the recording to prove recorder+player round-trip. A **raw socket, not a second
VCR playback server**, is the upstream on purpose: the Rust wrapper (and possibly
others) **serialize VCR servers process-wide** (`server_lock()` — a second
`start()` blocks until the first is dropped), so recording *against* an in-process
playback server would deadlock. Keeping the recorder the only live VCR server
sidesteps that and is uniform across bindings. The other 18 bindings do the
structural argument only (one engine, one recorder, no per-binding record logic).

**Tape format is compact/tight, and that is canonical here.** The emitter writes
the next `### …` section heading directly after a closing code fence — **no blank
line between fence and heading** (blank lines separate *interactions*, and one
trailing blank ends the tape). The `single_get.md` goldens under `*/example/` are
byte-identical to this emitter output (regenerate by recording, don't hand-edit).
The parser stays lenient and also accepts the looser "blank line after every
fence" style other Servirtium tools emit — so cross-impl *playback* still works;
only our *emitted* bytes are compact. See the format spec comment atop
`core/vcr.ae`.

## HAR import (`har_import`)

`aether_vcr_embed_har_import(har_path, tape_path)` (Aether: `vcr.har_import`)
converts a **HAR 1.2** capture — Chrome DevTools / Fiddler / Charles / mitmproxy /
Postman export — into a Servirtium markdown tape. It's a pure file→file transform
(no server handle). The workflow it unlocks: capture real traffic you can't easily
route through a record-proxy (a browser SPA, a mobile app behind a proxy) →
`.har` → tape → deterministic replay across all 21 bindings. There's also a **standalone CLI** — `core/har_cli.ae` (built to `target/servirtium-har`
by `core/.har_cli.ae`, or `ae build core/har_cli.ae -o servirtium-har`): a thin argv
shim doing `servirtium-har import <in.har> <out.md>` / `export <in.md> <out.har>`.
It statically links the pure-Aether `vcr` module, so it's a self-contained binary
(no `.so`, no env var). The reverse direction, **`har_export(tape_path, har_path)`**
(ABI `aether_vcr_embed_har_export`), serialises a tape back to HAR 1.2 JSON via
`std.json`; `test_vcr_har_export.ae` round-trips tape→HAR→tape byte-identically.
Implementation:
`core/vcr.ae` parses the HAR JSON via `std.json` and feeds each entry through the
same `tape_append_k` + `emit_tape` path record mode uses, so output is
byte-consistent with a natively recorded tape. Field mapping mirrors
Vcr.HttpRecorder's HAR model (portions © Giannis Georgopoulos, MIT — see
`LICENSE`). Deliberate mapping choices (all in the `har_import` comment):
- **Request headers are dropped.** Servirtium matches a non-empty recorded
  request-headers block by default, and a browser's volatile headers would never
  match a test client — so imported tapes match on **method + path (+ request
  body)**, like the `single_get` golden.
- **Request body is kept** (distinguishes POSTs to one path; pair with
  `set_match_json_body` for JSON APIs).
- **Response** status/headers/body kept; hop-by-hop + `Content-Encoding` dropped
  (the body is stored decoded). Header-name casing is preserved as-is (HTTP/2 HARs
  lower-case them; HTTP is case-insensitive and the `(200: type)` line comes from
  `content.mimeType`). base64 HAR content → the engine's `"<mime> base64 below"`
  convention.
- Guarded by `core_tests/test_vcr_har_import.ae` (import → assert tape → replay).
- **Latent bug this surfaced + fixed:** `http_request_query` returns the query
  *without* its leading `?`, but `build_recorded_path` / `build_upstream_url`
  concatenated `path + query` directly → malformed `/okx=1` (record-mode upstream
  forwarding with a query was also broken). Now both re-insert the `?`. No
  existing tape had a query string, so no back-compat impact.

## Gotchas / hard-won

- **JSON request-body matching is opt-in and lives in the engine.**
  `set_match_json_body(h, 1)` makes a request body that differs byte-for-byte
  get a second chance at *semantic* JSON equality (object key order + whitespace
  ignored; array order significant) before it's a `BodyDiff`. Off by default —
  the engine stays byte-exact — and a **non-JSON body always falls back to the
  byte-exact verdict**, so enabling it never loosens non-JSON matching. Logic is
  `json_deep_equal` / `json_bodies_equal` in `core/vcr.ae` (via `std.json`); the
  `core_tests/test_vcr_json_body_match.ae` proves off→reject / on→match /
  on+non-JSON→reject. Modelled on Vcr.HttpRecorder's `RulesMatcher.ByJsonContent`
  (portions © Giannis Georgopoulos, MIT — see the `LICENSE` attribution line).
  Binding surface follows the `strict_headers` pattern exactly (a
  `PlaybackBuilder.match_json_body()` toggle), wired across the bindings that
  expose `strict_headers`: python/rust/java/ruby/javascript/php/dart/go/nim/zig/
  lua/haskell/elixir/dotnet/pharo, plus the shared BEAM NIF; kotlin/scala/groovy/
  clojure inherit it free from the Java `PlaybackBuilder`. **erlang's and gleam's
  idiomatic wrappers deliberately don't surface it** — they stage no playback
  config at all (no `strict_headers` either), so parity means not adding it;
  it's still reachable via `servirtium_nif:set_match_json_body/2`.
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
  jar via seamless interop — their `.tests.ae` compiles + runs JUnit aeb-native
  (no Maven, `.so` via `SERVIRTIUM_VCR_LIB`). No second `.so` binding. (The
  `~/.m2` install only happens in the third-party-consumer `.example.ae` layer
  below, not the in-tree `.tests.ae`.)
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
