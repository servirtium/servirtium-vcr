package todobackend

import (
	"os"
	"testing"

	servirtium "github.com/servirtium/servirtium-vcr/go/v2"
)

// TodoBackend browser integration test — RECORD phase (manual, on-demand).
//
// VCR in record mode, forwarding to the live Kotlin/http4k SUT
// (TODOBACKEND_UPSTREAM). The Mocha spec runs in real headless Chrome (Go's own
// github.com/tebeka/selenium) against the VCR; every CRUD call is forwarded
// upstream and recorded, then written to the tape on Commit. The suite must pass
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
		// The Date response header varies on every run, so it is redacted to
		// one constant. The server-minted todo ids stay literal: the browser
		// suite reads them from responses and sends them back, and a
		// volatile-value token a response hands out must be bound by the test
		// (docs/volatile-values.md), which a browser-driven suite cannot do.
		RedactWholeTape(`Date: .+ GMT`, "Date: <DATE>").
		Port(vcrPort).
		Start()
	if err != nil {
		t.Fatalf("start record VCR: %v", err)
	}
	// The tape is written only by the Commit at the end, once the suite has
	// passed; any earlier exit (Fatalf, panic) discards the recording.
	committed := false
	defer func() {
		if !committed {
			vcr.Discard()
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
	committed = true
	if err := vcr.Commit(); err != nil {
		t.Fatalf("commit record VCR: %v", err)
	}
	t.Logf("record: wrote %s", tapePath())
}
