;;;; playback_test.lfe — smoke test for the LFE Servirtium binding.
;;;;
;;;; Mirrors the Erlang twin (erlang/test/playback.escript) fact-for-fact:
;;;; start a playback VCR over the one-interaction canonical tape
;;;; (GET /ok -> 200 text/plain "ok-body"), drive it with curl, and assert the
;;;; body plus a clean match ('ok). Proves the LFE binding drives the ONE
;;;; Erlang NIF (servirtium_nif) — no second FFI, no second .so.
;;;;
;;;; A plain `(main args)` conformance runner (no test framework), run via
;;;; `lfe -eval`. The NIF .so resolves via ERL_LIBS (the erlang/.build.ae app)
;;;; the standard OTP way (code:priv_dir). Run from lfe/ so tapes/ resolves.
(defmodule playback_test
  (export (main 1)))

(defun main (_args)
  (named-secrets)

  (let* ((directory (++ "/tmp/vcr-helpers-lfe-" (os:getpid)))
         (fixture "../target/test-tools/redaction_fixture "))
    (file:make_dir directory)
    (let* ((upstream (string:trim (os:cmd (++ fixture "start '" directory "'"))))
           (rec (servirtium_lfe:record (++ directory "/tape.md") upstream)))
      (try
        (progn
          (require-ok (servirtium_lfe:redact_header rec "Authorization"))
          (require-ok (servirtium_lfe:redact_query_param rec "password"))
          (require-ok (servirtium_lfe:redact_json_field rec "secretKey"))
          (let ((out (os:cmd (++ fixture "drive '" directory "' '" (servirtium_lfe:base_url rec) "' && echo DRIVE_OK"))))
            (case (string:find out "DRIVE_OK") ('nomatch (erlang:error (tuple 'redaction_fixture out))) (_ 'ok))) )
        (after (servirtium_lfe:close rec))))
    (let ((out (os:cmd (++ fixture "check '" directory "' && echo CHECK_OK"))))
      (case (string:find out "CHECK_OK")
        ('nomatch (erlang:error (tuple 'redaction_fixture out)))
        (_ 'ok)))
    (let (((tuple 'ok files) (file:list_dir directory)))
      (lists:foreach (lambda (name) (file:delete (++ directory "/" name))) files))
    (file:del_dir directory))

  (let ((server (servirtium_lfe:playback "../core_tests/diagnostics/playback.md")))
    (servirtium_lfe:test_context server "LFE scenario" "scenario.test" 123)
    (let ((out (os:cmd (++ "../target/test-tools/diagnostic_fixture '" (servirtium_lfe:base_url server) "' && echo DRIVER_OK"))))
      (require-found out "DRIVER_OK"))
    (require-found (servirtium_lfe:last_error server 'false) "owner")
    (require-found (servirtium_lfe:last_error server 'false) "scenario.test:123")
    (case (string:find (servirtium_lfe:diagnostics_json server 'false) "\"retrieved\":1")
      ('nomatch 'ok)
      (_ (erlang:error 'observer_consumed)))
    (require-found (servirtium_lfe:last_error server) "owner")
    (require-found (servirtium_lfe:diagnostics_json server 'false) "\"retrieved\":0")
    (case (catch (servirtium_lfe:assert_no_mismatches server))
      ((tuple 'EXIT _) 'ok)
      (_ (erlang:error 'expected_mismatch)))
    (servirtium_lfe:test_context server "next test" "" 0)
    (require-ok (servirtium_lfe:assert_no_mismatches server))
    (case (servirtium_lfe:diagnostics_json server 'false)
      ("[]" 'ok)
      (_ (erlang:error 'expected_empty_events)))
    (servirtium_lfe:close server))
  (let* ((tape "tapes/single_get.md")
         (vcr (servirtium_lfe:playback tape))
         (url (servirtium_lfe:base_url vcr)))
    (io:format "base_url = ~s~n" (list url))
    (let* ((body (string:trim (os:cmd (++ "curl -s " url "/ok")) 'trailing "\n"))
           (kind (servirtium_lfe:last_kind vcr))
           (len (servirtium_lfe:tape_length vcr)))
      (io:format "body = ~p, last_kind = ~p, tape_length = ~p~n"
                 (list body kind len))
      ;; close BEFORE asserting, so a failed assertion never leaks the server;
      ;; its return value is itself one of the facts under test.
      (let* ((closed (servirtium_lfe:close vcr))
             (fails (+ (ck "body is ok-body" (=:= body "ok-body"))
                       (ck "last_kind is ok" (=:= kind 'ok))
                       (ck "tape_length is 1" (=:= len 1))
                       (ck "close returns ok" (=:= closed 'ok)))))
        (if (=:= fails 0)
            (progn (io:format "PASS: lfe servirtium playback~n") (halt 0))
            (progn (io:format "FAILED: ~p lfe test(s)~n" (list fails)) (halt 1)))))))

;; return 0 on pass, 1 on fail (summed in main — no mutable state).
(defun ck (label cond)
  (if cond
      (progn (io:format "  ok: ~s~n" (list label)) 0)
      (progn (io:format "FAIL: ~s~n" (list label)) 1)))

(defun require-ok (value)
  (case value
    ('ok 'ok)
    (err (erlang:error (tuple 'redaction_config err)))))

(defun require-found (text needle)
  (case (string:find text needle)
    ('nomatch (erlang:error (tuple 'missing needle text)))
    (_ 'ok)))

(defun secret-run (action arg)
  (let* ((out (os:cmd (++ "../target/test-tools/secret_fixture " action " '" arg "' 2>&1 && echo SECRET_OK"))))
    (require-found out "SECRET_OK")
    (string:trim (string:replace out "SECRET_OK" "" 'all))))
(defun named-secrets ()
  (let* ((dir (++ "/tmp/vcr-secrets-lfe-" (os:getpid)))
         (tape (++ dir "/tape.md"))
         (upstream (secret-run "start" dir))
         (rec (servirtium_lfe:secret_redactor (servirtium_lfe:record tape upstream)
           (lambda (key request)
             (if (=:= key #"password")
               (let* ((parts (binary:split (maps:get 'path request) #"/" '(global)))
                      (service (lists:nth 2 parts)))
                 (iolist_to_binary (list (string:uppercase service) #"_PASSWORD")))
               'undefined)))))
    (secret-run "drive" (servirtium_lfe:base_url rec))
    (require-ok (servirtium_lfe:close rec))
    (secret-run "check" tape)
    (let ((replay (servirtium_lfe:playback_with_secrets tape
          (lambda (token)
            (let* ((parts (binary:split token #"_PASSWORD"))
                   (service (car parts)))
              (iolist_to_binary (list #"pw-" (string:lowercase service) #"&secret")))))))
      (secret-run "drive" (servirtium_lfe:base_url replay))
      (require-ok (servirtium_lfe:assert_no_mismatches replay))
      (require-ok (servirtium_lfe:close replay)))
    (secret-run "check" tape)
    (let (((tuple 'ok files) (file:list_dir dir)))
      (lists:foreach (lambda (name) (file:delete (++ dir "/" name))) files))
    (file:del_dir dir)))
