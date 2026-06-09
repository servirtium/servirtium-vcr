package servirtium_test

import (
	"strings"
	"testing"

	servirtium "github.com/servirtium/servirtium-go"
)

// Record-mode breadth: redaction, header removal, notes, drift detection,
// and (critically) that per-handle mutation state does not leak from one
// fixture to the next (each server owns its own handle/state).

func TestRecordRedactsResponseBody(t *testing.T) {
	up := newFakeUpstream()
	defer up.close()
	up.responseBody = "value=secret-token"
	tape := tempTape(t, "rec.md")

	rec, err := servirtium.Record(tape, up.baseURL()).
		Redact(servirtium.ResponseBody, "secret-token", "REDACTED").
		Port(0).
		Start()
	if err != nil {
		t.Fatal(err)
	}
	get(t, rec.BaseURL(), "/x")
	if err := rec.Close(); err != nil {
		t.Fatal(err)
	}

	tapeText := readTape(t, tape)
	if !strings.Contains(tapeText, "REDACTED") {
		t.Fatalf("expected tape to contain REDACTED:\n%s", tapeText)
	}
	if strings.Contains(tapeText, "secret-token") {
		t.Fatalf("tape must not contain the secret:\n%s", tapeText)
	}
}

func TestRecordAttachesNote(t *testing.T) {
	up := newFakeUpstream()
	defer up.close()
	tape := tempTape(t, "rec.md")

	rec, err := servirtium.Record(tape, up.baseURL()).
		Note("Why this exists", "documents the call").
		Port(0).
		Start()
	if err != nil {
		t.Fatal(err)
	}
	get(t, rec.BaseURL(), "/x")
	if err := rec.Close(); err != nil {
		t.Fatal(err)
	}

	tapeText := readTape(t, tape)
	if !strings.Contains(tapeText, "## [Note] Why this exists:") {
		t.Fatalf("expected note heading on tape:\n%s", tapeText)
	}
}

func TestRecordRemovesNamedResponseHeader(t *testing.T) {
	up := newFakeUpstream()
	defer up.close()
	up.extraHeaders["X-Trace-Id"] = "abc123"
	tape1 := tempTape(t, "rec1.md")
	tape2 := tempTape(t, "rec2.md")

	// Phase 1: without removal, the header is captured on the tape.
	rec, err := servirtium.Record(tape1, up.baseURL()).Port(0).Start()
	if err != nil {
		t.Fatal(err)
	}
	get(t, rec.BaseURL(), "/x")
	if err := rec.Close(); err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(readTape(t, tape1), "X-Trace-Id") {
		t.Fatal("phase 1: expected X-Trace-Id on the tape")
	}

	// Phase 2: with removal, it's gone.
	rec2, err := servirtium.Record(tape2, up.baseURL()).
		RemoveHeader(servirtium.ResponseHeaders, "X-Trace-Id").
		Port(0).
		Start()
	if err != nil {
		t.Fatal(err)
	}
	get(t, rec2.BaseURL(), "/x")
	if err := rec2.Close(); err != nil {
		t.Fatal(err)
	}
	if strings.Contains(readTape(t, tape2), "X-Trace-Id") {
		t.Fatalf("phase 2: X-Trace-Id should have been removed:\n%s", readTape(t, tape2))
	}
}

func TestMutationStateDoesNotLeakBetweenFixtures(t *testing.T) {
	up := newFakeUpstream()
	defer up.close()
	tape1 := tempTape(t, "rec1.md")
	tape2 := tempTape(t, "rec2.md")

	// Fixture A registers a redaction for "leak".
	up.responseBody = "leak"
	a, err := servirtium.Record(tape1, up.baseURL()).
		Redact(servirtium.ResponseBody, "leak", "SCRUBBED").
		Port(0).
		Start()
	if err != nil {
		t.Fatal(err)
	}
	get(t, a.BaseURL(), "/x")
	if err := a.Close(); err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(readTape(t, tape1), "SCRUBBED") {
		t.Fatal("fixture A: expected SCRUBBED")
	}

	// Fixture B registers NO redaction; A's must not leak in.
	b, err := servirtium.Record(tape2, up.baseURL()).Port(0).Start()
	if err != nil {
		t.Fatal(err)
	}
	get(t, b.BaseURL(), "/x")
	if err := b.Close(); err != nil {
		t.Fatal(err)
	}
	tape2Text := readTape(t, tape2)
	if !strings.Contains(tape2Text, "leak") {
		t.Fatalf("fixture B: expected the un-redacted body:\n%s", tape2Text)
	}
	if strings.Contains(tape2Text, "SCRUBBED") {
		t.Fatalf("fixture B: A's redaction leaked:\n%s", tape2Text)
	}
}

func TestFailIfChangedReturnsErrorOnDrift(t *testing.T) {
	up := newFakeUpstream()
	defer up.close()
	tape := tempTape(t, "rec.md")

	// First record creates the tape — no drift, no error.
	up.responseBody = "v1"
	first, err := servirtium.Record(tape, up.baseURL()).FailIfChanged().Port(0).Start()
	if err != nil {
		t.Fatal(err)
	}
	get(t, first.BaseURL(), "/x")
	if err := first.Close(); err != nil {
		t.Fatalf("first record should not drift: %v", err)
	}

	// Re-record with a changed upstream — Close must return an error, while
	// still writing the new tape for git diff.
	up.responseBody = "v2-changed"
	second, err := servirtium.Record(tape, up.baseURL()).FailIfChanged().Port(0).Start()
	if err != nil {
		t.Fatal(err)
	}
	get(t, second.BaseURL(), "/x")
	if err := second.Close(); err == nil {
		t.Fatal("expected a drift error from Close, got nil")
	}
	if !strings.Contains(readTape(t, tape), "v2-changed") {
		t.Fatal("drift: the new tape should still be written for git diff")
	}
}
