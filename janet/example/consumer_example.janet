# consumer_example.janet: what a stranger who installed the package writes.
#
# Replays the canonical tape (GET /ok -> "ok-body"), then records through a
# second server and replays what it recorded. Modes (first argument):
#   discovery  (default) the package finds its own bundled native/ library
#   explicit   the library path is pinned with servirtium/set-library!
#   record     record + replay round trip as well
(import servirtium)

(def mode (or (get (dyn :args) 1) "discovery"))

(when (= mode "explicit")
  (servirtium/set-library! (or (os/getenv "EXAMPLE_NATIVE_LIB")
                               (error "explicit mode wants EXAMPLE_NATIVE_LIB"))))

# A bare-bones HTTP GET, so the example needs nothing but Janet.
(defn http-get [base path]
  (def m (peg/match ~(* "http://" (<- (to ":")) ":" (<- (some :d))) base))
  (def conn (net/connect (first m) (get m 1)))
  (net/write conn (string "GET " path " HTTP/1.1\r\nHost: x\r\nConnection: close\r\n\r\n"))
  (def raw @"")
  (while (net/read conn 65536 raw))
  (net/close conn)
  (string/slice raw (+ 4 (string/find "\r\n\r\n" raw))))

(servirtium/with-playback [vcr "tapes/single_get.md"]
  (def body (http-get (servirtium/base-url vcr) "/ok"))
  (assert (= body "ok-body") (string "unexpected body: " body))
  (assert (= :ok (servirtium/last-kind vcr)) (servirtium/last-error vcr))
  (print "replayed: " body " " (servirtium/last-kind vcr)))

(when (= mode "record")
  (def tape (string (or (os/getenv "TMPDIR") "/tmp") "/servirtium_janet_example_" (os/time) ".md"))
  (defer (when (os/stat tape) (os/rm tape))
    # the upstream is just another playback server; the recorder proxies to it
    (servirtium/with-playback [upstream "tapes/single_get.md"]
      (servirtium/with-record [rec tape (servirtium/base-url upstream)]
        (assert (= "ok-body" (http-get (servirtium/base-url rec) "/ok")))))
    (assert (string/find "## Interaction 0: GET /ok" (slurp tape)))
    (servirtium/with-playback [vcr tape]
      (assert (= "ok-body" (http-get (servirtium/base-url vcr) "/ok")))
      (assert (= :ok (servirtium/last-kind vcr)) (servirtium/last-error vcr)))
    (print "recorded and replayed its own tape")))

(print "janet example: ok (" mode ")")
