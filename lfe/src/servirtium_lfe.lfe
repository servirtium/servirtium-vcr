;;; servirtium_lfe.lfe — the LFE (Lisp Flavoured Erlang) Servirtium binding,
;;; riding the SAME servirtium_nif NIF the Erlang binding owns.
;;;
;;; LFE is the BEAM's fourth rider here (Erlang, Elixir, Gleam, LFE): no
;;; second FFI, no second .so, no copied C source. erlang/.build.ae compiles
;;; the canonical NIF once into the OTP app `servirtium_nif`; this module
;;; reaches it over the BEAM exactly as Elixir's defdelegate and Gleam's
;;; @external do. Erlang is the BEAM's "Java" here, as the one Java jar backs
;;; the JVM four.
;;;
;;; Carries NO record/replay logic: markdown parse/emit, the HTTP server,
;;; request matching, redactions and drift detection all live in the in-repo
;;; Aether `core/vcr.ae` engine, reached through `servirtium_nif`. This module
;;; only marshals strings across that seam and presents an idiomatic surface
;;; mirroring the Erlang twin (erlang/src/servirtium.erl) function-for-function.
;;;
;;;   (let* ((vcr (servirtium_lfe:playback "tapes/single_get.md"))
;;;          (url (servirtium_lfe:base_url vcr)))
;;;     ;; point the system-under-test at url
;;;     (servirtium_lfe:close vcr))
;;;
;;; A running server is an opaque map; treat it as a token.
;;;
;;; PUBLIC function names use underscores (base_url, last_kind, tape_length, …).
;;; LFE lets a local def use hyphens, but a *remote* call
;;; `servirtium_lfe:base-url` does not resolve to the exported 'base-url' atom —
;;; so any cross-module API must be underscore-named to be callable. Internal
;;; helpers stay hyphenated.
(defmodule servirtium_lfe
  (export
   ;; lifecycle
   (playback 1) (playback 2)
   (record 2) (record 3)
   (close 1)
   ;; introspection
   (base_url 1)
   (port 1)
   (tape_length 1)
   ;; diagnostics
   (last_kind 1)
   (last_error 1)
   (last_index 1)))

;; ---- public entry points -------------------------------------------------

;; Replay a Servirtium markdown tape from disk, binding an OS-chosen free port.
(defun playback (tape-path)
  (playback tape-path "127.0.0.1"))

(defun playback (tape-path host)
  (let ((handle (servirtium_nif:open_playback #"" (to-bin tape-path) (to-bin host) 0)))
    (if (=:= handle 0)
        (error (tuple 'servirtium (tuple 'playback_open_failed tape-path)))
        (if (< (servirtium_nif:start handle) 0)
            (let ((detail (binary_to_list (servirtium_nif:last_error handle))))
              (servirtium_nif:stop handle)
              (error (tuple 'servirtium
                            (tuple 'playback_start_failed tape-path detail))))
            (vcr handle host 'playback tape-path)))))

;; Record: forward each request to UpstreamBase, capture the exchange, and
;; write the tape to TapePath on close/1. Binds an OS-chosen free port.
(defun record (tape-path upstream-base)
  (open-recording tape-path upstream-base "127.0.0.1"))

(defun record (tape-path upstream-base host)
  (open-recording tape-path upstream-base host))

;; NOTE: `record` is an LFE CORE FORM (Erlang records), so the exported
;; record/2 and record/3 above cannot call each other — a local (record …)
;; parses as the core form, not as this module's function ("record tape-path
;; undefined"). Both arities therefore delegate to this hyphenated internal.
;; The public name stays `record` for parity with the Erlang/Elixir/Gleam
;; twins; a *remote* servirtium_lfe:record/2,3 resolves to the function, not
;; the core form, so callers are unaffected. lfec therefore prints one
;; EXPECTED warning on every build — "redefining core function record/3" —
;; which LFE offers no way to suppress selectively (lfec has only -Werror and
;; nowarn_unused_vars). Do not "fix" it by renaming the export.
(defun open-recording (tape-path upstream-base host)
  (let ((handle (servirtium_nif:open_record
                 #"" (to-bin tape-path) (to-bin upstream-base) (to-bin host) 0)))
    (if (=:= handle 0)
        (error (tuple 'servirtium
                      (tuple 'record_open_failed tape-path upstream-base)))
        (if (< (servirtium_nif:start handle) 0)
            (let ((detail (binary_to_list (servirtium_nif:last_error handle))))
              (servirtium_nif:stop handle)
              (error (tuple 'servirtium
                            (tuple 'record_start_failed tape-path detail))))
            (vcr handle host 'record tape-path)))))

;; ---- running-server members ----------------------------------------------

;; Base URL the SUT should target, e.g. "http://127.0.0.1:54213".
(defun base_url (vcr)
  (binary_to_list
   (servirtium_nif:base_url (maps:get 'handle vcr)
                            (to-bin (maps:get 'host vcr)))))

;; The OS-resolved port the server is listening on.
(defun port (vcr)
  (servirtium_nif:port (maps:get 'handle vcr)))

;; Tape entry count (playback), or interactions captured so far (record).
(defun tape_length (vcr)
  (servirtium_nif:tape_length (maps:get 'handle vcr)))

;; Outcome atom of the most-recent dispatch (ok, body_diff, …).
(defun last_kind (vcr)
  (kind-atom (servirtium_nif:last_kind (maps:get 'handle vcr))))

;; Most-recent dispatch diagnostic; "" when none flagged.
(defun last_error (vcr)
  (binary_to_list (servirtium_nif:last_error (maps:get 'handle vcr))))

;; Tape index of the most-recent matched interaction, or -1.
(defun last_index (vcr)
  (servirtium_nif:last_index (maps:get 'handle vcr)))

;; Stop the server. In record mode this also flushes the captured tape to
;; disk. Returns 'ok, or #(error Msg) on a record-flush problem. Close once —
;; a second close on the same handle is undefined.
(defun close (vcr)
  (case (maps:get 'mode vcr)
    ('playback (servirtium_nif:stop (maps:get 'handle vcr)) 'ok)
    ('record
     (case (servirtium_nif:stop_and_flush (maps:get 'handle vcr)
                                          (to-bin (maps:get 'tape vcr)))
       (#"" 'ok)
       (msg (tuple 'error (binary_to_list msg)))))))

;; ---- internals -----------------------------------------------------------

;; The opaque running-server token. Mirrors the Erlang twin's map shape
;; (#{handle, host, mode, tape}) so the two are debuggable side by side.
(defun vcr (handle host mode tape)
  (maps:from_list (list (tuple 'handle handle)
                        (tuple 'host host)
                        (tuple 'mode mode)
                        (tuple 'tape tape))))

;; VCR_KIND_* -> atom (mirrors core/vcr.ae and the Erlang twin's ?KIND).
(defun kind-atom (n)
  (case n
    (0 'ok)
    (1 'path_or_method_diff)
    (2 'header_missing)
    (3 'header_value_diff)
    (4 'header_unexpected)
    (5 'tape_exhausted)
    (6 'body_diff)
    (7 'record_error)
    (_ 'ok)))

;; Accept an LFE string (Erlang list) or a binary; the NIF takes binaries.
(defun to-bin (x)
  (if (is_binary x) x (iolist_to_binary x)))
