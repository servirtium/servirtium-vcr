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
;;; Aether `core/vcr.ae` libservirtium_vcr, reached through `servirtium_nif`. This module
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
   (playback 1) (playback 2) (playback_with 2) (playback_with_secrets 2)
   (secret_redactor 2)
   (record 2) (record 3) (record_with 3)
   (redact_header 2) (redact_header 4)
   (redact_query_param 2) (redact_query_param 4)
   (redact_json_field 2) (redact_json_field 4)
   (add_license_notice 2)
   (set_pretty_xml 2)
   (set_pretty_json 2)
   (remove_transport_headers 1)
   (remove_cloud_headers 2)
   (redact_credentials 1)
   (redact_credential_header 2)
   (set_upstream_cafile 2)
   (set_sort_json_keys 2) (get_sort_json_keys 1)
   (sort_json_array 3) (sort_json_array_at 4)
   (set_sort_response_headers 2) (get_sort_response_headers 1)
   (sort_header_value 2)
   (clear_stable_order 1)
   (set_playback_range 3) (clear_playback_range 1)
   (get_playback_range_from 1) (get_playback_range_to 1)
   (close 1)
   ;; introspection
   (base_url 1)
   (port 1)
   (tape_length 1)
   ;; diagnostics
   (last_kind 1)
   (last_error 2) (diagnostics_json 2) (assert_no_mismatches 1) (test_context 4)
   (last_error 1)
   (last_index 1)
   (reset_cursor 1)
   (volatile_report 1)))

;; ---- public entry points -------------------------------------------------

;; Replay a Servirtium markdown tape from disk, binding an OS-chosen free port.
(defun playback (tape-path)
  (playback tape-path "127.0.0.1"))

(defun playback (tape-path host)
  (let ((handle (servirtium_nif:open_playback #"" (to-bin tape-path) (to-bin host) 0)))
    ;; An open always yields a handle; a failed one is dead and carries its reason.
    (case (servirtium_nif:open_error handle)
      (#""
       (if (< (servirtium_nif:start handle) 0)
           (let ((detail (binary_to_list (servirtium_nif:last_error handle))))
             (servirtium_nif:stop handle)
             (servirtium_nif:destroy handle)
             (error (tuple 'servirtium
                           (tuple 'playback_start_failed tape-path detail))))
           (vcr handle host 'playback tape-path)))
      (why
       (servirtium_nif:destroy handle)
       (error (tuple 'servirtium
                     (tuple 'playback_open_failed tape-path (binary_to_list why))))))))

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
    (case (servirtium_nif:open_error handle)
      (#""
       (if (< (servirtium_nif:start handle) 0)
           (let ((detail (binary_to_list (servirtium_nif:last_error handle))))
             (servirtium_nif:stop handle)
             (servirtium_nif:destroy handle)
             (error (tuple 'servirtium
                           (tuple 'record_start_failed tape-path detail))))
           (vcr handle host 'record tape-path)))
      (why
       (servirtium_nif:destroy handle)
       (error (tuple 'servirtium
                     (tuple 'record_open_failed tape-path upstream-base
                            (binary_to_list why))))))))

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
;; disk, then frees the VCR. Returns 'ok, or #(error Msg) on a record-flush
;; problem. The handle is a NIF resource, so a second close is a harmless no-op.
(defun close (vcr)
  (case (maps:get 'mode vcr)
    ('playback
     (servirtium_nif:stop (maps:get 'handle vcr))
     (servirtium_nif:destroy (maps:get 'handle vcr))
     'ok)
    ('record
     (case (maps:get 'secret_redactor vcr 'undefined)
       ('undefined 'ok)
       (callback (servirtium_nif:secret_stage (maps:get 'handle vcr) callback 'false)))
     (let ((flushed (servirtium_nif:stop_and_flush (maps:get 'handle vcr)
                                                   (to-bin (maps:get 'tape vcr)))))
       (servirtium_nif:destroy (maps:get 'handle vcr))
       (case flushed
         (#"" 'ok)
         (msg (tuple 'error (binary_to_list msg))))))))

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

(defun redact_header (vcr name)
  (redact_header vcr name #"[REDACTED]" 3))
(defun redact_header (vcr name replacement field)
  (case (servirtium_nif:redact_header (maps:get 'handle vcr) field (to-bin name) (to-bin replacement))
    (#"" 'ok)
    (err (erlang:error (tuple 'servirtium err)))))
(defun redact_query_param (vcr name)
  (redact_query_param vcr name #"[REDACTED]" 1))
(defun redact_query_param (vcr name replacement field)
  (case (servirtium_nif:redact_query_param (maps:get 'handle vcr) field (to-bin name) (to-bin replacement))
    (#"" 'ok)
    (err (erlang:error (tuple 'servirtium err)))))
(defun redact_json_field (vcr name)
  (redact_json_field vcr name #"[REDACTED]" 4))
(defun redact_json_field (vcr name replacement field)
  (case (servirtium_nif:redact_json_field (maps:get 'handle vcr) field (to-bin name) (to-bin replacement))
    (#"" 'ok)
    (err (erlang:error (tuple 'servirtium err)))))

;; Record mode: write TEXT under "## LICENSE NOTICE" at the top of each tape;
;; playback ignores it. Returns ok, or raises #(servirtium Error).
(defun add_license_notice (vcr text)
  (case (servirtium_nif:add_license_notice (maps:get 'handle vcr) (to-bin text))
    (#"" 'ok)
    (err (erlang:error (tuple 'servirtium err)))))
;; Record mode: pretty-print recorded JSON response bodies (indent 1..16;
;; 0 = off); request bodies are never changed.
(defun set_pretty_json (vcr indent)
  (servirtium_nif:set_pretty_json (maps:get 'handle vcr) indent))
;; Header presets (opt-in; each returns ok or raises #(servirtium Error)).
;; Host, Connection, Content-Length, the other hop-by-hop headers and the
;; request's Accept-Encoding.
(defun remove_transport_headers (vcr)
  (case (servirtium_nif:remove_transport_headers (maps:get 'handle vcr))
    (#"" 'ok)
    (err (erlang:error (tuple 'servirtium err)))))
;; VENDOR: "aws", "azure", "cloudflare", "fastly" or "gcp".
(defun remove_cloud_headers (vcr vendor)
  (case (servirtium_nif:remove_cloud_headers (maps:get 'handle vcr) (to-bin vendor))
    (#"" 'ok)
    (err (erlang:error (tuple 'servirtium err)))))
;; Authorization, cookies, X-Api-Key and X-Auth-Token become numbered tokens.
(defun redact_credentials (vcr)
  (case (servirtium_nif:redact_credentials (maps:get 'handle vcr))
    (#"" 'ok)
    (err (erlang:error (tuple 'servirtium err)))))
;; One more credential header, its whole value a token named after it.
(defun redact_credential_header (vcr name)
  (case (servirtium_nif:redact_credential_header (maps:get 'handle vcr) (to-bin name))
    (#"" 'ok)
    (err (erlang:error (tuple 'servirtium err)))))
;; Record mode: verify an https upstream against this PEM CA file.
(defun set_upstream_cafile (vcr path)
  (case (servirtium_nif:set_upstream_cafile (maps:get 'handle vcr) (to-bin path))
    (#"" 'ok)
    (err (erlang:error (tuple 'servirtium err)))))


;; Stable ordering (record side, all opt-in; the tape is byte-exact without
;; them). Sorted JSON is only written pretty-printed: a record with
;; set_sort_json_keys/sort_json_array* but without set_pretty_json is refused
;; when the tape is written (close/1 returns #(error "sort_json_keys needs
;; pretty_json: ...")).
;; JSON object keys sorted at every depth in recorded JSON response bodies.
(defun set_sort_json_keys (vcr on)
  (servirtium_nif:set_sort_json_keys (maps:get 'handle vcr) (bool-int on)))
(defun get_sort_json_keys (vcr)
  (=/= (servirtium_nif:get_sort_json_keys (maps:get 'handle vcr)) 0))
;; The JSON arrays PATH selects (JSON pointer, "*" for one segment, "" the
;; root array, or a bare member name) sorted by member BY ("" = canonical
;; JSON). Returns ok or raises #(servirtium Reason).
(defun sort_json_array (vcr path by)
  (str-result (servirtium_nif:sort_json_array (maps:get 'handle vcr) (to-bin path) (to-bin by))))
;; The same, only for requests whose path (query included) matches REQUEST.
(defun sort_json_array_at (vcr request path by)
  (str-result (servirtium_nif:sort_json_array_at (maps:get 'handle vcr)
                                                 (to-bin request) (to-bin path) (to-bin by))))
;; Response header lines sorted by name (case-insensitive).
(defun set_sort_response_headers (vcr on)
  (servirtium_nif:set_sort_response_headers (maps:get 'handle vcr) (bool-int on)))
(defun get_sort_response_headers (vcr)
  (=/= (servirtium_nif:get_sort_response_headers (maps:get 'handle vcr)) 0))
;; One response header's comma-separated items sorted ("Allow"). Returns ok
;; or raises #(servirtium Reason).
(defun sort_header_value (vcr name)
  (str-result (servirtium_nif:sort_header_value (maps:get 'handle vcr) (to-bin name))))
;; Every stable-order rule off.
(defun clear_stable_order (vcr)
  (servirtium_nif:clear_stable_order (maps:get 'handle vcr)))

;; Playback only: replay just interactions FROM..TO (inclusive, 0-based, the
;; tape's "## Interaction N" numbers; TO < 0 = through the last). Returns ok
;; or raises #(servirtium Reason) (a record server, or FROM past the tape).
(defun set_playback_range (vcr from to)
  (str-result (servirtium_nif:set_playback_range (maps:get 'handle vcr) from to)))
(defun clear_playback_range (vcr)
  (servirtium_nif:clear_playback_range (maps:get 'handle vcr)))
;; The range in force, first and last interaction; -1 when none is set.
(defun get_playback_range_from (vcr)
  (servirtium_nif:get_playback_range_from (maps:get 'handle vcr)))
(defun get_playback_range_to (vcr)
  (servirtium_nif:get_playback_range_to (maps:get 'handle vcr)))

(defun bool-int (on) (if on 1 0))
(defun str-result (result)
  (case result
    (#"" 'ok)
    (err (erlang:error (tuple 'servirtium err)))))
(defun consume-flag (consume) (if consume 1 0))
(defun last_error (vcr consume)
  (binary_to_list (servirtium_nif:last_error_ex (maps:get 'handle vcr) (consume-flag consume))))
(defun diagnostics_json (vcr consume)
  (binary_to_list (servirtium_nif:diagnostics_json (maps:get 'handle vcr) (consume-flag consume))))
(defun assert_no_mismatches (vcr)
  (case (servirtium_nif:assert_no_mismatches (maps:get 'handle vcr))
    (#"" 'ok)
    (err (erlang:error (tuple 'servirtium err)))))
(defun test_context (vcr name source-file source-line)
  (servirtium_nif:test_context (maps:get 'handle vcr) (to-bin name) (to-bin source-file) source-line))

(defun playback_with_secrets (tape resolver)
  (servirtium:playback_with_secrets tape resolver))
(defun secret_redactor (server callback)
  (maps:put 'secret_redactor callback server))

(defun set_pretty_xml (vcr indent)
  (servirtium_nif:set_pretty_xml (maps:get 'handle vcr) indent))

;; Playback / record with start-time OPTIONS, a list of tuples (repeatable, in
;; order): #(pretty_xml INDENT), #(volatile_markers STYLE) (mustache,
;; dollar_curly or wikilink; applied first), #(volatile_rule SCOPE PATTERN) or
;; #(volatile_rule SCOPE PATTERN KIND), #(bind NAME-OR-TOKEN VALUE),
;; #(volatile_profile PATH). A bad option fails the start with the
;; core's message: #(servirtium #(playback_start_failed TAPE MESSAGE)) (or
;; record_start_failed). See docs/volatile-values.md.
(defun playback_with (tape options)
  (servirtium:playback_with tape options))
(defun record_with (tape upstream options)
  (servirtium:record_with tape upstream options))

;; Rewind replay to interaction 0 and clear the last-* diagnostics.
(defun reset_cursor (vcr)
  (servirtium_nif:reset_cursor (maps:get 'handle vcr)))

;; The volatile rules in force, the token bindings made so far and any shape
;; warnings, one per line.
(defun volatile_report (vcr)
  (binary_to_list (servirtium_nif:volatile_report (maps:get 'handle vcr))))
