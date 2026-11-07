# helpers.janet: shared utilities for the Janet binding's test suite.
#
#   * a tiny assert-style harness (case / eq / truthy / contains / raises)
#   * an HTTP client over Janet's own net/* (no curl dependency)
#   * a throwaway Aether upstream for record-mode tests, plus the shared
#     redaction/secret/diagnostic fixtures built by core_tests/.fixtures.ae
#   * temp paths under the OS temp dir (never into tapes/)

(def here
  (let [f (dyn :current-file)
        i (last (string/find-all "/" f))]
    (os/realpath (if i (string/slice f 0 i) "."))))
(def janet-dir (string here "/.."))
(def tapes-dir (string janet-dir "/tapes"))
(def repo-root (string janet-dir "/.."))
(def tools-dir (string repo-root "/target/test-tools"))

# ---- assertions --------------------------------------------------------------

(var failures 0)

(defn show [e]
  (if (or (string? e) (buffer? e) (number? e) (keyword? e)) (string e) (string/format "%q" e)))

(defn testcase
  "Run one named test case; a raised error is a failure, not an abort."
  [name f]
  (try (f)
    ([e fib]
      (++ failures)
      (eprint "  FAIL [" name "]: " (show e))
      (debug/stacktrace fib e ""))))

(defn eq [got want &opt what]
  (unless (deep= got want)
    (error (string (or what "value") ": expected " (string/format "%q" want)
                   ", got " (string/format "%q" got)))))

(defn truthy [x &opt what]
  (unless x (error (string (or what "condition") ": expected truthy"))))

(defn contains [haystack needle &opt what]
  (unless (string/find needle haystack)
    (error (string (or what "text") ": expected to contain " (string/format "%q" needle)
                   " in:\n" haystack))))

(defn not-contains [haystack needle &opt what]
  (when (string/find needle haystack)
    (error (string (or what "text") ": must NOT contain " (string/format "%q" needle)
                   " in:\n" haystack))))

(defn raises
  "Call f expecting it to raise; returns the raised value."
  [f &opt what]
  (def r (try (do (f) [:no-error]) ([e] [:raised e])))
  (when (= :no-error (first r)) (error (string (or what "call") ": expected an error")))
  (get r 1))

(defn done
  "Finish a test file: print a summary line, exit non-zero on any failure."
  [suite]
  (if (= 0 failures)
    (do (print "janet: " suite " - all cases passed") (os/exit 0))
    (do (eprint "janet: " suite " - " failures " failure(s)") (os/exit 1))))

# ---- temp paths ---------------------------------------------------------------

(math/seedrandom (os/cryptorand 8))

(defn temp-path
  "A unique path under the OS temp dir (nothing is created)."
  [name]
  (string (or (os/getenv "TMPDIR") "/tmp") "/servirtium_janet_"
          (math/floor (* 1e9 (math/random))) "_" name))

(defn read-file [path] (when (os/stat path) (slurp path)))

(defn rm [path] (when (os/stat path) (os/rm path)))

(defn temp-dir [name]
  (def d (temp-path name))
  (os/mkdir d)
  d)

(defn rm-rf [path]
  (when (os/stat path)
    (if (= :directory ((os/stat path) :mode))
      (do (each f (os/dir path) (rm-rf (string path "/" f))) (os/rmdir path))
      (os/rm path))))

# ---- HTTP over net/* -----------------------------------------------------------

(defn- split-base [base]
  (def m (peg/match ~(* "http://" (<- (to ":")) ":" (<- (some :d))) base))
  [(first m) (get m 1)])

(defn- dechunk [raw]
  (def out @"")
  (var rest raw)
  (while (> (length rest) 0)
    (def eol (string/find "\r\n" rest))
    (unless eol (break))
    (def size (scan-number (string "0x" (string/slice rest 0 eol))))
    (when (or (nil? size) (= 0 size)) (break))
    (buffer/push out (string/slice rest (+ eol 2) (+ eol 2 size)))
    (set rest (string/slice rest (+ eol 2 size 2))))
  (string out))

(defn request
  ```
  One HTTP/1.1 request: returns {:status n :headers {lowercase-name value} :body s}.
  `base` is "http://host:port"; `headers` an array of "Name: value" strings.
  ```
  [base method path &named headers body]
  (def [host port] (split-base base))
  (def conn (net/connect host port))
  (def req
    (buffer method " " path " HTTP/1.1\r\nHost: " host ":" port "\r\nConnection: close\r\n"))
  (each h (or headers []) (buffer/push req h "\r\n"))
  (when body
    (buffer/push req "Content-Type: text/plain\r\nContent-Length: " (string (length body)) "\r\n"))
  (buffer/push req "\r\n")
  (when body (buffer/push req body))
  (net/write conn req)
  (def raw @"")
  (while (net/read conn 65536 raw))
  (net/close conn)
  (def sep (string/find "\r\n\r\n" raw))
  (unless sep (error (string "no HTTP response from " base path ": " (string/format "%q" (string raw)))))
  (def head (string/slice raw 0 sep))
  (def body-raw (string/slice raw (+ sep 4)))
  (def lines (string/split "\r\n" head))
  (def status (scan-number (get (string/split " " (first lines)) 1)))
  (def hdrs @{})
  (each l (slice lines 1)
    (def i (string/find ":" l))
    (when i (put hdrs (string/ascii-lower (string/slice l 0 i)) (string/trim (string/slice l (+ i 1))))))
  {:status status
   :headers hdrs
   :body (if (= "chunked" (get hdrs "transfer-encoding")) (dechunk body-raw) body-raw)})

(defn get-body [base path &opt headers]
  ((request base "GET" path :headers headers) :body))

(defn get-status [base path &opt headers]
  ((request base "GET" path :headers headers) :status))

(defn post-body [base path body]
  ((request base "POST" path :body body) :body))

# ---- compiled Aether helpers ------------------------------------------------------

(defn shq [s] (string "'" (string/replace-all "'" "'\\''" s) "'"))

(defn run-tool
  "Run a core_tests fixture through the shell; returns its trimmed stdout, raising on a non-zero exit."
  [tool & args]
  (def out (temp-path "tool.out"))
  (def rc (os/execute ["sh" "-c" (string (shq (string tools-dir "/" tool)) " "
                                          (string/join (map shq args) " ")
                                          " >" (shq out) " 2>&1")] :p))
  (def text (string/trim (or (read-file out) "")))
  (rm out)
  (unless (= 0 rc) (error (string tool " exited " rc ": " text)))
  text)

(defn start-upstream
  ```
  A throwaway Aether HTTP server for record-mode tests. Options: :body,
  :content-type, :extra-headers (struct), :chunked. Returns
  {:base-url :port :last (fn [] [method body]) :close (fn [])}.
  ```
  [&opt opts]
  (default opts {})
  (def port-file (temp-path "port.txt"))
  (def sidecar (temp-path "last.txt"))
  (def body-file (temp-path "body.txt"))
  (def headers-file (temp-path "headers.txt"))
  (spit body-file (get opts :body "upstream-body"))
  (spit headers-file (string/join (seq [[k v] :pairs (get opts :extra-headers {})] (string k ": " v)) "\n"))
  (def proc
    (os/spawn ["sh" "-c" (string "exec " (string/join (map shq [(string tools-dir "/test_upstream") body-file
                                                          (get opts :content-type "text/plain")
                                                          port-file sidecar headers-file
                                                          (if (opts :chunked) "1" "0")]) " ")
                                " >/dev/null 2>&1")] :p))
  (var port nil)
  (for _ 0 200
    (unless port
      (def v (read-file port-file))
      (if (and v (> (length v) 0))
        (set port (scan-number v))
        (os/sleep 0.02))))
  (unless port (error "the Aether upstream did not report a port"))
  {:base-url (string "http://127.0.0.1:" port)
   :port port
   :close (fn []
            (os/proc-kill proc)
            (os/proc-wait proc)
            (each p [port-file sidecar body-file headers-file] (rm p)))
   :last (fn []
           (def v (or (read-file sidecar) ""))
           (def i (string/find "\n" v))
           (if i [(string/slice v 0 i) (string/slice v (+ i 1))] ["" ""]))})
