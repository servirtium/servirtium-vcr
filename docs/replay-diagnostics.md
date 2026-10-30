# Replay diagnostics side channel

The HTTP response continues to carry the existing status and short mismatch
message. Rich diagnostics travel through the VCR handle, independently of the
HTTP client used by the system under test. A test harness supplies coordinates,
exercises its system, then explicitly reads or asserts on that side channel.

```java
try (var server = Vcr.playback("tapes/users.md").label("UsersTest").start()) {
    server.testContext("UsersTest.rejectsAdmin", "tests/UsersTest.java", 42);
    exerciseSystemUnderTest(server.baseUrl());
    server.assertNoMismatches();
}
```

A mismatch assertion raises the binding's existing error/exception with a diff:

```text
Servirtium replay mismatch #1 (kind 6)
test: UsersTest.rejectsAdmin
source: tests/UsersTest.java:42
tape: tapes/users.md
interaction: 0
request: POST /items
request body different to expectation — recorded=17 bytes, live=16 bytes
request body
--- expected
+++ actual
@@ line 1, byte 9 @@
- {"role":"reader"}
+ {"role":"admin"}
```

## Retrieval and test boundaries

A successful request does not erase earlier failures. `lastKind` and `lastIndex`
continue to describe the latest request; retained events describe failures since
the last explicit clear or test boundary.

* `lastError()` acknowledges the **latest** retained event without deleting it.
* `lastError(false)` reads that same event without acknowledging it. Where an
  existing API is a property, the property still consumes and a new read method
  accepts the boolean instead.
* `diagnosticsJson(false)` returns **all** retained events without acknowledging
  them. This is the default where the language supports default arguments.
  Passing `true` acknowledges every event returned.
* `assertNoMismatches()` acknowledges all retained events and fails if any exist,
  including events already read. Acknowledgement is not deletion.
* `clearLastError()` explicitly discards retained events and resets the existing
  last-error/kind/index slots. `resetCursor()` rewinds playback but does not
  discard retained events.
* `testContext(name, file, line)` marks a new test boundary. It writes every
  unretrieved, not-yet-reported failure from the previous test to stderr, with
  the **previous** coordinates, then clears events and installs the new context.
  Every call is a boundary, even if the coordinates repeat.
* Closing/stopping a handle reports any remaining unretrieved failures to
  stderr. It does not introduce playback exceptions during teardown. Each event
  is reported at most once. Reporting to stderr does **not** acknowledge it on
  behalf of the harness.

An stderr report starts with `Servirtium: UNRETRIEVED REPLAY MISMATCH` and states
that no consuming retrieval was made. Merely reading kind/index does not
acknowledge a diagnostic. Reading the latest error does not acknowledge older
ones. A visual monitor should use non-consuming reads so watching a failure
cannot hide it from the test harness.

Coordinates come from the caller, with no test-framework detection or stack
inspection. The existing ABI open label supplies an initial test name; the tape
path/URL is captured automatically. Use the explicit context operation to supply
test name, source file and line before invoking the SUT. Calls assume a single
active test invocation per handle; poll/change context after the relevant HTTP
requests have completed. Separate handles retain separate events.

## Event representation and excerpts

`diagnosticsJson` returns a JSON array. Each event contains:

* `sequence`: a monotonically increasing identifier for that handle's lifetime,
  continuing across test boundaries;
* `kind`, `interaction`, and `server`: outcome code, tape index and opaque
  handle identity;
* `test`, `source_file`, `source_line`, and `tape`;
* `retrieved` and `reported`: integer flags (`0`/`1`) for consuming retrieval
  and stderr reporting, respectively;
* `expected` and `actual`, each with `method`, `path`, `headers`, and `body`;
* `diff`: a plain-text excerpt around the first differing line/byte;
* `candidate`: `1` when expected values come from a suggested `match_multiple`
  interaction, rather than an ordered expectation. The candidate is the first
  interaction with the same method, falling back to the first interaction.

There is no ANSI colour or HTML. Field projections are bounded, and diffs show
context near the mismatch even when it lies beyond the projected prefix. Binary
bodies get a byte-offset diagnostic; invalid UTF-8 never enters JSON strings.
Valid UTF-8 is preserved without splitting a codepoint at an excerpt boundary.
Header diffs respect configured removals and surgical `match_header` selection.
JSON-semantic matching and other matching rules still decide whether an event
exists; this feature does not change matching.

Diagnostic projections replace literal values configured by playback `unredact`
with `[REDACTED]`. They also mask Authorization, Proxy-Authorization, Cookie,
X-Api-Key and X-Auth-Token header values; query parameters `password`, `token`,
`access_token`, `api_key`, `secret`; and keys `password`, `secret`, `secretKey`,
`token`, `access_token`, `api_key` in valid JSON bodies. Header-name masking is
case-insensitive; query and JSON names are case-sensitive. This is a projection
of known credential fields, not a general detector of secrets in arbitrary
text. Raw request/response matching and forwarding remain unchanged.

`assert_all_redactions_used` names each unused rule by kind, **field name**
(e.g. `ResponseHeaders`, not `field 5`) and pattern — never the replacement
value.

The 599 **playback** mismatch response body is **not** masked: it shows the
recorded-vs-live diff verbatim so a failing test is debuggable. This is safe —
a committed tape is `redact`-ed, so playback `unredact`s a *contrived test*
value, never a production secret. (Do not `unredact` a real credential into
playback; nothing in a correctly scrubbed tape requires one.)

**Record mode is different, and it is masked.** A record run talks to the real
upstream with real credentials (a weekly vendor-drift check pulling tokens from
a vault, often on separate infrastructure). Redaction is applied at tape-emit
time — so if a request *fails before the tape is written*, the raw secret has
not yet been scrubbed. Every record-mode failure therefore runs the configured
`redact` rules over both the error response body returned to the caller **and**
`last_error`, so a failed record never leaks a vault secret into a log or CI
output. No tape is written on failure (fail-closed), so a partial tape can't
carry the secret either.

## Binding names

| Binding | Latest error with boolean | Event JSON | Assert | Test boundary |
|---|---|---|---|---|
| Java / Kotlin / Scala / Groovy | `lastError(false)` | `diagnosticsJson(false)` | `assertNoMismatches()` | `testContext(name, file, line)` |
| Python | `read_last_error(False)`; existing `last_error` property consumes | `diagnostics_json(consume=False)` | `assert_no_mismatches()` | `test_context(name, source_file, source_line)` |
| JavaScript / TypeScript | `readLastError(false)`; existing getter consumes | `diagnosticsJson(false)` | `assertNoMismatches()` | `testContext(name, file, line)` |
| .NET | `ReadLastError(false)`; existing property consumes | `DiagnosticsJson(false)` | `AssertNoMismatches()` | `TestContext(name, file, line)` |
| F# | `Servirtium.lastErrorWith false server` | `Servirtium.diagnosticsJson false server` | `Servirtium.assertNoMismatches server` | `Servirtium.testContext name file line server` |
| Rust | `last_error_with(false)` | `diagnostics_json(false)` | `assert_no_mismatches()` returns `Result` | `test_context(name, file, line)` |
| Go | `LastError(false)`; no arguments consume | `DiagnosticsJSON(false)` | `AssertNoMismatches()` returns `error` | `TestContext(name, file, line)` |
| Ruby | `last_error(consume: false)` | `diagnostics_json(consume: false)` | `assert_no_mismatches` | `test_context(name, source_file:, source_line:)` |
| PHP | `lastError(false)` | `diagnosticsJson(false)` | `assertNoMismatches()` | `testContext(name, file, line)` |
| Dart | `readLastError(consume: false)`; existing getter consumes | `diagnosticsJson(consume: false)` | `assertNoMismatches()` | `testContext(name, sourceFile:, sourceLine:)` |
| Nim | `lastError(false)` | `diagnosticsJson(false)` | `assertNoMismatches()` raises `VcrError` | `testContext(name, file, line)` |
| Zig | `readLastError(false)`; existing method consumes | `diagnosticsJson(false)` | `assertNoMismatches()` prints the diagnostic and returns `Error.VcrError` | `testContext(name, file, line)` |
| Lua | `last_error(false)` | `diagnostics_json(false)` | `assert_no_mismatches()` | `test_context(name, file, line)` |
| Haskell | `lastErrorWith False server` | `diagnosticsJson False server` | `assertNoMismatches server` | `testContext name file line server` |
| Clojure | `(last-error server false)` | `(diagnostics-json server false)` | `(assert-no-mismatches server)` | `(test-context server name file line)` |
| Elixir | `last_error(server, false)` | `diagnostics_json(server, false)` | `assert_no_mismatches(server)` | `test_context(server, name, file, line)` |
| Erlang / LFE | `last_error(server, false)` / `(last_error server 'false)` | `diagnostics_json(server, false)` | `assert_no_mismatches(server)` | `test_context(server, name, file, line)` |
| Gleam | `last_error_with(server, False)` | `diagnostics_json(server, False)` | `assert_no_mismatches(server)` returns `Result` | `test_context(server, name, file, line)` |
| Pharo | `lastErrorConsume: false` | `diagnosticsJsonConsume: false` | `assertNoMismatches` | `testContext: name file: file line: line` |
| C | `sv_last_error_ex(server, 0)` | `sv_diagnostics_json(server, 0)` | `sv_assert_no_mismatches(server)` returns an owned error string | `sv_test_context(server, name, file, line)` |
| C++ | `last_error(false)` | `diagnostics_json(false)` | `assert_no_mismatches()` | `test_context(name, file, line)` |
| Crystal | `last_error(false)` | `diagnostics_json(false)` | `assert_no_mismatches` | `test_context(name, file, line)` |
| D | `lastError(false)` | `diagnosticsJson(false)` | `assertNoMismatches()` | `testContext(name, file, line)` |
| Julia | `last_error(server; consume=false)` | `diagnostics_json(server; consume=false)` | `assert_no_mismatches(server)` | `test_context(server, name; source_file=, source_line=)` |
| Swift | `readLastError(consume: false)`; existing property consumes | `diagnosticsJson(consume: false)` | `try assertNoMismatches()` | `testContext(name, sourceFile:, sourceLine:)` |

Existing no-argument methods/properties remain available and consume the latest
failure. Caller-owned strings follow each binding's existing ownership rules.

## Additive C ABI

```c
char *aether_vcr_embed_last_error_ex(void *server, int consume);
char *aether_vcr_embed_diagnostics_json(void *server, int consume);
char *aether_vcr_embed_assert_no_mismatches(void *server);
void aether_vcr_embed_test_context(void *server,
    const char *test_name, const char *source_file, int source_line);
```

The original `aether_vcr_embed_last_error(server)` symbol remains and consumes
the latest retained event. String results are caller-owned, NUL-terminated and
freed with `aether_vcr_embed_free_string`. The assertion returns an empty string
on success or all retained failure diagnostics otherwise. The ABI uses integer
boolean flags, with zero for observer reads and nonzero for consuming reads.

Core behaviour is tested through the ABI by `core_tests/.diagnostics.ae`, also a
dependency of the normal `core_tests/.tests.ae`. Per-language playback tests drive
the shared `target/test-tools/diagnostic_fixture`, which produces two failures and a
subsequent success, then check observer reads, acknowledgements, assertions and
test boundaries through their public API.
