// Third-party consumer example: imports the servirtium-go module and replays
// the canonical tape. The engine .so is resolved via the module's own bundled
// native/ dir (cgo rpath ${SRCDIR}/native) — no SERVIRTIUM_VCR_LIB, and the
// packaged module copy has no core/ sibling, so only the bundled .so can load.
package main

import (
	"fmt"
	"io"
	"net/http"
	"os"
	"path/filepath"

	servirtium "github.com/servirtium/servirtium-go"
)

func fail(msg string) {
	fmt.Fprintln(os.Stderr, "FAIL:", msg)
	os.Exit(1)
}

func main() {
	os.Unsetenv("SERVIRTIUM_VCR_LIB") // a real consumer sets nothing

	wd, err := os.Getwd()
	if err != nil {
		fail(err.Error())
	}
	tape := filepath.Join(wd, "tapes", "single_get.md")

	srv, err := servirtium.Playback(tape).Port(0).Start()
	if err != nil {
		fail("playback failed to start: " + err.Error())
	}
	defer srv.Close()

	resp, err := http.Get(srv.BaseURL() + "/ok")
	if err != nil {
		fail("GET /ok failed: " + err.Error())
	}
	defer resp.Body.Close()
	body, _ := io.ReadAll(resp.Body)

	if string(body) != "ok-body" {
		fail(fmt.Sprintf("expected body 'ok-body', got %q", string(body)))
	}
	if srv.LastKind() != servirtium.Ok {
		fail(fmt.Sprintf("expected Ok, got %s (%s)", srv.LastKind(), srv.LastError()))
	}

	fmt.Println("PASS[discovery]: consumer replayed the canonical tape from the servirtium-go module")
}
