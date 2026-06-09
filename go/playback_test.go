package servirtium_test

import (
	"io"
	"net/http"
	"os"
	"path/filepath"
	"testing"

	servirtium "github.com/servirtium/servirtium-go"
)

// The Aether VCR is handle-based: one server per port, each keyed by its own
// handle (its own tape/cursor/state), so independent servers never collide.
// These tests use Port(0) and, like all Go package tests, run serially by
// default.

func tapePath(name string) string { return filepath.Join("tapes", name) }

// get is a small helper: GET base+path and return status + body.
func get(t *testing.T, base, path string) (int, string) {
	t.Helper()
	resp, err := http.Get(base + path)
	if err != nil {
		t.Fatalf("GET %s: %v", path, err)
	}
	defer resp.Body.Close()
	body, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("read body: %v", err)
	}
	return resp.StatusCode, string(body)
}

func TestPlaybackReplaysRecordedGet(t *testing.T) {
	srv, err := servirtium.Playback(tapePath("single_get.md")).
		Label("replays a recorded GET").
		Port(0).
		Start()
	if err != nil {
		t.Fatal(err)
	}
	defer srv.Close()

	if srv.Port() <= 0 {
		t.Fatalf("expected an OS-assigned port, got %d", srv.Port())
	}
	if srv.TapeLength() != 1 {
		t.Fatalf("expected tape length 1, got %d", srv.TapeLength())
	}

	status, body := get(t, srv.BaseURL(), "/ok")
	if status != http.StatusOK {
		t.Fatalf("expected 200, got %d", status)
	}
	if body != "ok-body" {
		t.Fatalf("expected %q, got %q", "ok-body", body)
	}
	if srv.LastKind() != servirtium.Ok {
		t.Fatalf("expected Ok, got %s (%s)", srv.LastKind(), srv.LastError())
	}
	if srv.LastError() != "" {
		t.Fatalf("expected no error, got %q", srv.LastError())
	}
}

func TestPlaybackFlagsPathMismatch(t *testing.T) {
	srv, err := servirtium.Playback(tapePath("single_get.md")).Port(0).Start()
	if err != nil {
		t.Fatal(err)
	}
	defer srv.Close()

	get(t, srv.BaseURL(), "/nope")

	if srv.LastKind() == servirtium.Ok {
		t.Fatal("expected a mismatch outcome, got Ok")
	}
	if srv.LastError() == "" {
		t.Fatal("expected a mismatch diagnostic, got empty")
	}
}

func TestPlaybackUnredactionLetsScrubbedTapeMatch(t *testing.T) {
	srv, err := servirtium.Playback(tapePath("secure_get.md")).
		StrictHeaders().
		Unredact(servirtium.RequestHeaders, "Bearer REDACTED", "Bearer real-token").
		Port(0).
		Start()
	if err != nil {
		t.Fatal(err)
	}
	defer srv.Close()

	req, _ := http.NewRequest("GET", srv.BaseURL()+"/secure", nil)
	req.Header.Set("Authorization", "Bearer real-token")
	// Go's http.Client sends a default User-Agent; the strict tape only
	// records Authorization, so suppress it to match the recorded block.
	req.Header.Set("User-Agent", "")
	resp, err := http.DefaultClient.Do(req)
	if err != nil {
		t.Fatal(err)
	}
	defer resp.Body.Close()
	body, _ := io.ReadAll(resp.Body)

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("expected 200, got %d (%s)", resp.StatusCode, srv.LastError())
	}
	if string(body) != "secret-ok" {
		t.Fatalf("expected %q, got %q", "secret-ok", string(body))
	}
	if srv.LastKind() != servirtium.Ok {
		t.Fatalf("expected Ok, got %s (%s)", srv.LastKind(), srv.LastError())
	}
}

func TestPlaybackStrictMatchingFlagsMissingHeader(t *testing.T) {
	srv, err := servirtium.Playback(tapePath("secure_get.md")).
		StrictHeaders().
		Unredact(servirtium.RequestHeaders, "Bearer REDACTED", "Bearer real-token").
		Port(0).
		Start()
	if err != nil {
		t.Fatal(err)
	}
	defer srv.Close()

	// No Authorization header at all -> mismatch.
	get(t, srv.BaseURL(), "/secure")

	if srv.LastKind() == servirtium.Ok {
		t.Fatal("expected a mismatch outcome, got Ok")
	}
	if srv.LastError() == "" {
		t.Fatal("expected a mismatch diagnostic, got empty")
	}
}

func TestPlaybackStaticContentServedFromDisk(t *testing.T) {
	dir := t.TempDir()
	if err := os.WriteFile(filepath.Join(dir, "asset.txt"), []byte("static-asset"), 0o644); err != nil {
		t.Fatal(err)
	}

	srv, err := servirtium.Playback(tapePath("single_get.md")).
		StaticContent("/files", dir).
		Port(0).
		Start()
	if err != nil {
		t.Fatal(err)
	}
	defer srv.Close()

	// From disk:
	if _, body := get(t, srv.BaseURL(), "/files/asset.txt"); body != "static-asset" {
		t.Fatalf("expected %q from disk, got %q", "static-asset", body)
	}
	// From the tape (unaffected):
	if _, body := get(t, srv.BaseURL(), "/ok"); body != "ok-body" {
		t.Fatalf("expected %q from tape, got %q", "ok-body", body)
	}
}

func TestPlaybackUntapedReturns404WithoutConsumingTape(t *testing.T) {
	srv, err := servirtium.Playback(tapePath("single_get.md")).
		Untaped("/favicon.ico").
		Port(0).
		Start()
	if err != nil {
		t.Fatal(err)
	}
	defer srv.Close()

	// Untaped path answers 404 without touching the tape cursor:
	if status, _ := get(t, srv.BaseURL(), "/favicon.ico"); status != http.StatusNotFound {
		t.Fatalf("expected 404 for untaped path, got %d", status)
	}
	// The normal recorded interaction still replays (cursor wasn't consumed):
	status, body := get(t, srv.BaseURL(), "/ok")
	if status != http.StatusOK {
		t.Fatalf("expected 200, got %d", status)
	}
	if body != "ok-body" {
		t.Fatalf("expected %q from tape, got %q", "ok-body", body)
	}
}
