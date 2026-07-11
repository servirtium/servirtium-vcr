(ns consumer-example
  "Third-party consumer example: drives the INSTALLED servirtium-vcr-clojure jar
  (resolved from ~/.m2) via the `servirtium/playback` fn, replaying the
  canonical tape. The engine .so is discovered zero-config from the transitive
  servirtium-vcr jar resource — no SERVIRTIUM_VCR_LIB, no source tree.

  Run: clojure -J--enable-native-access=ALL-UNNAMED -M -m consumer-example"
  (:require [servirtium :as s]
            [clojure.java.io :as io])
  (:import [com.paulhammant.servirtium.vcr Outcome]
           [java.net URI]
           [java.net.http HttpClient HttpRequest HttpResponse$BodyHandlers]
           [java.nio.file Paths]))

(defn- fail! [msg]
  (binding [*out* *err*] (println "FAIL:" msg))
  (System/exit 1))

(defn- http-get [url]
  (-> (HttpClient/newHttpClient)
      (.send (.build (HttpRequest/newBuilder (URI/create url)))
             (HttpResponse$BodyHandlers/ofString))
      (.body)))

(defn -main [& _args]
  ;; Prove the servirtium namespace loads from the INSTALLED jar, not source.
  (let [src (str (io/resource "servirtium.clj"))]
    (when-not (.contains src ".jar")
      (fail! (str "servirtium loaded from source, not an installed jar: " src)))
    (println "ok: consuming installed clojure jar at" src))

  (let [tape (-> (io/resource "tapes/single_get.md") .toURI Paths/get str)]
    (with-open [vcr (s/playback tape {:port 0})]
      (let [body (http-get (str (.baseUrl vcr) "/ok"))]
        (when-not (= "ok-body" body) (fail! (str "expected 'ok-body', got " (pr-str body))))
        (when-not (= Outcome/OK (.lastKind vcr))
          (fail! (str "expected Outcome/OK, got " (.lastKind vcr) ": " (.lastError vcr)))))))

  (println "PASS[discovery]: consumer replayed the canonical tape from the installed jar")
  (System/exit 0))
