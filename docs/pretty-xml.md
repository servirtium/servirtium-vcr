# pretty_xml: readable XML in recorded tapes

Off by default. `pretty_xml(indent)` is a record-side option (indent 1..16
spaces per level; 0 = off; values above 16 clamp to 16). When the tape is
written, XML response bodies are re-indented with Aether's
`xml.pretty` (comments, processing instructions and DOCTYPE are kept), so a
SOAP envelope that arrived as one line is readable and diffable.

C ABI: `aether_vcr_embed_set_pretty_xml(handle, indent)` (and a getter,
`aether_vcr_embed_get_pretty_xml`). `clear_format_options` resets it. Each
binding exposes it on its record builder as `pretty_xml` / `prettyXml` /
`PrettyXML` and so on.

## What is prettified

- A body whose Content-Type is `application/xml`, `text/xml`, or any
  `type/subtype+xml` (`soap+xml`, `atom+xml`, ...). Parameters such as
  `; charset=utf-8` and letter case are ignored. The type is the interaction's
  response content type (or the recorded response `Content-Type` header).
- Not base64-marked (binary) bodies and not other content types.
- If `xml.pretty` rejects the body (not well-formed), the body is recorded
  byte-exact and recording continues.

## Order of operations

Redactions, secret callbacks and whole-tape normalizations run on the raw
body first; pretty-printing is the last step. A pattern that spans several
elements therefore matches as it did before and cannot be split by the line
breaks that pretty-printing adds.

## Playback consequences

- **Responses** are replayed as recorded, so the SUT receives equivalent XML
  with different whitespace. Whitespace-only text between elements is
  dropped and leading/trailing whitespace in text nodes may be trimmed, so
  do not use this for XML where that whitespace is significant, or that is
  signed (WS-Security). Content-Length is never replayed from the tape: the
  server computes it from the bytes actually served, so it stays correct.
- **Requests** are never prettified. Default request-body matching is
  byte-exact, so a re-indented recorded request body would reject the SUT's
  original compact request. Prettifying them would only be safe together with
  `match_xml_body` on the playback side, and the record builders do not carry
  that matcher; keeping requests byte-exact means a prettified tape replays
  with no extra configuration.
