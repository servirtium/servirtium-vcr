;;;; consumer.lfe — a third party using the packaged LFE binding.
;;;;
;;;; Runs against a RELOCATED copy of lfe/_build_pkg (the servirtium_lfe app
;;;; plus the shared servirtium_nif app), with only ERL_LIBS pointing at it —
;;;; no SERVIRTIUM_VCR_LIB, no SERVIRTIUM_NIF_DIR, and no reference to this
;;;; repo. code:priv_dir finds the engine .so beside the NIF, through the
;;;; NIF's own $ORIGIN rpath.
;;;;
;;;; Replays the canonical tape (GET /ok -> 200 text/plain "ok-body").
(defmodule consumer
  (export (main 1)))

(defun main (_args)
  (let* ((vcr (servirtium_lfe:playback "tapes/single_get.md"))
         (url (servirtium_lfe:base_url vcr))
         (body (string:trim (os:cmd (++ "curl -s " url "/ok")) 'trailing "\n"))
         (kind (servirtium_lfe:last_kind vcr)))
    (servirtium_lfe:close vcr)
    (if (andalso (=:= body "ok-body") (=:= kind 'ok))
        (progn
          (io:format "PASS[discovery]: consumer replayed the canonical tape from the installed apps~n")
          (halt 0))
        (progn
          (io:format "FAIL: body=~p kind=~p~n" (list body kind))
          (halt 1)))))
