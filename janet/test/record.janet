# record.janet: the Janet binding's record-mode suite. Record tests need a live
# upstream: a throwaway Aether HTTP server (helpers/start-upstream) that returns
# a fixed body and headers and notes the request. Tapes are written to temp
# paths, never into tapes/. Run:
#   SERVIRTIUM_VCR_LIB=<abs>/libservirtium_vcr.so janet janet/test/record.janet
(import ../servirtium :as servirtium)
(import ./helpers :as h)

(h/testcase "record then replay the same interaction (de-chunking on the record path)"
  (fn []
    (def up (h/start-upstream {:body "hello-from-upstream" :chunked true}))
    (def tape (h/temp-path "rec.md"))
    (defer (do ((up :close)) (h/rm tape))
      (servirtium/with-record [rec tape (up :base-url)]
        (h/eq (h/get-body (servirtium/base-url rec) "/greeting") "hello-from-upstream" "live body")
        (h/eq (servirtium/tape-length rec) 1 "one interaction captured"))
      (h/truthy (h/read-file tape) "with-record wrote the tape")
      (servirtium/with-playback [play tape]
        (h/eq (h/get-body (servirtium/base-url play) "/greeting") "hello-from-upstream" "replayed body")
        (h/eq (servirtium/last-kind play) :ok (servirtium/last-error play))))))

(h/testcase "record and replay a POST with a body"
  (fn []
    (def up (h/start-upstream {:body "created"}))
    (def tape (h/temp-path "rec.md"))
    (defer (do ((up :close)) (h/rm tape))
      (servirtium/with-record [rec tape (up :base-url)]
        (h/eq (h/post-body (servirtium/base-url rec) "/submit" "ping") "created" "live POST response")
        (h/eq (first ((up :last))) "POST" "the upstream saw a POST")
        (h/eq (get ((up :last)) 1) "ping" "the upstream saw the body"))
      (servirtium/with-playback [play tape]
        (h/eq (h/post-body (servirtium/base-url play) "/submit" "ping") "created" "replayed POST")
        (h/eq (servirtium/last-kind play) :ok (servirtium/last-error play))))))

(h/testcase "license notice is written under its heading; playback ignores it"
  (fn []
    (def up (h/start-upstream {}))
    (def tape (h/temp-path "notice.md"))
    (defer (do ((up :close)) (h/rm tape))
      (servirtium/with-record [rec tape (up :base-url) {:license-notice "Licensed under the Test Licence 1.0.\nSecond line."}]
        (h/get-body (servirtium/base-url rec) "/x"))
      (def text (h/read-file tape))
      (h/contains text "## LICENSE NOTICE" "heading")
      (h/contains text "Licensed under the Test Licence 1.0.\nSecond line." "text with the caller's line break")
      (h/truthy (< (string/find "## LICENSE NOTICE" text) (string/find "## Interaction 0" text))
                "notice precedes the first interaction")
      (servirtium/with-playback [play tape]
        (h/eq (h/get-body (servirtium/base-url play) "/x") "upstream-body" "replays with the notice present")
        (h/eq (servirtium/last-kind play) :ok)))))

(h/testcase "pretty JSON indents a recorded JSON response body"
  (fn []
    (def up (h/start-upstream {:body "{\"a\":1,\"b\":[1,2]}" :content-type "application/json"}))
    (def plain (h/temp-path "plain.md"))
    (def pretty (h/temp-path "pretty.md"))
    (defer (do ((up :close)) (h/rm plain) (h/rm pretty))
      (servirtium/with-record [rec plain (up :base-url)]
        (h/get-body (servirtium/base-url rec) "/j"))
      (servirtium/with-record [rec pretty (up :base-url) {:pretty-json 2}]
        (h/eq (servirtium/get-pretty-json rec) 2)
        (h/get-body (servirtium/base-url rec) "/j"))
      (h/contains (h/read-file plain) "{\"a\":1,\"b\":[1,2]}" "compact by default")
      (h/not-contains (h/read-file pretty) "{\"a\":1,\"b\":[1,2]}" "no longer compact")
      (h/contains (h/read-file pretty) "  \"a\": 1" "indented by two"))))

(h/testcase "header presets and credential redaction are accepted; an unknown cloud vendor is rejected"
  (fn []
    (def tape (h/temp-path "presets.md"))
    (defer (h/rm tape)
      (servirtium/with-record [rec tape "http://127.0.0.1:1"
                               {:remove-transport-headers true
                                :remove-cloud-headers ["aws" "gcp"]
                                :redact-credentials true
                                :redact-credential-headers ["X-Vault-Token"]
                                :ignore-volatile-headers true}]
        nil)
      (def e (h/raises (fn [] (servirtium/record tape "http://127.0.0.1:1" {:remove-cloud-headers "nosuchvendor"}))))
      (h/eq (e :op) "remove_cloud_headers" "error op")
      (h/eq (e :error) :servirtium))))

(h/testcase "an upstream CA file is accepted on a record handle"
  (fn []
    # the path is only read when the first https request is forwarded (see core_tests/tls_probe.ae)
    (def tape (h/temp-path "ca.md"))
    (defer (h/rm tape)
      (def rec (servirtium/record tape "https://127.0.0.1:1" {:upstream-cafile "/nonexistent/ca.pem"}))
      (servirtium/discard rec))))

(h/testcase "redact-credentials leaves no credential on the tape"
  (fn []
    (def up (h/start-upstream {}))
    (def tape (h/temp-path "creds.md"))
    (defer (do ((up :close)) (h/rm tape))
      (servirtium/with-record [rec tape (up :base-url) {:redact-credentials true}]
        (h/get-body (servirtium/base-url rec) "/x" ["Authorization: Bearer s3cr3t-value" "X-Api-Key: key-value-123"]))
      (def text (h/read-file tape))
      (h/not-contains text "s3cr3t-value" "authorization redacted")
      (h/not-contains text "key-value-123" "api key redacted"))))

(h/testcase "record redacts the response body before it lands on the tape"
  (fn []
    (def up (h/start-upstream {:body "value=secret-token"}))
    (def tape (h/temp-path "rec.md"))
    (defer (do ((up :close)) (h/rm tape))
      (servirtium/with-record [rec tape (up :base-url) {:redact [[:response-body "secret-token" "REDACTED"]]}]
        (h/get-body (servirtium/base-url rec) "/x"))
      (h/contains (h/read-file tape) "REDACTED" "tape contains REDACTED")
      (h/not-contains (h/read-file tape) "secret-token" "tape must not contain the secret"))))

(h/testcase "record attaches a note"
  (fn []
    (def up (h/start-upstream {}))
    (def tape (h/temp-path "rec.md"))
    (defer (do ((up :close)) (h/rm tape))
      (servirtium/with-record [rec tape (up :base-url) {:notes [["Why this exists" "documents the call"]]}]
        (h/get-body (servirtium/base-url rec) "/x"))
      (h/contains (h/read-file tape) "## [Note] Why this exists:" "note heading on the tape"))))

(h/testcase "record removes a named response header"
  (fn []
    (def tape1 (h/temp-path "rec1.md"))
    (def tape2 (h/temp-path "rec2.md"))
    (def up (h/start-upstream {:extra-headers {"X-Trace-Id" "abc123"}}))
    (defer (do ((up :close)) (h/rm tape1) (h/rm tape2))
      (servirtium/with-record [rec tape1 (up :base-url)]
        (h/get-body (servirtium/base-url rec) "/x"))
      (h/contains (h/read-file tape1) "X-Trace-Id" "captured without removal")
      (servirtium/with-record [rec tape2 (up :base-url) {:remove-headers [[:response-headers "X-Trace-Id"]]}]
        (h/get-body (servirtium/base-url rec) "/x"))
      (h/not-contains (h/read-file tape2) "X-Trace-Id" "removed"))))

(h/testcase "whole-tape normalize and redact"
  (fn []
    (def up (h/start-upstream {:body "id=123e4567-e89b-12d3-a456-426614174000 at 2026-01-01"}))
    (def tape (h/temp-path "rec.md"))
    (defer (do ((up :close)) (h/rm tape))
      (servirtium/with-record [rec tape (up :base-url)
                               {:normalize-whole-tape [["[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" "uuid"]]
                                :redact-whole-tape [["20[0-9]{2}-[0-9]{2}-[0-9]{2}" "<DATE>"]]}]
        (h/get-body (servirtium/base-url rec) "/x"))
      (def text (h/read-file tape))
      (h/contains text "{{uuid-1}}" "correlated token")
      (h/contains text "<DATE>" "constant")
      (h/not-contains text "123e4567" "uuid gone")
      (h/not-contains text "2026-01-01" "date gone"))))

(h/testcase "mutation state does not leak between fixtures"
  (fn []
    (def tape1 (h/temp-path "rec1.md"))
    (def tape2 (h/temp-path "rec2.md"))
    (def up (h/start-upstream {:body "leak"}))
    (defer (do ((up :close)) (h/rm tape1) (h/rm tape2))
      (servirtium/with-record [a tape1 (up :base-url) {:redact [[:response-body "leak" "SCRUBBED"]]}]
        (h/get-body (servirtium/base-url a) "/x"))
      (h/contains (h/read-file tape1) "SCRUBBED" "fixture A")
      (servirtium/with-record [b tape2 (up :base-url)]
        (h/get-body (servirtium/base-url b) "/x"))
      (h/contains (h/read-file tape2) "leak" "fixture B keeps its body")
      (h/not-contains (h/read-file tape2) "SCRUBBED" "A's redaction did not leak"))))

(h/testcase "fail-if-changed raises on drift and still writes the new tape"
  (fn []
    (def tape (h/temp-path "rec.md"))
    (def up1 (h/start-upstream {:body "v1"}))
    (defer (h/rm tape)
      (defer ((up1 :close))
        (servirtium/with-record [first-rec tape (up1 :base-url) {:flush-mode :fail-if-changed}]
          (h/get-body (servirtium/base-url first-rec) "/x")))   # first record: no drift
      (def up2 (h/start-upstream {:body "v2-changed"}))
      (defer ((up2 :close))
        (def e (h/raises (fn []
                           (servirtium/with-record [second-rec tape (up2 :base-url) {:flush-mode :fail-if-changed}]
                             (h/get-body (servirtium/base-url second-rec) "/x")))))
        (h/eq (e :error) :servirtium "structured drift error")
        (h/truthy (not= "" (e :message)) "drift message"))
      (h/contains (h/read-file tape) "v2-changed" "the new tape is still written"))))

(h/testcase "flush-tape :or-check checks an existing tape instead of overwriting it"
  (fn []
    (def tape (h/temp-path "rec.md"))
    (def up1 (h/start-upstream {:body "v1"}))
    (defer (h/rm tape)
      (defer ((up1 :close))
        (servirtium/with-record [r tape (up1 :base-url)]
          (h/get-body (servirtium/base-url r) "/x")))
      (def up2 (h/start-upstream {:body "v2-changed"}))
      (defer ((up2 :close))
        (def rec (servirtium/record tape (up2 :base-url)))
        (h/get-body (servirtium/base-url rec) "/x")
        (def e (h/raises (fn [] (servirtium/flush-tape rec {:mode :or-check}))))
        (h/eq (e :error) :servirtium "drift reported"))
      (h/contains (h/read-file tape) "v1" "the checked-in tape is untouched")
      (h/not-contains (h/read-file tape) "v2-changed" "not overwritten"))))

(h/testcase "discard writes no tape, and with-record discards when the body raises"
  (fn []
    (def tape (h/temp-path "rec.md"))
    (def up (h/start-upstream {}))
    (defer (do ((up :close)) (h/rm tape))
      (def rec (servirtium/record tape (up :base-url)))
      (h/get-body (servirtium/base-url rec) "/x")
      (servirtium/discard rec)
      (h/eq (h/read-file tape) nil "discard wrote nothing")
      (def e (h/raises (fn []
                         (servirtium/with-record [r tape (up :base-url)]
                           (h/get-body (servirtium/base-url r) "/x")
                           (error "the test failed")))))
      (h/eq e "the test failed" "the body's error propagates")
      (h/eq (h/read-file tape) nil "a failed run never mints a tape"))))

(h/testcase "structured redaction helpers"
  (fn []
    (def dir (h/temp-dir "redaction"))
    (defer (h/rm-rf dir)
      (def upstream (h/run-tool "redaction_fixture" "start" dir))
      (servirtium/with-record [rec (string dir "/tape.md") upstream
                               {:redact-headers ["Authorization"]
                                :redact-query-params ["password"]
                                :redact-json-fields ["secretKey"]}]
        (h/run-tool "redaction_fixture" "drive" dir (servirtium/base-url rec))
        (h/eq (servirtium/last-kind rec) :ok "structured record outcome"))
      (h/run-tool "redaction_fixture" "check" dir))))

(h/testcase "named secrets round trip"
  (fn []
    (def dir (h/temp-dir "secrets"))
    (def tape (string dir "/tape.md"))
    (defer (h/rm-rf dir)
      (def upstream (h/run-tool "secret_fixture" "start" dir))
      (var count 0)
      (servirtium/with-record [rec tape upstream
                               {:secret-redactor
                                (fn [key request]
                                  (when (= key "password")
                                    (++ count)
                                    (string (string/ascii-upper (first (peg/match ~(* "/" (<- (to "/"))) (request :path)))) "_PASSWORD")))}]
        (h/run-tool "secret_fixture" "drive" (servirtium/base-url rec))
        (h/eq count 0 "the callback is deferred until flush"))
      (h/eq count 20 "field count")
      (h/run-tool "secret_fixture" "check" tape)
      (servirtium/with-playback [replay tape
                                 {:secret-resolver
                                  (fn [token]
                                    (string "pw-" (string/ascii-lower (string/replace "_PASSWORD" "" token)) "&secret"))}]
        (h/run-tool "secret_fixture" "drive" (servirtium/base-url replay))
        (servirtium/assert-no-mismatches replay))
      (h/run-tool "secret_fixture" "check" tape))))

(h/testcase "HAR import and export round trip"
  (fn []
    (def tape (h/temp-path "from_har.md"))
    (def har (h/temp-path "back.har"))
    (defer (do (h/rm tape) (h/rm har))
      (servirtium/har-import (string h/repo-root "/core_tests/tapes/sample.har") tape)
      (h/contains (h/read-file tape) "## Interaction 0" "imported tape")
      (servirtium/har-export tape har)
      (h/contains (h/read-file har) "\"log\"" "exported HAR")
      (h/truthy ((h/raises (fn [] (servirtium/har-import "/nonexistent.har" tape))) :message) "missing HAR is an error"))))

(h/done "record")
