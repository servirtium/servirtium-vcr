package todobackend

import (
	"testing"

	servirtium "github.com/servirtium/servirtium-go"
)

// TodoBackend browser integration test — PLAYBACK phase (the CI artifact).
//
// Replays the committed CRUD tape through a Servirtium VCR and runs the real
// TodoBackend Mocha spec against it in real headless Chrome (Go's own
// github.com/tebeka/selenium WebDriver client). No SUT, no network — the whole
// CRUD conversation comes off the tape. Mirrors the Python playback_test.py.
//
// Run via the leaf integration/todobackend/.go_playback.ae, or directly with
// the working dir at integration/todobackend/go:
//
//	SERVIRTIUM_VCR_LIB=../../../core/native/libservirtium_vcr.so \
//	  go test -run TestMochaSuitePassesOffTheTape -v
func TestMochaSuitePassesOffTheTape(t *testing.T) {
	vcr, err := servirtium.Playback(tapePath()).
		StaticContent("/suite", suiteDir()).
		Untaped("/favicon.ico").
		Port(vcrPort).
		Start()
	if err != nil {
		t.Fatalf("start playback VCR: %v", err)
	}
	defer vcr.Close()

	r, err := runSuite(vcr.BaseURL())
	if err != nil {
		t.Fatalf("run suite: %v", err)
	}
	t.Logf("mocha (playback): %d passed, %d failed", r.passes, r.failures)
	for _, m := range r.failMsgs {
		t.Logf("  FAIL: %s", m)
	}

	if r.failures != 0 {
		t.Fatalf("mocha reported failures: %v", r.failMsgs)
	}
	if r.passes <= 0 {
		t.Fatalf("mocha reported no passes")
	}
}
