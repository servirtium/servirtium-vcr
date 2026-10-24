# Named secrets at tape emission and playback

Use a redactor to choose a **token name**, then a resolver to supply its value during playback. The core discovers fields; your callback decides which ones are secrets and how to name them. It never guesses whether a URL belongs to “billing”.

```java
var recorder = Vcr.record(tape, upstream)
    .secretRedactor((key, request) -> {
        if (!key.equals("password")) return null;
        if (request.path().contains("/billing/")) return "BILLING_PASSWORD";
        return "ACCOUNTS_PASSWORD";
    }).start();
// Exercise the real client against recorder.baseUrl().
recorder.close();

var playback = Vcr.playback(tape)
    .secretResolver(token -> passwords.get(token))
    .start();
// Exercise the same client; the upstream is no longer needed.
playback.close();
```

For one password, the resolver can simply return `"qwerty"` for `"PASSWORD"`. For four services on one port, the redactor can return `ACCOUNTS_PASSWORD`, `BILLING_PASSWORD`, `SHIPPING_PASSWORD` or `SUPPORT_PASSWORD` using the request path. The resolver receives exactly that name. A token can be reused across query parameters, headers and request/response bodies.

Python uses the same contract with its usual spelling:

```python
with servirtium.record(tape, upstream).secret_redactor(
    lambda key, request: (
        "BILLING_PASSWORD" if "/billing/" in request.path else "ACCOUNTS_PASSWORD"
    ) if key == "password" else None
).start() as recorder:
    exercise_client(recorder.base_url)

with servirtium.playback(tape).secret_resolver(passwords.get).start() as playback:
    exercise_client(playback.base_url)
    playback.assert_no_mismatches()
```

A callback receives the decoded key and a request snapshot: `method`, `path` (including query), `location`, `format`, `field_path` and zero-based `interaction`. The snapshot identifies the original request even when visiting a response field. It carries metadata, not the field's secret value. JSON/YAML paths use JSON Pointer escaping; XML paths distinguish attributes with `/@name`. Repeated fields are visited separately. Header keys retain their original casing: compare header names without case where appropriate.

Locations are `request.query`, `request.headers`, `request.body`, `response.headers` and `response.body`. Formats are `query`, `header`, `form`, `json`, `xml`, `yaml`, `multipart:<boundary>` or `opaque`.

## Timing and failure behavior

Recording forwards the original traffic and retains the original capture in memory. On close/flush, the core stops and joins the listener, extracts source spans, and the binding invokes your redactor synchronously on the thread/process performing that operation. The ordinary field redactions and header removals run before named redaction; whole-tape normalization runs afterwards. Keep callbacks deterministic.

Returning no value leaves a recording field unchanged. Returning a string names the token; names contain 1–128 ASCII letters, digits, dots, underscores, colons or dashes. For example, a JSON string becomes `"{{secret:BILLING_PASSWORD|3}}"`; a query value contains the URL-encoded marker. The numeric suffix lets the core restore the field's scalar encoding. Return the name alone from the redactor, without braces or suffixes.

The resolver runs synchronously before playback starts listening. It receives only the token name and returns a replacement string. Empty replacement strings are valid. Returning no value for a named token fails setup. Named tokens require a resolver; they are never quietly served as credentials. Existing whole-field `[REDACTED]` placeholders can also be resolved by their containing key when a resolver is explicitly configured. Existing playback without a resolver retains its legacy handling of `[REDACTED]`.

Callback exceptions, invalid decisions, extraction errors and unfinished staging prevent tape writes. Resolving alters playback's in-memory expectations and responses; it never rewrites the tape. A resolved playback cannot subsequently be flushed as plaintext. Registered resolved values and their emitted encodings are masked in retained mismatch diagnostics.

Resolvers may be called repeatedly for the same token. Every language uses host-side calls between FFI operations: there are no callbacks into a language runtime from the native HTTP worker, and no requirement for native callback support in its FFI.

## Content formats

| Format | Fields visited | Preservation and limits |
| --- | --- | --- |
| Query / URL-encoded form | Each `key=value`, including repeats and encoded key names | Keys, order and unrelated values retain their bytes. Replacements are URL-encoded. |
| HTTP headers | Each complete header value, in either direction | Header names and surrounding whitespace remain. Replacements cannot contain CR/LF. Resolve an Authorization token to the complete value, including `Bearer ` if needed. |
| JSON | Nested scalar values, including array elements | Compact/pretty layout and unrelated bytes remain. Strings are escaped by the core; a redacted number/boolean/null must resolve to a JSON primitive. |
| XML | Attributes, text and CDATA | The core validates XML and escapes replacements for their context. Comments and markup remain; custom DTD/entity processing is unsupported. |
| YAML | Block/flow mappings and sequences; plain, quoted and explicit block scalars | Source layout/comments remain. Anchors, aliases, tags, complex keys, directives/multiple documents and multiline plain scalars require an explicit rule and cause extraction to fail. Replacements must fit the recorded scalar style; use a quoted scalar when arbitrary text is needed. |
| Multipart form | Named text parts | Boundary/layout remain; file uploads are not traversed. Encoded text parts require an explicit rule. |
| Other text | Explicit `{{secret:NAME|12}}` markers | No speculative parsing. Use an existing field-scoped literal redaction to designate a raw marker, then resolve its name on playback. |

For unsupported structured documents, use the existing literal `redact`/`unredact` APIs in place of these structured callbacks.

Content-Type selects the body format; JSON and XML can also be recognized from their contents. Preserve the format header when relying on structured extraction. Binary bodies are outside this text API. The C string ABI takes UTF-8 text without embedded NUL bytes.

Only selected secret values receive encoding equivalence during request matching—for example, query/form spaces written as `+` or `%20`, or JSON strings using equivalent escapes. Unrelated fields, layout and scalar types remain exact unless another matcher is explicitly enabled. Response values use the core's encoder for the recorded style; their escape spelling can differ from the original while retaining the same value. Body terminal newlines are preserved in emitted tapes.

## Language surfaces

All formats, matching and tape operations live in the shared Aether core. These are marshalling APIs over that implementation.

| Language | Recording callback | Playback callback | No decision / unresolved |
| --- | --- | --- | --- |
| Java | `.secretRedactor((key, request) -> name)` | `.secretResolver(token -> value)` | `null` |
| Kotlin / Scala / Groovy | Java builder methods with native lambdas/closures | Java builder method | `null` |
| Clojure | `{:secret-redactor (fn [key request] ...)}` | `{:secret-resolver (fn [token] ...)}` | `nil` |
| Python | `.secret_redactor(callback)` | `.secret_resolver(callback)` | `None` |
| Ruby | `.secret_redactor { \|key, request\| ... }` | `.secret_resolver { \|token\| ... }` | `nil` |
| JavaScript / TypeScript | `.secretRedactor(callback)` | `.secretResolver(callback)` | `null` / `undefined`; callbacks are synchronous |
| Go | `.SecretRedactor(func(string, SecretRequest) (string, bool))` | `.SecretResolver(func(string) (string, bool))` | `false`; `true` permits an empty string |
| Rust | `.secret_redactor(\|key, request\| ...)` | `.secret_resolver(\|token\| ...)` | `None`; callbacks return `Option<String>` |
| C# | `.SecretRedactor((key, request) => name)` | `.SecretResolver(token => value)` | `null` |
| F# | `builder \|> Servirtium.secretRedactor callback` | `builder \|> Servirtium.secretResolver callback` | `None`; curried functions return `string option` |
| PHP | `->secretRedactor($callback)` | `->secretResolver($callback)` | `null` |
| Dart | `.secretRedactor(callback)` | `.secretResolver(callback)` | `null` |
| Nim | `server.secretRedactor(proc(key, request): Option[string] = ...)` | `server.secretResolver(callback)` before `start` | `none(string)` |
| Zig | `Record.secretRedactor(.{.context=..., .call=...})` | `Playback.secretResolver(.{.context=..., .call=...})` | `null`; callbacks return `anyerror!?[:0]const u8` |
| Lua | `:secret_redactor(function(key, request) ... end)` | `:secret_resolver(function(token) ... end)` | `nil` |
| Erlang | `servirtium:secret_redactor(Server, Fun2)` | `servirtium:playback_with_secrets(Tape, Fun1)` | `undefined`; values/names are binaries |
| Elixir | `secret_redactor: fn key, request -> ... end` option | `secret_resolver: fn token -> ... end` option | `nil` |
| Gleam | `server \|> servirtium.secret_redactor(callback)` | `servirtium.playback_with_secrets(tape, callback)` | `None`; returns `Option(String)` |
| LFE | `(servirtium_lfe:secret_redactor server callback)` | `(servirtium_lfe:playback_with_secrets tape callback)` | `'undefined`; values/names are binaries |
| Pharo | `builder secretRedactor: [ :key :request \| ... ]` | `builder secretResolver: [ :token \| ... ]` | `nil` |
| Haskell | `recSecretRedactor = Just callback` option | `pbSecretResolver = Just callback` option | `Nothing`; callbacks return `IO (Maybe String)` |
| Swift | `.secretRedactor { key, request in ... }` on recorder | `Vcr.playback(tape, secretResolver: callback)` | `nil`; closures may throw |
| Julia | `secret_redactor!(recorder, callback)` | `playback(tape; secret_resolver=callback)` | `nothing` |
| Crystal | `recorder.secret_redactor { \|key, request\| ... }` | `Servirtium.playback(tape, secret_resolver: callback)` | `nil` |
| D | `recorder.secretRedactor(delegate)` | `Vcr.playback(tape, host, port, resolver)` | empty `Nullable!string` |

Snapshot property spelling follows the binding: for example Java uses `request.fieldPath()`, Python `request.field_path`, .NET `request.FieldPath`, and Haskell `secretFieldPath request`. Erlang/Elixir/LFE receive a map; Gleam receives a `SecretRequest` record. C receives borrowed `sv_secret_request` strings during its callback. C++ supplies an owned `SecretRequest` snapshot.

For C, register `sv_secret_redactor(server, callback, userdata)` before flushing, then use `sv_playback_with_secrets(tape, host, port, resolver, userdata)`. Return `NULL` for no decision; returned strings must remain valid until the next callback. C++ uses `recorder.secret_redactor(callback)` and `Vcr::playback(tape, resolver)` with `std::optional<std::string>` results. Its normal explicit flush lifecycle remains in effect.

## Staged C ABI

All functions take the listener handle. Returned `char*` strings are caller-owned and must be freed with `aether_vcr_embed_free_string`.

1. `aether_vcr_embed_secret_begin(handle, resolving)` returns an error string; `0` stages recording, `1` stages resolution.
2. `aether_vcr_embed_secret_next(handle)` returns `1` for a candidate, `0` when done or `-1` on invalid state.
3. `aether_vcr_embed_secret_get(handle, part)` returns a copied metadata string. Parts: `1` key, `2` token name, `3` request method, `4` request path, `5` location, `6` format, `7` field path. `aether_vcr_embed_secret_interaction(handle)` returns the interaction index.
4. Invoke the host callback. For a string result, `aether_vcr_embed_secret_apply(handle, value)` returns an error string. Skip this call for no decision.
5. After `next` returns `0`, call `aether_vcr_embed_secret_finish(handle)` and check its error string. On a host exception, call `aether_vcr_embed_secret_abort(handle)` and stop the handle.

Only after successful staging should a binding flush recording or start playback. Native start additionally checks for unresolved named markers, including when a caller omits resolver configuration.
