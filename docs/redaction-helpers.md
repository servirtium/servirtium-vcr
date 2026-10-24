# Structured credential redaction

Recorders can redact a named header, query parameter, or JSON field without
constructing a search pattern. The implementation lives in `core/vcr.ae`;
each binding only marshals configuration to the shared native library.

```java
Vcr.record(tape, upstream)
    .redactHeader("Authorization")
    .redactQueryParam("password")
    .redactJsonField("secretKey")
    .start();
```

The default replacement is `[REDACTED]`. Header and JSON helpers default to
request scope. Their advanced forms accept a replacement and an explicit field
(`RequestHeaders`/`ResponseHeaders`, or `RequestBody`/`ResponseBody`). Query
redaction targets only the URL query, not form bodies, cookies, or path segments.

* Header names match case-insensitively. Every matching header value is
  replaced, retaining the header name and unrelated headers.
* Query names match exactly after percent-decoding and decoding `+` as space.
  Every occurrence is redacted, including an empty or bare parameter. The
  replacement is percent-encoded; other parameter bytes and their order stay
  intact. Thus `[REDACTED]` appears as `%5BREDACTED%5D` in a tape URL.
* JSON keys match exactly, case-sensitively, at every depth, including objects
  inside arrays, duplicate keys and escaped keys. The entire selected value is
  replaced by a JSON string, even when originally a number, object or array.
  Whitespace and unrelated values retain their original bytes. An empty body
  is skipped. A non-empty body that is not valid JSON fails the flush without
  writing either the tape or a drift-check `.actual` file. Use response scope
  explicitly if the response contains credentials too.

These rules run at tape emission. The upstream receives original credentials,
and clients receive original responses. Captured values in process memory are
unchanged. Literal and structured redactions run in registration order, followed
by header removal and whole-tape normalization. `clear_redactions` clears both
literal and structured rules. Rules belong to a server handle and do not leak
into another recording.

Redacting a request expectation does not change playback matching. Configure
existing playback `unredact` rules to restore a known test credential, or send
the recorded replacement. Query replacements are percent-encoded, so an
unredaction for the path must match that encoded text. This feature does not
make playback ignore authentication values.

## Language surfaces

| Language | Configuration before requests |
|---|---|
| Java, Kotlin, Scala, Groovy | `redactHeader`, `redactQueryParam`, `redactJsonField` on the record builder; Java accepts `(name, replacement, field)` overloads |
| JavaScript / TypeScript | Same camelCase methods; optional replacement and field arguments |
| Python | `redact_header`, `redact_query_param`, `redact_json_field`; optional replacement and keyword `field=` |
| Ruby | Same snake_case methods; optional replacement and keyword `field:` |
| Rust | Same snake_case methods; `_with(name, replacement, field)` advanced forms |
| Go | `RedactHeader`, `RedactQueryParam`, `RedactJSONField`; `With` advanced forms |
| .NET | `RedactHeader`, `RedactQueryParam`, `RedactJsonField`; optional replacement and field |
| F# | Pipeline functions `Servirtium.redactHeader`, `redactQueryParam`, `redactJsonField` over the .NET record builder; advanced forms via .NET interop |
| Dart | CamelCase methods; named `replacement:` and `field:` arguments |
| PHP | CamelCase methods; optional replacement and field arguments |
| Nim | CamelCase procedures on the record server; optional replacement and field |
| Zig | CamelCase methods on `Record` and `Vcr`; `With` advanced forms |
| Lua | Snake_case builder methods; optional replacement and field arguments |
| Haskell | `recRedactHeader`, `recRedactQueryParam`, `recRedactJsonField` lists in `RecordOptions`; `With` fields accept custom replacements and scopes |
| Clojure | `:redact-header`, `:redact-query-param`, `:redact-json-field` lists in the record options map; advanced forms via Java interop |
| Elixir | `:redact_header`, `:redact_query_param`, `:redact_json_field` lists in record options; corresponding `_with` lists of `{field, name, replacement}` tuples |
| Erlang | Snake_case functions `(server, name)`; advanced `(server, name, replacement, field)` |
| Gleam | Snake_case functions `(server, name)` returning `Result(Nil, String)`; `_with` advanced forms |
| LFE | Snake_case functions `(server name)`; advanced `(server name replacement field)` |
| Pharo | `redactHeader:`, `redactQueryParam:`, `redactJsonField:`; advanced selectors append `replacement:field:` |
| C | `sv_redact_header`, `sv_redact_query_param`, `sv_redact_json_field`; `_with(server, field, name, replacement)` advanced forms; free returned `sv_str` |
| C++ | Snake_case methods; optional replacement and field arguments |
| Crystal | Snake_case methods; optional replacement and field arguments |
| Julia | Snake_case functions; `replacement=` and `field=` keyword arguments |
| D | CamelCase methods; optional replacement and field arguments |
| Swift | CamelCase methods; `replacement:` and `field:` arguments |

The three C ABI exports are `aether_vcr_embed_redact_header`,
`aether_vcr_embed_redact_query_param`, and `aether_vcr_embed_redact_json_field`.
Each takes `(handle, field, name, replacement)` and returns a caller-owned error
string (empty means success). Query scope must be `Path` (`1`). Release the
returned string with `aether_vcr_embed_free_string`. Use a library built from the
same revision as these bindings.

`core_tests/test_vcr_redaction_helpers.ae` covers the shared semantics. Every
language's normal test suite exercises its public API by recording real HTTP
traffic. Most use `core_tests/redaction_fixture.py`: its single-request upstream
checks original credentials, and its tape check verifies replacements plus
untouched neighbouring values. It uses Python's standard library and exits after
one request, or times out after 45 seconds. Pharo uses its existing Zinc fixture.
