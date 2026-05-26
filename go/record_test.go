package servirtium_test

import (
	"io"
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"strings"
	"sync"
	"testing"

	servirtium "github.com/servirtium/servirtium-go"
)

// fakeUpstream is a throwaway HTTP upstream for record-mode tests. It returns
// a configurable body plus extra response headers, and captures the last
// request it saw so tests can assert what the VCR forwarded. Content-Length
// is set by net/http automatically (no chunking) unless chunked is true.
type fakeUpstream struct {
	server *httptest.Server

	mu           sync.Mutex
	responseBody string
	contentType  string
	extraHeaders map[string]string
	chunked      bool

	lastMethod string
	lastBody   string
}

func newFakeUpstream() *fakeUpstream {
	u := &fakeUpstream{
		responseBody: "upstream-body",
		contentType:  "text/plain",
		extraHeaders: map[string]string{},
	}
	u.server = httptest.NewServer(http.HandlerFunc(u.handle))
	return u
}

func (u *fakeUpstream) baseURL() string { return u.server.URL }
func (u *fakeUpstream) close()          { u.server.Close() }

func (u *fakeUpstream) handle(w http.ResponseWriter, r *http.Request) {
	u.mu.Lock()
	defer u.mu.Unlock()

	body, _ := io.ReadAll(r.Body)
	u.lastMethod = r.Method
	u.lastBody = string(body)

	w.Header().Set("Content-Type", u.contentType)
	for k, v := range u.extraHeaders {
		w.Header().Set(k, v)
	}
	payload := []byte(u.responseBody)
	if !u.chunked {
		// Setting Content-Length keeps the response from being chunked.
		w.Header().Set("Content-Length", itoa(len(payload)))
	}
	// When chunked, deliberately do NOT set Content-Length: net/http then
	// replies with Transfer-Encoding: chunked, exercising the Aether client
	// de-chunking path (ae >= 0.183.0) — the recorder must store the decoded
	// payload, not the chunk framing.
	w.WriteHeader(http.StatusOK)
	_, _ = w.Write(payload)
}

func itoa(n int) string {
	if n == 0 {
		return "0"
	}
	var b [20]byte
	i := len(b)
	for n > 0 {
		i--
		b[i] = byte('0' + n%10)
		n /= 10
	}
	return string(b[i:])
}

func tempTape(t *testing.T, name string) string {
	t.Helper()
	return filepath.Join(t.TempDir(), name)
}

func readTape(t *testing.T, path string) string {
	t.Helper()
	data, err := os.ReadFile(path)
	if err != nil {
		t.Fatalf("read tape %s: %v", path, err)
	}
	return string(data)
}

func TestRecordThenReplaysSameInteraction(t *testing.T) {
	up := newFakeUpstream()
	defer up.close()
	up.responseBody = "hello-from-upstream"
	up.chunked = true // exercise de-chunking on the record path
	tape := tempTape(t, "rec.md")

	// ---- record ----
	rec, err := servirtium.Record(tape, up.baseURL()).Port(0).Start()
	if err != nil {
		t.Fatal(err)
	}
	_, body := get(t, rec.BaseURL(), "/greeting")
	if body != "hello-from-upstream" {
		t.Fatalf("recorded body: expected %q, got %q", "hello-from-upstream", body)
	}
	if err := rec.Close(); err != nil { // flushes the tape
		t.Fatalf("close (flush): %v", err)
	}
	if _, err := os.Stat(tape); err != nil {
		t.Fatalf("record-mode close should write the tape: %v", err)
	}

	// ---- replay (offline) ----
	play, err := servirtium.Playback(tape).Port(0).Start()
	if err != nil {
		t.Fatal(err)
	}
	defer play.Close()

	_, replayed := get(t, play.BaseURL(), "/greeting")
	if replayed != "hello-from-upstream" {
		t.Fatalf("replayed body: expected %q, got %q", "hello-from-upstream", replayed)
	}
	if play.LastKind() != servirtium.Ok {
		t.Fatalf("expected Ok, got %s (%s)", play.LastKind(), play.LastError())
	}
}

func TestRecordAndReplayPostWithBody(t *testing.T) {
	up := newFakeUpstream()
	defer up.close()
	up.responseBody = "created"
	tape := tempTape(t, "rec.md")

	rec, err := servirtium.Record(tape, up.baseURL()).Port(0).Start()
	if err != nil {
		t.Fatal(err)
	}
	resp, err := http.Post(rec.BaseURL()+"/submit", "text/plain", strings.NewReader("ping"))
	if err != nil {
		t.Fatal(err)
	}
	body, _ := io.ReadAll(resp.Body)
	resp.Body.Close()
	if string(body) != "created" {
		t.Fatalf("expected %q, got %q", "created", string(body))
	}
	if up.lastMethod != "POST" {
		t.Fatalf("upstream should have seen POST, saw %q", up.lastMethod)
	}
	if err := rec.Close(); err != nil {
		t.Fatalf("close: %v", err)
	}

	// Replay the same POST offline.
	play, err := servirtium.Playback(tape).Port(0).Start()
	if err != nil {
		t.Fatal(err)
	}
	defer play.Close()
	resp2, err := http.Post(play.BaseURL()+"/submit", "text/plain", strings.NewReader("ping"))
	if err != nil {
		t.Fatal(err)
	}
	body2, _ := io.ReadAll(resp2.Body)
	resp2.Body.Close()
	if string(body2) != "created" {
		t.Fatalf("replayed: expected %q, got %q", "created", string(body2))
	}
	if play.LastKind() != servirtium.Ok {
		t.Fatalf("expected Ok, got %s (%s)", play.LastKind(), play.LastError())
	}
}
