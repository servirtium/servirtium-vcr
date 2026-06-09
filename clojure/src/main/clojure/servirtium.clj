(ns servirtium
  "Servirtium VCR for Clojure.

  Clojure reaches the shared native engine through the Java FFM binding
  (com.paulhammant.servirtium.vcr) via JVM interop -- there is no second FFI
  here. The Java surface is already friendly: no checked exceptions,
  AutoCloseable (so clojure.core/with-open works), fluent builders, and the
  Outcome enum. These helpers just add a thin idiomatic Clojure layer.

  You can always call the Java API directly:

      (-> (Vcr/playback \"tapes/x.md\") (.port 0) (.start))

  or use the helpers below, which take an optional opts map:

      (with-open [vcr (playback \"tapes/x.md\" {:port 0})]
        (= Outcome/OK (.lastKind vcr)))"
  (:import [com.paulhammant.servirtium.vcr Vcr VcrServer]))

(defn- apply-opts
  "Apply common builder opts (currently :port) to a PlaybackBuilder or
  RecordBuilder, returning the builder for further chaining/start."
  [builder {:keys [port] :as _opts}]
  (when port (.port builder (int port)))
  builder)

(defn playback
  "Start a playback VCR replaying the tape at `tape`, returning the running
  VcrServer (a java.lang.AutoCloseable, so use clojure.core/with-open). `opts`
  is an optional map; :port 0 (the default the engine uses) asks the OS for a
  free port."
  (^VcrServer [tape] (playback tape {}))
  (^VcrServer [tape opts]
   (-> (Vcr/playback tape)
       (apply-opts opts)
       (.start))))

(defn record
  "Start a record VCR forwarding to `upstream`, returning the running VcrServer.
  Closing it (e.g. via with-open) writes the tape to `tape`. `opts` is an
  optional map; :port 0 (the default) asks the OS for a free port."
  (^VcrServer [tape upstream] (record tape upstream {}))
  (^VcrServer [tape upstream opts]
   (-> (Vcr/record tape upstream)
       (apply-opts opts)
       (.start))))
