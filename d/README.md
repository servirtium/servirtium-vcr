# servirtium-d

Record/replay for HTTP service tests, in the [Servirtium](https://servirtium.dev)
markdown tape format — for **D**.

```d
import servirtium;

auto vcr = Vcr.playback("tapes/single_get.md");
scope (exit) vcr.close();

auto body_ = httpGet(vcr.baseUrl ~ "/ok");
assert(body_ == "ok-body");
assert(vcr.lastKind == Outcome.ok);
```

## What this is (and isn't)

A thin D layer over the **Aether VCR** core. All record/replay machinery —
markdown parse/emit, the HTTP server, request matching, redactions, notes, drift
detection, static bypass, gzip/chunked handling — lives in the in-repo,
pure-Aether `core/vcr.ae` module. This binding does **not** reimplement
Servirtium in D.

D declares the engine's flat C ABI (`aether_vcr_embed_*`) with `extern (C)` and
**links** it — like Nim, Zig, Go-cgo and Rust, not a runtime `dlopen`. The
`.tests.ae` leaf passes `-L-L../core/native -L-lservirtium_vcr -L-rpath …` to
dmd, so the test binary finds the engine at build time and at run time.

### What D adds

- **`scope (exit) vcr.close()`** — the idiomatic D scoping; `Vcr` is a struct
  handle token with copying disabled (`@disable this(this)`), so there is
  exactly one owner per handle.
- **GC'd strings** — every ABI `char*` is copied into a D `string` and freed in
  one place (`takeString`); no manual free reaches user code.
- **`VcrException`** instead of a null handle or an error-string return.
- **Typed enums** (`Field`, `Outcome`).

## Layout

- `src/servirtium/package.d` — the `extern (C)` ABI declarations + the
  idiomatic `Vcr` struct, enums, exception and HAR converters.
- `tests/playback_test.d` — 24 facts over the canonical tape: body, clean
  match, tape length + bound port, an off-tape path, cursor reset, a thrown
  exception on a missing tape, `scope(exit)` release, idempotent close, two
  concurrent servers, and the enum values.
- `tests/test_playback.sh` — the runner (see the note below).
- `tapes/single_get.md` — the canonical sample tape (`GET /ok` → `200
  text/plain` / `ok-body`), byte-identical to every other binding's copy.

## Building and testing

Needs `dmd` on PATH (the leaf skips loudly otherwise).

```sh
aeb d/.tests.ae
```

By hand:

```sh
cd d
dmd -Isrc -L-L../core/native -L-lservirtium_vcr -L-rpath -L../core/native \
    src/servirtium/package.d -run tests/playback_test.d
```

### Two D-specific notes

**`extern (C)` function-pointer linkage.** The three `stop_and_flush*` ABI
entries share one `flushVia` helper, whose parameter is the `FlushFn` **alias**:

```d
private alias FlushFn = extern (C) char* function(void*, const(char)*) nothrow @nogc;
```

A D function-pointer type defaults to D linkage, and dmd then refuses the ABI
symbol ("cannot pass argument … of type `extern (C) char* function …`").
`extern (C)` is also not accepted inline in a parameter's type — hence the
alias.

**The runner reported PASS on a binding that did not compile.** `d.test` ran
`dmd … -run <file> 2>&1 | tee <log>`, and a shell pipeline reports the exit
status of its *last* command — so `tee`'s 0 masked both a dmd compile error and
a failing test. That was observed here: this binding once did not compile at
all (the `extern (C)` linkage error above) and `aeb d/.tests.ae` still reported
**1/1 PASS**, with the real errors sitting unread in the tee'd log. It was
caught only by running dmd by hand.

**Fixed upstream**, so this leaf uses the plain `d.test()` builder again: aeb's
`d`/`cpp`/`swift`/`dart`/`gleam`/`jest`/`moonbit`/`java` test runners now go
through `bldr._sh_tee`, which keeps the tee'd log but captures the command's
real exit status in an rc file, and fails closed if that status can't be read
(aeb `2734bf5`). Verified against this very suite after the fix: `d.test`
reddens both on a failing assertion **and** on a compile error, and stays green
when the suite is good. The interim `bash.test` + `tests/test_playback.sh`
workaround has been removed.
