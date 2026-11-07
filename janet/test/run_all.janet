# run_all.janet: aggregating runner for the Janet binding suite. Runs each test
# file in a fresh janet process (so a crash in one is isolated and its Aether
# upstreams are reaped) and fails if any file fails.
#
#   SERVIRTIUM_VCR_LIB=<abs>/libservirtium_vcr.so janet test/run_all.janet
(def here
  (let [f (dyn :current-file) i (last (string/find-all "/" f))]
    (if i (string/slice f 0 i) ".")))

(def files ["playback.janet" "record.janet"])

(var failed 0)
(each f files
  (print "== running " f " ==")
  (unless (= 0 (os/execute [(dyn :executable) (string here "/" f)] :p))
    (++ failed)
    (eprint "** " f " FAILED **")))

(when (> failed 0)
  (eprint "janet: " failed " test file(s) failed")
  (os/exit 1))
(print "janet: all test files passed")
(flush)
