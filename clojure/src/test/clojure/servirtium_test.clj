(ns servirtium-test
  "Proves the Clojure wrapper drives libservirtium_vcr end-to-end:
  record the response of a throwaway HTTP upstream to a tape, then replay it
  offline. Same libservirtium_vcr the other bindings use, reached through the Java FFM
  binding."
  (:require [clojure.test :refer [deftest is]]
            [servirtium :as vcr])
  (:import [com.paulhammant.servirtium.vcr Outcome]
           [com.sun.net.httpserver HttpServer HttpHandler]
           [java.net InetSocketAddress URI]
           [java.net.http HttpClient HttpRequest HttpResponse$BodyHandlers]
           [java.nio.file Files]
           [java.nio.file.attribute FileAttribute]))

(defn- http-get [url]
  (-> (HttpClient/newHttpClient)
      (.send (-> (HttpRequest/newBuilder (URI/create url)) (.build))
             (HttpResponse$BodyHandlers/ofString))
      (.body)))

(defn- start-upstream []
  (let [server (HttpServer/create (InetSocketAddress. "127.0.0.1" 0) 0)]
    (.createContext server "/greeting"
      (reify HttpHandler
        (handle [_ ex]
          (let [body (.getBytes "hello-from-upstream")]
            (.add (.getResponseHeaders ex) "Content-Type" "text/plain")
            (.sendResponseHeaders ex 200 (alength body))
            (with-open [out (.getResponseBody ex)]
              (.write out body))))))
    (.start server)
    server))

(deftest record-then-replay-round-trips
  (let [upstream (start-upstream)
        upstream-url (str "http://127.0.0.1:" (.getPort (.getAddress upstream)))
        tape (str (Files/createTempFile "servirtium-clj" ".md"
                                        (make-array FileAttribute 0)))]
    (try
      ;; record (forwards to the live upstream, writes the tape on close)
      (with-open [v (vcr/record tape upstream-url {:port 0})]
        (is (= "hello-from-upstream" (http-get (str (.baseUrl v) "/greeting")))))
      (finally (.stop upstream 0)))

    ;; replay (offline, from the tape just written)
    (with-open [v (vcr/playback tape {:port 0})]
      (is (= "hello-from-upstream" (http-get (str (.baseUrl v) "/greeting"))))
      (is (= Outcome/OK (.lastKind v))))))


(deftest structured-helpers-forward-credentials-and-scrub-tape
  (let [directory (Files/createTempDirectory "vcr-helpers-" (make-array FileAttribute 0))
        run (fn [& args]
              (let [process (-> (ProcessBuilder. ^java.util.List
                                      (vec (concat ["python3" "core_tests/redaction_fixture.py"] args)))
                                (.redirectErrorStream true) (.start))
                    output (slurp (.getInputStream process))]
                (is (= 0 (.waitFor process)) output)
                (.trim output)))]
    (try
      (let [upstream (run "start" (str directory))]
        (with-open [rec (vcr/record (str (.resolve directory "tape.md")) upstream
                          {:redact-header ["Authorization"] :redact-query-param ["password"]
                           :redact-json-field ["secretKey"]})]
          (run "drive" (str directory) (.baseUrl rec))
          (is (= Outcome/OK (.lastKind rec)))))
      (run "check" (str directory))
      (finally
        (with-open [files (Files/list directory)]
          (doseq [file (iterator-seq (.iterator files))] (Files/delete file)))
        (Files/delete directory)))))


(deftest retained-replay-diagnostics
  (with-open [server (vcr/playback "core_tests/diagnostics/playback.md")]
    (vcr/test-context server "Clojure scenario" "scenario.test" 123)
    (let [driver (-> (ProcessBuilder. ^java.util.List ["python3" "core_tests/diagnostic_fixture.py" (.baseUrl server)])
                     (.inheritIO) (.start))]
      (is (= 0 (.waitFor driver))))
    (is (.contains (vcr/last-error server false) "owner"))
    (is (.contains (vcr/last-error server false) "scenario.test:123"))
    (is (not (.contains (vcr/diagnostics-json server) "\"retrieved\":1")))
    (is (.contains (vcr/last-error server) "owner"))
    (is (.contains (vcr/diagnostics-json server) "\"retrieved\":0"))
    (is (thrown? com.paulhammant.servirtium.vcr.VcrException (vcr/assert-no-mismatches server)))
    (vcr/test-context server "next test" "" 0)
    (vcr/assert-no-mismatches server)
    (is (= "[]" (vcr/diagnostics-json server)))))

(deftest named-secrets-round-trip
  (let [dir (Files/createTempDirectory "vcr-secrets-clojure-" (make-array FileAttribute 0))
        tape (str (.resolve dir "tape.md"))
        run (fn [action arg]
              (let [process (-> (ProcessBuilder. ^java.util.List ["python3" (if (.isFile (java.io.File. "core_tests/secret_fixture.py")) "core_tests/secret_fixture.py" "../core_tests/secret_fixture.py") action arg]) (.redirectErrorStream true) (.start))
                    output (slurp (.getInputStream process))]
                (is (= 0 (.waitFor process)) output)
                (.trim output)))
        count (atom 0)]
    (try
      (with-open [rec (vcr/record tape (run "start" (str dir))
                        {:secret-redactor (fn [key request]
                          (when (= key "password")
                            (swap! count inc)
                            (str (.toUpperCase ^String (nth (.split (.path request) "/") 1) java.util.Locale/ROOT) "_PASSWORD")))})]
        (run "drive" (.baseUrl rec)) (is (= 0 @count)))
      (is (= 20 @count)) (run "check" tape)
      (with-open [replay (vcr/playback tape {:secret-resolver (fn [token]
                            (str "pw-" (.toLowerCase (.replace ^String token "_PASSWORD" "") java.util.Locale/ROOT) "&secret"))})]
        (run "drive" (.baseUrl replay)) (vcr/assert-no-mismatches replay))
      (run "check" tape)
      (finally
        (with-open [files (Files/list dir)]
          (doseq [file (iterator-seq (.iterator files))] (Files/delete file)))
        (Files/delete dir)))))
