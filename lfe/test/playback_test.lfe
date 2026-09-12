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
