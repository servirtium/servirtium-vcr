# servirtium : the Janet binding over libservirtium_vcr.
#
# Servirtium records an HTTP conversation to a human-readable markdown tape
# once, then replays it forever: offline, deterministic, git-diffable. Point
# your system-under-test at (servirtium/base-url vcr) and drive it with plain
# HTTP.
#
#   (import servirtium)
#   (servirtium/with-playback [vcr "tapes/single_get.md"]
#     (assert (= :ok (servirtium/last-kind vcr))))
#
# This module carries NO record/replay logic. Markdown parse/emit, the HTTP
# server, request matching, redactions and drift detection all live in the
# pure-Aether core (core/vcr.ae), compiled once to libservirtium_vcr. What
# Janet adds is the FFI seam (Janet's built-in `ffi/native`, no C extension and
# no compiler), keyword enums, options structs, `with-*` macros that always
# stop the server, caller-owned-string handling, and structured errors.

(def version "2.0.0-alpha.18")

# ---- locating and loading the native library -------------------------------

(def- lib-name "servirtium_vcr")

(defn- file-name []
  (case (os/which)
    :windows (string lib-name ".dll")
    :macos (string "lib" lib-name ".dylib")
    (string "lib" lib-name ".so")))

# Directory of this source file, captured when the module is loaded.
(def- here
  (let [f (dyn :current-file)]
    (if (string? f)
      (let [i (last (string/find-all "/" f))]
        (if i (string/slice f 0 i) "."))
      ".")))

(var- explicit-path nil)
(var- native nil)
(def- symbols @{})

(defn set-library!
  ```
  Pin an explicit path to the native library, to be used at first load. Wins
  over SERVIRTIUM_VCR_LIB and the bundled native/ directory. A no-op once the
  library has been loaded. Also reachable as the :native-lib option of
  `playback` and `record`.
  ```
  [path]
  (when path (set explicit-path path))
  nil)

(defn- candidates
  "Candidate library paths, in resolution order: an explicit path, then
  SERVIRTIUM_VCR_LIB, then the bundled native/ beside this file (the
  platform's library name, then libservirtium_vcr.so), then the bare file
  name (the OS loader)."
  []
  (def out @[])
  (when explicit-path (array/push out explicit-path))
  (def env (os/getenv "SERVIRTIUM_VCR_LIB"))
  (when (and env (not (empty? env))) (array/push out env))
  (array/push out (string here "/native/" (file-name)))
  # aeb stages the library as libservirtium_vcr.so on every OS, macOS included
  (unless (= (file-name) "libservirtium_vcr.so")
    (array/push out (string here "/native/libservirtium_vcr.so")))
  (array/push out (file-name))
  out)

(defn- fail
  "Raise the binding's structured error: {:error :servirtium :op ... :message ...}."
  [op message]
  (error {:error :servirtium :op op :message message}))

(defn- load-library []
  (var found nil)
  (var last-err nil)
  (each c (candidates)
    (unless found
      (def bare? (not (string/find "/" c)))
      (when (or bare? (os/stat c))
        (try (set found (ffi/native c))
          ([e] (set last-err e))))))
  (unless found
    (fail "load"
          (string "could not load the native library " (file-name)
                  ". Download the library for your OS/architecture from "
                  "https://github.com/servirtium/servirtium-vcr/releases and set "
                  "SERVIRTIUM_VCR_LIB to its absolute path (or call "
                  "servirtium/set-library!)."
                  (if last-err (string " (last error: " last-err ")") ""))))
  found)

# The C ABI, 1:1 with core/embed.ae (aether_vcr_embed_*): name -> [return & args].
# `ptr` returns are caller-owned char* (or the opaque handle), NULL comes back
# as nil. `int` is a C int.
(def- abi
  {"open_playback" [:ptr :string :string :string :int32]
   "open_playback_url" [:ptr :string :string :string :int32]
   "open_record" [:ptr :string :string :string :string :int32]
   "start" [:int32 :ptr]
   "open_error" [:ptr :ptr]
   "destroy" [:void :ptr]
   "stop" [:void :ptr]
   "stop_and_flush" [:ptr :ptr :string]
   "stop_and_flush_fail_if_changed" [:ptr :ptr :string]
   "stop_and_flush_or_check" [:ptr :ptr :string]
   "discard" [:ptr :ptr :string]
   "port" [:int32 :ptr]
   "base_url" [:ptr :ptr :string]
   "tape_length" [:int32 :ptr]
   "reset_cursor" [:void :ptr]
   "set_tls" [:ptr :ptr :string :string]
   "set_tls_pem" [:ptr :ptr :string :string]
   "last_tls_protocol" [:ptr :ptr]
   "substitute" [:ptr :ptr :int32 :string :string :int32]
   "clear_substitutions" [:void :ptr]
   "assert_all_consumed" [:ptr :ptr]
   "assert_all_redactions_used" [:ptr :ptr]
   "assert_no_unfilled_placeholders" [:ptr :ptr]
   "last_error_ex" [:ptr :ptr :int32]
   "diagnostics_json" [:ptr :ptr :int32]
   "assert_no_mismatches" [:ptr :ptr]
   "test_context" [:void :ptr :string :string :int32]
   "last_kind" [:int32 :ptr]
   "last_index" [:int32 :ptr]
   "clear_last_error" [:void :ptr]
   "redact" [:ptr :ptr :int32 :string :string]
   "redact_header" [:ptr :ptr :int32 :string :string]
   "redact_query_param" [:ptr :ptr :int32 :string :string]
   "redact_json_field" [:ptr :ptr :int32 :string :string]
   "unredact" [:ptr :ptr :int32 :string :string]
   "remove_header" [:ptr :ptr :int32 :string]
   "volatile_rule" [:ptr :ptr :string :string :string]
   "volatile_bind" [:ptr :ptr :string :string]
   "volatile_profile" [:ptr :ptr :string]
   "set_volatile_markers" [:ptr :ptr :int32]
   "volatile_report" [:ptr :ptr]
   "redact_whole_tape" [:ptr :ptr :string :string]
   "redact_whole_tape_described" [:ptr :ptr :string :string :string]
   "strict_ignore_common_headers" [:ptr :ptr]
   "ignore_volatile_headers" [:ptr :ptr]
   "remove_transport_headers" [:ptr :ptr]
   "remove_cloud_headers" [:ptr :ptr :string]
   "set_upstream_cafile" [:ptr :ptr :string]
   "redact_credentials" [:ptr :ptr]
   "redact_credential_header" [:ptr :ptr :string]
   "add_license_notice" [:ptr :ptr :string]
   "note" [:ptr :ptr :string :string]
   "static_content" [:ptr :ptr :string :string]
   "untaped" [:ptr :ptr :string]
   "set_strict_headers" [:void :ptr :int32]
   "set_rules_footer" [:void :ptr :int32]
   "set_match_json_body" [:void :ptr :int32]
   "set_match_xml_body" [:void :ptr :int32]
   "set_pretty_xml" [:void :ptr :int32]
   "get_pretty_xml" [:int32 :ptr]
   "set_pretty_json" [:void :ptr :int32]
   "get_pretty_json" [:int32 :ptr]
   "set_sort_json_keys" [:void :ptr :int32]
   "get_sort_json_keys" [:int32 :ptr]
   "sort_json_array" [:ptr :ptr :string :string]
   "sort_json_array_at" [:ptr :ptr :string :string :string]
   "set_sort_response_headers" [:void :ptr :int32]
   "get_sort_response_headers" [:int32 :ptr]
   "sort_header_value" [:ptr :ptr :string]
   "clear_stable_order" [:void :ptr]
   "set_playback_range" [:ptr :ptr :int32 :int32]
   "clear_playback_range" [:void :ptr]
   "get_playback_range_from" [:int32 :ptr]
   "get_playback_range_to" [:int32 :ptr]
   "set_match_multiple" [:void :ptr :int32]
   "match_header" [:void :ptr :string]
   "clear_match_headers" [:void :ptr]
   "indent_code_blocks" [:void :ptr]
   "emphasize_http_verbs" [:void :ptr]
   "clear_redactions" [:void :ptr]
   "clear_unredactions" [:void :ptr]
   "clear_header_removals" [:void :ptr]
   "clear_static_content" [:void :ptr]
   "clear_untaped" [:void :ptr]
   "clear_format_options" [:void :ptr]
   "har_import" [:ptr :string :string]
   "har_export" [:ptr :string :string]
   "secret_begin" [:ptr :ptr :int32]
   "secret_next" [:int32 :ptr]
   "secret_get" [:ptr :ptr :int32]
   "secret_interaction" [:int32 :ptr]
   "secret_apply" [:ptr :ptr :string]
   "secret_finish" [:ptr :ptr]
   "secret_abort" [:void :ptr]
   "free_string" [:void :ptr]})

(defn- resolve-symbol [name]
  (or (get symbols name)
      (do
        (unless native (set native (load-library)))
        (def spec (get abi name))
        (unless spec (fail name "no such ABI function"))
        (def fp
          (try (ffi/lookup native (string "aether_vcr_embed_" name))
            ([e] (fail name (string "the native library has no aether_vcr_embed_" name
                                    " (is the library older than this binding?): " e)))))
        (def sig (ffi/signature :default ;spec))
        (put symbols name [fp sig])
        [fp sig])))

(defn- c
  "Call aether_vcr_embed_<name> through the FFI."
  [name & args]
  (def [fp sig] (resolve-symbol name))
  (ffi/call fp sig ;args))

# strlen from the C runtime, to size a returned char*.
(var- strlen-fn nil)
(defn- c-strlen [p]
  (unless strlen-fn
    (def lib (try (ffi/native nil) ([_] (ffi/native "msvcrt"))))
    (set strlen-fn [(ffi/lookup lib "strlen") (ffi/signature :default :int32 :ptr)]))
  (def [fp sig] strlen-fn)
  (ffi/call fp sig p))

# ---- the caller-owned-string discipline, in exactly one place ---------------

(defn- take
  "Adopt a caller-owned char* from the ABI as a Janet string and release it."
  [p]
  (if (nil? p)
    ""
    (let [n (c-strlen p)
          s (string (ffi/pointer-buffer p n n))]
      (c "free_string" p)
      s)))

(defn- check
  "A config call's owned error string; empty means OK, anything else raises."
  [op p]
  (def err (take p))
  (unless (empty? err) (fail op err))
  nil)

(defn- str
  "A string argument for the ABI (nil or a non-string would crash the callee)."
  [op x]
  (cond
    (string? x) x
    (buffer? x) (string x)
    (keyword? x) (string x)
    (fail op (string "expected a string, got " (type x) ": " (string/format "%q" x)))))

(defn- flag [on] (if on 1 0))

# ---- enums -------------------------------------------------------------------

(def fields
  ```
  Field selectors for redactions, unredactions, header removals and
  substitutions: :path :response-body :request-headers :request-body
  :response-headers (:response, for substitutions only: body and headers).
  ```
  {:path 1 :response-body 2 :request-headers 3 :request-body 4
   :response-headers 5 :response 6})

(def outcomes
  ```
  The per-dispatch outcomes `last-kind` returns, in ABI order. Anything but
  :ok is a mismatch.
  ```
  [:ok :path-or-method-diff :header-missing :header-value-diff
   :header-unexpected :tape-exhausted :body-diff :record-error])

(defn- field-int [op field]
  (cond
    (get fields field) (get fields field)
    (and (int? field) (<= 1 field 6)) field
    (fail op (string "unknown field " (string/format "%q" field)
                     ", expected one of " (string/join (map string (sort (keys fields))) " ")))))

# ---- the server object --------------------------------------------------------

(defn- live [srv op]
  (unless (table? srv) (fail op "not a servirtium server"))
  (when (or (srv :closed) (nil? (srv :handle))) (fail op "the server is already stopped"))
  (srv :handle))

(defn- any-handle [srv op]
  (unless (table? srv) (fail op "not a servirtium server"))
  (unless (srv :handle) (fail op "the server is already stopped"))
  (srv :handle))

(defn- release
  "Destroy the server's VCR exactly once and forget the handle. The handle is
  invalid afterwards; a second call is a no-op."
  [srv]
  (when-let [h (srv :handle)]
    (put srv :handle nil)
    (put srv :closed true)
    (c "destroy" h)))

# ---- configuration -----------------------------------------------------------
# Each raises {:error :servirtium ...} if libservirtium_vcr rejects it. Call
# them between open and start (the options of `playback`/`record` do exactly
# that), as with every binding.

(defn redact
  "Replace every match of the regex `pattern` in `field` with `replacement`
  before it lands on the tape (record mode)."
  [srv field pattern replacement]
  (check "redact" (c "redact" (live srv "redact") (field-int "redact" field)
                     (str "redact" pattern) (str "redact" replacement))))

(defn redact-header
  "Redact the named header's value. `:field` defaults to :request-headers,
  `:replacement` to \"[REDACTED]\"."
  [srv name &opt opts]
  (default opts {})
  (check "redact_header"
         (c "redact_header" (live srv "redact_header")
            (field-int "redact_header" (get opts :field :request-headers))
            (str "redact_header" name)
            (str "redact_header" (get opts :replacement "[REDACTED]")))))

(defn redact-query-param
  "Redact a URL query parameter's value. `:field` defaults to :path."
  [srv name &opt opts]
  (default opts {})
  (check "redact_query_param"
         (c "redact_query_param" (live srv "redact_query_param")
            (field-int "redact_query_param" (get opts :field :path))
            (str "redact_query_param" name)
            (str "redact_query_param" (get opts :replacement "[REDACTED]")))))

(defn redact-json-field
  "Redact a JSON field's value wherever it appears. `:field` defaults to
  :request-body."
  [srv name &opt opts]
  (default opts {})
  (check "redact_json_field"
         (c "redact_json_field" (live srv "redact_json_field")
            (field-int "redact_json_field" (get opts :field :request-body))
            (str "redact_json_field" name)
            (str "redact_json_field" (get opts :replacement "[REDACTED]")))))

(defn unredact
  "Playback: turn a scrubbed tape value back into the real one before matching
  (the inverse of `redact`)."
  [srv field pattern replacement]
  (check "unredact" (c "unredact" (live srv "unredact") (field-int "unredact" field)
                       (str "unredact" pattern) (str "unredact" replacement))))

(defn substitute
  "Playback: rewrite `pattern` to `replacement` in `field` of the replayed
  response. With `required` true, `assert-all-redactions-used` fails if it
  never matched."
  [srv field pattern replacement &opt required]
  (check "substitute" (c "substitute" (live srv "substitute") (field-int "substitute" field)
                         (str "substitute" pattern) (str "substitute" replacement)
                         (flag required))))

(def volatile-marker-styles
  "Marker styles for placeholders and tokens: :mustache {{x}} (default),
  :dollar-curly ${x}, :wikilink [[x]]."
  {:mustache 0 :dollar-curly 1 :wikilink 2})

(defn volatile-markers
  "Set the marker style (:mustache, :dollar-curly or :wikilink) before any rule."
  [srv style]
  (def n (get volatile-marker-styles style))
  (unless n (fail "volatile_markers" (string "unknown marker style " (string/format "%q" style))))
  (check "volatile_markers" (c "set_volatile_markers" (live srv "volatile_markers") n)))

(defn volatile-rule
  ```
  A volatile-value rule (docs/volatile-values.md): `scope` such as
  "request body", `pattern` holding {{placeholders}}, `kind` "template"
  (default) or "regex". Prefer the :volatile-rules option of `playback`/`record`,
  which applies rules before the server starts so a bad rule fails the open.
  ```
  [srv scope pattern &opt kind]
  (default kind "template")
  (check "volatile_rule"
         (c "volatile_rule" (live srv "volatile_rule") (str "volatile_rule" scope)
            (str "volatile_rule" kind) (str "volatile_rule" pattern))))

(defn bind
  "Bind a real value to a placeholder name or a token (\"caseId\" or \"{{caseId-1}}\")."
  [srv name-or-token value]
  (check "bind" (c "volatile_bind" (live srv "bind") (str "bind" name-or-token) (str "bind" value))))

(defn volatile-profile
  "Load a volatile-values profile file."
  [srv path]
  (check "volatile_profile"
         (c "volatile_profile" (live srv "volatile_profile") (str "volatile_profile" path))))

(defn volatile-report
  "The volatile rules and bindings, as text."
  [srv]
  (take (c "volatile_report" (live srv "volatile_report"))))

(defn redact-whole-tape
  "Collapse every match of `pattern` to one constant: variable-cardinality
  noise (dates). `description` is shown in the recording-rules footer."
  [srv pattern replacement &opt description]
  (if description
    (check "redact_whole_tape"
           (c "redact_whole_tape_described" (live srv "redact_whole_tape")
              (str "redact_whole_tape" pattern) (str "redact_whole_tape" replacement)
              (str "redact_whole_tape" description)))
    (check "redact_whole_tape"
           (c "redact_whole_tape" (live srv "redact_whole_tape")
              (str "redact_whole_tape" pattern) (str "redact_whole_tape" replacement)))))

(defn remove-header
  "Leave the named header out of `field` (:request-headers or :response-headers)."
  [srv field name]
  (check "remove_header" (c "remove_header" (live srv "remove_header")
                            (field-int "remove_header" field) (str "remove_header" name))))

(defn match-header
  "Require this request header's live value to equal the recorded one. Also
  suppresses the automatic full-block header match unless strict headers are
  explicitly on: surgical, not all-or-nothing."
  [srv name]
  (c "match_header" (live srv "match_header") (str "match_header" name))
  nil)

(defn note
  "Attach a titled note to the tape (a `## [Note] title:` section)."
  [srv title body]
  (check "note" (c "note" (live srv "note") (str "note" title) (str "note" body))))

(defn static-content
  "Serve files under `dir` at `mount-path`, bypassing the tape."
  [srv mount-path dir]
  (check "static_content" (c "static_content" (live srv "static_content")
                             (str "static_content" mount-path) (str "static_content" dir))))

(defn untaped
  "Answer `path` with a 404 without consuming the tape cursor (favicons and
  other incidental requests)."
  [srv path]
  (check "untaped" (c "untaped" (live srv "untaped") (str "untaped" path))))

(defn strict-ignore-common-headers
  "Under strict header matching, ignore the headers HTTP clients add on
  their own."
  [srv]
  (check "strict_ignore_common_headers"
         (c "strict_ignore_common_headers" (live srv "strict_ignore_common_headers"))))

(defn ignore-volatile-headers
  "Drop per-request volatile headers (traceparent, tracestate, Request-Id,
  X-Request-Id, X-Correlation-Id, baggage) from both the recorded expectation
  and the live request before matching."
  [srv]
  (check "ignore_volatile_headers"
         (c "ignore_volatile_headers" (live srv "ignore_volatile_headers"))))

(defn set-strict-headers
  "Match the whole request header block, not just the method and path."
  [srv on]
  (c "set_strict_headers" (live srv "set_strict_headers") (flag on)) nil)

(defn set-match-json-body
  "Opt in: a request body that differs byte-for-byte gets a second chance at
  semantic JSON equality (key order and whitespace ignored, array order
  significant). A non-JSON body falls back to the byte-exact verdict."
  [srv on]
  (c "set_match_json_body" (live srv "set_match_json_body") (flag on)) nil)

(defn set-match-xml-body
  "Opt in: semantic XML equality for request bodies (attribute order and
  insignificant whitespace ignored; element order significant)."
  [srv on]
  (c "set_match_xml_body" (live srv "set_match_xml_body") (flag on)) nil)

(defn set-match-multiple
  "Opt in: search ALL interactions for one that fits and replay it WITHOUT
  consuming it, so repeated and out-of-order requests both match."
  [srv on]
  (c "set_match_multiple" (live srv "set_match_multiple") (flag on)) nil)

(defn indent-code-blocks
  "Record format option: indent code blocks four spaces instead of fencing them."
  [srv]
  (c "indent_code_blocks" (live srv "indent_code_blocks")) nil)

(defn emphasize-http-verbs
  "Record format option: write HTTP verbs in bold in the interaction headings."
  [srv]
  (c "emphasize_http_verbs" (live srv "emphasize_http_verbs")) nil)

(defn set-rules-footer
  "Turn the recording-rules footer on or off."
  [srv on]
  (c "set_rules_footer" (live srv "set_rules_footer") (flag on)) nil)

(defn set-pretty-xml
  "Format recorded XML request and response bodies and match XML requests on
  playback (indent 1..16; 0 = off); a body that is not well-formed XML stays byte-exact."
  [srv &opt indent]
  (default indent 2)
  (c "set_pretty_xml" (live srv "set_pretty_xml") indent) nil)

(defn get-pretty-xml "The current pretty-XML indent (0 = off)." [srv]
  (c "get_pretty_xml" (any-handle srv "get_pretty_xml")))

(defn set-pretty-json
  "Format recorded JSON request and response bodies (indent 1..16; 0 = off),
  keeping key order and number spellings; match JSON requests on playback."
  [srv &opt indent]
  (default indent 2)
  (c "set_pretty_json" (live srv "set_pretty_json") indent) nil)

(defn get-pretty-json "The current pretty-JSON indent (0 = off)." [srv]
  (c "get_pretty_json" (any-handle srv "get_pretty_json")))

# Stable ordering (record side, all opt-in; the tape is byte-exact without
# them). Sorted JSON is only written pretty-printed: a record with
# set-sort-json-keys or sort-json-array* but without set-pretty-json is refused
# when the tape is written (`flush-tape` raises "sort_json_keys needs
# pretty_json: ...").

(defn set-sort-json-keys
  "Record: sort JSON object keys at every depth in recorded JSON response
  bodies. Needs `set-pretty-json`, or the tape is refused when written."
  [srv on]
  (c "set_sort_json_keys" (live srv "set_sort_json_keys") (flag on)) nil)

(defn get-sort-json-keys "Whether `set-sort-json-keys` is on." [srv]
  (not= 0 (c "get_sort_json_keys" (any-handle srv "get_sort_json_keys"))))

(defn sort-json-array
  ```
  Record: sort the JSON response arrays `path` selects (a JSON pointer from the
  root, "*" for any one segment, "" the root array, or a bare member name) by
  member `by` ("" sorts by each element's canonical JSON). Raises with the
  core's reason if the rule is refused.
  ```
  [srv path by]
  (check "sort_json_array"
         (c "sort_json_array" (live srv "sort_json_array")
            (str "sort_json_array" path) (str "sort_json_array" by))))

(defn sort-json-array-at
  "As `sort-json-array`, only for requests whose path (query included) matches
  the regex `request`."
  [srv request path by]
  (check "sort_json_array_at"
         (c "sort_json_array_at" (live srv "sort_json_array_at")
            (str "sort_json_array_at" request) (str "sort_json_array_at" path)
            (str "sort_json_array_at" by))))

(defn set-sort-response-headers
  "Record: sort response header lines by name (case-insensitive)."
  [srv on]
  (c "set_sort_response_headers" (live srv "set_sort_response_headers") (flag on)) nil)

(defn get-sort-response-headers "Whether `set-sort-response-headers` is on." [srv]
  (not= 0 (c "get_sort_response_headers" (any-handle srv "get_sort_response_headers"))))

(defn sort-header-value
  "Record: sort one response header's comma-separated items (\"Allow\"). Raises
  with the core's reason if the name is refused."
  [srv name]
  (check "sort_header_value"
         (c "sort_header_value" (live srv "sort_header_value") (str "sort_header_value" name))))

(defn clear-stable-order "Turn every stable-order rule off." [srv]
  (c "clear_stable_order" (live srv "clear_stable_order")) nil)

# Playback range (playback only): replay a slice of a tape, selected by the
# tape's interaction NUMBER.

(defn set-playback-range
  ```
  Playback: replay only interactions `from`..`to` (0-based, inclusive, the
  tape's `## Interaction N` numbers; `to` < 0 = through the last). Raises on a
  record server or an impossible range.
  ```
  [srv from to]
  (check "set_playback_range"
         (c "set_playback_range" (live srv "set_playback_range") from to)))

(defn clear-playback-range "Replay the whole tape again." [srv]
  (c "clear_playback_range" (live srv "clear_playback_range")) nil)

(defn get-playback-range
  "The playback range in force as [from to], or nil when none is set."
  [srv]
  (def h (any-handle srv "get_playback_range"))
  (def from (c "get_playback_range_from" h))
  (if (< from 0) nil [from (c "get_playback_range_to" h)]))

(defn remove-transport-headers
  "Leave the connection-describing headers (Host, Connection, Content-Length
  and the other hop-by-hop headers, Accept-Encoding) out of the recording."
  [srv]
  (check "remove_transport_headers"
         (c "remove_transport_headers" (live srv "remove_transport_headers"))))

(defn remove-cloud-headers
  "Drop a cloud vendor's per-request headers. `vendor` is one of \"aws\",
  \"azure\", \"cloudflare\", \"fastly\", \"gcp\" (a string or keyword)."
  [srv vendor]
  (check "remove_cloud_headers"
         (c "remove_cloud_headers" (live srv "remove_cloud_headers")
            (str "remove_cloud_headers" vendor))))

(defn redact-credentials
  "Redact the common credential headers (Authorization, Cookie, Set-Cookie,
  X-Api-Key, X-Auth-Token, ...) as numbered tokens. Register on the playback
  handle too, as with every rule."
  [srv]
  (check "redact_credentials" (c "redact_credentials" (live srv "redact_credentials"))))

(defn redact-credential-header
  "One more credential header, treated like `redact-credentials` does."
  [srv name]
  (check "redact_credential_header"
         (c "redact_credential_header" (live srv "redact_credential_header")
            (str "redact_credential_header" name))))

(defn set-upstream-cafile
  "Record mode: verify an https upstream against this PEM CA file."
  [srv path]
  (check "set_upstream_cafile"
         (c "set_upstream_cafile" (live srv "set_upstream_cafile")
            (str "set_upstream_cafile" path))))

(defn add-license-notice
  "Record mode: put `text` under a `## LICENSE NOTICE` heading at the top of
  each tape. Playback ignores it. The caller supplies any line breaks; no
  line may start `## Interaction ` or `## [Recording rules]`."
  [srv text]
  (check "add_license_notice"
         (c "add_license_notice" (live srv "add_license_notice") (str "add_license_notice" text))))

(defn set-tls
  "Serve https with this PEM certificate and private key (file paths)."
  [srv cert-path key-path]
  (check "set_tls" (c "set_tls" (live srv "set_tls") (str "set_tls" cert-path) (str "set_tls" key-path))))

(defn set-tls-pem
  "As `set-tls`, but the PEM certificate and key are passed in memory, so no
  private key touches the disk."
  [srv cert-pem key-pem]
  (check "set_tls_pem" (c "set_tls_pem" (live srv "set_tls_pem") (str "set_tls_pem" cert-pem) (str "set_tls_pem" key-pem))))

(defn last-tls-protocol
  "The TLS protocol the last https connection negotiated, or \"\"."
  [srv]
  (take (c "last_tls_protocol" (any-handle srv "last_tls_protocol"))))

(defn clear-redactions "Forget the redactions registered so far." [srv] (c "clear_redactions" (live srv "clear_redactions")) nil)
(defn clear-unredactions "Forget the unredactions." [srv] (c "clear_unredactions" (live srv "clear_unredactions")) nil)
(defn clear-header-removals "Forget the header removals." [srv] (c "clear_header_removals" (live srv "clear_header_removals")) nil)
(defn clear-match-headers "Forget the `match-header` names." [srv] (c "clear_match_headers" (live srv "clear_match_headers")) nil)
(defn clear-static-content "Forget the static-content mounts." [srv] (c "clear_static_content" (live srv "clear_static_content")) nil)
(defn clear-untaped "Forget the untaped paths." [srv] (c "clear_untaped" (live srv "clear_untaped")) nil)
(defn clear-format-options "Reset the record format options." [srv] (c "clear_format_options" (live srv "clear_format_options")) nil)
(defn clear-substitutions "Forget the playback substitutions." [srv] (c "clear_substitutions" (live srv "clear_substitutions")) nil)

# ---- introspection and diagnostics -------------------------------------------

(defn base-url
  "The base URL the SUT should target, e.g. \"http://127.0.0.1:54213\"."
  [srv]
  (take (c "base_url" (any-handle srv "base_url") (str "base_url" (srv :host)))))

(defn port
  "The OS-resolved port the server is listening on."
  [srv]
  (c "port" (any-handle srv "port")))

(defn tape-length
  "The tape's interaction count (playback), or interactions captured so far
  (record)."
  [srv]
  (c "tape_length" (any-handle srv "tape_length")))

(defn reset-cursor
  "Rewind the playback cursor to the top of the tape."
  [srv]
  (c "reset_cursor" (live srv "reset_cursor")) nil)

(defn last-kind
  "The outcome of the most recent dispatch as a keyword: :ok (a clean match),
  :path-or-method-diff, :header-missing, :header-value-diff,
  :header-unexpected, :tape-exhausted, :body-diff or :record-error."
  [srv]
  (def k (c "last_kind" (any-handle srv "last_kind")))
  (or (get outcomes k) k))

(defn matched-cleanly?
  "True when the most recent dispatch matched cleanly."
  [srv]
  (= :ok (last-kind srv)))

(defn last-index
  "The tape index of the most recent matched interaction, or -1."
  [srv]
  (c "last_index" (any-handle srv "last_index")))

(defn last-error
  "The most recent dispatch's diagnostic, \"\" when none was flagged. Reading it
  consumes it unless `consume` is false."
  [srv &opt consume]
  (default consume true)
  (take (c "last_error_ex" (any-handle srv "last_error") (flag consume))))

(defn clear-last-error "Discard the pending diagnostic." [srv]
  (c "clear_last_error" (any-handle srv "clear_last_error")) nil)

(defn diagnostics-json
  "Every retained replay mismatch as a JSON array string. `consume` (default
  false) marks them retrieved."
  [srv &opt consume]
  (take (c "diagnostics_json" (any-handle srv "diagnostics_json") (flag consume))))

(defn assert-no-mismatches
  "Raise if any replay mismatch was recorded since the last `test-context`."
  [srv]
  (check "assert_no_mismatches" (c "assert_no_mismatches" (any-handle srv "assert_no_mismatches"))))

(defn test-context
  "Name the test that is about to run (and, optionally, its source file and
  line) so diagnostics can cite it; it also starts a fresh diagnostics window."
  [srv name &opt source-file source-line]
  (c "test_context" (any-handle srv "test_context") (str "test_context" name)
     (str "test_context" (or source-file "")) (or source-line 0))
  nil)

(defn assert-all-consumed
  "Raise unless every interaction on the tape was replayed."
  [srv]
  (check "assert_all_consumed" (c "assert_all_consumed" (any-handle srv "assert_all_consumed"))))

(defn assert-all-redactions-used
  "Raise if a required substitution or redaction never matched."
  [srv]
  (check "assert_all_redactions_used"
         (c "assert_all_redactions_used" (any-handle srv "assert_all_redactions_used"))))

(defn assert-no-unfilled-placeholders
  "Raise if a replayed response still contains a {{placeholder}}."
  [srv]
  (check "assert_no_unfilled_placeholders"
         (c "assert_no_unfilled_placeholders" (any-handle srv "assert_no_unfilled_placeholders"))))

# ---- named secrets -------------------------------------------------------------

(defn- secret-stage [srv &named redactor resolver]
  (def h (srv :handle))
  (defn part [i] (take (c "secret_get" h i)))
  (try
    (do
      (check "secret_begin" (c "secret_begin" h (if resolver 1 0)))
      (while true
        (def next (c "secret_next" h))
        (when (< next 0) (fail "secret_next" "secret staging aborted"))
        (when (= next 0) (break))
        (def value
          (if resolver
            (resolver (part 2))
            (redactor (part 1)
                      {:method (part 3) :path (part 4) :location (part 5)
                       :format (part 6) :field-path (part 7)
                       :interaction (c "secret_interaction" h)})))
        (when value
          (unless (string? value)
            (fail "secret_apply" "secret callbacks must return a string or nil"))
          (check "secret_apply" (c "secret_apply" h value))))
      (check "secret_finish" (c "secret_finish" h)))
    ([err fib]
      (c "secret_abort" h)
      (propagate err fib))))

# ---- lifecycle -----------------------------------------------------------------

(defn- started
  "Start an opened handle, raising rather than handing back a dead server
  (the caller stops and destroys it)."
  [h failure op]
  (when (< (c "start" h) 0)
    (def detail (take (c "last_error_ex" h 0)))
    (fail op (if (empty? detail) failure (string failure ": " detail))))
  h)

(defn- apply-all [srv name f items]
  (each item items (if (indexed? item) (f srv ;item) (f srv item))))

(def- option-order
  [:strict-headers :match-json-body :match-xml-body :match-multiple :match-headers
   :strict-ignore-common-headers :ignore-volatile-headers :remove-transport-headers
   :remove-cloud-headers :redact-credentials :redact-credential-headers
   :remove-headers :redact :redact-headers :redact-query-params :redact-json-fields
   :unredact :substitute :volatile-markers :volatile-profile :volatile-rules :volatile-binds :redact-whole-tape :notes
   :static-content :untaped :indent-code-blocks :emphasize-http-verbs
   :rules-footer :pretty-xml :pretty-json :license-notice :upstream-cafile
   :sort-json-keys :sort-json-arrays :sort-json-arrays-at :sort-response-headers
   :sort-header-values :playback-range :tls :tls-pem])

(def- passthrough-options
  [:host :port :label :native-lib :flush-mode :secret-redactor :secret-resolver])

(defn- one-or-many [x] (if (indexed? x) x [x]))

(defn- apply-option [srv key v]
  (case key
    :strict-headers (set-strict-headers srv v)
    :match-json-body (set-match-json-body srv v)
    :match-xml-body (set-match-xml-body srv v)
    :match-multiple (set-match-multiple srv v)
    :match-headers (each n (one-or-many v) (match-header srv n))
    :strict-ignore-common-headers (when v (strict-ignore-common-headers srv))
    :ignore-volatile-headers (when v (ignore-volatile-headers srv))
    :remove-transport-headers (when v (remove-transport-headers srv))
    :remove-cloud-headers (each n (one-or-many v) (remove-cloud-headers srv n))
    :redact-credentials (when v (redact-credentials srv))
    :redact-credential-headers (each n (one-or-many v) (redact-credential-header srv n))
    :remove-headers (apply-all srv key remove-header v)
    :redact (apply-all srv key redact v)
    :redact-headers (each item v
                      (if (indexed? item)
                        (redact-header srv (first item) {:replacement (get item 1 "[REDACTED]")})
                        (redact-header srv item)))
    :redact-query-params (each item v
                           (if (indexed? item)
                             (redact-query-param srv (first item) {:replacement (get item 1 "[REDACTED]")})
                             (redact-query-param srv item)))
    :redact-json-fields (each item v
                          (if (indexed? item)
                            (redact-json-field srv (first item) {:replacement (get item 1 "[REDACTED]")})
                            (redact-json-field srv item)))
    :unredact (apply-all srv key unredact v)
    :substitute (apply-all srv key substitute v)
    :volatile-profile (each n (one-or-many v) (volatile-profile srv n))
    :volatile-markers (volatile-markers srv v)
    :volatile-rules (apply-all srv key volatile-rule v)
    :volatile-binds (apply-all srv key bind v)
    :redact-whole-tape (apply-all srv key redact-whole-tape v)
    :notes (apply-all srv key note v)
    :static-content (apply-all srv key static-content v)
    :untaped (each p (one-or-many v) (untaped srv p))
    :indent-code-blocks (when v (indent-code-blocks srv))
    :emphasize-http-verbs (when v (emphasize-http-verbs srv))
    :rules-footer (set-rules-footer srv v)
    :pretty-xml (set-pretty-xml srv (if (number? v) v 2))
    :pretty-json (set-pretty-json srv (if (number? v) v 2))
    :license-notice (add-license-notice srv v)
    :upstream-cafile (set-upstream-cafile srv v)
    :sort-json-keys (set-sort-json-keys srv v)
    :sort-json-arrays (apply-all srv key sort-json-array v)
    :sort-json-arrays-at (apply-all srv key sort-json-array-at v)
    :sort-response-headers (set-sort-response-headers srv v)
    :sort-header-values (each n (one-or-many v) (sort-header-value srv n))
    :playback-range (set-playback-range srv ;v)
    :tls (set-tls srv ;v)
    :tls-pem (set-tls-pem srv ;v)))

(defn- check-options [op opts]
  (unless (or (struct? opts) (table? opts))
    (fail op (string "options must be a struct or table, got " (type opts))))
  (each k (keys opts)
    (unless (or (index-of k option-order) (index-of k passthrough-options))
      (fail op (string "unknown option " (string/format "%q" k)
                       ". Known: " (string/join (map string (sort (array/concat @[] option-order passthrough-options))) " "))))))

(defn- finish-open [h tape host lbl opts op failure]
  (unless h (fail op (string failure ": out of memory")))
  # An open always returns a handle; a failed one carries its own reason.
  (def reason (take (c "open_error" h)))
  (unless (empty? reason)
    (c "destroy" h)
    (fail op (string failure ": " reason)))
  (def srv @{:handle h :host host :tape tape :closed false
             :flush-mode (get opts :flush-mode :overwrite)
             :secret-redactor (get opts :secret-redactor)})
  (try
    (do
      (each key option-order
        (def v (get opts key))
        (unless (nil? v) (apply-option srv key v)))
      (when-let [r (get opts :secret-resolver)]
        (secret-stage srv :resolver r))
      (started h failure op))
    ([err fib]
      (when (srv :handle) (c "stop" h) (release srv))
      (propagate err fib)))
  srv)

(defn playback
  ```
  Replay a Servirtium markdown tape from disk and return a started server.

  `opts` is an optional struct: :host (default "127.0.0.1"), :port (default 0,
  the OS picks), :label, :native-lib, and the declarative configuration
  options (see docs/usage.md): :strict-headers :match-json-body
  :match-multiple :match-headers :remove-headers :redact :unredact
  :substitute :static-content :untaped :secret-resolver ... Anything else
  raises. Stop it with `stop`, or use `with-playback`, which always does.
  ```
  [tape &opt opts]
  (default opts {})
  (check-options "playback" opts)
  (when (opts :native-lib) (set-library! (opts :native-lib)))
  (def host (get opts :host "127.0.0.1"))
  (def lbl (get opts :label ""))
  (def h (c "open_playback" (str "playback" lbl) (str "playback" tape)
            (str "playback" host) (get opts :port 0)))
  (finish-open h tape host lbl opts "playback" (string "playback open failed: " tape)))

(defn playback-url
  "Replay a tape fetched from an http(s) URL rather than the filesystem."
  [tape-url &opt opts]
  (default opts {})
  (check-options "playback_url" opts)
  (when (opts :native-lib) (set-library! (opts :native-lib)))
  (def host (get opts :host "127.0.0.1"))
  (def h (c "open_playback_url" (str "playback_url" (get opts :label "")) (str "playback_url" tape-url)
            (str "playback_url" host) (get opts :port 0)))
  (finish-open h nil host (get opts :label "") opts "playback_url"
               (string "playback-url open failed: " tape-url)))

(defn record
  ```
  Forward each request to `upstream-base`, return the live response to the SUT
  and capture the exchange; return a started server. The tape is written by
  `flush-tape`, or by `with-record` when its body finishes normally. `opts` as
  for `playback`, plus :flush-mode (:overwrite, :fail-if-changed or :or-check,
  default :overwrite), the redaction rules, :license-notice, :pretty-json,
  :remove-cloud-headers, :redact-credentials, :upstream-cafile ... and
  :secret-redactor.
  ```
  [tape upstream-base &opt opts]
  (default opts {})
  (check-options "record" opts)
  (when (opts :native-lib) (set-library! (opts :native-lib)))
  (def host (get opts :host "127.0.0.1"))
  (def lbl (get opts :label ""))
  (def h (c "open_record" (str "record" lbl) (str "record" tape) (str "record" upstream-base)
            (str "record" host) (get opts :port 0)))
  (finish-open h tape host lbl opts "record" (string "record open failed: " tape)))

(defn stop
  "Stop the server, discarding any recording. Idempotent."
  [srv]
  (when (and (table? srv) (srv :handle))
    (unless (srv :closed) (c "stop" (srv :handle)))
    (release srv))
  nil)

(defn- pick-tape [srv opts]
  (str "flush" (or (get opts :tape) (srv :tape) "")))

(defn flush-tape
  ```
  Stop the server and write the captured tape. Options: :tape (defaults to the
  path the recorder was opened with) and :mode, one of :overwrite (default, or
  the :flush-mode the server was opened with), :fail-if-changed (raise if the
  fresh recording differs from the tape already on disk: drift detection for a
  checked-in tape; the new tape is still written) or :or-check (check against
  an existing tape instead of overwriting it). Idempotent.
  ```
  [srv &opt opts]
  (default opts {})
  (when (and (table? srv) (srv :handle))
    (def h (srv :handle))
    (put srv :closed true)
    (defer (release srv)
      (when (srv :secret-redactor)
        (try (secret-stage srv :redactor (srv :secret-redactor))
          ([err fib] (c "stop" h) (propagate err fib))))
      (def mode (get opts :mode (srv :flush-mode)))
      (def tape (pick-tape srv opts))
      (check (string "flush " mode)
             (case mode
               :overwrite (c "stop_and_flush" h tape)
               :fail-if-changed (c "stop_and_flush_fail_if_changed" h tape)
               :or-check (c "stop_and_flush_or_check" h tape)
               (do (c "stop" h)
                   (fail "flush" (string "unknown flush mode " (string/format "%q" mode))))))))
  nil)

(defn discard
  "Record mode: stop the server and DROP the captured recording WITHOUT writing
  a tape. Call it on a test's failure path so a failed run never mints a tape
  that later replays as the truth. Idempotent; the complement of `flush-tape`."
  [srv &opt opts]
  (default opts {})
  (when (and (table? srv) (srv :handle))
    (def h (srv :handle))
    (put srv :closed true)
    (defer (release srv)
      (check "discard" (c "discard" h (pick-tape srv opts)))))
  nil)

(defn call-with-playback
  "Run (f vcr) against a started playback server; the server is stopped on
  every path, including an error. Returns f's result."
  [tape opts f]
  (def vcr (playback tape opts))
  (defer (stop vcr) (f vcr)))

(defn call-with-record
  "Run (f vcr) against a started record server. When f returns normally the
  tape is flushed (per :flush-mode); if f raises, the recording is DISCARDED
  and the error propagates, so a failed test never overwrites a good tape.
  Returns f's result."
  [tape upstream-base opts f]
  (def vcr (record tape upstream-base opts))
  (def result
    (try (f vcr)
      ([err fib]
        (try (discard vcr) ([_] nil))
        (propagate err fib))))
  (flush-tape vcr)
  result)

(defmacro with-playback
  ```
  (with-playback [vcr tape opts?] body...)

  Replay `tape`, bind the started server to `vcr`, run the body, and stop the
  server on every path. Evaluates to the body's value.
  ```
  [binding & body]
  (def [sym tape opts] binding)
  ~(,call-with-playback ,tape ,(or opts {}) (fn [,sym] ,;body)))

(defmacro with-record
  ```
  (with-record [vcr tape upstream-base opts?] body...)

  Record against `upstream-base`, bind the started server to `vcr`, run the
  body, then flush the tape. If the body raises the recording is discarded
  instead. Evaluates to the body's value.
  ```
  [binding & body]
  (def [sym tape upstream opts] binding)
  ~(,call-with-record ,tape ,upstream ,(or opts {}) (fn [,sym] ,;body)))

# ---- converters (no server handle) --------------------------------------------

(defn har-import
  "Convert a HAR 1.2 capture into a Servirtium markdown tape. Raises on failure."
  [har-path tape-path]
  (check "har_import" (c "har_import" (str "har_import" har-path) (str "har_import" tape-path))))

(defn har-export
  "Convert a Servirtium markdown tape into HAR 1.2 JSON. Raises on failure."
  [tape-path har-path]
  (check "har_export" (c "har_export" (str "har_export" tape-path) (str "har_export" har-path))))
