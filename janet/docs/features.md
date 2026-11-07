# Feature matrix

Servirtium capability checklist mapped through the stack. "Test" = exercised by
the binding's `test/*.janet` suite against the real native library, unless noted.

| Capability | Aether core | embed C-ABI | Janet API | Test |
|---|:---:|:---:|---|:---:|
| Playback (ordered, multi-interaction) | yes | yes | `playback` / `with-playback` | yes |
| Playback of a tape fetched over HTTP | yes | yes | `playback-url` | yes |
| Record, flush tape | yes | yes | `record` / `with-record` / `flush-tape` | yes |
| Discard a failed recording | yes | yes | `discard` (and `with-record` on error) | yes |
| Custom HTTP verbs (POST/PUT/...) | yes | yes | (automatic) | yes POST |
| Request body matching | yes | yes | (automatic when the tape has a body) | yes via POST |
| Redactions | yes | yes | `:redact` / `redact` | yes |
| Structured redaction (header, query param, JSON field) | yes | yes | `:redact-headers` `:redact-query-params` `:redact-json-fields` | yes |
| Unredactions | yes | yes | `:unredact` / `unredact` | yes |
| Named secrets (redactor / resolver callbacks) | yes | yes | `:secret-redactor` / `:secret-resolver` | yes |
| Header removal | yes | yes | `:remove-headers` / `remove-header` | yes |
| Whole-tape normalize (`{{name-N}}`) / redact | yes | yes | `:normalize-whole-tape` / `:redact-whole-tape` | yes |
| Notes | yes | yes | `:notes` / `note` | yes |
| Strict request matching | yes | yes | `:strict-headers` + `:strict-ignore-common-headers` | yes pass + fail |
| JSON / XML request-body matching (semantic, opt-in) | yes | yes | `:match-json-body` / `:match-xml-body` | core probe |
| Reusable / order-independent matching (opt-in) | yes | yes | `:match-multiple` | yes |
| Match on a specific request header (opt-in) | yes | yes | `:match-headers` / `match-header` | accepted |
| Static-content bypass | yes | yes | `:static-content` | yes |
| Untaped paths (no cursor consume) | yes | yes | `:untaped` | yes |
| Drift: overwrite / fail-if-changed / or-check | yes | yes | `:flush-mode` / `flush-tape` `:mode` | yes |
| Header presets (transport, cloud vendor, volatile) | yes | yes | `:remove-transport-headers` `:remove-cloud-headers` `:ignore-volatile-headers` | yes |
| Credential presets | yes | yes | `:redact-credentials` / `:redact-credential-headers` | yes |
| License notice | yes | yes | `:license-notice` / `add-license-notice` | yes |
| Pretty JSON / pretty XML | yes | yes | `:pretty-json` / `:pretty-xml` | yes (JSON output checked) |
| Upstream CA file | yes | yes | `:upstream-cafile` | core probe (`tls_probe.ae`) |
| TLS serving | yes | yes | `:tls` / `:tls-pem` / `last-tls-protocol` | rejection only |
| Format options (indent, emphasize, rules footer) | yes | yes | `:indent-code-blocks` `:emphasize-http-verbs` `:rules-footer` | accepted |
| Response substitution + required checks | yes | yes | `:substitute` / `assert-all-consumed` | yes |
| Diagnostics (kind, index, error, JSON, assert, test context) | yes | yes | `last-kind` ... `assert-no-mismatches` | yes |
| HAR import / export | yes | yes | `har-import` / `har-export` | yes |
| gzip normalize/restore, chunked de-chunk | yes | yes | (automatic) | yes (chunked upstream) |
| Dynamic (OS-assigned) port | yes | yes | `:port 0` -> `port` | yes |
| One server per port (N servers / process) | yes | yes | (each server owns its handle) | yes |

Not surfaced: none of the `aether_vcr_embed_*` exports is left out. The suite
calls every function at least once; the Test column says which are checked
end to end and which are only accepted.

## Known limitations

- **Windows**: the FFI layer is portable (`ffi/native` takes the `.dll`), but
  the string-length helper reads `strlen` from the C runtime and the suite has
  only been run on macOS and Linux. Treat Windows as untested.
- Janet strings may hold NUL bytes; the C ABI's strings end at the first one,
  so a pattern, path or header value with an embedded NUL is truncated.
- **Binary response bodies** rely on the tape's text/base64 path (an existing
  core limitation).
