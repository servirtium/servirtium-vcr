package todobackend

import (
	"os"
	"testing"

	servirtium "github.com/servirtium/servirtium-go"
)

// TodoBackend browser integration test — RECORD phase (manual, on-demand).
//
// VCR in record mode, forwarding to the live Kotlin/http4k SUT
// (TODOBACKEND_UPSTREAM). The Mocha spec runs in real headless Chrome (Go's own
// github.com/tebeka/selenium) against the VCR; every CRUD call is forwarded
// upstream and recorded, then flushed to the tape on Close. The suite must pass
// for the recording to be trustworthy. Mirrors the Python record.py.
//
// Gated on TODOBACKEND_UPSTREAM (t.Skip when unset) so a normal `go test`
// skips it — recording needs the live container + the fixed port. The leaf
// integration/todobackend/.go_record.ae brings the SUT up, sets the env, runs
// this, and tears the container down.
func TestRecordTheCrudSuiteAgainstTheLiveSut(t *testing.T) {
	upstream := os.Getenv("TODOBACKEND_UPSTREAM")
	if upstream == "" {
		t.Skip("TODOBACKEND_UPSTREAM not set; skipping (record needs the live SUT + fixed port)")
	}

	vcr, err := servirtium.Record(tapePath(), upstream).
		StaticContent("/suite", suiteDir()).
		Untaped("/favicon.ico").
		// Whole-tape normalization so a re-record is byte-identical (the tape
		// stays git-clean; drift detection then fires only on real changes):
		//   - the server-minted todo UUID is CORRELATED (POST response body/url,
		//     then echoed in later GET/PATCH/DELETE request paths), so it gets a
		//     stable {{id-N}} token that round-trips on playback;
		//   - the Date response header is uncorrelated + variable-cardinality, so
		//     it's COLLAPSED to one constant.
		NormalizeWholeTape(`[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}`, "id").
		RedactWholeTape(`Date: .+ GMT`, "Date: <DATE>").
		Port(vcrPort).
		Start()
	if err != nil {
		t.Fatalf("start record VCR: %v", err)
	}
	// Close (flushes the tape) happens unconditionally; assertions below decide
	// the test outcome.
	defer func() {
		if cerr := vcr.Close(); cerr != nil {
			t.Errorf("close/flush record VCR: %v", cerr)
		} else {
			t.Logf("record: wrote %s", tapePath())
		}
	}()

	r, err := runSuite(vcr.BaseURL())
	if err != nil {
		t.Fatalf("run suite: %v", err)
	}
	t.Logf("mocha (record): %d passed, %d failed", r.passes, r.failures)
	for _, m := range r.failMsgs {
		t.Logf("  FAIL: %s", m)
	}

	if r.failures != 0 {
		t.Fatalf("suite did not pass against the live SUT; tape NOT trustworthy: %v", r.failMsgs)
	}
	if r.passes <= 0 {
		t.Fatalf("suite produced no passes; tape NOT trustworthy")
	}
}
