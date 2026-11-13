(ns servirtium-test
  "Proves the Clojure wrapper drives libservirtium_vcr end-to-end:
  record the response of a throwaway HTTP upstream to a tape, then replay it
  offline. Same libservirtium_vcr the other bindings use, reached through the Java FFM
  binding."
  (:require [clojure.test :refer [deftest is]]
            [clojure.string :as str]
            [servirtium :as vcr])
  (:import [dev.servirtium.vcr Outcome]
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

(defn- start-json-upstream
  "An upstream answering any path with `body` as JSON plus the extra header pairs."
  [body & headers]
  (let [server (HttpServer/create (InetSocketAddress. "127.0.0.1" 0) 0)]
    (.createContext server "/"
      (reify HttpHandler
        (handle [_ ex]
          (let [bytes (.getBytes ^String body)]
            (.add (.getResponseHeaders ex) "Content-Type" "application/json")
            (doseq [[k v] (partition 2 headers)] (.add (.getResponseHeaders ex) k v))
            (.sendResponseHeaders ex 200 (alength bytes))
            (with-open [out (.getResponseBody ex)]
              (.write out bytes))))))
    (.start server)
    server))

(defn- base-of [^HttpServer server] (str "http://127.0.0.1:" (.getPort (.getAddress server))))

(defn- http-get-with-cookie [url]
  (-> (HttpClient/newBuilder) (.version java.net.http.HttpClient$Version/HTTP_1_1) (.build)
      (.send (-> (HttpRequest/newBuilder (URI/create url)) (.header "Cookie" "sid=live") (.build))
             (HttpResponse$BodyHandlers/ofString))))

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
                                      (vec (concat ["target/test-tools/redaction_fixture"] args)))
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
    (let [driver (-> (ProcessBuilder. ^java.util.List ["target/test-tools/diagnostic_fixture" (.baseUrl server)])
                     (.inheritIO) (.start))]
      (is (= 0 (.waitFor driver))))
    (is (.contains (vcr/last-error server false) "owner"))
    (is (.contains (vcr/last-error server false) "scenario.test:123"))
    (is (not (.contains (vcr/diagnostics-json server) "\"retrieved\":1")))
    (is (.contains (vcr/last-error server) "owner"))
    (is (.contains (vcr/diagnostics-json server) "\"retrieved\":0"))
    (is (thrown? dev.servirtium.vcr.VcrException (vcr/assert-no-mismatches server)))
    (vcr/test-context server "next test" "" 0)
    (vcr/assert-no-mismatches server)
    (is (= "[]" (vcr/diagnostics-json server)))))

(deftest named-secrets-round-trip
  (let [dir (Files/createTempDirectory "vcr-secrets-clojure-" (make-array FileAttribute 0))
        tape (str (.resolve dir "tape.md"))
        run (fn [action arg]
              (let [process (-> (ProcessBuilder. ^java.util.List [(if (.isFile (java.io.File. "target/test-tools/secret_fixture")) "target/test-tools/secret_fixture" "../target/test-tools/secret_fixture") action arg]) (.redirectErrorStream true) (.start))
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

(deftest sort-json-keys-with-pretty-json-writes-sorted-pretty-json
  (let [upstream (start-json-upstream "{\"b\":1,\"a\":{\"d\":2,\"c\":3}}")
        tape (Files/createTempFile "servirtium-clj-sort" ".md" (make-array FileAttribute 0))]
    (try
      (with-open [v (vcr/record (str tape) (base-of upstream) {:port 0 :pretty-json 2 :sort-json-keys true})]
        (http-get (str (.baseUrl v) "/doc")))
      (is (.contains (Files/readString tape) "{\n  \"a\": {\n    \"c\": 3,\n    \"d\": 2\n  },\n  \"b\": 1\n}"))
      (finally (.stop upstream 0) (Files/deleteIfExists tape)))))

(deftest sort-json-keys-without-pretty-json-is-refused
  (let [upstream (start-json-upstream "{\"b\":1,\"a\":2}")
        tape (Files/createTempFile "servirtium-clj-refuse" ".md" (make-array FileAttribute 0))]
    (Files/delete tape)
    (try
      (let [rec (vcr/record (str tape) (base-of upstream) {:port 0 :sort-json-keys true})]
        (http-get (str (.baseUrl rec) "/doc"))
        (is (thrown-with-msg? dev.servirtium.vcr.VcrException #"sort_json_keys needs pretty_json" (.close rec)))
        (is (not (Files/exists tape (make-array java.nio.file.LinkOption 0)))))
      (finally (.stop upstream 0) (Files/deleteIfExists tape)))))

(deftest array-and-header-sort-rules-apply-and-a-bad-one-fails-start
  (let [upstream (start-json-upstream "[{\"n\":\"z\"},{\"n\":\"a\"}]" "Allow" "POST, GET")
        tape (Files/createTempFile "servirtium-clj-arrays" ".md" (make-array FileAttribute 0))]
    (try
      (with-open [v (vcr/record (str tape) (base-of upstream)
                      {:port 0 :pretty-json 2 :sort-json-array [["" "n"]] :sort-json-array-at [["/doc" "" "n"]]
                       :sort-response-headers true :sort-header-value ["Allow"]})]
        (http-get (str (.baseUrl v) "/doc")))
      (let [text (Files/readString tape)]
        (is (< (.indexOf text "\"n\": \"a\"") (.indexOf text "\"n\": \"z\"")))
        (is (.contains text "Allow: GET, POST")))
      (is (thrown-with-msg? dev.servirtium.vcr.VcrException #"sortHeaderValue"
            (vcr/record (str tape) (base-of upstream) {:port 0 :sort-header-value [""]})))
      (finally (.stop upstream 0) (Files/deleteIfExists tape)))))

(def ^:private range-tape "core_tests/tapes/playback_range.tape")
(def ^:private range-opts {:port 0 :redact-credentials true :remove-request-header ["User-Agent"]})

(deftest playback-range-skips-early-interactions-and-serves-a-later-one
  (with-open [v (vcr/playback range-tape (assoc range-opts :playback-range [7 -1]))]
    (is (= 8 (.tapeLength v)))
    (is (= 200 (.statusCode (http-get-with-cookie (str (.baseUrl v) "/logout")))))
    (is (= 7 (.lastIndex v)))
    (is (= Outcome/OK (.lastKind v))))
  (with-open [v (vcr/playback range-tape (assoc range-opts :playback-range 7))]
    (http-get-with-cookie (str (.baseUrl v) "/login")) ; interaction 0 is outside the range
    (is (not= Outcome/OK (.lastKind v)))
    (is (str/includes? (.lastError v) "outside the playback range"))))

(deftest playback-range-with-a-bad-range-fails-start
  (is (thrown-with-msg? dev.servirtium.vcr.VcrException #"playbackRange"
        (vcr/playback range-tape {:port 0 :playback-range [99 -1]}))))


;; Volatile values (docs/volatile-values.md): the rules live in the core.
(def ^:private vdir "core_tests/volatile/")

(defn- vdriver [mode base-url]
  (.waitFor (-> (ProcessBuilder. ^java.util.List ["target/test-tools/volatile_fixture" mode base-url])
                (.inheritIO) (.start))))

(defn- start-error [tape opts]
  (try (.close (vcr/playback (str vdir tape) opts)) nil
       (catch dev.servirtium.vcr.VcrException e (.getMessage e))))

(deftest volatile-tape-block-rules-and-report
  (with-open [server (vcr/playback (str vdir "wcf.md") {:pretty-xml 2})]
    (is (= 0 (vdriver "wcf" (.baseUrl server))))
    (is (.contains (vcr/volatile-report server) "binding: {{messageId-1}} = "))))

(deftest volatile-profile-file
  (let [profile (.toString (.normalize (.toAbsolutePath (java.nio.file.Path/of (str vdir "profile.md") (make-array String 0)))))]
    (with-open [server (vcr/playback (str vdir "wcf_plain.md") {:pretty-xml 2 :volatile-profile profile})]
      (is (= 0 (vdriver "wcf" (.baseUrl server)))))))

(deftest volatile-rules-in-code
  (with-open [server (vcr/playback (str vdir "wcf_plain.md")
                       {:pretty-xml 2
                        :volatile-rules [["request body" "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>"]
                                         ["request body" "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/"]
                                         ["request body" "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;"]
                                         ["response body" "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>"]]})]
    (is (= 0 (vdriver "wcf" (.baseUrl server))))))

(deftest volatile-markers
  (with-open [server (vcr/playback (str vdir "wcf_dollar.md") {:pretty-xml 2 :volatile-markers :dollar-curly})]
    (is (= 0 (vdriver "wcf" (.baseUrl server)))))
  (let [e (start-error "wcf_dollar.md" {:pretty-xml 2})]
    (is (and e (.contains e "DollarCurly")))))

(deftest volatile-cases-and-mismatch
  (with-open [server (vcr/playback (str vdir "cases.md"))]
    (is (= 0 (vdriver "cases" (.baseUrl server))))
    (.resetCursor server)
    (is (= 0 (vdriver "cases-mismatch" (.baseUrl server))))
    (is (.contains (vcr/last-error server false) "{{caseId-1}} = 42"))
    (vcr/last-error server true)))

(deftest volatile-bind
  (let [e (start-error "cases_recorded.md" {})]
    (is (and e (.contains e "caseId"))))
  (with-open [server (vcr/playback (str vdir "cases_recorded.md") {:bind {"caseId" "42"}})]
    (is (= 0 (vdriver "cases" (.baseUrl server))))))

(deftest volatile-rule-errors-fail-start
  (let [e1 (start-error "cases.md" {:volatile-rules [["request body" "no placeholder"]]})
        e2 (start-error "cases.md" {:volatile-rules [["response body" "\"caseId\":\"{{id}}\""]]})
        e3 (start-error "cases.md" {:volatile-rules [["x" "a {{b}}" "regex"]]})]
    (is (and e1 (.contains e1 "needs at least one placeholder")))
    (is (and e2 (.contains e2 "conflicts with") (.contains e2 "(tape)")))
    (is (some? e3))))
