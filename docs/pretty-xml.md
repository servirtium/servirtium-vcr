# Pretty XML in record and playback

`pretty_xml(indent)` is one opt-in setting for readable XML tapes and matching
XML requests. Use it on both the recorder and the player. The default is off;
1–16 spaces selects the recording indent, values above 16 clamp to 16, and
0 (or a negative value) disables it. `clear_format_options` resets it.

For example, in .NET:

```csharp
Vcr.Record(tape, upstream).PrettyXml(2).Start();
Vcr.Playback(tape).PrettyXml(2).Start();
```

Other bindings use their usual spelling (`pretty_xml`, `prettyXml`, `PrettyXML`,
or `set_pretty_xml`). The C ABI is
`aether_vcr_embed_set_pretty_xml(handle, indent)` with a corresponding getter.
The existing playback `MatchXmlBody(true)` switch remains a compatibility
alias for XML layout matching; it uses exactly the same canonicalizer.
JVM and CLR family bindings inherit their underlying Java/.NET APIs.

## Recording

Both **request and response** bodies are pretty-printed into the tape when
their Content-Type is `application/xml`, `text/xml`, or a subtype ending in
`+xml` (including SOAP). Case and parameters are ignored. Non-XML media types,
binary/base64 bodies, and malformed XML remain byte-exact.

Formatting runs last, after redactions, secret callbacks and normalizations,
so existing rules still see the original body. Recorded Content-Length values
follow the formatted bodies. The upstream receives the original request and
the recording client receives the original upstream response bytes.

**Migration from alpha.15:** XML request bodies are now pretty-printed too.
Newly recorded tapes therefore change. Enable the setting on playback to
match compact client requests against those tapes.

## Playback and canonicalization

Responses are served exactly as written in the tape; the server computes
Content-Length from the served bytes. The setting never reformats a response
at playback time.

Recorded requests are canonicalized on load; live requests go through the
same core function before comparison. Playback unredactions and resolved
secrets are reflected in the canonical expectation. Canonical forms are compared byte-for-byte;
mismatch diagnostics show those same forms. Hand-edited indentation and
changes to the printer between versions consequently affect both sides.
The canonical form is deterministic, valid XML, and idempotent. Its diagnostic
indent is two spaces, independent of the recording indent selected.
Matching does not depend on the live request's Content-Type, so a client
sending XML as `text/plain` still matches. If either body fails to parse,
comparison and diagnostics fall back to the original bytes.

These differences are layout and match:

- Whitespace-only text nodes in an element containing child elements.
- An XML declaration present or absent, `<x/>` versus `<x></x>`, attribute
  order, and CDATA versus escaped text.
- A numeric character reference versus the equivalent character, such as
  `&#10;` versus a literal newline in text.
- CRLF and lone CR versus LF, normalized before parsing (XML 1.0 §2.11).
- Literal tab, CR and LF in attribute values versus spaces (XML 1.0 §3.3.3,
  CDATA attribute type). Character references in attributes retain their
  referenced character: `&#10;` does **not** equal a space.

These are data and must match exactly after the normalization above:

- Every character of leaf text, including leading/trailing spaces, repeated
  spaces and trailing newlines. `<C> </C>` differs from `<C></C>`.
- Attribute values: no trimming or collapsing repeated spaces.
- Element order, element names, namespace prefixes (even for the same URI),
  and all remaining text content.

**Mixed-content limitation:** without a schema, whitespace-only text between
child elements cannot be distinguished from indentation.
`<p><b>a</b> <i>b</i></p>` therefore matches
`<p><b>a</b><i>b</i></p>`. Recording with this setting also removes that space.
Use byte-exact mode when this distinction matters. This is layout
canonicalization, not W3C XML C14N or a signature-preserving transformation.

## Shared regression contract

`core_tests/test_vcr_xml_matrix.ae` covers the consumer's 32 probe rows (the
response-preservation row runs with every successful request), additional
attribute/text edge cases, both playback strategies and idempotency.
`test_vcr_pretty_xml.ae` covers recording through a real upstream and replaying
unmodified, hand-reindented and whole-file CRLF-converted tapes, including a
multiline leaf field. Every language test leaf depends on these same core
tests through `core_tests/.fixtures.ae`; bindings contain no XML logic.

## Aether XML follow-up

Aether's pull reader needs native XML 1.0 §2.11 line-end normalization and
§3.3.3 literal attribute-whitespace normalization **before** entity decoding.
Until those are provided by `std.xml`, the core applies them at the parser
boundary. A reusable `std.xml` canonicalization API with leaf-text preservation
would let Servirtium delegate the remaining XML serialization as well. These
are XML library enhancements, rather than per-binding responsibilities.
