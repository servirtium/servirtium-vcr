(ns servirtium-test
  "Proves the Clojure wrapper drives the shared native engine end-to-end:
  record the response of a throwaway HTTP upstream to a tape, then replay it
  offline. Same engine the other bindings use, reached through the Java FFM
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
