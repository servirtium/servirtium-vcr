# Servirtium VCR — monorepo

Record/replay for HTTP service tests in the [Servirtium](https://servirtium.dev)
markdown tape format, across many languages — **one engine, many thin
bindings, one build**.

The record/replay engine is a single pure-Aether module in [`core/`](core/)
(`core/vcr.ae` plus the `core/embed.ae` C-ABI), built once here as a native
shared library (`libservirtium_vcr.so`) on top of Aether's standard library
(its HTTP server, regex, zlib, crypto, …). Each language binding is a thin FFI
wrapper over that one engine, so they cannot drift from each other —
Servirtium compatibility across languages is a build-time guarantee, not a
test target.

## Layout (Selenium-style, flat per language)

```
servirtium-vcr/
  core/        # builds libservirtium_vcr.so once (ae build --emit=lib); every binding deps it
  go/            # cgo                         python/    # ctypes
  dart/          # dart:ffi (also Flutter)     dotnet/    # P/Invoke
  java/          # FFM / Panama (JDK 25)       rust/      # libloading
  ruby/          # Fiddle                      javascript/# koffi (Node)
  haskell/       # foreign import ccall        elixir/    # shares the Erlang NIF
  php/           # ext-ffi                     pharo/     # UnifiedFFI (Smalltalk)
  nim/           # importc (linked)            zig/       # extern C (linked)
  lua/           # C extension (Lua 5.4)       erlang/    # C NIF (canonical, shared)
  gleam/         # shares the Erlang NIF (BEAM)
  kotlin/ scala/ clojure/ groovy/  # JVM family — thin layers over the Java jar (no 2nd FFI)
  core_tests/    # Aether-level engine tests (pure-Aether, no binding)
  integration/   # browser · subversion · climate · todobackend cross-binding tests
  <lang>/docs/   # per-binding usage docs
```

All **17** native-FFI bindings — plus the JVM family (Kotlin/Scala/Clojure/
Groovy, over the Java jar) — are wired and pass through one `aeb` run: the
`core/` node builds `libservirtium_vcr.so` once, then each binding's
`.tests.ae` links (go/elixir/haskell) or loads (the rest, via
`SERVIRTIUM_VCR_LIB`) that single artifact.

## Bindings

Each binding has its own README (quick-start + docs index) and a `docs/`
folder (`usage`, `features`, `architecture`, `building`).

| Language | FFI | Binding |
|---|---|---|
| Go | cgo | [go/README.md](go/README.md) |
| Python | ctypes | [python/README.md](python/README.md) |
| Java | FFM / Panama (JDK 22+) | [java/README.md](java/README.md) |
| .NET | P/Invoke | [dotnet/README.md](dotnet/README.md) |
| Rust | libloading | [rust/README.md](rust/README.md) |
| Ruby | Fiddle | [ruby/README.md](ruby/README.md) |
| JavaScript / TS | koffi (Node) | [javascript/README.md](javascript/README.md) |
| Dart | dart:ffi (also Flutter) | [dart/README.md](dart/README.md) |
| PHP | ext-ffi | [php/README.md](php/README.md) |
| Haskell | foreign import ccall | [haskell/README.md](haskell/README.md) |
| Elixir | shares the Erlang NIF (BEAM) | [elixir/README.md](elixir/README.md) |
| Pharo | UnifiedFFI (Smalltalk) | [pharo/README.md](pharo/README.md) |
| Nim | importc (linked) | [nim/README.md](nim/README.md) |
| Zig | extern C (linked) | [zig/README.md](zig/README.md) |
| Lua | C extension (Lua 5.4) | [lua/README.md](lua/README.md) |
| Erlang | C NIF (canonical — shared across the BEAM family) | [erlang/README.md](erlang/README.md) |
| Gleam | shares the Erlang NIF (BEAM) | [gleam/README.md](gleam/README.md) |

**JVM family.** Kotlin, Scala, Clojure and Groovy reach the engine through the
**Java binding's jar** via seamless JVM interop — there is *no second native
FFI*. Each is a thin idiomatic layer over the same API, with its own
record→replay test:

| Language | Idiomatic layer | Binding |
|---|---|---|
| Kotlin | trailing-lambda DSL | [kotlin/README.md](kotlin/README.md) |
| Scala | `playback(tape)(cfg)` helpers | [scala/README.md](scala/README.md) |
| Clojure | fns + `with-open` | [clojure/README.md](clojure/README.md) |
| Groovy | `Closure` DSL | [groovy/README.md](groovy/README.md) |

(For an independent, Kotlin-native option maintained outside this repo, see
[http4k-testing/servirtium](https://github.com/http4k/http4k/tree/master/http4k-testing/servirtium).)

## Features

One engine; every binding exposes the same surface.

- **Two modes** — *playback* (replay a committed tape, no network) and
  *record* (forward to the live upstream, return the real response, write the
  tape on close).
- **Canonical Servirtium markdown** — interoperable with other Servirtium
  implementations; fenced or 4-space-indented code blocks; optional emphasized
  HTTP verbs; gzip + chunked transfer decoded to the stored payload.
- **Matching & diagnostics** — strict method+path matching, opt-in
  header/body matching, an optional strict-header mode, an opt-in
  *semantic JSON body* matcher (key order & whitespace ignored, non-JSON bodies
  fall back to byte-exact), and a per-request outcome + mismatch diagnostic
  (last kind / error / index).
- **Redaction** — scrub a value out of a field before it lands on the tape
  (`redact`), and restore it on playback so a committed tape still matches
  (`unredact`).
- **Whole-tape normalization** — `normalizeWholeTape` (regex → stable,
  correlated `{{id-N}}` tokens that round-trip) and `redactWholeTape` (regex →
  one constant), so a re-record is byte-identical and drift detection fires
  only on real upstream changes, not on fresh ids or timestamps.
- **Header removal · notes · untaped paths** — drop incidental headers, attach
  Servirtium notes, and 404 incidental requests (e.g. `/favicon.ico`) without
  consuming the playback cursor.
- **Static-content mounts** — serve a path prefix from disk same-origin, so a
  browser suite runs against the VCR (no CORS noise on the tape).
- **One server per port** — N independent VCR servers in one process,
  each with its own tape, cursor, and diagnostics.
- **Drift detection** — *fail-if-changed* / *flush-or-check*: a re-record
  writes the tape but flags any diff, so CI catches upstream drift.
- **HAR bridge** — convert between the HTTP Archive format (Chrome DevTools /
  Fiddler / Charles / Postman exports) and Servirtium tapes with the standalone
  `servirtium-har` CLI (`import` / `export`). Capture real traffic in a browser
  or proxy, convert the `.har` once, and replay it as a tape under any binding.
  (A CLI rather than a per-binding call: it's a convert-once-offline step, not a
  test-time operation — though `har_import`/`har_export` are also in the C ABI
  for any binding that wants to wrap them.)

## Compared with other mocking / virtualization tools

There's a rich ecosystem here, and these are all good tools — the choice mostly
comes down to **where the canned responses come from** and **what they're stored
as**. Servirtium's particular angle is *recorded real conversations* kept as
*human-readable, git-diffable Markdown* that lives next to your tests, so the
recording is itself a reviewable artifact (it renders on GitHub; a vendor's new
header shows up as a red/green line in a PR), and the same tape replays under any
Servirtium binding. A friendly map of the neighbourhood:

- **[Prism](https://github.com/stoplightio/prism)** — spec-first: mocks and
  validates from an OpenAPI/AsyncAPI description. Lovely when the contract is the
  source of truth and you want responses *synthesised from the spec*. Servirtium
  instead replays what a real backend actually sent — capturing wire quirks a
  spec may not mention — and needs no spec to get started.
- **[Mockoon](https://mockoon.com/)** — fast, friendly hand-authoring of mock
  APIs in a desktop app / CLI. Great when you want to *design* responses by hand.
  Servirtium's responses are *recorded* rather than designed, and the tape is a
  diffable file reviewed in a PR rather than GUI-managed config.
- **[Postman](https://www.postman.com/)** — its Mock Servers host cloud mocks
  generated from a collection's saved example responses. Ideal if your team
  already lives in Postman. Servirtium is local and file-based — the
  conversation is recorded from a real backend and committed to your repo, with
  no SaaS endpoint in the loop.
- **[Microcks](https://microcks.io/)** — a centralized, Kubernetes-native
  platform that turns API artifacts (OpenAPI, Postman, gRPC, AsyncAPI, SoapUI)
  into shared mocks and contract tests across protocols and teams. Servirtium
  sits at the opposite end of the size scale: a tiny in-process library,
  file-based tapes, no service to deploy, focused on HTTP.
- **[Hoverfly](https://hoverfly.io/)** — the closest in spirit, and also true
  service virtualization: it captures and replays real HTTP traffic. The main
  differences are storage and deployment — Hoverfly is a standalone proxy with
  JSON simulations, whereas Servirtium embeds *in the test process* per language
  and stores the conversation as review-friendly Markdown, portable across every
  binding.
- **[Mountebank](https://www.mbtest.org/)** — standalone, multi-protocol service
  virtualization (http/https/tcp/smtp) configured as JSON "imposters" over a REST
  API, with a proxy/record mode much like Hoverfly's. Servirtium covers only
  HTTP, but runs in-process per language and keeps the recording as readable
  Markdown rather than JSON imposters managed through a running server.

None of this is a knock on those projects — each is strong at its own sweet spot
(spec-driven mocking, hand-built mocks, collection-based cloud mocks, a shared
mocking platform, proxy/record-based virtualization). Reach for Servirtium when
you want **the recording itself to be a small, readable, version-controlled
artifact** that tests in any language can replay.

## Build (aeb)

The whole repo is built with **[aeb](https://github.com/aether-lang-org/aeb)**,
the polyglot Aether build runner — the natural fit for a one-engine,
many-language monorepo. You point `aeb` at the node you want (a dot-prefixed
`.ae` script, e.g. `java/.tests.ae`); it follows that node's `build.dep(...)`
edges and builds just its transitive dependencies, in order. Because every
binding deps the `core/` node, asking for any one binding first builds the
native lib once, then links or loads that single artifact — nothing else gets
built. Bare `aeb` (no target) builds the whole repo: it collects every `.ae`
node in the tree and builds the full graph in dependency order.

```sh
./bootstrap.sh        # installs the Aether toolchain + aeb if missing, then `aeb`
# or, if you already have ae (needs v0.227.0 or above) and aeb on PATH:
aeb                   # whole repo: every node, in dependency order
aeb go/.tests.ae      # just one binding (builds the engine it deps, then tests)
```

See each binding's own `docs/`, and [`integration/`](integration/) for the
cross-binding browser/SVN/climate/TodoBackend tests.

## License

MIT — see [LICENSE](LICENSE).
