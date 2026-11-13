# Usage

Every fixture starts from `servirtium/playback` or `servirtium/record` (or the
`with-playback` / `with-record` macros that wrap them), takes an optional
**options struct**, and yields a *server*: a table you pass to the other
functions. The system-under-test only needs `(servirtium/base-url vcr)`; tape
path, mode, mutations and assertions live in your test setup.

```janet
(import servirtium)

(servirtium/with-playback [vcr "tapes/single_get.md"]
  # drive your SUT at (servirtium/base-url vcr) ...
  (assert (= :ok (servirtium/last-kind vcr))))   # optional: assert a clean match
```

Names are kebab-case; flags are options keys or `set-*` functions; enums are
keywords (`:request-headers`, `:ok`, `:body-diff`). Predicates end in `?`
(`matched-cleanly?`).

## Playback

```janet
(servirtium/with-playback [vcr "tapes/climate_api.md" {:port 0}]   # 0 = OS-assigned
  (my-client/get-countries (servirtium/base-url vcr))
  (unless (servirtium/matched-cleanly? vcr)
    (error (servirtium/last-error vcr))))
```

`with-playback` always stops the server, including when the body raises. The
function form is `(servirtium/playback tape opts)` + `(servirtium/stop vcr)`.
`(servirtium/playback-url url)` replays a tape fetched over http(s).

## Recording

```janet
(servirtium/with-record [vcr "tapes/climate_api.md" "https://climatedataapi.worldbank.org"]
  (my-client/get-countries (servirtium/base-url vcr)))
```

Record forwards each request to the upstream, returns the real response to your
SUT and captures the exchange. When the body finishes normally the tape is
flushed; if it **raises**, the recording is discarded and the error propagates,
so a failed test never overwrites a good tape. Chunked responses are
de-chunked. Without the macro: `(servirtium/flush-tape vcr)` writes the tape
(and stops), `(servirtium/discard vcr)` stops without writing.

### Drift detection

```janet
(servirtium/with-record [vcr tape upstream {:flush-mode :fail-if-changed}]
  ...)                       # raises if the fresh recording differs from the tape on disk
```

`:flush-mode` is `:overwrite` (default), `:fail-if-changed` (the new tape is
still written, for the git diff) or `:or-check` (check against an existing tape
instead of overwriting). `(servirtium/flush-tape vcr {:mode :or-check})` picks
one per call.

## Options

The options struct is applied between open and start. Unknown keys raise, so a
typo does not silently do nothing. Every option has an equivalent function
(taking the server first) for imperative use.

| Option | Value | Function |
|---|---|---|
| `:host` `:port` `:label` | string, int (0 = OS picks), string | (open arguments) |
| `:native-lib` | path to the library | `set-library!` |
| `:strict-headers` | bool | `set-strict-headers` |
| `:match-json-body` / `:match-xml-body` | bool | `set-match-json-body` / `set-match-xml-body` |
| `:match-multiple` | bool | `set-match-multiple` |
| `:match-headers` | name or `[names]` | `match-header` |
| `:strict-ignore-common-headers` | true | `strict-ignore-common-headers` |
| `:ignore-volatile-headers` | true | `ignore-volatile-headers` |
| `:remove-transport-headers` | true | `remove-transport-headers` |
| `:remove-cloud-headers` | vendor or `[vendors]` (`"aws"` `"azure"` `"cloudflare"` `"fastly"` `"gcp"`) | `remove-cloud-headers` |
| `:redact-credentials` | true | `redact-credentials` |
| `:redact-credential-headers` | name or `[names]` | `redact-credential-header` |
| `:remove-headers` | `[[field name] ...]` | `remove-header` |
| `:redact` | `[[field pattern replacement] ...]` | `redact` |
| `:redact-headers` / `:redact-query-params` / `:redact-json-fields` | `[name or [name replacement] ...]` | `redact-header` / `redact-query-param` / `redact-json-field` |
| `:unredact` | `[[field pattern replacement] ...]` | `unredact` |
| `:substitute` | `[[field pattern replacement required?] ...]` | `substitute` |
| `:volatile-markers` | `:mustache` (default), `:dollar-curly`, `:wikilink`; applied before any rule | `volatile-markers` |
| `:volatile-profile` | profile file path or `[paths]` | `volatile-profile` |
| `:volatile-rules` | `[[scope pattern kind?] ...]` (a bad rule fails the open) | `volatile-rule` |
| `:volatile-binds` | `[[name-or-token value] ...]` | `bind` |
| `:redact-whole-tape` | `[[pattern replacement description?] ...]` | `redact-whole-tape` |
| `:notes` | `[[title body] ...]` | `note` |
| `:static-content` | `[[mount dir] ...]` | `static-content` |
| `:untaped` | path or `[paths]` | `untaped` |
| `:indent-code-blocks` / `:emphasize-http-verbs` | true | `indent-code-blocks` / `emphasize-http-verbs` |
| `:pretty-xml` / `:pretty-json` | indent 1..16 (`true` = 2) | `set-pretty-xml` / `set-pretty-json` |
| `:rules-footer` | bool | `set-rules-footer` |
| `:sort-json-keys` | bool (record; needs `:pretty-json`) | `set-sort-json-keys` |
| `:sort-json-arrays` | `[[path by] ...]` (record; needs `:pretty-json`) | `sort-json-array` |
| `:sort-json-arrays-at` | `[[request-regex path by] ...]` (record; needs `:pretty-json`) | `sort-json-array-at` |
| `:sort-response-headers` | bool (record) | `set-sort-response-headers` |
| `:sort-header-values` | name or `[names]` (record) | `sort-header-value` |
| `:playback-range` | `[from to]` (playback only) | `set-playback-range` |
| `:license-notice` | text | `add-license-notice` |
| `:upstream-cafile` | PEM path | `set-upstream-cafile` |
| `:tls` / `:tls-pem` | `[cert key]` (paths / in-memory PEM) | `set-tls` / `set-tls-pem` |
| `:flush-mode` | `:overwrite` `:fail-if-changed` `:or-check` | (record) |
| `:secret-redactor` / `:secret-resolver` | `(fn [key request])` / `(fn [token])` | (see below) |

Fields are the keywords `:path`, `:response-body`, `:request-headers`,
`:request-body`, `:response-headers` (and `:response` for substitutions).

### Stable ordering (record; opt-in)

For a service that sends the same response in a different order every run. Each
rule is off by default; the tape is byte-exact without them.

```janet
(servirtium/with-record [vcr tape upstream
                         {:pretty-json 2                            # required by the JSON rules
                          :sort-json-keys true                      # object keys sorted at every depth
                          :sort-json-arrays [["/items" "/id"]]      # [path by]
                          :sort-json-arrays-at [["^/users" "" "name"]] # [request-regex path by]
                          :sort-response-headers true               # header lines sorted by name
                          :sort-header-values ["Allow"]}]           # one header's comma-separated items
  ...)
```

Sorted JSON is only written pretty-printed: a record with `:sort-json-keys` or a
sort-array rule but without `:pretty-json` is refused when the tape is written,
so `flush-tape` (and so `with-record`) raises with "sort_json_keys needs
pretty_json: sorted JSON is only written pretty-printed (turn pretty_json on)"
and writes nothing. A rule the core refuses outright raises from `record`.

### Playback range (playback only)

Replay only interactions `from`..`to` of a tape, by the tape's `## Interaction N`
number (0-based, inclusive; `to` < 0 = through the last). Interactions outside the
range are never served.

```janet
(servirtium/with-playback [vcr tape {:playback-range [4 6]}]
  (servirtium/set-playback-range vcr 4 -1)   # raises when refused
  (servirtium/get-playback-range vcr)        # [4 6], or nil when none is set
  (servirtium/clear-playback-range vcr))
```

A record server refuses a range (`set-playback-range` raises), so a test cannot
silently overwrite a journey's tape with a slice.

### Redaction and unredaction

```janet
# record: scrub secrets before the tape is written
(servirtium/with-record [vcr tape upstream
                         {:redact-headers ["Authorization"]
                          :redact-query-params ["password"]
                          :redact-json-fields ["secretKey"]
                          :redact [[:response-body "secret-token" "REDACTED"]]}]
  ...)

# playback: let the scrubbed tape match the real request again
(servirtium/with-playback [vcr tape
                           {:strict-headers true
                            :unredact [[:request-headers "Bearer REDACTED" "Bearer real-token"]]}]
  ...)
```

`:redact-credentials true` redacts the common credential headers as numbered
tokens (register it on the playback handle too, as with every rule).

### Named secrets

A callback decides each secret's replacement at flush time (record) or resolves
each token to the real value (playback):

```janet
(servirtium/with-record [vcr tape upstream
                         {:secret-redactor (fn [key request]      # request: {:method :path :location :format :field-path :interaction}
                                             (when (= key "password") "PASSWORD_1"))}]
  ...)
(servirtium/with-playback [vcr tape {:secret-resolver (fn [token] (lookup-secret token))}]
  ...)
```

A callback returns a string, or `nil` to leave the value alone.

## Strict matching

`:strict-headers true` matches the whole request header block. Real HTTP
clients add their own `Host`, `User-Agent`, `Accept`; add
`:strict-ignore-common-headers true` (as the tests do) or drop them with
`:remove-headers`.

## Diagnostics

```janet
(servirtium/last-kind vcr)               # :ok, :path-or-method-diff, :header-missing, ...
(servirtium/last-index vcr)              # tape index of the last match, or -1
(servirtium/last-error vcr)              # diagnostic text, consumed by the read
(servirtium/last-error vcr false)        # observe without consuming
(servirtium/diagnostics-json vcr)        # every retained mismatch, as JSON
(servirtium/test-context vcr "name" "file" 12)   # label + fresh window for the next test
(servirtium/assert-no-mismatches vcr)    # raises if any mismatch is pending
(servirtium/assert-all-consumed vcr)     # raises unless the whole tape was replayed
```

See the shared [replay diagnostics](../../docs/replay-diagnostics.md).

## Errors

Every failure is raised with `error` and a **struct**, never a bare string:

```janet
{:error :servirtium :op "playback" :message "playback open failed: tapes/nope.md: ..."}
```

```janet
(try (servirtium/playback "tapes/nope.md")
  ([e] (when (and (struct? e) (= :servirtium (e :error)))
         (eprint (e :op) ": " (e :message)))))
```

## HAR

`(servirtium/har-import "capture.har" "tapes/api.md")` and
`(servirtium/har-export "tapes/api.md" "capture.har")` convert between HAR 1.2
and tapes (no server needed).

## One server per port

Each `playback` / `record` owns its own native handle, with its own tape,
cursor, mutations and diagnostics, so N servers run concurrently in one process
without interfering. Open each on port 0 and read the port back with
`(servirtium/port vcr)` or `(servirtium/base-url vcr)`.

## Volatile values

A rule names where a value that changes on every run sits, with a
`{{placeholder}}`; the tape holds a token (`{{messageId-1}}`) there and
playback matches any live value. See [`docs/volatile-values.md`](../../docs/volatile-values.md).

```janet
(servirtium/with-playback [vcr "tapes/create_case.md"
                           {:pretty-xml 2
                            :volatile-rules [["request body" "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>"]
                                             ["response body" "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>"]]
                            :volatile-binds [["caseId" "42"]]}]
  # ... drive the SUT ...
  (print (servirtium/volatile-report vcr)))
```
