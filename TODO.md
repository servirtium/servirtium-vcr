# TODO

## Credential matching: pair live values with tape numbers (alpha.13 candidate)

Waiting on Paul's alpha.12 feedback from his work computer (2026-11-07)
before starting.

Today `redact_credentials` / `redact_credential_header` make playback match
credential headers on **presence only**: any live value passes. That loses a
check a literal redaction keeps. testcontainers-ae's Vault wrong-token case
records `X_VAULT_TOKEN_2`, but its playback would accept the right token
there too, so CouchDB and Typesense stayed on labelled literal redactions.

Proposal: pair values per playback session, with no secret needed.
- The first live value seen where the tape has `PREFIX_N` is paired with
  `PREFIX_N`.
- A later `PREFIX_N` must arrive with that same value.
- A value already paired with another number cannot pair with a new one, so
  `_2` must differ from `_1`.
- Cookies are paired per cookie value (the `Set-Cookie: sid=COOKIE_1` that
  playback serves comes back as `sid=COOKIE_1`, which pairs trivially).
- A pairing failure is a mismatch whose diagnostic names the token, never
  the live value.

What it buys: a wrong-credential case still has to send a different
credential from the right one; a session cookie must come back unchanged;
and an "already logged in" tape replays with any session value used
consistently, so a port to another language needs no real login.

Then: move testcontainers-ae's CouchDB and Typesense onto the preset, and
re-record. Test: extend `core_tests/test_vcr_header_presets.ae` (a reused
token passes; a different value for the same number, or the same value for
two numbers, is a mismatch).

## Stable order for response headers and JSON keys (found 2026-11-07)

Some servers send the same response in a different order each run:
Meilisearch and Qdrant (Rust) reorder response headers, Vearch (Go)
reorders the keys of a JSON object. A re-record then differs byte for byte,
so `check` fails. The from-testcontainers suites work round it by leaving
`vary` out, checking Qdrant's dashboard live only, and collapsing Vearch's
whole `data` object, all of which lose content.

Candidate options, opt-in like pretty_json:
- write response headers sorted by name, keeping the relative order of
  repeated headers (Set-Cookie, Vary), as request headers already are;
- write JSON bodies with object keys sorted (with pretty_json or alone);
  playback serves the sorted form, which is the same JSON value.

Then drop the workarounds and re-record those three suites.

## Additional language bindings

Candidates retained for future work (2026-10-03). Keep bindings thin: all
recording, matching and tape logic belongs in `core/`.

Suggested priority:

- [ ] **Perl** — established scripting and HTTP-testing ecosystem. Use
  FFI::Platypus over the C ABI, following the Python/Ruby runtime-loader shape.
- [ ] **R** — reproducible tests for API-backed data workflows. Use a small C
  adapter through `.Call`.
- [ ] **PowerShell** — REST API automation tests. Reuse the existing .NET
  assembly through `Add-Type`; no second native binding needed.
- [ ] **OCaml** — extend coverage of functional-language ecosystems. Use
  `ctypes` over the C ABI.

Further candidates:

- [ ] **Common Lisp** — investigate CFFI over the C ABI.
- [ ] **Racket/Scheme** — investigate Racket's FFI first; other Scheme
  implementations would need their own interop and packaging choices.
- [ ] **Objective-C** — investigate a thin wrapper over the existing C client.
- [ ] **VB.NET** — reuse the existing .NET assembly, like F#.

Related runtime coverage:

- [ ] **Browser JavaScript** — assess a browser-oriented test-harness workflow;
  the current JavaScript/TypeScript binding targets Node. Browsers cannot load
  the native shared library directly.

Bash users can already run the CLI with `curl`; a native binding is low priority.
Perl is the suggested next addition, followed by R. PowerShell offers inexpensive
extra reach through an existing runtime family.
