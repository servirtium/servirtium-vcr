# playback.janet: the Janet binding's playback suite, over the canonical
# one-interaction tape (GET /ok -> 200 text/plain "ok-body"), the same tape
# every other binding replays. Run from anywhere:
#   SERVIRTIUM_VCR_LIB=<abs>/libservirtium_vcr.so janet janet/test/playback.janet
(import ../servirtium :as servirtium)
(import ./helpers :as h)

(defn tape [name] (string h/tapes-dir "/" name))
(def single (tape "single_get.md"))

(h/testcase "replays the canonical tape"
  (fn []
    (servirtium/with-playback [vcr single {:label "replays the canonical tape"}]
      (h/truthy (> (servirtium/port vcr) 0) "OS-assigned port")
      (h/truthy (string/has-prefix? "http://127.0.0.1:" (servirtium/base-url vcr)) "base url")
      (h/eq (servirtium/tape-length vcr) 1 "tape length")
      (h/eq (h/get-body (servirtium/base-url vcr) "/ok") "ok-body" "body")
      (h/eq (servirtium/last-kind vcr) :ok "last-kind")
      (h/truthy (servirtium/matched-cleanly? vcr) "matched-cleanly?")
      (h/eq (servirtium/last-index vcr) 0 "last-index")
      (h/eq (servirtium/last-error vcr) "" "last-error"))))

(h/testcase "flags a path that is not on the tape"
  (fn []
    (servirtium/with-playback [vcr single]
      (h/truthy (not= 200 (h/get-status (servirtium/base-url vcr) "/nope")) "not 200")
      (h/truthy (not= :ok (servirtium/last-kind vcr)) "mismatch outcome")
      (h/truthy (not= "" (servirtium/last-error vcr)) "diagnostic non-empty"))))

(h/testcase "unredaction lets a scrubbed tape match"
  (fn []
    (servirtium/with-playback [vcr (tape "secure_get.md")
                               {:strict-headers true
                                :strict-ignore-common-headers true
                                :unredact [[:request-headers "Bearer REDACTED" "Bearer real-token"]]}]
      (h/eq (h/get-body (servirtium/base-url vcr) "/secure" ["Authorization: Bearer real-token"])
            "secret-ok" "body")
      (h/eq (servirtium/last-kind vcr) :ok (string "last-kind (" (servirtium/last-error vcr) ")")))))

(h/testcase "strict matching flags a missing request header"
  (fn []
    (servirtium/with-playback [vcr (tape "secure_get.md")
                               {:strict-headers true
                                :strict-ignore-common-headers true
                                :unredact [[:request-headers "Bearer REDACTED" "Bearer real-token"]]}]
      (h/get-body (servirtium/base-url vcr) "/secure")
      (h/truthy (not= :ok (servirtium/last-kind vcr)) "mismatch outcome")
      (h/truthy (not= "" (servirtium/last-error vcr)) "diagnostic non-empty"))))

(h/testcase "static content is served from disk"
  (fn []
    (def dir (h/temp-dir "assets"))
    (spit (string dir "/asset.txt") "static-asset")
    (defer (h/rm-rf dir)
      (servirtium/with-playback [vcr single {:static-content [["/files" dir]]}]
        (h/eq (h/get-body (servirtium/base-url vcr) "/files/asset.txt") "static-asset" "from disk")
        (h/eq (h/get-body (servirtium/base-url vcr) "/ok") "ok-body" "from the tape, unaffected")))))

(h/testcase "an untaped path 404s without consuming the cursor"
  (fn []
    (servirtium/with-playback [vcr single {:untaped ["/favicon.ico"]}]
      (h/eq (h/get-status (servirtium/base-url vcr) "/favicon.ico") 404 "untaped 404")
      (h/eq (h/get-body (servirtium/base-url vcr) "/ok") "ok-body" "the tape still replays")
      (h/eq (servirtium/last-kind vcr) :ok "last-kind after untaped"))))

(h/testcase "two playback servers at once (one server per port)"
  (fn []
    (def a (servirtium/playback single))
    (def b (servirtium/playback (tape "secure_get.md") {:strict-ignore-common-headers true}))
    (defer (do (servirtium/stop a) (servirtium/stop b))
      (h/truthy (not= (servirtium/port a) (servirtium/port b)) "distinct ports")
      (h/eq (h/get-body (servirtium/base-url a) "/ok") "ok-body" "server A from its tape")
      (h/eq (h/get-body (servirtium/base-url b) "/secure" ["Authorization: Bearer REDACTED"])
            "secret-ok" "server B from its tape"))))

(h/testcase "reset-cursor replays the tape again"
  (fn []
    (servirtium/with-playback [vcr single]
      (def base (servirtium/base-url vcr))
      (h/eq (h/get-body base "/ok") "ok-body")
      (servirtium/reset-cursor vcr)
      (h/eq (h/get-body base "/ok") "ok-body")
      (h/eq (servirtium/last-kind vcr) :ok))))

(h/testcase "match-multiple replays an interaction repeatedly"
  (fn []
    (servirtium/with-playback [vcr single]
      (def base (servirtium/base-url vcr))
      (h/get-body base "/ok")
      (h/get-body base "/ok")
      (h/eq (servirtium/last-kind vcr) :tape-exhausted "the cursor is consumed")
      (servirtium/last-error vcr))
    (servirtium/with-playback [vcr single {:match-multiple true}]
      (def base (servirtium/base-url vcr))
      (h/get-body base "/ok")
      (h/eq (h/get-body base "/ok") "ok-body" "second request")
      (h/eq (servirtium/last-kind vcr) :ok "reusable"))))

(h/testcase "a missing tape raises a structured error"
  (fn []
    (def e (h/raises (fn [] (servirtium/playback (string single ".nonexistent")))))
    (h/eq (e :error) :servirtium "error kind")
    (h/eq (e :op) "playback" "error op")
    (h/contains (e :message) "nonexistent" "error message")))

(h/testcase "unknown options and fields are rejected"
  (fn []
    (def e (h/raises (fn [] (servirtium/playback single {:strict-headerz true}))))
    (h/contains (e :message) "unknown option" "typo'd option")
    (servirtium/with-playback [vcr single]
      (h/contains ((h/raises (fn [] (servirtium/redact vcr :nope "a" "b"))) :message)
                  "unknown field" "bad field keyword")
      (h/contains ((h/raises (fn [] (servirtium/untaped vcr nil))) :message)
                  "expected a string" "nil string argument"))))

(h/testcase "with-playback stops the server on every path"
  (fn []
    (var port nil)
    (def e (h/raises (fn []
                       (servirtium/with-playback [vcr single]
                         (set port (servirtium/port vcr))
                         (error "boom")))))
    (h/eq e "boom" "the body's error propagates")
    (h/truthy (h/raises (fn [] (h/get-body (string "http://127.0.0.1:" port) "/ok")))
              "connection refused after the block")
    # stop is idempotent, and a stopped server refuses configuration
    (def vcr (servirtium/playback single))
    (servirtium/stop vcr)
    (servirtium/stop vcr)
    (h/contains ((h/raises (fn [] (servirtium/untaped vcr "/x"))) :message) "already stopped")))

(h/testcase "format options, license notice and presets are accepted on a playback handle"
  (fn []
    (servirtium/with-playback [vcr single]
      (servirtium/add-license-notice vcr "test notice")   # playback ignores it
      (servirtium/set-pretty-json vcr 2)
      (h/eq (servirtium/get-pretty-json vcr) 2 "pretty json indent")
      (servirtium/set-pretty-json vcr 0)
      (h/eq (servirtium/get-pretty-json vcr) 0 "pretty json off")
      (servirtium/set-pretty-xml vcr 4)
      (h/eq (servirtium/get-pretty-xml vcr) 4 "pretty xml indent")
      (servirtium/remove-transport-headers vcr)
      (servirtium/remove-cloud-headers vcr "aws")
      (servirtium/redact-credentials vcr)
      (servirtium/redact-credential-header vcr "X-Vault-Token")
      (servirtium/ignore-volatile-headers vcr)
      (servirtium/match-header vcr "Authorization")
      (servirtium/clear-match-headers vcr)
      (servirtium/indent-code-blocks vcr)
      (servirtium/emphasize-http-verbs vcr)
      (servirtium/set-rules-footer vcr true)
      (servirtium/set-match-xml-body vcr true)
      (servirtium/set-match-json-body vcr true)
      (each f [servirtium/clear-redactions
               servirtium/clear-unredactions servirtium/clear-header-removals
               servirtium/clear-static-content servirtium/clear-untaped
               servirtium/clear-format-options servirtium/clear-substitutions]
        (f vcr))
      (h/eq (servirtium/last-tls-protocol vcr) "" "no TLS connection yet")
      (h/eq (h/get-body (servirtium/base-url vcr) "/ok") "ok-body" "still replays"))))

(h/testcase "substitute rewrites a placeholder; assert-all-consumed"
  (fn []
    (servirtium/with-playback [vcr (tape "substitute.md")
                               {:substitute [[:response-body "@@HOST@@" "http://sub.example"]]}]
      (h/truthy (try (do (servirtium/assert-all-consumed vcr) false) ([_] true))
                "assert-all-consumed raises before any request")
      (h/eq (h/get-body (servirtium/base-url vcr) "/sub") "at http://sub.example/x" "substituted body")
      (h/eq (servirtium/last-kind vcr) :ok)
      (servirtium/assert-all-consumed vcr)
      (servirtium/assert-all-redactions-used vcr)
      (servirtium/assert-no-unfilled-placeholders vcr)
      (servirtium/clear-last-error vcr))))

(h/testcase "playback-url replays a tape fetched over HTTP"
  (fn []
    (servirtium/with-playback [host single {:static-content [["/tapes" h/tapes-dir]]}]
      (def url (string (servirtium/base-url host) "/tapes/single_get.md"))
      (def vcr (servirtium/playback-url url))
      (defer (servirtium/stop vcr)
        (h/eq (h/get-body (servirtium/base-url vcr) "/ok") "ok-body" "replayed from the URL")
        (h/eq (servirtium/last-kind vcr) :ok)))))

(h/testcase "a tls certificate that is not there is rejected"
  (fn []
    (def e (h/raises (fn [] (servirtium/playback single {:tls ["/nonexistent/cert.pem" "/nonexistent/key.pem"]}))))
    (h/eq (e :error) :servirtium "structured error")))

(h/testcase "in-memory tls material that is not PEM is rejected"
  (fn []
    (def e (h/raises (fn [] (servirtium/playback single {:tls-pem ["not a certificate" "not a key"]}))))
    (h/eq (e :error) :servirtium "structured error")))

(h/testcase "retained replay diagnostics"
  (fn []
    (servirtium/with-playback [server (string h/repo-root "/core_tests/diagnostics/playback.md")]
      (servirtium/test-context server "Janet scenario" "scenario.test" 123)
      (h/run-tool "diagnostic_fixture" (servirtium/base-url server))
      (def observed (servirtium/last-error server false))
      (h/contains observed "owner" "observer last error")
      (h/contains observed "scenario.test:123" "coordinates")
      (h/not-contains (servirtium/diagnostics-json server) "\"retrieved\":1" "observer does not consume")
      (h/contains (servirtium/last-error server) "owner" "latest consuming read")
      (h/contains (servirtium/diagnostics-json server) "\"retrieved\":0" "earlier failure remains unread")
      (def e (h/raises (fn [] (servirtium/assert-no-mismatches server))))
      (h/contains (e :message) "admin" "assertion reports the earlier failure")
      (servirtium/test-context server "next test")
      (servirtium/assert-no-mismatches server)
      (h/eq (servirtium/diagnostics-json server) "[]" "a test boundary clears events"))))

(h/testcase "named secrets resolve on playback"
  (fn []
    (def dir (h/temp-dir "secrets"))
    (def tape-path (string dir "/tape.md"))
    (defer (h/rm-rf dir)
      # record with a redactor, then replay with a resolver (see record.janet);
      # here we only prove the resolver stage runs on a tape with no secrets.
      (var calls 0)
      (servirtium/with-playback [vcr single {:secret-resolver (fn [token] (++ calls) "x")}]
        (h/eq calls 0 "no tokens on the canonical tape")
        (h/eq (h/get-body (servirtium/base-url vcr) "/ok") "ok-body")))))

(h/testcase "enums"
  (fn []
    (h/eq (servirtium/fields :path) 1)
    (h/eq (servirtium/fields :response-headers) 5)
    (h/eq (servirtium/outcomes 0) :ok)
    (h/eq (servirtium/outcomes 7) :record-error)
    (h/eq (length servirtium/outcomes) 8)))

(h/testcase "a playback range skips early interactions and serves a later one"
  (fn []
    (servirtium/with-playback [vcr (tape "range.md") {:playback-range [1 -1]}]
      (h/eq (servirtium/get-playback-range vcr) [1 2] "range")
      (h/eq (h/get-body (servirtium/base-url vcr) "/step/second") "second-body" "interaction 1 is served")
      (h/eq (servirtium/last-index vcr) 1 "last-index")
      # interaction 0 is outside the range: never served
      (h/truthy (not= 200 (h/get-status (servirtium/base-url vcr) "/step/first")) "outside the range")
      (h/contains (servirtium/last-error vcr) "outside the playback range" "diagnostic")
      (h/truthy (h/raises (fn [] (servirtium/set-playback-range vcr 9 -1))) "a range past the tape raises")
      (servirtium/clear-playback-range vcr)
      (h/eq (servirtium/get-playback-range vcr) nil "cleared"))))
(h/testcase "a missing tape is reported by name through the open path"
  (fn []
    (def e (h/raises (fn [] (servirtium/playback "/nonexistent/no-such-tape.md"))))
    (h/contains (e :message) "no-such-tape" "the reason names the tape")))

(h/testcase "50 open/stop cycles; double stop and double flush are harmless"
  (fn []
    (for _ 0 50
      (def vcr (servirtium/playback single))
      (h/eq (h/get-body (servirtium/base-url vcr) "/ok") "ok-body" "body")
      (servirtium/stop vcr)
      (servirtium/stop vcr)
      (servirtium/discard vcr)
      (servirtium/flush-tape vcr))))

# ---- volatile values (docs/volatile-values.md): shared tapes + volatile_fixture ----

(def vol-dir (string h/repo-root "/core_tests/volatile"))
(defn vtape [name] (string vol-dir "/" name))
(defn fails-with [opts tape & parts]
  (def e (h/show (h/raises (fn () (servirtium/playback (vtape tape) opts)))))
  (each part parts (h/contains e part "start error")))

(h/testcase "volatile: tape-declared rules, none in code"
  (fn []
    (servirtium/with-playback [vcr (vtape "wcf.md") {:pretty-xml 2}]
      (h/run-tool "volatile_fixture" "wcf" (servirtium/base-url vcr))
      (h/contains (servirtium/volatile-report vcr) "binding: {{messageId-1}} = " "report"))))

(h/testcase "volatile: profile file"
  (fn []
    (servirtium/with-playback [vcr (vtape "wcf_plain.md")
                               {:pretty-xml 2 :volatile-profile (vtape "profile.md")}]
      (h/run-tool "volatile_fixture" "wcf" (servirtium/base-url vcr)))))

(h/testcase "volatile: rules in code"
  (fn []
    (servirtium/with-playback [vcr (vtape "wcf_plain.md")
                               {:pretty-xml 2
                                :volatile-rules
                                [["request body" "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>"]
                                 ["request body" "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/"]
                                 ["request body" "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;"]
                                 ["response body" "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>"]]}]
      (h/run-tool "volatile_fixture" "wcf" (servirtium/base-url vcr)))))

(h/testcase "volatile: markers"
  (fn []
    (servirtium/with-playback [vcr (vtape "wcf_dollar.md") {:pretty-xml 2 :volatile-markers :dollar-curly}]
      (h/run-tool "volatile_fixture" "wcf" (servirtium/base-url vcr)))
    (fails-with {:pretty-xml 2} "wcf_dollar.md" "DollarCurly")))

(h/testcase "volatile: cases correlation, then mismatch diagnostics"
  (fn []
    (servirtium/with-playback [vcr (vtape "cases.md")]
      (h/run-tool "volatile_fixture" "cases" (servirtium/base-url vcr))
      (servirtium/reset-cursor vcr)
      (h/run-tool "volatile_fixture" "cases-mismatch" (servirtium/base-url vcr))
      (h/contains (servirtium/last-error vcr false) "{{caseId-1}} = 42" "binding named")
      # consuming read: nothing left unretrieved at close
      (servirtium/last-error vcr))))

(h/testcase "volatile: bind"
  (fn []
    (fails-with {} "cases_recorded.md" "caseId")
    (servirtium/with-playback [vcr (vtape "cases_recorded.md") {:volatile-binds [["caseId" "42"]]}]
      (h/run-tool "volatile_fixture" "cases" (servirtium/base-url vcr)))))

(h/testcase "volatile: bad rules fail the open with the core's message"
  (fn []
    (fails-with {:volatile-rules [["request body" "no placeholder"]]} "cases.md"
                "needs at least one placeholder")
    (fails-with {:volatile-rules [["response body" "\"caseId\":\"{{id}}\""]]} "cases.md"
                "conflicts with" "(tape)")
    (h/raises (fn () (servirtium/playback (vtape "cases.md") {:volatile-rules [["x" "a {{b}}" "regex"]]})))))

(h/done "playback")
