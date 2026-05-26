// Package servirtium provides record/replay HTTP fixtures in the
// Servirtium markdown tape format. Since v2 it is a thin cgo wrapper over
// the Aether VCR core (the aether_vcr_embed_* C-ABI from
// std/http/server/vcr/embed.ae): all record/replay machinery — markdown
// parse/emit, the HTTP server, request matching, redactions, notes, drift
// detection, static-content bypass, gzip/chunked handling — lives in and is
// maintained as the Aether standard library. This package does not
// reimplement Servirtium in Go.
//
// You point your system-under-test at a local base URL. In playback it
// replays a recorded markdown tape (no network); in record it forwards to
// the real upstream, returns the live response, and writes the tape on
// Close. Same tape, both directions.
//
//	srv, err := servirtium.Playback("tapes/my_api.md").Port(0).Start()
//	if err != nil { t.Fatal(err) }
//	defer srv.Close()
//	resp, _ := http.Get(srv.BaseURL() + "/api/v1/countries")
//	// optional: assert a clean match
//	if srv.LastKind() != servirtium.Ok { t.Fatal(srv.LastError()) }
//
// # One server per process
//
// The Aether VCR is one active server per process in v1: its tape, replay
// cursor, mutation, static-mount, and diagnostic state are process-global.
// You cannot run two Servers simultaneously in one process. Run tests
// SERIALLY — do NOT call t.Parallel(). Start() resets all process-global
// mutation/strict/format state first, so a setting from a prior fixture
// never leaks forward, even within one process.
package servirtium

/*
#cgo LDFLAGS: -L${SRCDIR}/../core/native -lservirtium_vcr -Wl,-rpath,${SRCDIR}/../core/native

#include <stdlib.h>

void*  aether_vcr_embed_start_playback(const char* label, const char* tape_path, const char* host, int port);
void*  aether_vcr_embed_start_record(const char* label, const char* tape_path, const char* upstream_base, const char* host, int port);
void   aether_vcr_embed_stop(void* server);
char*  aether_vcr_embed_stop_and_flush(void* server, const char* tape_path);
char*  aether_vcr_embed_stop_and_flush_fail_if_changed(void* server, const char* tape_path);

int    aether_vcr_embed_port(void* server);
char*  aether_vcr_embed_base_url(void* server, const char* host);
int    aether_vcr_embed_tape_length(void);
void   aether_vcr_embed_reset_cursor(void);

char*  aether_vcr_embed_last_error(void);
int    aether_vcr_embed_last_kind(void);
int    aether_vcr_embed_last_index(void);
void   aether_vcr_embed_clear_last_error(void);

char*  aether_vcr_embed_redact(int field, const char* pattern, const char* replacement);
char*  aether_vcr_embed_unredact(int field, const char* pattern, const char* replacement);
char*  aether_vcr_embed_remove_header(int field, const char* name);
char*  aether_vcr_embed_note(const char* title, const char* body);
char*  aether_vcr_embed_static_content(const char* mount_path, const char* fs_dir);
char*  aether_vcr_embed_untaped(const char* path);
void   aether_vcr_embed_set_strict_headers(int on);
void   aether_vcr_embed_indent_code_blocks(void);
void   aether_vcr_embed_emphasize_http_verbs(void);
void   aether_vcr_embed_clear_redactions(void);
void   aether_vcr_embed_clear_unredactions(void);
void   aether_vcr_embed_clear_header_removals(void);
void   aether_vcr_embed_clear_static_content(void);
void   aether_vcr_embed_clear_untaped(void);
void   aether_vcr_embed_clear_format_options(void);

void   aether_vcr_embed_free_string(char* s);
*/
import "C"

import (
	"fmt"
	"unsafe"
)

// Field selects which block of an interaction a redaction, unredaction, or
// header removal applies to. Values mirror the FIELD_* constants in
// std/http/server/vcr/module.ae.
type Field int

const (
	Path            Field = 1
	ResponseBody    Field = 2
	RequestHeaders  Field = 3
	RequestBody     Field = 4
	ResponseHeaders Field = 5
)

// Outcome is the per-dispatch result drained after a request. Values mirror
// the VCR_KIND_* constants on the Aether side.
type Outcome int

const (
	Ok               Outcome = 0
	PathOrMethodDiff Outcome = 1
	HeaderMissing    Outcome = 2
	HeaderValueDiff  Outcome = 3
	HeaderUnexpected Outcome = 4
	TapeExhausted    Outcome = 5
	BodyDiff         Outcome = 6
	RecordError      Outcome = 7
)

func (o Outcome) String() string {
	switch o {
	case Ok:
		return "Ok"
	case PathOrMethodDiff:
		return "PathOrMethodDiff"
	case HeaderMissing:
		return "HeaderMissing"
	case HeaderValueDiff:
		return "HeaderValueDiff"
	case HeaderUnexpected:
		return "HeaderUnexpected"
	case TapeExhausted:
		return "TapeExhausted"
	case BodyDiff:
		return "BodyDiff"
	case RecordError:
		return "RecordError"
	default:
		return fmt.Sprintf("Outcome(%d)", int(o))
	}
}

// ---- string ownership ------------------------------------------------------

// takeString marshals a caller-owned native char* into a Go string and frees
// it via aether_vcr_embed_free_string, per the ABI's ownership rule. Returns
// "" for a NULL pointer.
func takeString(ptr *C.char) string {
	if ptr == nil {
		return ""
	}
	defer C.aether_vcr_embed_free_string(ptr)
	return C.GoString(ptr)
}

// checkErr turns a char*-returning mutation result ("" on success, else an
// error string) into a Go error.
func checkErr(ptr *C.char, op string) error {
	if msg := takeString(ptr); msg != "" {
		return fmt.Errorf("vcr %s failed: %s", op, msg)
	}
	return nil
}

// resetGlobalState wipes all process-global mutation/format/strict state so a
// previous fixture's settings can't leak into this one (v1 one-server-per-
// process has no per-handle state). Called first by every Start().
//
// A staged-but-unconsumed note is reset core-side when start_* (re)loads the
// tape, so there's nothing to clear here.
func resetGlobalState() {
	C.aether_vcr_embed_clear_redactions()
	C.aether_vcr_embed_clear_unredactions()
	C.aether_vcr_embed_clear_header_removals()
	C.aether_vcr_embed_clear_static_content()
	C.aether_vcr_embed_clear_untaped()
	C.aether_vcr_embed_clear_format_options()
	C.aether_vcr_embed_set_strict_headers(0)
	C.aether_vcr_embed_clear_last_error()
}

// ---- shared builder fields -------------------------------------------------

type headerRemoval struct {
	field Field
	name  string
}

type replacement struct {
	field             Field
	pattern, replacem string
}

type baseBuilder struct {
	tapePath       string
	host           string
	port           int
	label          string
	headerRemovals []headerRemoval
}

// applyHeaderRemovals registers the accumulated header removals; shared by
// both builders.
func (b *baseBuilder) applyHeaderRemovals() error {
	for _, hr := range b.headerRemovals {
		cName := C.CString(hr.name)
		res := C.aether_vcr_embed_remove_header(C.int(hr.field), cName)
		C.free(unsafe.Pointer(cName))
		if err := checkErr(res, "RemoveHeader"); err != nil {
			return err
		}
	}
	return nil
}

// ---- Playback --------------------------------------------------------------

// Playback returns a builder that replays a Servirtium markdown tape from
// disk. Configure it fluently, then call Start.
func Playback(tapePath string) *PlaybackBuilder {
	return &PlaybackBuilder{baseBuilder: baseBuilder{tapePath: tapePath, host: "127.0.0.1"}}
}

// PlaybackBuilder configures and starts a playback VCR server.
type PlaybackBuilder struct {
	baseBuilder
	strictHeaders bool
	unredactions  []replacement
	staticContent []struct{ mount, dir string }
	untaped       []string
}

// Host binds the host. Defaults to 127.0.0.1.
func (b *PlaybackBuilder) Host(host string) *PlaybackBuilder { b.host = host; return b }

// Port binds the port. 0 (the default) asks the OS for a free port.
func (b *PlaybackBuilder) Port(port int) *PlaybackBuilder { b.port = port; return b }

// Label sets a human-facing label for logs/diagnostics (not a state key).
func (b *PlaybackBuilder) Label(label string) *PlaybackBuilder { b.label = label; return b }

// StrictHeaders compares the SUT's request headers against the recorded
// block on every interaction (Servirtium step 10), surfacing mismatches via
// Server.LastError.
func (b *PlaybackBuilder) StrictHeaders() *PlaybackBuilder { b.strictHeaders = true; return b }

// RemoveHeader removes a header by name from the given block (case-insensitive).
func (b *PlaybackBuilder) RemoveHeader(field Field, name string) *PlaybackBuilder {
	b.headerRemovals = append(b.headerRemovals, headerRemoval{field, name})
	return b
}

// Unredact replaces a redacted placeholder in the recorded expectation with
// the real value the live SUT sends, so a committed (scrubbed) tape still
// matches.
func (b *PlaybackBuilder) Unredact(field Field, pattern, repl string) *PlaybackBuilder {
	b.unredactions = append(b.unredactions, replacement{field, pattern, repl})
	return b
}

// StaticContent serves a path prefix from an on-disk directory instead of the
// tape (Servirtium step 11).
func (b *PlaybackBuilder) StaticContent(mountPath, fsDir string) *PlaybackBuilder {
	b.staticContent = append(b.staticContent, struct{ mount, dir string }{mountPath, fsDir})
	return b
}

// Untaped marks an incidental request path (e.g. "/favicon.ico") the VCR
// answers 404 for without consuming the tape cursor, so a normal interaction
// recorded after it still matches.
func (b *PlaybackBuilder) Untaped(path string) *PlaybackBuilder {
	b.untaped = append(b.untaped, path)
	return b
}

func (b *PlaybackBuilder) applyConfig() error {
	if err := b.applyHeaderRemovals(); err != nil {
		return err
	}
	if b.strictHeaders {
		C.aether_vcr_embed_set_strict_headers(1)
	}
	for _, u := range b.unredactions {
		cPat, cRep := C.CString(u.pattern), C.CString(u.replacem)
		res := C.aether_vcr_embed_unredact(C.int(u.field), cPat, cRep)
		C.free(unsafe.Pointer(cPat))
		C.free(unsafe.Pointer(cRep))
		if err := checkErr(res, "Unredact"); err != nil {
			return err
		}
	}
	for _, sc := range b.staticContent {
		cMount, cDir := C.CString(sc.mount), C.CString(sc.dir)
		res := C.aether_vcr_embed_static_content(cMount, cDir)
		C.free(unsafe.Pointer(cMount))
		C.free(unsafe.Pointer(cDir))
		if err := checkErr(res, "StaticContent"); err != nil {
			return err
		}
	}
	for _, p := range b.untaped {
		cPath := C.CString(p)
		res := C.aether_vcr_embed_untaped(cPath)
		C.free(unsafe.Pointer(cPath))
		if err := checkErr(res, "Untaped"); err != nil {
			return err
		}
	}
	return nil
}

// Start resets process-global state, applies this fixture's config, and
// starts the playback server. The returned Server must be Closed.
func (b *PlaybackBuilder) Start() (*Server, error) {
	resetGlobalState()
	if err := b.applyConfig(); err != nil {
		return nil, err
	}

	cLabel, cTape, cHost := C.CString(b.label), C.CString(b.tapePath), C.CString(b.host)
	defer C.free(unsafe.Pointer(cLabel))
	defer C.free(unsafe.Pointer(cTape))
	defer C.free(unsafe.Pointer(cHost))

	handle := C.aether_vcr_embed_start_playback(cLabel, cTape, cHost, C.int(b.port))
	if handle == nil {
		return nil, fmt.Errorf("vcr playback failed to start for tape %q: %s", b.tapePath, drainStartError())
	}
	return &Server{handle: handle, host: b.host, tapePath: b.tapePath}, nil
}

// ---- Record ----------------------------------------------------------------

// Record returns a builder that records live interactions: it forwards each
// request to upstreamBase, returns the real response to the SUT, and captures
// the exchange. The tape is written to tapePath when the Server is Closed.
func Record(tapePath, upstreamBase string) *RecordBuilder {
	return &RecordBuilder{baseBuilder: baseBuilder{tapePath: tapePath, host: "127.0.0.1"}, upstreamBase: upstreamBase}
}

// RecordBuilder configures and starts a record VCR server.
type RecordBuilder struct {
	baseBuilder
	upstreamBase      string
	redactions        []replacement
	note              *struct{ title, body string }
	indentCodeBlocks  bool
	emphasizeHTTPVerb bool
	failIfChanged     bool
}

// Host binds the host. Defaults to 127.0.0.1.
func (b *RecordBuilder) Host(host string) *RecordBuilder { b.host = host; return b }

// Port binds the port. 0 (the default) asks the OS for a free port.
func (b *RecordBuilder) Port(port int) *RecordBuilder { b.port = port; return b }

// Label sets a human-facing label for logs/diagnostics (not a state key).
func (b *RecordBuilder) Label(label string) *RecordBuilder { b.label = label; return b }

// RemoveHeader removes a header by name from the given block (case-insensitive).
func (b *RecordBuilder) RemoveHeader(field Field, name string) *RecordBuilder {
	b.headerRemovals = append(b.headerRemovals, headerRemoval{field, name})
	return b
}

// Redact scrubs a value out of the given field before it lands on the tape.
func (b *RecordBuilder) Redact(field Field, pattern, repl string) *RecordBuilder {
	b.redactions = append(b.redactions, replacement{field, pattern, repl})
	return b
}

// Note attaches a note to the first recorded interaction (Servirtium step 9).
// For notes on later interactions, call Server.Note on the running server
// between requests.
func (b *RecordBuilder) Note(title, body string) *RecordBuilder {
	b.note = &struct{ title, body string }{title, body}
	return b
}

// IndentCodeBlocks emits code blocks as 4-space-indented text instead of fences.
func (b *RecordBuilder) IndentCodeBlocks() *RecordBuilder { b.indentCodeBlocks = true; return b }

// EmphasizeHTTPVerbs emits the HTTP method emphasized (e.g. *GET*) in headings.
func (b *RecordBuilder) EmphasizeHTTPVerbs() *RecordBuilder { b.emphasizeHTTPVerb = true; return b }

// FailIfChanged makes Close still write the freshly recorded tape but return
// an error if it differs from the on-disk one — the Servirtium step-4 drift
// contract, so a normal git diff shows the change and CI fails loudly.
func (b *RecordBuilder) FailIfChanged() *RecordBuilder { b.failIfChanged = true; return b }

func (b *RecordBuilder) applyConfig() error {
	if err := b.applyHeaderRemovals(); err != nil {
		return err
	}
	if b.indentCodeBlocks {
		C.aether_vcr_embed_indent_code_blocks()
	}
	if b.emphasizeHTTPVerb {
		C.aether_vcr_embed_emphasize_http_verbs()
	}
	for _, r := range b.redactions {
		cPat, cRep := C.CString(r.pattern), C.CString(r.replacem)
		res := C.aether_vcr_embed_redact(C.int(r.field), cPat, cRep)
		C.free(unsafe.Pointer(cPat))
		C.free(unsafe.Pointer(cRep))
		if err := checkErr(res, "Redact"); err != nil {
			return err
		}
	}
	// NOTE: the staged note is applied *after* start_record — load_record
	// clears the tape (and the pending note) as it binds, so staging it
	// pre-start would be wiped. See Start.
	return nil
}

// Start resets process-global state, applies this fixture's config, and
// starts the record server. The returned Server must be Closed; Close flushes
// the tape (and returns an error on drift if FailIfChanged was set).
func (b *RecordBuilder) Start() (*Server, error) {
	resetGlobalState()
	if err := b.applyConfig(); err != nil {
		return nil, err
	}

	cLabel := C.CString(b.label)
	cTape := C.CString(b.tapePath)
	cUpstream := C.CString(b.upstreamBase)
	cHost := C.CString(b.host)
	defer C.free(unsafe.Pointer(cLabel))
	defer C.free(unsafe.Pointer(cTape))
	defer C.free(unsafe.Pointer(cUpstream))
	defer C.free(unsafe.Pointer(cHost))

	handle := C.aether_vcr_embed_start_record(cLabel, cTape, cUpstream, cHost, C.int(b.port))
	if handle == nil {
		return nil, fmt.Errorf("vcr record failed to start for tape %q (upstream %q): %s",
			b.tapePath, b.upstreamBase, drainStartError())
	}

	srv := &Server{handle: handle, host: b.host, tapePath: b.tapePath, recordMode: true, failIfChanged: b.failIfChanged}

	// Stage the note now (after load_record cleared the tape) so it attaches
	// to the first interaction the SUT triggers.
	if b.note != nil {
		if err := srv.Note(b.note.title, b.note.body); err != nil {
			srv.Close()
			return nil, err
		}
	}
	return srv, nil
}

func drainStartError() string {
	if err := takeString(C.aether_vcr_embed_last_error()); err != "" {
		return err
	}
	return "(no detail; check tape path and port availability)"
}

// ---- Server ----------------------------------------------------------------

// Server is a running VCR server. Close it to stop; in record mode Close also
// flushes the captured tape to disk.
type Server struct {
	handle        unsafe.Pointer
	host          string
	tapePath      string
	recordMode    bool
	failIfChanged bool
	baseURL       string
}

// Port reports the OS-resolved port the server is listening on.
func (s *Server) Port() int { return int(C.aether_vcr_embed_port(s.handle)) }

// BaseURL is the base URL the SUT should target, e.g. http://127.0.0.1:54213.
func (s *Server) BaseURL() string {
	if s.baseURL == "" {
		cHost := C.CString(s.host)
		s.baseURL = takeString(C.aether_vcr_embed_base_url(s.handle, cHost))
		C.free(unsafe.Pointer(cHost))
	}
	return s.baseURL
}

// TapeLength reports tape entries (playback) or interactions captured so far
// (record).
func (s *Server) TapeLength() int { return int(C.aether_vcr_embed_tape_length()) }

// LastError is the most-recent dispatch diagnostic; "" when none flagged.
func (s *Server) LastError() string { return takeString(C.aether_vcr_embed_last_error()) }

// LastKind is the Outcome of the most-recent dispatch.
func (s *Server) LastKind() Outcome { return Outcome(C.aether_vcr_embed_last_kind()) }

// LastIndex is the tape index of the most-recent matched interaction, or -1.
func (s *Server) LastIndex() int { return int(C.aether_vcr_embed_last_index()) }

// Note stages a note (record mode) for the next interaction to be captured.
// Call between requests to annotate specific interactions.
func (s *Server) Note(title, body string) error {
	cTitle, cBody := C.CString(title), C.CString(body)
	defer C.free(unsafe.Pointer(cTitle))
	defer C.free(unsafe.Pointer(cBody))
	return checkErr(C.aether_vcr_embed_note(cTitle, cBody), "Note")
}

// ResetCursor rewinds the replay cursor to interaction 0 and clears the
// last-* slots.
func (s *Server) ResetCursor() { C.aether_vcr_embed_reset_cursor() }

// ClearLastError clears the last-error slot between sub-cases.
func (s *Server) ClearLastError() { C.aether_vcr_embed_clear_last_error() }

// Close stops the server. In record mode it also flushes the tape to disk and
// returns an error on drift if FailIfChanged was set. Close is idempotent.
func (s *Server) Close() error {
	if s.handle == nil {
		return nil
	}
	h := s.handle
	s.handle = nil

	if !s.recordMode {
		C.aether_vcr_embed_stop(h)
		return nil
	}

	cTape := C.CString(s.tapePath)
	defer C.free(unsafe.Pointer(cTape))
	var res *C.char
	if s.failIfChanged {
		res = C.aether_vcr_embed_stop_and_flush_fail_if_changed(h, cTape)
	} else {
		res = C.aether_vcr_embed_stop_and_flush(h, cTape)
	}
	if msg := takeString(res); msg != "" {
		return fmt.Errorf("%s", msg)
	}
	return nil
}
