(ns servirtium
  "Servirtium VCR for Clojure.

  Clojure reaches libservirtium_vcr through the Java FFM binding
  (dev.servirtium.vcr) via JVM interop -- there is no second FFI
  here. The Java surface is already friendly: no checked exceptions,
  AutoCloseable (so clojure.core/with-open works), fluent builders, and the
  Outcome enum. These helpers just add a thin idiomatic Clojure layer.

  You can always call the Java API directly:

      (-> (Vcr/playback \"tapes/x.md\") (.port 0) (.start))

  or use the helpers below, which take an optional opts map:

      (with-open [vcr (playback \"tapes/x.md\" {:port 0})]
        (= Outcome/OK (.lastKind vcr)))"
  (:import [dev.servirtium.vcr Field Vcr VcrServer]))

(defn- apply-opts
  "Apply common builder opts (currently :port) to a PlaybackBuilder or
  RecordBuilder, returning the builder for further chaining/start."
  [builder {:keys [port] :as _opts}]
  (when port (.port builder (int port)))
  ;; Header presets (opt-in, record and playback).
  (when (:remove-transport-headers _opts) (.removeTransportHeaders builder))
  (doseq [vendor (:remove-cloud-headers _opts)] (.removeCloudHeaders builder vendor))
  (when (:redact-credentials _opts) (.redactCredentials builder))
  (doseq [name (:redact-credential-header _opts)] (.redactCredentialHeader builder name))
  (doseq [name (:remove-request-header _opts)] (.removeHeader builder Field/REQUEST_HEADERS name))
  (when-let [callback (:secret-redactor _opts)]
    (.secretRedactor builder (reify java.util.function.BiFunction
      (apply [_ key request] (callback key request)))))
  (when-let [callback (:secret-resolver _opts)]
    (.secretResolver builder (reify java.util.function.Function
      (apply [_ token] (callback token)))))
  builder)

(defn playback
  "Start a playback VCR replaying the tape at `tape`, returning the running
  VcrServer (a java.lang.AutoCloseable, so use clojure.core/with-open). `opts`
  is an optional map; :port 0 (the default libservirtium_vcr uses) asks the OS for a
  free port. Playback-only opt :playback-range replays only interactions
  `from`..`to` of the tape (0-based, inclusive, by interaction number): pass
  `[from to]` or a bare `from` (through the last; `to` < 0 means the same).
  A bad range throws VcrException."
  (^VcrServer [tape] (playback tape {}))
  (^VcrServer [tape opts]
   (-> (let [builder (Vcr/playback tape)]
         (when-let [range (:playback-range opts)]
           (let [[from to] (if (sequential? range) range [range -1])]
             (.playbackRange builder (int from) (int (or to -1)))))
         builder)
       (apply-opts opts)
       (.start))))

(defn record
  "Start a record VCR forwarding to `upstream`, returning the running VcrServer.
  Closing it (e.g. via with-open) writes the tape to `tape`. `opts` is an
  optional map; :port 0 (the default) asks the OS for a free port. Record-only
  opts: :pretty-json (indent, or true for 2), :license-notice (text under
  \"## LICENSE NOTICE\" atop the tape), :upstream-cafile (PEM CA path). Both
  modes also take the header presets :remove-transport-headers (true),
  :remove-cloud-headers (seq of vendors), :redact-credentials (true) and
  :redact-credential-header (seq of names). Opt-in stable order (record only;
  needs :pretty-json for the JSON rules, else closing the server throws
  VcrException \"sort_json_keys needs pretty_json ...\"): :sort-json-keys (true),
  :sort-json-array (seq of [path by]), :sort-json-array-at (seq of
  [request-regex path by]), :sort-response-headers (true), :sort-header-value
  (seq of header names). A rule the core refuses throws at start."
  (^VcrServer [tape upstream] (record tape upstream {}))
  (^VcrServer [tape upstream opts]
   (-> (let [builder (Vcr/record tape upstream)]
         (doseq [name (:redact-header opts)] (.redactHeader builder name))
         (doseq [name (:redact-query-param opts)] (.redactQueryParam builder name))
         (doseq [name (:redact-json-field opts)] (.redactJsonField builder name))
         ;; :pretty-json is an indent (1..16); true means 2.
         (when-let [indent (:pretty-json opts)]
           (.prettyJson builder (int (if (true? indent) 2 indent))))
         (when (:sort-json-keys opts) (.sortJsonKeys builder))
         (doseq [[path by] (:sort-json-array opts)] (.sortJsonArray builder path (or by "")))
         (doseq [[request path by] (:sort-json-array-at opts)] (.sortJsonArrayAt builder request path (or by "")))
         (when (:sort-response-headers opts) (.sortResponseHeaders builder))
         (doseq [name (:sort-header-value opts)] (.sortHeaderValue builder name))
         (when-let [text (:license-notice opts)] (.addLicenseNotice builder text))
         (when-let [path (:upstream-cafile opts)] (.upstreamCafile builder path))
         builder)
       (apply-opts opts)
       (.start))))


(defn last-error
  ([server] (.lastError server))
  ([server consume] (.lastError server (boolean consume))))
(defn diagnostics-json
  ([server] (.diagnosticsJson server false))
  ([server consume] (.diagnosticsJson server (boolean consume))))
(defn assert-no-mismatches [server] (.assertNoMismatches server))
(defn test-context [server name source-file source-line]
  (.testContext server name source-file (int source-line)))
