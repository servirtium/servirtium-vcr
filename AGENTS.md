# Notes to self (LLM assisting on servirtium-vcr)

Not a CLAUDE.md — short, opinionated, written for a future LLM picking up
mid-task. Re-read at the start of every session. The code is the source of
truth; this is just the map so your *first* attempt lands clean.

## What this is, in one paragraph

Servirtium records an HTTP conversation to a human-readable **Markdown tape**
once, then **replays** it forever — offline, deterministic, git-diffable. This
repo is **one libservirtium_vcr + thin per-language bindings**. libservirtium_vcr
(`core/vcr.ae`, pure Aether: parser/emitter, tape store, matcher, dispatchers,
record — the old 2133-line `aether_vcr.c` was folded in and deleted) compiles
via `core/embed.ae` (the C ABI) to `libservirtium_vcr.so` (built by
`aether.shared_lib` in `core/.build.ae` to `target/build/core/lib/`, with a
compat copy at `core/native/` — go's cgo LDFLAGS and other link lines bake that
path in). The only C left is `core/_embed_strdup.c` (~12 lines: the
caller-owned-string malloc/free bridge), linked via the node's
`extra_source(...)`. Every language directory
(`go/`, `python/`, `rust/`, …) is a **thin FFI shim** over that one `.so` — no
re-implementation of Servirtium logic per language. That's the whole design:
the old "each language has its own recorder/replayer/server" era is over (see
the archived `servirtium/README` repo). Byte-identical recording across
languages is now *structural*, not a cross-impl test.

## The one rule

**Bindings carry no logic.** A binding opens a handle, configures it, starts the
server, hands back a base URL, and stops. Anything smarter than marshalling
strings across the FFI belongs in `core/`, not in a binding. If you're tempted
to parse a tape or match a request in a binding, stop — that's libservirtium_vcr's job.

## Adding a language (the entire job)

There is **no tutorial, and there shouldn't be** — the existing bindings *are*
the spec. To add, say, Perl:

1. **Pick the nearest existing binding by FFI mechanism** and copy its shape.
   The README's Bindings table is the registry; the taxonomy:
   - **Load the `.so` at runtime** (most languages): `python/` ctypes,
     `ruby/` Fiddle, `javascript/` koffi, `rust/` libloading, `dotnet/` P/Invoke,
     `php/` ext-ffi, `dart/` dart:ffi, `pharo/` UnifiedFFI, `julia/` ccall,
     `janet/` built-in `ffi/native`
     (by absolute path from `SERVIRTIUM_VCR_LIB` — nothing to stage). ← Perl
     (FFI::Platypus) lives here.
   - **Link at build time**: `nim/` importc, `zig/` extern "C", `go/` cgo,
     `haskell/` ccall, `crystal/` `@[Link]` + `lib`, `d/` `extern(C)`,
     `swift/` C interop via a clang module map.
   - **C extension / native module**: `lua/` (Lua 5.4 C API).
   - **No FFI bridge at all — the ABI is already C**: `c/` is a header
     (`include/servirtium.h`) + a thin ergonomic layer (`sv_str` ownership,
     enums, open+start folded into one call). `cpp/` is a header-only RAII
     wrapper over THAT, linking the C client's object compiled AS C (so its
     `extern "C"` symbols aren't mangled) — the `c_objects` artifact from
     `c/.objects.ae`, which exists precisely so neither target recompiles it.
   - **BEAM family — one shared NIF**: `erlang/` owns the canonical C NIF (the
     `servirtium_nif` OTP app, built once by `erlang/.build.ae`); `elixir/`,
     `gleam/` and `lfe/` consume that SAME compiled module over the BEAM (no
     copied C source, no second `.so`) — see the BEAM note below.
   - **No FFI at all — over the Java jar**: `kotlin/ scala/ clojure/ groovy/`
     (JVM family; seamless interop, no second native binding).
   - **No FFI at all — over the .NET assembly**: `fsharp/` (CLR family; ordinary
     .NET interop over `dotnet/Servirtium.Vcr`'s P/Invoke classes). Its leaf
     ProjectReferences the GENERATED `.Servirtium.Vcr.generated.csproj`, so it
     must `dep("dotnet/Servirtium.Vcr/.build.ae")` to make that file exist.
2. **Bind the C ABI** (next section). `rust/src/native.rs` is the canonical 1:1
   reference for the full symbol table and signatures.
3. **Write one playback test** of the canonical tape
   (`<lang>/.../tapes/single_get.md`: `GET /ok` → `200 text/plain` body
   `ok-body`). Assert the body is `ok-body` and `last_kind == 0` (Ok). Most
   bindings just curl the playback server.
4. **Add a `.tests.ae` leaf** (see Build/test). It `dep()`s
   `core/.build.ae`, then compiles + runs the test with `SERVIRTIUM_VCR_LIB`
   pointed at `libservirtium_vcr.so` (via `dep_artifact(..., "shared_lib")`).
5. **Verify**: `aeb <lang>/.tests.ae` → exit 0, `test: <lang>`.

That's it. I added Nim/Zig/Lua/Erlang/Gleam this way with no guide — just the
existing bindings + the ABI table; then LFE/F#/C/C++/Crystal/Julia/Swift/D the
same way, by reading the sibling `../selenium` repo's equivalents for the
FFI mechanism and this repo's `erlang`/`dotnet`/`core` leaves for the wiring.
**30 languages** now: 25 rows in the README's Bindings table, plus the JVM four
and F#. Only the family riders are free; each genuinely new FFI mechanism is
a day's care, mostly in the leaf.

## The C ABI (`aether_vcr_embed_*`)

Per-listener, handle-based: **N independent VCR servers run concurrently in one
process** ("one server per port"). Every config/diagnostic/lifecycle call takes
the opaque handle (the VCR's own record; nothing about a VCR lives anywhere
else, no process-wide state). Returned `char*` are
**caller-owned, NUL-terminated** — copy out, then free with
`aether_vcr_embed_free_string`. In `core/embed.ae` those exports (and
`vcr_embed_dup`/`vcr_embed_free_string`) are typed `ptr`, NOT `string`: since
Aether 0.819 an `--emit=lib` export returning `string` hands the host an Aether
string handle (first byte 0xDE), not a `char*`, so typing them `string` breaks
every binding at runtime while still compiling clean. Keep new string-returning
exports `-> ptr` and return `vcr_embed_dup(...)`. Most config setters return a `char*` error
(empty string = OK).

Lifecycle: `open_playback(label, tape, host, port)` /
`open_playback_url(label, url, host, port)` /
`open_record(label, tape, upstream_base, host, port)` → handle, never NULL
(except out of memory); `open_error(h)` is `""` if it opened, else why not
(a failed open is a dead handle carrying its reason — there is no global
"last open error", and `last_error(NULL)` is `""`);
`start(h)` (`<0` = fail); `base_url(h, host)`; `port(h)`;
`stop(h)`; `stop_and_flush(h, tape)` (+ `_fail_if_changed` / `_or_check`
variants for drift detection); `tape_length(h)`; `reset_cursor(h)`;
`destroy(h)` frees the VCR — every handle an open returned, failed or not,
exactly once, after the last diagnostic read (stop keeps the record readable;
destroy does not). Every binding's close/dispose idiom stops then destroys.

Diagnostics (read after a request): `last_kind(h)` (Outcome, below),
`last_index(h)`, `last_error(h)`, `clear_last_error(h)`.

Config: `redact(h, field, pat, repl)` / `unredact(...)`;
`redact_whole_tape(h, pat, repl)`; volatile values `volatile_rule(h, scope,
kind, pattern)`, `volatile_bind(h, name_or_token, value)`,
`volatile_profile(h, path)`, `set_volatile_markers(h, style)`,
`volatile_report(h)` (see Gotchas and `docs/volatile-values.md`); `remove_header(h, field, name)`;
`strict_ignore_common_headers(h)`, `ignore_volatile_headers(h)`,
`remove_transport_headers(h)`, `remove_cloud_headers(h, vendor)`,
`redact_credentials(h)`, `redact_credential_header(h, name)` (the opt-in
header presets, below); `set_upstream_cafile(h, path)` (record mode: verify
an https upstream against this PEM CA, e.g. Elasticsearch 8's own; guarded by
`core_tests/tls_probe.ae`); `set_strict_headers(h, int)`;
`set_match_json_body(h, int)` (opt-in JSON-semantic request-body matching, below);
`set_match_multiple(h, int)` (reusable/order-independent playback) and
`match_header(h, name)` / `clear_match_headers(h)` (ByHeader — match a specific
request header), both below;
`add_license_notice(h, text)` (plain text written at the top of each tape
under a `## LICENSE NOTICE` heading, before `## Interaction 0`, for the
recorded service's licence terms; the developer supplies any line breaks;
playback ignores it, so no line may start `## Interaction ` or
`## [Recording rules]`; `core_tests/test_vcr_license_notice.ae`);
`note(h, k, v)`; `static_content(h, mount, dir)`; `untaped(h, path)`;
`indent_code_blocks(h)` / `emphasize_http_verbs(h)`;
`set_sort_json_keys(h, int)`, `sort_json_array(h, path, by)`,
`sort_json_array_at(h, request, path, by)`,
`set_sort_response_headers(h, int)`, `sort_header_value(h, name)`,
`clear_stable_order(h)` (opt-in stable order, below);
`set_playback_range(h, from, to)` (caller frees) / `clear_playback_range(h)` /
`get_playback_range_from(h)` / `get_playback_range_to(h)` (replay only a slice
of the tape, below); plus `clear_*` resets.

`Field` (int): `Path=1, ResponseBody=2, RequestHeaders=3, RequestBody=4,
ResponseHeaders=5`.

`Outcome`/`last_kind` (int): `Ok=0, PathOrMethodDiff=1, HeaderMissing=2,
HeaderValueDiff=3, HeaderUnexpected=4, TapeExhausted=5, BodyDiff=6,
RecordError=7`. Anything non-zero = a mismatch; the test should assert `0`.

The `.so` is found via `SERVIRTIUM_VCR_LIB` (abs path, set by every `.tests.ae`),
else `native/` next to the binding, else the OS loader.

Converters (no handle): `har_import(har_path, tape_path)` — turns a HAR 1.2 capture
into a Servirtium markdown tape (see the HAR section below);
`convert_bru(collection_dir, out_dir, env)` — a Bruno collection's examples to
tapes (see "Bruno" below); both return `""` or the error.

## Build/test (aeb)

The build runner is **aeb** (sibling repo `../aeb`; its `AGENTS.md` is the deep
reference). Quick facts:

- Manage Aether with `ae version install 0.912.0` and `ae version use 0.912.0`;
  check `ae version` confirms matching `ae`/`aetherc`. Use the version manager
  for upgrades rather than manually downloading toolchain archives. If aeb picks
  an older private compiler, pass `AETHER=/absolute/path/to/selected/ae`.
- **Not on `PATH`** in a fresh shell — it's at `~/.local/bin/aeb`. Prefix
  `export PATH="$HOME/.local/bin:$PATH"` or call it by full path.
- A build leaf is a **dot-prefixed `.ae`** with the Shape A ("b-free")
  entrypoint: `import bldr` + `aeb(cap) { bldr.build() { … } }` — `dep()`,
  `dep_artifact()`, `publish_artifact()`, `_get("root"/"target_dir")` and the
  SDK builders are all context-injected inside the `bldr.build()` block; no
  `b` handle anywhere (the whole repo was swept in `89e327e`; needs aeb >=
  0.290). Don't migrate ordinary Aether *programs* like
  `core_tests/*_probe.ae` / `test_vcr_*.ae` — those keep `main()`.
- `.tests.ae` classifies as a **test** node; any other custom name
  (`.record.ae`, `.triple.ae`, …) is a generic leaf, run by name. Node output
  lands under `target/<buildtype>/<module>/` (buildtype = the leaf name).
- Edges are literal strings: `dep("core/.build.ae")` — every binding deps the
  libservirtium_vcr node so the `.so` is built first.
- libservirtium_vcr + CLI + the pure-Aether probes build via the **`aether` SDK
  builders** (`aether.shared_lib` for libservirtium_vcr, `aether.program` for
  `core/cli.ae` and the core_tests/integration probes — `lib("..")`-style
  setters resolve root-relative imports like `import core.vcr`, since the
  compile cwd is the leaf's dir). Only genuinely-imperative test choreography
  (spawn upstream / poll / run / teardown) stays as inline `os.system`.
- **Per-node output goes to `target/.aeb/logs/<label>.log`**, not stdout. When
  a leaf "passes silently", read the log for the body's `println`.
- **Never run two top-level `aeb` invocations concurrently** — they clobber the
  shared `target/_ae_build_all` workspace. Run leaves sequentially.
- **Aether 0.849.0 is pinned ahead of publication by explicit request.** The
  monitor migration was verified against Aether commit `6d36a042`, including
  ABI diagnostics, Python/CLI suites and 200 start/immediate-stop cycles.
  This does not claim verification of the unreleased 0.849.0 binary.

## GhostBSD (FreeBSD) lane

`ssh ghostbsd` (FreeBSD 15.1 amd64) is a regular test host beside the Linux box
`cachyos`. Everything lives under `~/aether-lab/` there; `~/aether`,
`~/aether-ui`, `~/aeoenv.sh`, `~/scm` and `~/aether-lab/aether*` belong to other
sessions. Last full sweep: 2026-11-08, every binding leaf (on 0.897.0 and on
the Aether PR #3624 build, which shipped as 0.898.0).

- **Sync** the committed tree, never the working tree (macOS adds `._` files):
  `git archive HEAD | ssh ghostbsd 'mkdir -p ~/aether-lab/svcr && tar xf - -C ~/aether-lab/svcr'`
- **Toolchain** (private, none of it touches `~/.aether`): released Aether
  0.898.0 + aeb v0.344 in `~/aether-lab/svcr-prefix` (aeb's `get.sh` with
  `PREFIX=`, `AE_PIN`, `AEB_REF`). `. ~/aether-lab/svcr-env.sh` puts it first on
  `PATH`, sets `AE_CC=cc CC=cc` (no gcc on FreeBSD; `aeb-link` honours `AE_CC`),
  and puts zig 0.17.1 (`~/aether-lab/zig-x86_64-freebsd-0.17.1`) and nim on
  `PATH`. No shim: Aether 0.898.0 and aeb v0.344 (the first aeb release built
  with it) fixed the FreeBSD `sh -c --` bug that once needed an `LD_PRELOAD`.
  `. ~/aether-lab/svcr-langenv.sh` (source it second) holds the per-language
  state, all under `~/aether-lab`: the pytest venv `svcr-venv`, `JAVA_HOME`
  (openjdk25), `BUNDLE_PATH=svcr-gems` (run `bundle install` once in `ruby/`),
  `CABAL_DIR=svcr-cabal` (run `cabal update` once), `KOTLIN_HOME`,
  `GROOVY_HOME=svcr-groovy/groovy-5.1.0` (the groovy binding needs 5.1; the pkg
  is 2.4; fetched from Maven Central `groovy-binary`), `PATH` += `svcr-bin`
  (`dmd` -> `ldmd2`), and `svcr-stubs` (a `libexecinfo.so` symlink to
  `/usr/lib/libexecinfo.so.1`) via `RUSTFLAGS=-L` and `LIBRARY_PATH`, because
  FreeBSD 15 ships only the versioned lib and rustc/ldc2 link `-lexecinfo`.
- **Run**: `. ~/aether-lab/svcr-env.sh; . ~/aether-lab/svcr-langenv.sh; cd <tree>; aeb <lang>/.tests.ae`,
  one at a time per tree (`core_tests/.tests.ae` first; ~6–8 min). C# is `dotnet/Servirtium.Vcr.Tests/.tests.ae`.
  Whole sweep: `~/aether-lab/svcr-runall.sh <tree> <outdir> <leaf>...` (~1.5 h).
- **Results**: on 0.897.0 everything failed only on the three Aether bugs
  below; on the 0.898.0 code (PR #3624) every leaf that can run here passes
  (core_tests 36/36). Re-checked on the 0.898.0 + v0.344 release: core_tests
  and go green with no shim.
- **Cannot run here**: lfe (pkg LFE 2.2.0's `lfe_init` calls
  `user_drv:start(#{initial_shell => noshell})`, which OTP 28 rejects with
  `badkey input`, so every `lfe -noshell -eval ...` dies; LFE/OTP, not
  servirtium), pharo (the pkg VM aborts at startup: "Could not allocate codeZone
  in the expected place"), integration (needs Chrome + chromedriver; only
  firefox is installed), julia and swift (not packaged; the leaves skip with
  0/0, which shows as rc=0 and means nothing).
- **FreeBSD problems in Aether <= 0.897.0** (Aether bugs, not servirtium's;
  fixed in aether-lang-dev/aether#3624, released in 0.898.0; aeb v0.344 is
  built with it). Anyone pinned below those still hits them:
  1. `std/os/aether_os.c` runs `sh -c -- <cmd>`; FreeBSD `sh` takes `--` as the
     command, so every `os.system` fails with `--: not found` (aeb cannot even
     build its own helpers).
  2. The FreeBSD release `libaether.a` is built without PCRE2: `std.regex`
     answers "built without libpcre2-8". Fails `sort_json_array_at` /
     `normalize` / `redact_whole_tape` tests in every binding (core_tests:
     keeps_headers, rules_footer, stable_order; release/artifact_tests).
  3. `std.http` `serve_file` double-sends the response, so the static_content
     tests fail (core_tests, go, java, python, zig, nim, javascript, elixir, rust, c#, janet's
     `playback-url`).
- Portability fixes that came out of the sweep: lua finds `lua54`/`lua-5.4`
  (`lua/lua-detect.sh`), and the release artifact check dlopens the host's own
  slot instead of always `linux-x86_64` (its fixture was Linux-only).
- `core_tests/tls_probe.ae` imports `std.cryptography.tls13_server` so HTTPS
  works without an OpenSSL link; that was the one servirtium-side gap.

## Third-party-consumer tests (`.package.ae` + `.example.ae`)

The in-tree `<lang>/.tests.ae` runs each binding's own suite against the source
tree with `libservirtium_vcr.so` handed in via `SERVIRTIUM_VCR_LIB` — it proves the
binding works, **not** that a downstream user can install and use it. That gap
is covered by a second layer every binding now has:

- **`<lang>/.package.ae`** builds the idiomatic distributable the way a consumer
  receives it, with `libservirtium_vcr.so` bundled inside — wheel/gem/npm-tgz/nupkg/
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
— `libservirtium_vcr.so`, the Java jar, the Erlang NIF — build once across the DAG).

**Record-and-compare (the `record` mode).** Playback-only consumer tests prove
the *player* works; they say nothing about whether the installed package's
*recorder* emits a tape that's interchangeable with the canonical one. Three
representative bindings — **Python** (FFI-loader), **Rust** (link-time), **Java**
(JVM/jar) — additionally record and assert **byte-identity** with the golden:
they record against a **tiny raw-socket HTTP upstream** (200 `text/plain`
`ok-body`), strip the volatile request headers the client injects *and* the
volatile response headers the upstream adds (Content-Length/Connection/Date/…),
flush, and compare the fresh tape to `single_get.md` byte-for-byte — then replay
the recording to prove recorder+player round-trip. The upstream is a **raw socket, not a second
VCR playback server**, so the test proves the recorder against something that is
not Servirtium. Nothing forbids two VCRs in one process any more: each VCR owns
its state, and the Rust wrapper's process-wide `server_lock()` is gone (939ee82). The other 18 bindings do the
structural argument only (one libservirtium_vcr, one recorder, no per-binding record logic).

**Tape format is compact/tight, and that is canonical here.** The emitter writes
the next `### …` section heading directly after a closing code fence — **no blank
line between fence and heading** (blank lines separate *interactions*, and one
trailing blank ends the tape). The `single_get.md` goldens under `*/example/` are
byte-identical to this emitter output (regenerate by recording, don't hand-edit).
The parser stays lenient and also accepts the looser "blank line after every
fence" style other Servirtium tools emit — so cross-impl *playback* still works;
only our *emitted* bytes are compact. See the format spec comment atop
`core/vcr.ae`.

## What a recording keeps (headers)

Record mode writes the headers **as they were sent**: every request header
the client sent (`Host`, `User-Agent`, `Accept`, `Accept-Encoding`,
`Connection`, `Content-Length` ...) and every response header the service
sent. There is no built-in drop list. The only hard-coded exception is
Servirtium 1's: when the upstream gzips, the tape stores the body decoded and
leaves out that response's `Content-Encoding` and `Content-Length`, which
describe bytes the tape does not hold. Anything else stays out only because a
test removed it (`remove_header`: a CDN's or a cloud load balancer's headers
the app maker never agreed to) or redacted it.

Two places still treat transport headers specially, without dropping them
from the tape:
- **Matching** skips `skip_in_matching` names (the hop-by-hop set, `Host`
  first, plus `Accept-Encoding`) on both sides: they differ between a record
  run and a playback run, or are negotiation the VCR answers itself.
- **Playback** does not replay hop-by-hop response headers or
  `Content-Encoding`: the replay server frames its own response
  (`Content-Length`, chunking) and gzips on request.

Guarded by `core_tests/test_vcr_keeps_headers.ae`. Tapes recorded before this
(no `Host` etc.) play back unchanged.

## Header presets (opt-in)

Most tests want the same few rules, so each of these is one call that
registers ordinary rules. None is on by default. The footer lists each one
under its preset's name, so a reader sees which preset left a header out.

| Preset | What it does |
|---|---|
| `redact_credentials_h(h)` | `Authorization` / `Proxy-Authorization` keep their scheme (`Bearer AUTHORIZATION_1`); each cookie's value in `Cookie` and `Set-Cookie` becomes `COOKIE_N` (attributes kept); `X-Api-Key` and `X-Auth-Token` become `API_KEY_N` / `AUTH_TOKEN_N` |
| `redact_credential_header_h(h, name)` | one more header the same way, its whole value a token named after it (`X-Vault-Token: X_VAULT_TOKEN_1`) |
| `remove_cloud_headers_h(h, vendor)` | a vendor's CDN / load-balancer tracing and cache-status headers; vendors in `CLOUD_VENDORS` (`aws, azure, cloudflare, fastly, gcp`), unknown names are an error |
| `remove_transport_headers_h(h)` | `Host`, `Connection`, `Content-Length`, the other hop-by-hop headers and the request's `Accept-Encoding` (Servirtium 1's behaviour) |
| `strict_ignore_common_headers_h(h)` | the request's `User-Agent`, `Accept`, `Accept-Encoding`, `Connection` |
| `ignore_volatile_headers_h(h)` | the request's `traceparent`, `tracestate`, `Request-Id`, `X-Request-Id`, `X-Correlation-Id`, `baggage` |

Credentials are numbered per distinct value across the recording, in order of
appearance, so the cookie a service set and the one the client sent back are
both `COOKIE_1`, and a guest session and a logged-in one stay distinct. A
value of 8 characters or more is also replaced wherever else it appears (a
token echoed in a body); a shorter one only in its header. Playback matches
credential headers on **presence, not value**: a test's live token rarely
equals the recorded one. Register the preset on the playback handle too.

No vendor list holds `Age`, `Via`, `Cache-Control`, `ETag`, `Last-Modified`,
`Date` or `Vary`, though CDNs set them: HTTP cache libraries act on them, so
removing them could change what the app under test does.

**Servirtium records HTTP messages, not connections.** The recording holds
what the app means (method, path, headers, bodies), never the connection
(TLS, keep-alive, chunk boundaries, compression, HTTP/2 framing, timing).
Playback is a real HTTP server that does all of that itself, which is why
transport headers are made, not replayed, and why TLS works: playback serves
its own certificate, which the test trusts; a playback that took part in
the connection itself could never be extended to TLS. A test that
depends on connection-level behaviour is outside what Servirtium can test;
don't stretch it there.

Guarded by `core_tests/test_vcr_header_presets.ae`.

## Stable order (opt-in)

For a service that sends the same response in a different order every run
(a Go map or Java set behind a JSON object or array, a Rust server's
header order, a list ordered by a random id). Without these a re-record
differs and `check` fails, and the only cure is throwing content away. Each
is off by default and registered explicitly (Paul's rule: nothing implicit);
a tape recorded without them is byte-exact. All record side: the tape is
what is written, and playback serves it as it is.

**Sorted JSON is only written pretty-printed** (Paul's rule, 2026-11-07).
`sort_json_keys` and every `sort_json_array[_at]` rule need `pretty_json` on;
with one of them registered and `pretty_json` off, the tape is refused when
it is emitted (flush, check and fail-if-changed return
`sort_json_keys needs pretty_json: sorted JSON is only written
pretty-printed (turn pretty_json on)`, or the same for `sort_json_array`, and
write nothing). Why: a compact body that has been reordered looks
byte-faithful to a reader and is not; a pretty-printed one is visibly
rewritten. It is checked at emit time, not when a rule is set, because rules
and `pretty_json` arrive in any order; and `pretty_json` is never turned on
for you. The two stay separate opt-ins: `pretty_json` alone keeps the
service's key order. The header rules (`sort_response_headers`,
`sort_header_value`) are not JSON and need nothing.

| Core (`_h`; bare form without it) | C ABI (`aether_vcr_embed_…`) | What it writes |
|---|---|---|
| `sort_json_keys_h(h, on)` | `set_sort_json_keys` / `get_sort_json_keys` | JSON response bodies' object keys sorted by their bytes, at every depth; duplicates keep their order |
| `sort_json_array_h(h, path, by)` → error | `sort_json_array` (caller frees) | the arrays `path` selects, elements sorted (stably) by member `by` |
| `sort_json_array_at_h(h, request, path, by)` → error | `sort_json_array_at` (caller frees) | the same, only where the request path (query included, as sent) matches the regex `request` |
| `sort_response_headers_h(h, on)` | `set_sort_response_headers` / `get_…` | response header lines by name, case-insensitive; a repeated header's lines (Set-Cookie, Vary) keep their order |
| `sort_header_value_h(h, name)` → error | `sort_header_value` (caller frees) | that response header's comma-separated items sorted, written `a, b, c` (Allow) |
| `clear_stable_order_h(h)` | `clear_stable_order` | all off (`clear_format_options` does it too) |

Decisions, and why:
- **Keys: global and safe.** JSON object key order carries no meaning
  (RFC 8259), so a client sees the same value on replay. Sorted by the key's
  bytes as written; whitespace between members stays where it was, by
  position, so a pretty-printed body keeps its layout and its length.
- **Arrays: only when asked, per array.** Array order is often the meaning
  (a ranked result, a history), so there is no global switch. `path` is a
  JSON pointer from the root (`""` the root array, `/value`,
  `/items/*/tags`, `*` any one segment) or a bare member name (`versions`:
  every array that member holds, at any depth). `by` is a member name, a
  pointer inside each element (`/db_name/L`), several of those
  comma-separated (`/keyspace,/table_name`: the first decides, the next
  breaks ties; so a member name holding a comma cannot be used), or `""` for
  each element's canonical JSON (keys sorted, no whitespace). Two integers compare by value
  (any size), anything else by canonical bytes. If any element lacks `by`
  (any of its keys),
  that array is written as sent. The first rule that selects an array sorts
  it. `sort_json_array_at` adds a request-path regex, for when one
  endpoint's list must be sorted and another's of the same shape must not
  (Lowkey Vault: the versions of a secret by creation time, but the secrets
  themselves left in the service's name order). **This deliberately changes the recorded response**: replay serves the
  sorted order, so a test must not assert the order it sorted away.
- **Headers.** Sorting header lines loses nothing (RFC 9110: only a repeated
  header's lines are ordered, and those keep theirs). Value items are sorted
  only for a header named, because only some values are sets: never Accept
  (preference order) or a value whose quoted strings hold commas.
- **First in the pipeline, on values as sent.** Ordering runs before
  redactions, credentials, normalizations, collapses and pretty_json, so a
  value later collapsed (a creation time) can still order an array; normalize
  numbers its `{{name-N}}` tokens in the sorted order, so numbering is as
  stable as the order; pretty_json lays out the sorted body. Sort by a
  value that is the same each run: by a random id is a random order.
- **What is JSON.** A response body whose Content-Type says JSON
  (`application/json`, `text/json`, `*+json`) and that parses. Also, on a
  request path a `sort_json_array_at` rule's pattern matches, a body that is
  a JSON object or array and parses whatever its Content-Type: YugabyteDB
  serves its JSON API as `text/plain`, and naming the endpoint in a rule is
  the opt-in. Such a body is then key-sorted and pretty-printed like any
  other JSON. A `text/plain` body anywhere else that happens to start with
  `{` stays byte-exact; never a base64 body. (An earlier draft treated any
  body that parsed as JSON as JSON; that reached text the test never named.)
- **Content-Length.** Sorting keeps a body's bytes, so its length stays; the
  usual rewrite (a changed body's recorded Content-Length follows it) covers
  any combination with other rules.
- **Request side left alone.** The app under test sent the request, playback
  compares it with the tape, and a client's serializer is deterministic; a
  client that really varies its key order wants `set_match_json_body`
  (JSON-semantic matching), not a rewritten tape. Request headers are already
  written sorted by name.
- **Footer.** Each rule is a row, `ordered`, with the interactions it
  *applies to* (response headers present, the header present, a JSON body,
  a JSON body with a selected array whose every element has `by`), never the ones whose order it happened
  to change, which would make the footer itself differ run to run.
- **Check mode** compares the emitted tape, so it sees the sorted form.

Guarded by `core_tests/test_vcr_stable_order.ae` (including a real upstream
that flips its order per request: two recordings, one tape). The
pre-recorded recorder exposes them as `servirtium.sort_json_keys()`,
`sort_json_array(path, by)`, `sort_json_array_at(request, path, by)`,
`sort_response_headers()`, `sort_header_value(name)`, with
`servirtium.pretty_json(2)` beside any JSON one.

## Playback range (opt-in)

Replay only interactions `from`..`to` of a tape, inclusive. The motivating
case is a Selenium suite that sets a session cookie, goes straight to the
card page and replays only "purchase rejected with wrong CVC": the later
interactions of a tape recorded through login, cart and payment. It
complements the "already logged in" tapes of `pre-recorded/` (one scenario
per tape): the whole journey stays one tape, and a test picks its slice.

| Core (`_h`; bare form without it) | C ABI (`aether_vcr_embed_…`) |
|---|---|
| `set_playback_range_h(h, from, to)` → error | `set_playback_range` (caller frees) |
| `clear_playback_range_h(h)` | `clear_playback_range` |
| `playback_range_from_h(h)` / `playback_range_to_h(h)` | `get_playback_range_from` / `get_playback_range_to` (-1 when none) |

Semantics, and why:
- **Numbers are the tape's `## Interaction N` headings**, 0-based and
  inclusive; `to` < 0 means through the last. They shift when a tape is
  re-recorded. Set after open, before start; a bad range (from < 0, to before
  from, either past the tape's last interaction) is refused by the setter,
  and checked again at `start_background_h` (a `load_append_h` in between
  could change the tape), which then fails the start with `last_error`.
- **Ordered playback starts its cursor at `from`**; `reset_cursor` returns
  to `from`; a request once the cursor is past `to` fails with kind
  TapeExhausted, "past the end of the playback range 4–6" (naming the
  interaction outside the range it would have matched, if any).
- **Outside the range is never served.** A request that does not fit the
  expected interaction but fully fits one outside the range (or, when
  nothing inside the range shares its method and path, has that one's
  method and path) fails with kind PathOrMethodDiff and "interaction 2 is
  outside the playback range 4–6 (expected interaction 4: GET …)"; the
  cursor stays. No new Outcome kind: the int contract stays as it is. The
  message is last_error, the 599 body, and the first line of the retained
  diagnostic's diff (so `diagnostics_json` and `assert_no_mismatches` carry
  it). Any other mismatch keeps its ordinary message.
- **MatchMultiple searches only the range**, and its miss says "no recorded
  interaction in the playback range 4–6 matches …" (or the outside-range
  message above).
- **`assert_all_consumed` counts only the range** ("1 of 3 recorded
  interaction(s) in the playback range 4–6 were never replayed").
  `tape_length` stays the whole tape.
- **Playback only.** A record handle (check mode records too) refuses it:
  a recording always captures the whole conversation. Refuse rather than
  ignore, so a test that thinks it is replaying a slice cannot silently
  overwrite the journey's tape with one.
- **Tokens and credentials.** Values first introduced in skipped
  interactions are on the tape as normalized tokens (a cart id as
  `{{uuid-1}}`); the test never received them, so it sends them literally.
  Under the credential preset (`redact_credentials_h` on the playback
  handle) credential headers match on presence, so a cookie the test set
  itself passes; without the preset it is a HeaderValueDiff.

Guarded by `core_tests/test_vcr_playback_range.ae` (tape
`core_tests/tapes/playback_range.tape`, the shop journey). The pre-recorded
recorder exposes it as `servirtium.replaying_part(suite, case, url, from,
to)`: playback only; in record and check mode that case gets the
container's URL and records nothing.

## The recording-rules footer (opt-in)

`set_rules_footer_h(h, 1)` (C ABI `aether_vcr_embed_set_rules_footer`) ends a
recording with a `## [Recording rules]` section: a GitHub-rendered table of
what the test asked Servirtium to leave out or rewrite (removed headers,
redactions, normalizations, collapses) and the interactions each touched;
`none` flags a rule that matched nothing. A literal redaction's pattern is
never printed (it is often the secret); a header / query / JSON-key
redaction's name is. Off by default, so existing suites' committed tapes do
not change under them.

The parser stops at the heading **by design**: `strip_rules_footer` cuts the
text there before interactions are looked for, so nothing in a footer can
become an interaction. `core_tests/test_vcr_rules_footer.ae` stuffs a footer
with a fake `## Interaction` and checks playback still sees two; without the
cut it sees three.

## HAR import (`har_import`)

`aether_vcr_embed_har_import(har_path, tape_path)` (Aether: `vcr.har_import`)
converts a **HAR 1.2** capture — Chrome DevTools / Fiddler / Charles / mitmproxy /
Postman export — into a Servirtium markdown tape. It's a pure file→file transform
(no server handle). The workflow it unlocks: capture real traffic you can't easily
route through a record-proxy (a browser SPA, a mobile app behind a proxy) →
`.har` → tape → deterministic replay across all 21 bindings. There's also a **standalone CLI** — `core/cli.ae` (built to `target/servirtium` by
`core/.cli.ae`, or `ae build core/cli.ae -o servirtium`): a thin argv shim,
statically linking the pure-Aether `vcr` module (self-contained: no `.so`, no
env var). Subcommands: `serve <tape.md>[,more.md...] [port] [--ordered]`
(replay a tape — or a comma-separated list, concatenated via
`vcr.load_append_h` / `parse_tape_text_append` — as a live stub server; blocks
in `http_server_start_raw`; defaults to MatchMultiple so repeated/out-of-order
requests keep answering across the union of the tapes, `--ordered` restores the
libservirtium_vcr's strict consuming order over the concatenation),
`check [--canonical] <tape.md> ...` (lint:
`vcr.check_tape` parse-check, plus `vcr.canonical_check_tape` byte-comparison
against the emitter's canonical form), and `import <in.har> <out.md>` /
`export <in.md> <out.har>` (absorbed the old `servirtium-har` binary).
Black-box tested by `core_tests/cli-tests.sh` via the `core_tests/.cli.ae`
leaf (deps `core/.cli.ae`). The reverse direction, **`har_export(tape_path, har_path)`**
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
  `content.mimeType`). base64 HAR content → libservirtium_vcr's `"<mime> base64 below"`
  convention.
- Guarded by `core_tests/test_vcr_har_import.ae` (import → assert tape → replay).
- **Latent bug this surfaced + fixed:** `http_request_query` returns the query
  *without* its leading `?`, but `build_recorded_path` / `build_upstream_url`
  concatenated `path + query` directly → malformed `/okx=1` (record-mode upstream
  forwarding with a query was also broken). Now both re-insert the `?`. No
  existing tape had a query string, so no back-compat impact.

## Bruno: `convert bru` and `import-bru`

`.bru` is parsed by Bruno's own parser (`@usebruno/lang` 0.41.0 + ohm-js +
lodash, vendored unchanged in `core/bru/third_party/`, PROVENANCE.md there) running
in QuickJS embedded via aether's `contrib.quickjs` (`core/bru.ae`; a parser is
a handle, its own runtime). The JS is compiled in as heredocs:
`core/bru_js.ae` is GENERATED by `sh core/bru/gen.sh` (never edit it; the
drift test runs `gen.sh --check`). What a request means (variables, inherited
headers/auth, path, body, slugs, notes, CONVERSION.md) is Aether in
`core/bru_convert.ae`, shared by `convert bru` and `import-bru`; the old
hand-written `bru_*` reader in vcr.ae is gone. It is in libservirtium_vcr too
(`aether_vcr_embed_convert_bru`; +1.6 MB on macOS arm64), wrapped by the
JavaScript binding as `convertBru`. Tests: `core_tests/test_vcr_bru_convert.ae`
(our own fixture collection, written to a temp dir) and
`core_tests/test_vcr_bru_upstream.ae` (Bruno's own 463 tests from the vendored
package, run in our QuickJS under `core_tests/bru_jest_shim.js`).

**No spaces in names.** No tracked file or directory name may hold a space
(Paul, 2026-11-11): `core_tests/.names.ae` (a dep of `core_tests/.tests.ae`)
fails on one. Converters write slugged names for the same reason.

## Named secret callbacks

`docs/secrets.md` documents the emission-time `secretRedactor` / setup-time
`secretResolver` contract and every language surface. `core/secret_fields.ae`
extracts source spans for query/form/header/JSON/XML/YAML/multipart text; the
staging state, named markers, encoding and patches live in `core/vcr.ae`.
Bindings only iterate the seven `aether_vcr_embed_secret_*` ABI calls and invoke
host callbacks between calls. Never register native-to-HLL callbacks on the HTTP
worker. Recording staging stops/joins first; resolution finishes before start.
`secret_materialized` permanently prevents resolved playback being emitted;
do not tie that protection to the current candidate list. Named marker encoding
suffixes preserve scalar style, and only resolved secret spans receive encoding
equivalence during matching. Failed/interrupted staging must never write a tape.
`core_tests/secret_fixture.ae` exercises four services/passwords on one port;
binding tests record against it, inspect redaction, then replay without it.
Fenced/indented emitters add a separate separator newline so terminal payload
newlines survive parsing.

## Shared test tools and release verification

`pretty_xml` and `pretty_json` format both recorded bodies and imply request
matching on playback. Shared `.xml.ae` / `.json.ae` contract tests are deps of
`.fixtures.ae`. JSON matching uses exact decimal tokens, never float getters;
keep the spelling-preserving stable-order `json_canonical` separate. See
`docs/pretty-xml.md` and `docs/pretty-json.md`.

Generic tooling is Aether. `core_tests/.fixtures.ae` builds the shared HTTP
redaction/secret/diagnostic drivers, configurable Lua upstream and Selenium
port helper under `target/test-tools/`; every binding's `.tests.ae` depends on
that leaf. Invoke those binaries directly, without a Python interpreter.
`core_tests/.diagnostics.ae` loads the built `.so` via `std.dl` and typed C
function pointers (`native_probe.ae`), preserving the black-box ABI boundary.
It and `release/.tests.ae` use `aether.program_test()` with `env()` for artifact
paths and normal test reporting; this needs the pinned aeb v0.337 or later.
Resolve `_get` and `dep_artifact` before entering the test builder, then pass
those values to `env`: inside the builder, the implicit context is its config.
Shared fixtures use `serve_until` and monotonic deadlines from `fixture_support`.
The aeb manual-link path emits imported modules separately: keep user-module
helper names distinct, including private functions, and avoid libc names such
as `open`, `listen` and `pause`. Programs importing helper modules with FS/OS
access need matching `caps(...)` when aeb emits those modules as libraries.

`release/.artifacts.ae` replaces the Python artifact checker. Environment:
`SVCR_RELEASE_TAG`, `SVCR_ARTIFACTS_MODE=version|engine|bindings`, and optional
`SVCR_ARTIFACTS_DIST`. `release/.tests.ae` covers positive/negative fixtures,
including the nested build layout and flat downloaded layout. It intentionally
reuses host-library bytes for foreign fixture slots; it does not cross-build or
claim to execute those platforms. `bruno_import_demo/.build.ae` builds both
CLI and Aether widget service; its `.tests.ae` hydrates/lints/replays the demo.
Python binding tests, packaging and Python-specific browser examples stay Python.
`aeb release/.swiftBundle.ae` builds all four Swift static variants and checks
consumer linking before publication. With Aether 0.912.0, static archives omit
module `@source` dependencies: `swift-bundle.sh` must add QuickJS as well as the
string bridge. The host check also loads a tape and runs Bruno conversion.
Nim's `execCmdEx` capture pipe leaves extra writers inherited by detached
children: waiting for EOF then waits for the upstream to exit. Its fixture
commands capture stdout/stderr through a temporary file and wait for the
launcher process instead. Keep that test-harness accommodation when changing
process launchers; the shared fixture itself stays language-neutral.

## Gotchas / hard-won

- **Replay diagnostics are a side channel, not HTTP payload extensions.** Core
  retains per-handle events across successful requests. `last_error_ex(h, 0)`
  observes; the original `last_error(h)` and `_ex(h, 1)` acknowledge only the
  latest event, without deleting it. `diagnostics_json(h, consume)` reads all
  events; `assert_no_mismatches(h)` acknowledges all and returns their text.
  `test_context(h, name, file, line)` reports unretrieved failures under the OLD
  coordinates, resets events, then installs the caller's new coordinates. Stop
  also reports unretrieved events once. `reported` is distinct from `retrieved`.
  Clear-last-error discards events; reset-cursor does not. Diffs/masking/JSON and
  stderr fallback live only in core; bindings marshal and raise existing errors.
  Property-based bindings preserve their consuming property and add a boolean
  read method. See `docs/replay-diagnostics.md` and `core_tests/.diagnostics.ae`.

- **Named credential redaction is shared core logic.** `redact_header`,
  `redact_query_param`, and `redact_json_field` register structured rules in
  the same per-handle list as literal redactions (`Redaction.kind` 0–3).
  All three ABI exports take `(handle, field, name, replacement)`; query scope
  must be Path. Defaults in the bindings are request scope and `[REDACTED]`.
  JSON redaction preserves unrelated bytes and fails flush on non-empty invalid
  JSON; all tape-writing paths check `emit_error` before writing. Forwarding and
  playback matching are unchanged. See `docs/redaction-helpers.md`, the core
  `test_vcr_redaction_helpers.ae`, and the shared HTTP/tape contract fixture
  `core_tests/redaction_fixture.ae` used by the per-language recording tests.

- **Ruby's consumer README exposed an obsolete version-manager pin.** A clean
  `ruby/` checkout contained `.ruby-version = ruby-2.5.7`, which made rbenv
  refuse even `gem build` despite Ruby 3.3 being installed. Removed that file;
  the gemspec's Ruby >= 3.3 requirement remains the compatibility floor. The
  README now gives a complete isolated gem install and stdlib-only local
  record/replay example. Verified with Ruby 3.3.12 and the downloaded/checksummed
  v2.0.0-alpha.1 Linux x86_64 library: building needs no Aether tools or Bundler;
  `--install-dir` plus `GEM_HOME`/`GEM_PATH` isolates the consumer. The installed
  gem records a query-string request and JSON response, then replays with the
  upstream stopped and `SERVIRTIUM_VCR_LIB` unset. Existing explicit/discovery
  consumer modes pass too. Keep native staging separate from runtime overrides.
- **JavaScript's README consumer path works without native build tools too.**
  Tested with Node 22.21 on Linux x86_64: download/checksum the README's
  v2.0.0-alpha.1 library, stage it as `javascript/native/libservirtium_vcr.so`, install
  build dependencies, `npm pack`, then install that tarball into a separate
  app. The package's `prepare` script compiles TypeScript; the app needs only
  Node and the installed package. Recording a Node HTTP service's JSON response
  with a query string worked. The README now walks through the complete setup
  and a `.mjs` record/replay example, tested with the upstream stopped before
  replay and `SERVIRTIUM_VCR_LIB` unset. The native env override does **not**
  bundle a library when packing: it must be staged in `native/`. There is no
  architecture-subdirectory selection in the JS loader, so this tarball is
  platform-specific. Removed stale references to the deleted `build-native.sh`
  and to native binaries being committed.
- **Exercise the consumer README without the build toolchain.** The Python
  onboarding check (2026-09-17, Python 3.11/Linux x86_64) downloaded the exact
  v2.0.0-alpha.1 native release named in `python/README.md`, verified its checksum,
  installed the Python source into a fresh venv, and recorded a stdlib HTTP
  server's JSON response, including a query string. No `ae`/`aeb` or in-tree
  native artifact was needed. The README now includes a self-contained local
  record/replay example that stops the upstream before playback. Its snippet
  was also run against a bundled wheel with `SERVIRTIUM_VCR_LIB` unset, alongside
  all three existing consumer-example modes. Keep this consumer path usable:
  source installation uses the backend in `python/pyproject.toml`; `setup.py`
  still owns metadata and native package data. A green in-tree suite alone
  doesn't verify these instructions or compatibility with the published binary.
- **Binary bodies are base64 on the tape; text bodies never are
  (2026-11-11).** Found by `sdk_harnesses/azure-sdk-for-net` (blob uploads
  and downloads of random bytes). `body_is_binary` (a control byte other
  than tab/LF/CR, DEL, or not well-formed UTF-8) decides at emit time; such
  a body is written by `base64_wrapped` (76 columns) under a heading marked
  `base64 below` — the request heading becomes `(<Content-Type or
  application/octet-stream> base64 below)`, the response's
  `(200: <type> base64 below)`. Text rules (redactions, normalizations,
  pretty-printing, the Content-Length fix-up) skip a binary body. The
  parser decodes a marked request body into `e.req_body`, so matching
  compares bytes; a marked response body stays base64 in memory, as HAR
  import always had it, and is decoded on replay. No existing tape held
  binary bytes, so none re-records differently.
  `core_tests/test_vcr_binary_body.ae`.
- **An empty request framed `Content-Length: 0` is forwarded that way
  (2026-11-11).** Content-Length is hop-by-hop to the recorder and the
  client request sends none for an empty body; Azurite answers such a PUT
  (create append blob) with 400. `core_tests/test_vcr_empty_body_framing.ae`.
- **Record decodes only `Content-Encoding: gzip` alone, on a body that
  inflates (2026-11-11).** Anything else (an empty body under the header,
  `deflate,gzip`, a body labelled gzip that is not) keeps header and bytes
  on the tape, and playback replays a recorded Content-Encoding verbatim
  and never re-gzips that body (`recorded_ce` in `emit_playback_response`).
  Azure Storage returns a blob's stored Content-Encoding as the header
  whatever the bytes are; the old token match tried to inflate an empty
  HEAD body and answered 500. `core_tests/test_vcr_content_encoding_kept.ae`.
- **Playback adds no Content-Type the recording lacked (2026-11-11).** The
  heading's type (the emitter writes `text/plain` when the service sent
  none) is served as a Content-Type only for a tape with no response
  headers at all. `core_tests/test_vcr_no_invented_content_type.ae`.
- **A HEAD response keeps its Content-Length (2026-11-11).**
  `head_content_length` sets the recorded value on record mode's answer and
  on playback (the server sends no body for HEAD either way). Note that
  `remove_transport_headers_h` leaves a response's Content-Length out of the
  tape, so a suite whose HEAD sizes matter removes the framing headers one
  by one instead (as the Azure harness does).
  `core_tests/test_vcr_head_content_length.ae`.
- **`set_forward_host_h` (opt-in) and `Expect` (2026-11-11).** Record mode
  sends the upstream the client's Host when asked (Azurite checks a copy
  source against the Host it was sent); off by default for name-based
  virtual hosts. `Expect` is never forwarded: the recorder holds the whole
  body, and an upstream's interim `100 Continue` comes back from
  std.http.client as the final response (`asks/aether-http-client-interim-1xx.md`).
  ABI `aether_vcr_embed_set_forward_host`; only .NET wraps it so far
  (TODO.md). `core_tests/test_vcr_forward_host_and_expect.ae`.
- **`{{request.header.NAME}}` (2026-11-11).** A response token playback
  fills with the live request's NAME header (`fill_request_header_tokens`,
  beside `{{request.host}}`). For services that echo a request id the
  client verifies (Azure Storage's `x-ms-client-request-id`): record it with
  `redact_header` on the response headers, the token as the replacement.
  `core_tests/test_vcr_request_header_token.ae`.
- **Body CRs are payload; path escapes are spelling (2026-11-07).** Found by
  the CouchDB pilot. (1) `normalize_tape_bytes` folds CRLF to LF only when
  the tape's first `## Interaction ` heading line ends in CRLF (the file was
  converted wholesale); an LF-structured tape keeps every CR, because the
  recorder writes structure with LF and copies body bytes as sent. Bodies
  stay readable text (no base64): a CR-bearing body is rare and the bytes on
  the tape are exactly the wire's. `core_tests/test_vcr_crlf_body.ae` and
  `test_vcr_bom_crlf.ae` pin both sides. (2) Playback compares request
  targets through `request_paths_equal` / `uri_canonical`: uppercase hex,
  decode escapes of unreserved and never-delimiter bytes (`"<>\^`{|}`,
  non-ASCII), `%20` == `+` in the query only; reserved delimiters, `%25`,
  space and controls stay escaped. `core_tests/test_vcr_path_encoding.ae`
  covers matches and non-matches.
- **JSON request-body matching is opt-in and lives in libservirtium_vcr.**
  `set_match_json_body(h, 1)` makes a request body that differs byte-for-byte
  get a second chance at *semantic* JSON equality (object key order + whitespace
  ignored; array order significant) before it's a `BodyDiff`. Off by default —
  libservirtium_vcr stays byte-exact — and a **non-JSON body always falls back to the
  byte-exact verdict**, so enabling it never loosens non-JSON matching. Logic is
  `json_body_canonicalize` / `json_request_bodies_equal` in `core/vcr.ae`:
  exact decimal tokens, decoded strings, stable duplicate-key handling, and
  the same canonical forms in diagnostics. `pretty_json` implies this matcher;
  the recorded request is indented too. The
  `core_tests/test_vcr_json_body_match.ae` proves off→reject / on→match /
  on+non-JSON→reject. Modelled on Vcr.HttpRecorder's `RulesMatcher.ByJsonContent`
  (portions © Giannis Georgopoulos, MIT — see the `LICENSE` attribution line).
  Binding surface follows the `strict_headers` pattern exactly (a
  `PlaybackBuilder.match_json_body()` toggle), wired across the bindings that
  expose `strict_headers`: python/rust/java/ruby/javascript/php/dart/go/nim/zig/
  lua/haskell/elixir/dotnet/pharo, plus the shared BEAM NIF; kotlin/scala/groovy/
  clojure inherit it free from the Java `PlaybackBuilder`. **erlang's and gleam's
  idiomatic wrappers surface the shared setting as `set_pretty_json`**;
  the matching-only alias remains reachable via
  `servirtium_nif:set_match_json_body/2`.
- **Two more opt-in matchers, same libservirtium_vcr home + rollout as the JSON one.**
  `set_match_multiple(h,1)` — **MatchMultiple**: playback searches ALL
  interactions for one that fits (not just the cursor) and replays it WITHOUT
  consuming it, so repeated identical requests and out-of-order requests both
  match (polling / retries / non-deterministic order). Default stays strictly
  ordered + consuming. `match_header(h, name)` — **ByHeader**: require that
  named request header's live value to equal the recorded one, and (crucially)
  registering any match-header **suppresses the automatic full-block header
  match** unless `strict_headers` is explicitly on — so it's surgical, not
  all-or-nothing. Logic: `do_playback_multiple` / `interaction_matches_pre` (a
  shared `emit_playback_response` was factored out of `do_playback`) and
  `match_headers_diff_k` in `core/vcr.ae`; tests
  `test_vcr_match_multiple.ae` / `test_vcr_by_header.ae`. Modelled on
  Vcr.HttpRecorder's `RulesMatcher.MatchMultiple` / `ByHeader`. Binding surface
  (`match_multiple()` toggle, repeatable `match_header(name)`) swept the same set
  as `match_json_body`.
- **A relative `-L` in a package manifest works in-tree and fails for every
  consumer.** `swift/Package.swift` linked with `.unsafeFlags(["-L", "native",
  …])`. That is resolved by the LINKER's working directory, which is the
  package's own only while you build the package itself; the moment someone
  depends on it, it resolves against THEIR directory and the build dies with
  `cannot find -lservirtium_vcr`. `swift/.tests.ae` was green throughout — only
  `swift/.example.ae` caught it. The manifest now computes an absolute
  `nativeDir` from `#filePath` at manifest-evaluation time, so every copy of
  the package (in-tree, staged, installed) locates its own `native/`. Check any
  new binding's manifest for the same shape before trusting a green test leaf.
- **Swift by version = a binaryTarget + a second, bare git tag.** The root
  `Package.swift` downloads `servirtium-vcr-swift-<tag>.artifactbundle.zip`
  (static libs, SE-0482; built by `release/swift-bundle.sh`) via
  `binaryTarget(url:checksum:)`, because SwiftPM refuses `unsafeFlags` in a
  version-resolved dependency. The checksum only exists after the release
  workflow builds the bundle, so `SVCR_RELEASE_SET` empties
  `binaryChecksum` and the workflow commits the checksum on top of the `v`
  tag's commit and tags that with the bare `2.0.0-...` tag, which SwiftPM
  prefers over `v2.0.0-...`. Never hand-edit the two `let binary...` lines and
  never move a tag; see release/README.md. `ae build --emit=staticlib` (0.897)
  drops `--extra` C files and zig picks a host-dependent macOS minimum, so the
  script adds `_embed_strdup.c` itself and pins macOS 13 with a zig shim.
- **`dub.json` is strict JSON: no comments, and unknown keys warn.** Adding a
  `"comment-native"` key to document the link line made dub print a bare
  `Warning` with an EMPTY message — a minute to trace to its source. Explanations
  go in `d/README.md`; the manifest carries only keys dub knows. (`dub.sdl`
  would allow comments, but the package is JSON.)
- **Packaging gotchas that cost real debugging (all in `docs/packaging.md`).**
  (a) A pkg-config `.pc` with an absolute bake-time `prefix` silently points a
  consumer's `-I/-L` back at THIS repo — c/ and cpp/ anchor on
  `${pcfiledir}/../..` instead, so an unpacked tarball resolves to itself.
  (b) An rpath in `Libs.private` reaches only `pkg-config --static`, so a
  normally-linked consumer died with `libservirtium_c.so: cannot open shared
  object file` from a COMPLETE prefix; it belongs in `Libs`.
  (c) An Aether string can't carry a literal `${...}` (the build language
  interpolates first), so the `.pc` generators emit `\0044{pcfiledir}` and let
  `printf '%b'` turn `\0044` into `$`.
  (d) `strdup` is POSIX, not ISO C99 — it compiled under aeb's `c.compile`
  default flags but not under the package step's `-std=c99`, so `c/src` uses a
  4-line `dup_string` instead. Same class of trap: `popen` in the tests needs
  gnu/POSIX flags.
- **aeb's dotnet SDK: three setters that silently do nothing where you'd
  expect them.** `dotnet.pack()` locates its project by globbing `*.csproj` in
  the LEAF's own source_dir — it cannot see an `.fsproj`, or anything in a
  subdirectory, so `fsharp/.package.ae` calls `dotnet pack` directly (the same
  precedent as python/ and ruby/ driving their own packers).
  `dotnet.test_existing()` ignores `csproj_path` entirely (it just runs
  `dotnet test` in the leaf dir) and ignores the `roll_forward()` setter (which
  only applies to `dotnet.test()`); use `workdir(...)` + `env("DOTNET_ROLL_FORWARD",
  …)` there, as `fsharp/.tests.ae` does. And **`workdir()` is always joined onto
  the repo root** — pass it root-relative, never absolute
  (`"<root>//<root>/…: No such file or directory"`).
- **F# is two projects, on purpose.** `fsharp/Servirtium.Vcr.FSharp/` is the
  shippable library; `fsharp/Servirtium.Vcr.FSharp.Tests/` holds the xUnit
  facts. Split so the nupkg carries no test code or xunit dependency, and so
  the two don't share one `obj/` (two projects in one directory collide on
  `project.assets.json`). The library's nupkg is managed-only and depends on
  `Servirtium.Vcr` — the CLR family rides ONE native assembly.
- **`gem install` ignores `GEM_HOME` on Arch** (patched rubygems); use
  `--install-dir` to isolate, which is what `ruby/.example.ae` already
  documents. Worth knowing before you "verify" a gem into your own gem dir by
  accident — and `gem uninstall servirtium -x` to undo it.
- **`ae` and `aetherc` are SEPARATE binaries, and aetherc does the codegen —
  a half-upgraded Aether fails in a way that looks like a compiler regression.**
  Installing 0.666.0 into `~/.local/bin` while this box's version-managed
  `~/.aether` install stayed on 0.650.0 made **every** `core_tests` leaf and the
  CLI fail with `Unknown option: --emit-deps`. Nothing was wrong with either
  version: 0.666's `ae` passes `--emit-deps`, which only 0.666's `aetherc`
  accepts, and `ae` resolved `aetherc` from `~/.aether/current/bin` (0.650).
  `libservirtium_vcr.so` still built, which made it look like a test-only problem.
  **`ae --version` prints both and warns when they disagree** — read it first
  whenever a build breaks right after a toolchain change:

      aetherc:  /home/paul/.aether/current/bin/aetherc (0.650.0)
      WARNING: this ae is 0.666.0 but the aetherc it would run is 0.650.0.

  The fix is to move the MANAGED install, which owns aetherc:
  `ae install <v> && ae use <v>` (it keeps `~/.aether/versions/*`,
  `current` and `active_version` consistent). A bare `get.sh` into
  `~/.local` only lands `ae`+`aetherc` there and does not touch `~/.aether`,
  so it can leave exactly this split behind.
- **python/ruby/haskell need a one-time dev-dep setup — see
  `docs/dev-setup.md`.** None of it needs root, and none of it is obvious:
  PEP 668 blocks `pip install` (use `--user --break-system-packages pytest`,
  because the leaf runs the SYSTEM `python3 -m pytest`, so a venv elsewhere is
  invisible); RubyGems puts `bundle`/`rspec` in
  `~/.local/share/gem/ruby/<ver>/bin`, which nothing adds to PATH, and bundler
  then defaults to the system gem dir and dies with `Bundler::PermissionError`
  (fix: `bundle config set --global path ~/.gem/bundle`); and Arch ships GHC
  **dynamic-only** (`ghc-libs`, no `ghc-static`), so cabal's default static
  library build fails with "files missing in the 'base' package" — set
  `library-vanilla: False` / `shared: True` / `executable-dynamic: True` in
  `~/.config/cabal/config`. That last one explains a puzzle worth remembering:
  `haskell/.example.ae` passed the whole time, because executables already
  default to dynamic on Arch — only COMPILED dependencies hit the missing
  archives. Ruby's `Gemfile` also declares `erb` because Ruby 3.4 demoted it
  from a default to a bundled gem and `rspec-core` requires it.
- **Scala's in-tree suite was compiling the CONSUMER example.**
  `scala.scalac_test` used to `find` `*Test.scala` across the whole module dir,
  so `scala/example/src/test/scala/.../PlaybackConsumerTest.scala` — a
  third-party consumer test that asserts it was loaded from the INSTALLED jar —
  was compiled into the in-tree run and failed there by design ("expected the
  installed scala jar, got target/build/scala/classes/"). The binding was fine
  the whole time. Fixed by adding `source_layout("maven idiomatic")` to
  `scala/.tests.ae` (opt-in upstream, aeb v0.308 / `938faa9`, mirroring
  kotlin/groovy),
  which roots discovery at `src/test/scala`. The consumer test still runs where
  it belongs: `scala/.example.ae`. **If a suite fails on an assertion about
  installed artifacts, check what it actually compiled before doubting the
  binding.**
- **`make install` in ../aeb used to delete `tools/aeb-resolve.jar`.** It is
  built out-of-band (`aeb tools/resolver/.dist.ae`), gitignored, and absent
  from aeb's dev `tools/` tree, so install's `rm -rf`+`cp -R` wiped it and put
  nothing back — after which every maven/java/scala/kotlin build here dies with
  `Unable to access jarfile .../aeb-resolve.jar` and `Could not find or load
  main class dotty.tools.dotc.Main`. Fixed upstream in aeb v0.308 (`938faa9`);
  **the repo now floors aeb at 0.308** for this and the two test-runner fixes. If you
  ever see that pair, rebuild with `aeb tools/resolver/.dist.ae` and copy
  `target/dist/tools/resolver/bin/*.jar` into `~/.local/share/aeb/tools/`.
- **Groovy was red for two stacked reasons, and neither mentioned Groovy.**
  Symptom: `[ 0 tests found ]`, then a FAILED leaf (`--fail-if-no-tests`).
  (a) The **Groovy runtime jar was missing from the JUnit classpath**. groovyc
  comes from the system install and compiles fine, but every class it emits
  implements `groovy.lang.GroovyObject`; without the runtime the test class
  cannot load, and JUnit's scanner SILENTLY SKIPS classes it can't load. Fixed
  by `libs/java/groovy/.groovy.jar.ae` (the same pinned-lockfile shape as
  `libs/java/clojure`, which exists for exactly this reason) + a `dep()` in
  `groovy/.tests.ae`. The jar's version must track the `groovyc` that compiled
  the classes — 5.1.0 here. Kotlin/Scala don't need this because their stdlibs
  arrive via the binding's own jar deps.
  (b) Once it ran, it still couldn't FAIL: aeb's groovy SDK wrote an empty
  argfile, so the groovyc cache key hashed no sources and a stale class tree
  was replayed forever. Fixed upstream (aeb `01b2880`). Verified here: breaking
  one assertion now recompiles and fails the leaf.
  **When a JVM-family suite reports 0 tests found, suspect an unloadable test
  class before you suspect discovery** — check the runtime jar is on the
  classpath that `java.junit5()` builds.
- **aeb test runners USED to report PASS on a failing test — fixed upstream,
  and the habit it should leave you with.** Nine builders across seven SDKs
  (`cpp.tests`, `d.test`, `swift.test`, `dart`, `gleam`, `jest`, `moonbit`, both
  java JUnit runners) ran the runner as `cmd 2>&1 | tee <log>` and took the
  PIPELINE's exit status as the verdict — which is `tee`'s, always 0. Caught
  here, twice and for real: (a) the C++ suite printed `FAILED: 1 cpp test(s)`
  and the leaf said `1/1 PASS`; (b) the D binding did not compile AT ALL (an
  `extern(C)` function-pointer linkage error) and the leaf still said
  `1/1 PASS`, dmd's errors sitting unread in the tee'd log under `target/tests/d/`.
  Both were found only by running the binaries by hand.

  Fixed in aeb **v0.308** (`2734bf5`): all nine go through the new
  `bldr._sh_tee`, which keeps the tee'd log the summary parsers read but
  captures the command's real status in an rc file, and **fails closed** when
  that status can't be read. `d/.tests.ae` is therefore back on the plain
  `d.test()` builder (the `bash.test` + shell-script workaround is gone), and
  `cpp/.tests.ae` stays on `c.tests` for the ONE remaining reason that it
  passes argv (so the tape path isn't baked in with a `-D` define).

  **The habit to keep:** when you add a leaf on a builder you have not
  personally seen fail, break one assertion and confirm it reddens. Every
  binding suite in this repo has been through that check. It costs one minute
  and it is the only thing that distinguishes a passing suite from a silent one.
- **LFE: `record` is a CORE FORM, and exported names must use underscores.**
  `(record …)` inside `lfe/src/servirtium_lfe.lfe` parses as LFE's Erlang-record
  form, not as this module's function — so the exported `record/2` and `record/3`
  cannot call each other and both delegate to a hyphenated internal
  `open-recording`. The public name stays `record` for parity with the
  Erlang/Elixir/Gleam twins (a *remote* `servirtium_lfe:record/2,3` resolves to
  the function, not the form). lfec prints one **expected, unsuppressable**
  warning every build — `redefining core function record/3`; LFE offers only
  `-Werror` and `nowarn_unused_vars`, so don't "fix" it by renaming. Separately:
  LFE allows hyphens in a local def, but a remote call `mod:base-url` does not
  resolve to the exported `'base-url'` atom, so the whole cross-module API is
  underscore-named. Internal helpers stay hyphenated. Also: LFE has no
  standalone `when` expression (it's a guard keyword) — use `if`/`case`.
- **The LFE runner needs `(halt 1)` on failure.** The `lfe` SDK runs
  `lfe -noshell … -eval '(mod:main (list))' -eval '(halt 0)'` — that trailing
  `(halt 0)` fires whatever `main` returned, so a test that merely *returns* on
  failure goes green. `playback_test.lfe` halts explicitly with the right code;
  verified reddening.
- **D: an `extern (C)` function pointer must be an ALIAS.** A D
  function-pointer type defaults to D linkage, so dmd refuses an ABI symbol
  ("cannot pass argument … of type `extern (C) char* function …`"); and
  `extern (C)` is not accepted inline in a parameter's type. Hence
  `private alias FlushFn = extern (C) char* function(void*, const(char)*) nothrow @nogc;`
  which the three `stop_and_flush*` variants share via one `flushVia`.
- **Janet's FFI: `:ptr`, not `:string`, for owned returns.** A `:string` return
  copies the bytes and drops the pointer, so every `char*` the ABI hands back
  would leak; `janet/servirtium/init.janet` takes `:ptr`, measures with libc
  `strlen`, copies through `ffi/pointer-buffer` and frees with
  `aether_vcr_embed_free_string`. Other Janet traps: `buffer/push` of an integer
  pushes a *byte* (stringify a Content-Length first), and `case`, `label`,
  `flush` are core names (don't define them). `janet/.tests.ae` uses
  aeb's Janet SDK (`janet.test()` with `script(...)`, aeb v0.343+);
  `bootstrap.sh` gates it on `janet` being on PATH.
- **Julia backticks brace-expand.** A literal `%{http_code}` inside a `` `…` ``
  command is a parse error (`shell_parse`), so the curl format string lives in a
  `String` variable and is interpolated. Bit me in `julia/test/playback_test.jl`.
- **aeb's cpp SDK single-quotes every raw flag.** `_join_raw` wraps each
  `cxxflag`/`link_flag` in `'…'` for the shell, so a string-literal define needs
  BARE double quotes (`-DFOO=\"/abs/path\"`); adding your own single quotes
  cancels the inner ones and the macro expands to unparseable path tokens.
  (Moot in `cpp/.tests.ae` now that argv is available, but true of any cxxflag.)
- **Swift on this box needs two user-local shims.** The installed Swift 6.0.3
  links `libncurses.so.6` and `libxml2.so.2`; Arch/CachyOS ships
  `libncursesw.so.6` and `libxml2.so.16`, so `swift` won't even start
  ("error while loading shared libraries"). `ln -sf` both into `~/.local/lib`
  and run with `LD_LIBRARY_PATH=$HOME/.local/lib`. Deliberately NOT baked into
  `swift/.tests.ae` — it's a broken local toolchain, not a repo concern. Note
  `swift.test` printed "tests PASSED" when swift couldn't launch at all; only
  the sibling `swift.build_pkg` failing reddened the leaf.
- **`dmd` is not on `PATH`** after `dlang.org/install.sh` (it lands in
  `~/dlang/dmd-<ver>/linux/bin64/`); it's symlinked into `~/.local/bin` beside
  `ae`/`aeb`. `prereq("dmd")` finds it there.
- **.NET targets net8.0 but this box has only the net10 runtime.** Both
  `dotnet/Servirtium.Vcr.Tests/.tests.ae` and `fsharp/.tests.ae` therefore set
  `roll_forward("LatestMajor")` (aeb's `dotnet` SDK threads it in as
  `DOTNET_ROLL_FORWARD`), which is a no-op where net8 is installed. Keeps the
  TFM honest instead of retargeting the shipped floor. Without it the .NET
  suite fails with a bare "tests FAILED" and no reason in the log.
- **base64 lives in `std.encoding`, not `std.cryptography` (ae 0.4x).** (This is
  the last primitive anyone could name as a hard ae requirement, and it used to
  BE the `AE_PIN` floor. It no longer is — `AE_PIN` == `AE_FETCH` == the one ae
  require, currently 0.849.0; publication pending.) ae 0.413
  moved it and changed `base64_decode` to a `string!` error-union; libservirtium_vcr's
  `decode_base64_body` uses `encoding.base64_decode`. If a fresh ae build fails
  with "Undefined function 'cryptography.base64_decode'", something reintroduced
  the old import.
- **Volatile values vs redact_whole_tape (2026-11-13).** Volatile values
  (`core/volatile.ae` + the "volatile values" section at the end of
  `core/vcr.ae`; spec `docs/volatile-values.md`) replaced
  `normalize_whole_tape`: rules are plain strings (a template with
  `{{name}}` / `{{name:pattern}}` placeholders, or a regex whose named groups
  are placeholders), tape tokens are `{{name-N}}` numbered per name by
  value, playback binds live values and fills responses, the test binds the
  rest (`volatile_bind`), and the rules travel in the tape's
  `## Volatile values` block. Three words only: placeholder, token, bind.
  No token classes, shapes or value generation in the core (Paul's model).
  `redact_whole_tape(pat, repl)` stays: a regex redaction to one constant,
  run with the other redactions before volatile values. Rules are compiled
  at every setter and at start (the marker style can change); playback
  expectations are prepared in `start_background_h`, and a setter after
  start re-prepares (`vol_refresh_k`), because several bindings open and
  start in one call. A VCR started with plain `http.server_start_background`
  skips that preparation (tokens are then literal text). Conformance tapes
  and driver for the bindings: `core_tests/volatile/` and
  `target/test-tools/volatile_fixture`.
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
  (`erlang/_build/servirtium_nif/{ebin,priv}`). `elixir/` and `gleam/` `dep()`
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

`core/` libservirtium_vcr + ABI. `<lang>/` one binding each (its own README is the
per-language source of truth). `core_tests/` pure-Aether libservirtium_vcr probes.
`integration/` end-to-end demos (subversion checkout, climate API, the
Vue+Storybook+Selenium component-test demo). `pre-recorded/` re-usable tapes
of real services' HTTP APIs: `from-testcontainers/` holds, per service, the
Aether test that records them through testcontainers-ae (an `ae add`
dependency in its own `aether.toml`; `lib/servirtium_vcr` links back to
`core/`), moved here from testcontainers-ae on 2026-11-07. `sdk_harnesses/` runs a
vendor SDK's own test suite, unchanged, with Servirtium in the middle
(fetched at a pinned commit into the harness's `target/`, never checked in;
recorded against a local emulator only): `azure-sdk-for-net/` is the
Azure.Storage.Blobs tests against Azurite (2026-11-11; its README).
Root `README.md`
has the Bindings table (the registry) and the layout block.

**Packaging is complete; the consumer-example layer is not.** Every one of the
30 languages now has a `<lang>/.package.ae` (dotnet's wraps its own
`.dist.ae`), elixir and gleam included — they had none before. The root
**`.packages.ae`** aggregate builds all 30 in one command (~50s; dep edges
only, the selenium `.presubmit.ae` idiom), and **`get-package.sh`** is the
curl-to-bash front door: `./get-package.sh ruby` builds the gem, copies it to
`./out`, and prints the `gem install …` line. Full table + the rules for adding
one: `docs/packaging.md`. **Packaging runs no tests** — that is the point: the
wheel builds where there is no pytest.

**All three layers now cover all 30 languages.** The eight newest bindings got
their `.example.ae` consumer-install leaves too, so every language has
`.tests.ae` + `.package.ae` + `.example.ae`, and all 30 examples pass. Each
installs the way that ecosystem really does — unpacked tarball + pkg-config
(c, cpp), relocated OTP apps with only ERL_LIBS (lfe), `Pkg.develop` into a
throwaway depot (julia), a jpm `--tree` install (janet), a shards-style `lib/<name>/` tree (crystal), a dub
path dependency (d), a SwiftPM path dependency (swift), a local NuGet feed
(fsharp) — always with `SERVIRTIUM_VCR_LIB` unset, so only the bundled libservirtium_vcr
can satisfy the load.

That layer immediately earned itself: see the Swift `-L` and dub.json notes in
Gotchas. Both bugs were invisible to a green `.tests.ae`.
