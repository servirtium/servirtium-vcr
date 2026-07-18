// Package servirtium provides record/replay HTTP fixtures in the
// Servirtium markdown tape format. Since v2 it is a thin cgo wrapper over
// the Aether VCR core (the aether_vcr_embed_* C-ABI from
// core/embed.ae): all record/replay machinery — markdown
// parse/emit, the HTTP server, request matching, redactions, notes, drift
// detection, static-content bypass, gzip/chunked handling — lives in and is
// maintained as the in-repo core/vcr.ae engine (built on Aether stdlib
// primitives). This package does not reimplement Servirtium in Go.
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
// # One server per port
//
// The Aether VCR is per-listener: N independent Servers can run concurrently
// in one process, one per port, each keyed by its own handle. A fixture's tape, replay
// cursor, mutations, static mounts, and diagnostics are scoped to its handle,
// so two Servers can be alive at once without bleeding into each other.
// Lifecycle is open -> configure(handle) -> start.
package servirtium

/*
// Link against the engine .so from two locations, so both the in-repo build
// and a third-party consumer work: ${SRCDIR}/../core/native is the monorepo
// layout (this module sitting next to core/); ${SRCDIR}/native is the bundled
// copy a consumer gets (go/.package.ae stages the .so there, and it ships in the
// module). ${SRCDIR} expands to this package's real dir at build time — the
// module cache / replace target for a consumer — so the rpath self-locates. A
// -L/-rpath to a non-existent dir is harmless.
#cgo LDFLAGS: -L${SRCDIR}/../core/native -L${SRCDIR}/native -lservirtium_vcr -Wl,-rpath,${SRCDIR}/../core/native -Wl,-rpath,${SRCDIR}/native

#include <stdlib.h>

void*  aether_vcr_embed_open_playback(const char* label, const char* tape_path, const char* host, int port);
void*  aether_vcr_embed_open_playback_url(const char* label, const char* tape_url, const char* host, int port);
void*  aether_vcr_embed_open_record(const char* label, const char* tape_path, const char* upstream_base, const char* host, int port);
int    aether_vcr_embed_start(void* server);
void   aether_vcr_embed_stop(void* server);
char*  aether_vcr_embed_stop_and_flush(void* server, const char* tape_path);
char*  aether_vcr_embed_stop_and_flush_fail_if_changed(void* server, const char* tape_path);
char*  aether_vcr_embed_stop_and_flush_or_check(void* server, const char* tape_path);

int    aether_vcr_embed_port(void* server);
char*  aether_vcr_embed_base_url(void* server, const char* host);
int    aether_vcr_embed_tape_length(void* server);
void   aether_vcr_embed_reset_cursor(void* server);

char*  aether_vcr_embed_last_error(void* server);
int    aether_vcr_embed_last_kind(void* server);
int    aether_vcr_embed_last_index(void* server);
void   aether_vcr_embed_clear_last_error(void* server);

char*  aether_vcr_embed_redact(void* server, int field, const char* pattern, const char* replacement);
char*  aether_vcr_embed_unredact(void* server, int field, const char* pattern, const char* replacement);
char*  aether_vcr_embed_remove_header(void* server, int field, const char* name);
char*  aether_vcr_embed_normalize_whole_tape(void* server, const char* pattern, const char* name);
char*  aether_vcr_embed_redact_whole_tape(void* server, const char* pattern, const char* replacement);
char*  aether_vcr_embed_strict_ignore_common_headers(void* server);
char*  aether_vcr_embed_note(void* server, const char* title, const char* body);
char*  aether_vcr_embed_static_content(void* server, const char* mount_path, const char* fs_dir);
char*  aether_vcr_embed_untaped(void* server, const char* path);
void   aether_vcr_embed_set_strict_headers(void* server, int on);
void   aether_vcr_embed_set_match_json_body(void* server, int on);
void   aether_vcr_embed_set_match_multiple(void* server, int on);
void   aether_vcr_embed_match_header(void* server, const char* name);
void   aether_vcr_embed_indent_code_blocks(void* server);
void   aether_vcr_embed_emphasize_http_verbs(void* server);
void   aether_vcr_embed_clear_redactions(void* server);
void   aether_vcr_embed_clear_unredactions(void* server);
void   aether_vcr_embed_clear_header_removals(void* server);
void   aether_vcr_embed_clear_static_content(void* server);
void   aether_vcr_embed_clear_untaped(void* server);
void   aether_vcr_embed_clear_format_options(void* server);

void   aether_vcr_embed_free_string(char* s);
*/
import "C"

import (
	"fmt"
	"unsafe"
)

// Field selects which block of an interaction a redaction, unredaction, or
// header removal applies to. Values mirror the FIELD_* constants in
// core/vcr.ae.
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
	staticContent  []struct{ mount, dir string }
	untaped        []string
}

// applyBase registers the config shared by both builders: header removals,
// static-content mounts, and untaped paths. The latter two are honored in
// both playback and record mode (the engine wires the static routes either
// way and the record dispatcher checks untaped), so a browser suite can be
// served same-origin from the VCR while recording too — no CORS/OPTIONS noise
// on the tape — matching how it's replayed.
func (b *baseBuilder) applyBase(handle unsafe.Pointer) error {
	for _, hr := range b.headerRemovals {
		cName := C.CString(hr.name)
		res := C.aether_vcr_embed_remove_header(handle, C.int(hr.field), cName)
		C.free(unsafe.Pointer(cName))
		if err := checkErr(res, "RemoveHeader"); err != nil {
			return err
		}
	}
	for _, sc := range b.staticContent {
		cMount, cDir := C.CString(sc.mount), C.CString(sc.dir)
		res := C.aether_vcr_embed_static_content(handle, cMount, cDir)
		C.free(unsafe.Pointer(cMount))
		C.free(unsafe.Pointer(cDir))
		if err := checkErr(res, "StaticContent"); err != nil {
			return err
		}
	}
	for _, p := range b.untaped {
		cPath := C.CString(p)
		res := C.aether_vcr_embed_untaped(handle, cPath)
		C.free(unsafe.Pointer(cPath))
		if err := checkErr(res, "Untaped"); err != nil {
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
	matchJSONBody bool
	matchMultiple bool
	matchHeaders  []string
	unredactions  []replacement
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

// MatchJSONBody opts in to matching request bodies by semantic JSON equality
// (key order / whitespace ignored) instead of byte-for-byte. Non-JSON bodies
// fall back to byte-exact.
func (b *PlaybackBuilder) MatchJSONBody() *PlaybackBuilder { b.matchJSONBody = true; return b }

// MatchMultiple opts in to reusable, order-independent playback: matches any
// recorded interaction (not just the next in sequence) and doesn't consume it —
// for polling/retries or non-deterministic request order.
func (b *PlaybackBuilder) MatchMultiple() *PlaybackBuilder { b.matchMultiple = true; return b }

// MatchHeader matches playback on this specific request header's value
// (ignoring the rest of the recorded header block); repeatable.
func (b *PlaybackBuilder) MatchHeader(name string) *PlaybackBuilder {
	b.matchHeaders = append(b.matchHeaders, name)
	return b
}

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
// tape (Servirtium step 11). Honored in both playback and record mode.
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

func (b *PlaybackBuilder) applyConfig(handle unsafe.Pointer) error {
	if err := b.applyBase(handle); err != nil {
		return err
	}
	if b.strictHeaders {
		C.aether_vcr_embed_set_strict_headers(handle, 1)
	}
	if b.matchJSONBody {
		C.aether_vcr_embed_set_match_json_body(handle, 1)
	}
	if b.matchMultiple {
		C.aether_vcr_embed_set_match_multiple(handle, 1)
	}
	for _, name := range b.matchHeaders {
		cName := C.CString(name)
		C.aether_vcr_embed_match_header(handle, cName)
		C.free(unsafe.Pointer(cName))
	}
	for _, u := range b.unredactions {
		cPat, cRep := C.CString(u.pattern), C.CString(u.replacem)
		res := C.aether_vcr_embed_unredact(handle, C.int(u.field), cPat, cRep)
		C.free(unsafe.Pointer(cPat))
		C.free(unsafe.Pointer(cRep))
		if err := checkErr(res, "Unredact"); err != nil {
			return err
		}
	}
	return nil
}

// Start opens the playback server, applies this fixture's config to its
// handle, then begins serving. The returned Server must be Closed.
func (b *PlaybackBuilder) Start() (*Server, error) {
	cLabel, cTape, cHost := C.CString(b.label), C.CString(b.tapePath), C.CString(b.host)
	defer C.free(unsafe.Pointer(cLabel))
	defer C.free(unsafe.Pointer(cTape))
	defer C.free(unsafe.Pointer(cHost))

	handle := C.aether_vcr_embed_open_playback(cLabel, cTape, cHost, C.int(b.port))
	if handle == nil {
		return nil, fmt.Errorf("vcr playback failed to start for tape %q", b.tapePath)
	}
	if err := b.applyConfig(handle); err != nil {
		C.aether_vcr_embed_stop(handle)
		return nil, err
	}
	if C.aether_vcr_embed_start(handle) < 0 {
		err := drainStartError(handle)
		C.aether_vcr_embed_stop(handle)
		return nil, fmt.Errorf("vcr playback failed to begin serving for tape %q: %s", b.tapePath, err)
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
	upstreamBase        string
	redactions          []replacement
	normalizations      []struct{ pattern, name string }
	wholeTapeRedactions []struct{ pattern, repl string }
	note                *struct{ title, body string }
	indentCodeBlocks    bool
	emphasizeHTTPVerb   bool
	failIfChanged       bool
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

// NormalizeWholeTape rewrites every distinct match of pattern (a regex),
// scanned across all fields and interactions in first-appearance order, to a
// stable {{name-N}} token. The engine mints the token, so a server-generated
// value that recurs — a created entity's id echoed back in a later request
// path — collapses to one token everywhere it appears (identity preserved, so
// it round-trips on playback). Use it for correlated dynamic values; the
// payoff is a byte-identical re-record so FailIfChanged drift detection fires
// only on real upstream changes.
func (b *RecordBuilder) NormalizeWholeTape(pattern, name string) *RecordBuilder {
	b.normalizations = append(b.normalizations, struct{ pattern, name string }{pattern, name})
	return b
}

// RedactWholeTape collapses every match of pattern (a regex) to the constant
// repl, across all fields and interactions. The companion to
// NormalizeWholeTape for a volatile value you never correlate and whose number
// of distinct values can vary run to run — a Date response header — where a
// per-value token would not itself be byte-stable. E.g.
// RedactWholeTape(`Date: .+ GMT`, "Date: <DATE>").
func (b *RecordBuilder) RedactWholeTape(pattern, repl string) *RecordBuilder {
	b.wholeTapeRedactions = append(b.wholeTapeRedactions, struct{ pattern, repl string }{pattern, repl})
	return b
}

// StaticContent serves a path prefix from an on-disk directory instead of
// forwarding upstream (Servirtium step 11). Honored in record mode too, so a
// browser suite can be served same-origin from the record-mode VCR (no
// CORS/OPTIONS noise on the tape), matching how it's replayed.
func (b *RecordBuilder) StaticContent(mountPath, fsDir string) *RecordBuilder {
	b.staticContent = append(b.staticContent, struct{ mount, dir string }{mountPath, fsDir})
	return b
}

// Untaped marks an incidental request path (e.g. "/favicon.ico") the VCR
// answers 404 for without forwarding upstream or recording it.
func (b *RecordBuilder) Untaped(path string) *RecordBuilder {
	b.untaped = append(b.untaped, path)
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

func (b *RecordBuilder) applyConfig(handle unsafe.Pointer) error {
	if err := b.applyBase(handle); err != nil {
		return err
	}
	if b.indentCodeBlocks {
		C.aether_vcr_embed_indent_code_blocks(handle)
	}
	if b.emphasizeHTTPVerb {
		C.aether_vcr_embed_emphasize_http_verbs(handle)
	}
	for _, r := range b.redactions {
		cPat, cRep := C.CString(r.pattern), C.CString(r.replacem)
		res := C.aether_vcr_embed_redact(handle, C.int(r.field), cPat, cRep)
		C.free(unsafe.Pointer(cPat))
		C.free(unsafe.Pointer(cRep))
		if err := checkErr(res, "Redact"); err != nil {
			return err
		}
	}
	for _, n := range b.normalizations {
		cPat, cName := C.CString(n.pattern), C.CString(n.name)
		res := C.aether_vcr_embed_normalize_whole_tape(handle, cPat, cName)
		C.free(unsafe.Pointer(cPat))
		C.free(unsafe.Pointer(cName))
		if err := checkErr(res, "NormalizeWholeTape"); err != nil {
			return err
		}
	}
	for _, w := range b.wholeTapeRedactions {
		cPat, cRep := C.CString(w.pattern), C.CString(w.repl)
		res := C.aether_vcr_embed_redact_whole_tape(handle, cPat, cRep)
		C.free(unsafe.Pointer(cPat))
		C.free(unsafe.Pointer(cRep))
		if err := checkErr(res, "RedactWholeTape"); err != nil {
			return err
		}
	}
	return nil
}

// Start opens the record server, applies this fixture's config to its handle,
// then begins serving. The returned Server must be Closed; Close flushes the
// tape (and returns an error on drift if FailIfChanged was set).
func (b *RecordBuilder) Start() (*Server, error) {
	cLabel := C.CString(b.label)
	cTape := C.CString(b.tapePath)
	cUpstream := C.CString(b.upstreamBase)
	cHost := C.CString(b.host)
	defer C.free(unsafe.Pointer(cLabel))
	defer C.free(unsafe.Pointer(cTape))
	defer C.free(unsafe.Pointer(cUpstream))
	defer C.free(unsafe.Pointer(cHost))

	handle := C.aether_vcr_embed_open_record(cLabel, cTape, cUpstream, cHost, C.int(b.port))
	if handle == nil {
		return nil, fmt.Errorf("vcr record failed to start for tape %q (upstream %q)",
			b.tapePath, b.upstreamBase)
	}
	if err := b.applyConfig(handle); err != nil {
		C.aether_vcr_embed_stop(handle)
		return nil, err
	}

	srv := &Server{handle: handle, host: b.host, tapePath: b.tapePath, recordMode: true, failIfChanged: b.failIfChanged}

	// Stage the note now (open_record cleared the tape) so it attaches to the
	// first interaction the SUT triggers — before serving begins.
	if b.note != nil {
		if err := srv.Note(b.note.title, b.note.body); err != nil {
			C.aether_vcr_embed_stop(handle)
			return nil, err
		}
	}
	if C.aether_vcr_embed_start(handle) < 0 {
		err := drainStartError(handle)
		C.aether_vcr_embed_stop(handle)
		return nil, fmt.Errorf("vcr record failed to begin serving for tape %q: %s", b.tapePath, err)
	}
	return srv, nil
}

func drainStartError(handle unsafe.Pointer) string {
	if err := takeString(C.aether_vcr_embed_last_error(handle)); err != "" {
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
func (s *Server) TapeLength() int { return int(C.aether_vcr_embed_tape_length(s.handle)) }

// LastError is the most-recent dispatch diagnostic; "" when none flagged.
func (s *Server) LastError() string { return takeString(C.aether_vcr_embed_last_error(s.handle)) }

// LastKind is the Outcome of the most-recent dispatch.
func (s *Server) LastKind() Outcome { return Outcome(C.aether_vcr_embed_last_kind(s.handle)) }

// LastIndex is the tape index of the most-recent matched interaction, or -1.
func (s *Server) LastIndex() int { return int(C.aether_vcr_embed_last_index(s.handle)) }

// Note stages a note (record mode) for the next interaction to be captured.
// Call between requests to annotate specific interactions.
func (s *Server) Note(title, body string) error {
	cTitle, cBody := C.CString(title), C.CString(body)
	defer C.free(unsafe.Pointer(cTitle))
	defer C.free(unsafe.Pointer(cBody))
	return checkErr(C.aether_vcr_embed_note(s.handle, cTitle, cBody), "Note")
}

// ResetCursor rewinds the replay cursor to interaction 0 and clears the
// last-* slots.
func (s *Server) ResetCursor() { C.aether_vcr_embed_reset_cursor(s.handle) }

// ClearLastError clears the last-error slot between sub-cases.
func (s *Server) ClearLastError() { C.aether_vcr_embed_clear_last_error(s.handle) }

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
