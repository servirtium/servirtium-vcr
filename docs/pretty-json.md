# Pretty JSON in record and playback

`pretty_json(indent)` is one opt-in setting for readable JSON tapes and JSON
request matching. Enable it on both the recorder and the player. It is off by
default; indent 1–16 selects spaces per level, values above 16 clamp to 16,
and zero or a negative value disables it. `clear_format_options` resets it.

For example, in .NET:

```csharp
Vcr.Record(tape, upstream).PrettyJson(2).Start();
Vcr.Playback(tape).PrettyJson(2).Start();
```

Bindings use their usual spelling (`pretty_json`, `prettyJson`, `PrettyJSON`,
or `set_pretty_json`). The C ABI is
`aether_vcr_embed_set_pretty_json(handle, indent)`, with a corresponding getter.
JVM/CLR family bindings inherit their Java/.NET APIs. `MatchJsonBody(true)`
remains a matching-only compatibility alias using the same canonicalizer.

## Recording

Both **request and response** JSON bodies are indented into the tape. Their
Content-Type must be `application/json`, `text/json`, or a subtype ending in
`+json`; case and parameters are ignored. Response-only `sort_json_array_at`
rules can also explicitly identify a JSON response served as another media
type. Those rules never opt a non-JSON request media type into formatting.

Formatting runs after redactions, secret callbacks and normalizations, so
rules see the original bytes. Recorded Content-Length values follow rewritten
bodies. The upstream receives the original request, and the recording client
receives the original upstream response.

The printer changes layout, preserving object key order, duplicate members,
array order, string escapes and number spellings—even very large integers,
`1.0`, and exponent notation. JSON strings are data: leading/trailing spaces,
repeated spaces, escaped tabs and newlines all survive. Invalid JSON and
binary/base64 bodies stay byte-exact; formatting never repairs them.

`sort_json_keys` and the selected-array sorting rules remain separate,
response-only opt-ins. Pretty-printing never sorts a recorded request.

**Migration from alpha.15:** request bodies are now pretty-printed too, which
changes newly recorded tapes. Enable the same setting on playback to accept
compact live requests against them.

## Playback and diagnostics

Responses are served exactly as written in the tape, with Content-Length
computed from the served bytes. Playback never pretty-prints a response.

The recorded request is canonicalized on load, and live requests pass through
the identical core function. Resolved secrets and playback unredactions are
reflected in the expectation. Comparison is byte-for-byte between canonical
forms; mismatch diagnostics display those forms too. Canonicalization is
deterministic and idempotent, with a fixed two-space diagnostic indent,
independent of the recording indent.

These differences match:

- Layout whitespace outside strings, including CRLF, lone CR, LF, tabs and
  indentation; object-member order at every depth.
- Equivalent string/key escapes, such as `"a"` versus `"\u0061"`, escaped
  slash versus slash, or Unicode characters versus their JSON escapes.
- Exactly equal decimal numbers: `1`, `1.0` and `10e-1`; positive and negative
  zero. Matching uses original number tokens, never binary floating point.

These remain different:

- Any changed character inside a string or key, including whitespace,
  escaped CRLF versus LF, and characters following an embedded `\u0000`.
- Array-element order, extra/missing members, case-sensitive key names,
  changed numbers, and type changes (`1`, `"1"`, `true` and `null` differ).
- Distinct adjacent integers beyond 2^53, precise decimals, and distinct
  numbers whose floating-point representations overflow or underflow.

Canonical numbers use an exact integer coefficient and decimal exponent;
diagnostics can therefore show `15e-1` for an original `1.5`. Exponents are
handled without expanding enormous powers of ten into long strings of zeros.
Recording retains the original number spellings.

**Duplicate-key policy:** retain every occurrence, preserving the order of
occurrences with the same decoded key. Never silently collapse a duplicate
member or guess whether the consumer uses the first or last value. Different
keys may still be reordered. This is intentionally conservative.

Matching does not depend on the live request's Content-Type. If either body
cannot be parsed, both matching and diagnostics fall back to their original
bytes. Whole-tape CRLF checkout conversion does not affect matching; the
existing tape reader recognizes and normalizes converted tape structure.

## Shared regression contract

`core_tests/.json.ae` runs the canonicalization/matching matrix and the real
recording round-trip test. Every language's test leaf depends on it through
`core_tests/.fixtures.ae`. The same core implementation handles all bindings.
Tests cover defaults, key ordering, arrays, string whitespace/escapes/Unicode,
embedded NULs, exact numbers, duplicate keys, malformed fallback, idempotency,
canonical diagnostics, raw recording-client/upstream bytes, response fidelity,
hand-reindented tapes, CRLF conversion and `QUERY` requests with bodies.

Aether's `json.pretty` preserves raw tokens and supplies validation/formatting.
Its parsed-number getters are floating point, so the core canonicalizer uses
the original decimal tokens; `std.bignum` handles exponent arithmetic. A
future exact-token canonicalization API in `std.json` could replace that walk.
