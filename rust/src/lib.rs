//! Record/replay for HTTP service tests, in the [Servirtium] markdown tape
//! format — for Rust.
//!
//! You point your system-under-test at a local URL. In **playback** it
//! replays a recorded markdown tape (no network); in **record** it forwards
//! to the real service, returns the live response, and writes the tape. Same
//! tape, both directions.
//!
//! ```no_run
//! use servirtium::Vcr;
//!
//! let vcr = Vcr::playback("tapes/climate_api.md").port(0).start().unwrap();
//! let body: String = ureq::get(&format!("{}/api/v1/countries", vcr.base_url()))
//!     .call().unwrap().into_string().unwrap();
//! assert_eq!(servirtium::Outcome::Ok, vcr.last_kind());
//! // `vcr` stops on drop.
//! ```
//!
//! Since **2.0** this is a thin Rust layer over the **Aether VCR** core. All
//! record/replay machinery lives in and is maintained as the Aether standard
//! library (`std/http/server/vcr`); this crate dlopens a precompiled native
//! build of that core and presents an idiomatic fixture. It does **not**
//! reimplement Servirtium in Rust.
//!
//! # One server per process
//!
//! The Aether VCR is **one active server per process** in v1 (its tape /
//! cursor / mutation state is process-global). `cargo test` runs tests in
//! parallel threads in one process, which would corrupt that state, so this
//! crate serializes every fixture through a process-global lock acquired in
//! [`start`](PlaybackBuilder::start) and held by the live [`VcrServer`].
//! Tests therefore run safely under a plain `cargo test` with no special
//! flags — they just don't overlap. See `docs/architecture.md`.
//!
//! [Servirtium]: https://servirtium.dev

mod native;

use std::ffi::c_int;
use std::sync::{Mutex, MutexGuard, OnceLock};

use native::{cstr, native, take_string, Handle, Native};

/// Field selector for redactions / unredactions / header removals. Values
/// mirror the `FIELD_*` constants in `std/http/server/vcr`.
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
#[repr(i32)]
pub enum Field {
    Path = 1,
    ResponseBody = 2,
    RequestHeaders = 3,
    RequestBody = 4,
    ResponseHeaders = 5,
}

/// Per-dispatch outcome. Values mirror the `KIND_*` constants in the core.
/// Read after a request to assert what the dispatcher decided.
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
#[repr(i32)]
pub enum Outcome {
    Ok = 0,
    PathOrMethodDiff = 1,
    HeaderMissing = 2,
    HeaderValueDiff = 3,
    HeaderUnexpected = 4,
    TapeExhausted = 5,
    BodyDiff = 6,
    RecordError = 7,
}

impl Outcome {
    fn from_raw(v: c_int) -> Outcome {
        match v {
            0 => Outcome::Ok,
            1 => Outcome::PathOrMethodDiff,
            2 => Outcome::HeaderMissing,
            3 => Outcome::HeaderValueDiff,
            4 => Outcome::HeaderUnexpected,
            5 => Outcome::TapeExhausted,
            6 => Outcome::BodyDiff,
            7 => Outcome::RecordError,
            // Forward-compatible: an unknown non-zero kind is still "not Ok".
            _ => Outcome::RecordError,
        }
    }
}

/// Error raised when the VCR fails to start, a mutation is rejected, or a
/// record-mode flush detects drift (with [`fail_if_changed`]).
///
/// [`fail_if_changed`]: RecordBuilder::fail_if_changed
#[derive(Debug, Clone)]
pub struct VcrError(String);

impl VcrError {
    fn new(msg: impl Into<String>) -> VcrError {
        VcrError(msg.into())
    }
    /// The underlying message.
    pub fn message(&self) -> &str {
        &self.0
    }
}

impl std::fmt::Display for VcrError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "{}", self.0)
    }
}

impl std::error::Error for VcrError {}

/// The process-global lock enforcing one-active-server-per-process. A live
/// [`VcrServer`] holds this guard for its whole lifetime, so a second
/// `start()` blocks until the first server is dropped.
fn server_lock() -> &'static Mutex<()> {
    static LOCK: OnceLock<Mutex<()>> = OnceLock::new();
    LOCK.get_or_init(|| Mutex::new(()))
}

/// Entry point for record/replay fixtures backed by the Aether VCR core.
pub struct Vcr;

impl Vcr {
    /// Replay a Servirtium markdown tape from disk.
    pub fn playback(tape_path: impl Into<String>) -> PlaybackBuilder {
        PlaybackBuilder {
            common: Common::new(tape_path.into()),
            unredactions: Vec::new(),
            strict_headers: false,
        }
    }

    /// Record live interactions: forward to `upstream_base`, return the real
    /// response to the SUT, and capture the exchange. The tape is written
    /// when the [`VcrServer`] is dropped (or via [`VcrServer::finish`]).
    pub fn record(
        tape_path: impl Into<String>,
        upstream_base: impl Into<String>,
    ) -> RecordBuilder {
        RecordBuilder {
            common: Common::new(tape_path.into()),
            upstream_base: upstream_base.into(),
            redactions: Vec::new(),
            normalize_whole_tape: Vec::new(),
            redact_whole_tape: Vec::new(),
            note: None,
            indent_code_blocks: false,
            emphasize_http_verbs: false,
            fail_if_changed: false,
        }
    }
}

/// Shared bind options for both builders.
struct Common {
    tape_path: String,
    host: String,
    port: u16,
    label: String,
    header_removals: Vec<(Field, String)>,
    static_content: Vec<(String, String)>,
    untaped: Vec<String>,
}

impl Common {
    fn new(tape_path: String) -> Common {
        Common {
            tape_path,
            host: "127.0.0.1".to_string(),
            port: 0,
            label: String::new(),
            header_removals: Vec::new(),
            static_content: Vec::new(),
            untaped: Vec::new(),
        }
    }

    /// Apply the shared config (header removals, static content, untaped) to
    /// the opened handle, before serving starts. Used by both builders'
    /// `start()`.
    fn apply_shared(&self, n: &Native, h: Handle) -> Result<(), VcrError> {
        for (field, name) in &self.header_removals {
            check(n, unsafe { (n.remove_header)(h, *field as c_int, cstr(name)?.as_ptr()) }, "remove_header")?;
        }
        for (mount, dir) in &self.static_content {
            check(n, unsafe { (n.static_content)(h, cstr(mount)?.as_ptr(), cstr(dir)?.as_ptr()) }, "static_content")?;
        }
        for path in &self.untaped {
            check(n, unsafe { (n.untaped)(h, cstr(path)?.as_ptr()) }, "untaped")?;
        }
        Ok(())
    }
}

/// Run a `char*`-returning mutation and turn a non-empty result into an error.
fn check(n: &Native, ptr: *mut std::ffi::c_char, op: &str) -> Result<(), VcrError> {
    let err = take_string(n, ptr);
    if err.is_empty() {
        Ok(())
    } else {
        Err(VcrError::new(format!("vcr {op} failed: {err}")))
    }
}

/// Configures and starts a playback VCR server.
pub struct PlaybackBuilder {
    common: Common,
    unredactions: Vec<(Field, String, String)>,
    strict_headers: bool,
}

impl PlaybackBuilder {
    /// Bind host. Defaults to `127.0.0.1`.
    pub fn host(mut self, host: impl Into<String>) -> Self {
        self.common.host = host.into();
        self
    }
    /// Bind port. `0` (the default) asks the OS for a free port.
    pub fn port(mut self, port: u16) -> Self {
        self.common.port = port;
        self
    }
    /// Human-facing label for logs/diagnostics (not a state key).
    pub fn label(mut self, label: impl Into<String>) -> Self {
        self.common.label = label.into();
        self
    }
    /// Remove a header by name from the given block (case-insensitive).
    pub fn remove_header(mut self, field: Field, name: impl Into<String>) -> Self {
        self.common.header_removals.push((field, name.into()));
        self
    }
    /// Compare the SUT's request headers against the recorded block on every
    /// interaction, surfacing mismatches via [`VcrServer::last_error`].
    pub fn strict_headers(mut self) -> Self {
        self.strict_headers = true;
        self
    }
    /// Replace a redacted placeholder in the recorded expectation with the
    /// real value the live SUT sends, so a scrubbed tape still matches.
    pub fn unredact(
        mut self,
        field: Field,
        pattern: impl Into<String>,
        replacement: impl Into<String>,
    ) -> Self {
        self.unredactions
            .push((field, pattern.into(), replacement.into()));
        self
    }
    /// Serve a path prefix from an on-disk directory instead of the tape.
    /// Works in both playback and record mode.
    pub fn static_content(mut self, mount_path: impl Into<String>, fs_dir: impl Into<String>) -> Self {
        self.common.static_content.push((mount_path.into(), fs_dir.into()));
        self
    }
    /// Mark an incidental request path (e.g. `/favicon.ico`) the VCR answers
    /// 404 for without consuming the tape cursor, so a normal interaction
    /// recorded after it still matches.
    pub fn untaped(mut self, path: impl Into<String>) -> Self {
        self.common.untaped.push(path.into());
        self
    }

    /// Open the playback server, apply this fixture's config to its handle,
    /// then begin serving. Acquires the wrapper lock, held until the returned
    /// [`VcrServer`] is dropped.
    pub fn start(self) -> Result<VcrServer, VcrError> {
        let n = native().map_err(VcrError::new)?;
        let guard = server_lock().lock().unwrap_or_else(|e| e.into_inner());

        let handle = unsafe {
            (n.open_playback)(
                cstr(&self.common.label)?.as_ptr(),
                cstr(&self.common.tape_path)?.as_ptr(),
                cstr(&self.common.host)?.as_ptr(),
                self.common.port as c_int,
            )
        };
        if handle.is_null() {
            return Err(VcrError::new(format!(
                "vcr playback failed to start for tape '{}'",
                self.common.tape_path
            )));
        }

        // Shared config (header removals, static content, untaped) ...
        self.common.apply_shared(n, handle)?;
        // ... then playback-specific config (before serving starts).
        if self.strict_headers {
            unsafe { (n.set_strict_headers)(handle, 1) };
        }
        for (field, pattern, replacement) in &self.unredactions {
            check(
                n,
                unsafe {
                    (n.unredact)(handle, *field as c_int, cstr(pattern)?.as_ptr(), cstr(replacement)?.as_ptr())
                },
                "unredact",
            )?;
        }

        if unsafe { (n.start)(handle) } < 0 {
            let err = drain_start_error(n, handle);
            unsafe { (n.stop)(handle) };
            return Err(VcrError::new(format!(
                "vcr playback failed to begin serving for tape '{}': {}",
                self.common.tape_path, err
            )));
        }
        Ok(VcrServer::new(n, guard, handle, self.common.host, self.common.tape_path, Mode::Playback))
    }
}

/// Configures and starts a record VCR server.
pub struct RecordBuilder {
    common: Common,
    upstream_base: String,
    redactions: Vec<(Field, String, String)>,
    normalize_whole_tape: Vec<(String, String)>,
    redact_whole_tape: Vec<(String, String)>,
    note: Option<(String, String)>,
    indent_code_blocks: bool,
    emphasize_http_verbs: bool,
    fail_if_changed: bool,
}

impl RecordBuilder {
    /// Bind host. Defaults to `127.0.0.1`.
    pub fn host(mut self, host: impl Into<String>) -> Self {
        self.common.host = host.into();
        self
    }
    /// Bind port. `0` (the default) asks the OS for a free port.
    pub fn port(mut self, port: u16) -> Self {
        self.common.port = port;
        self
    }
    /// Human-facing label for logs/diagnostics (not a state key).
    pub fn label(mut self, label: impl Into<String>) -> Self {
        self.common.label = label.into();
        self
    }
    /// Remove a header by name from the given block (case-insensitive).
    pub fn remove_header(mut self, field: Field, name: impl Into<String>) -> Self {
        self.common.header_removals.push((field, name.into()));
        self
    }
    /// Serve a path prefix from an on-disk directory instead of the tape.
    /// Works in record mode too — recording a browser suite is cleaner served
    /// same-origin from the VCR (no CORS preflights).
    pub fn static_content(mut self, mount_path: impl Into<String>, fs_dir: impl Into<String>) -> Self {
        self.common.static_content.push((mount_path.into(), fs_dir.into()));
        self
    }
    /// Mark an incidental request path (e.g. `/favicon.ico`) the VCR answers
    /// 404 for without touching the tape — nothing forwarded or recorded.
    pub fn untaped(mut self, path: impl Into<String>) -> Self {
        self.common.untaped.push(path.into());
        self
    }
    /// Scrub a value out of the given field before it lands on the tape.
    pub fn redact(
        mut self,
        field: Field,
        pattern: impl Into<String>,
        replacement: impl Into<String>,
    ) -> Self {
        self.redactions
            .push((field, pattern.into(), replacement.into()));
        self
    }
    /// Tokenize every distinct regex match across the WHOLE tape (all fields
    /// and interactions, in first-appearance order) into a stable `{{name-N}}`
    /// placeholder. Use this for correlated ids that recur in later request
    /// paths, so the scrubbed value stays linkable across interactions.
    pub fn normalize_whole_tape(
        mut self,
        pattern: impl Into<String>,
        name: impl Into<String>,
    ) -> Self {
        self.normalize_whole_tape.push((pattern.into(), name.into()));
        self
    }
    /// Collapse every regex match across the WHOLE tape to the constant
    /// `replacement`. Use this for uncorrelated volatiles (e.g. `Date`
    /// headers) where each match should become the same fixed string.
    pub fn redact_whole_tape(
        mut self,
        pattern: impl Into<String>,
        replacement: impl Into<String>,
    ) -> Self {
        self.redact_whole_tape.push((pattern.into(), replacement.into()));
        self
    }
    /// Attach a note to the *first* recorded interaction. For notes on later
    /// interactions, call [`VcrServer::note`] on the running server.
    pub fn note(mut self, title: impl Into<String>, body: impl Into<String>) -> Self {
        self.note = Some((title.into(), body.into()));
        self
    }
    /// Emit code blocks as 4-space-indented text instead of fences.
    pub fn indent_code_blocks(mut self) -> Self {
        self.indent_code_blocks = true;
        self
    }
    /// Emit the HTTP method emphasized (e.g. `*GET*`) in headings.
    pub fn emphasize_http_verbs(mut self) -> Self {
        self.emphasize_http_verbs = true;
        self
    }
    /// On flush, still write the freshly recorded tape but fail if it differs
    /// from the on-disk one — the drift contract, so a normal `git diff`
    /// shows the change and CI fails loudly. The failure surfaces from
    /// [`VcrServer::finish`]; if you let the server drop instead, drift
    /// causes a panic (a `Drop` can't return a `Result`).
    pub fn fail_if_changed(mut self) -> Self {
        self.fail_if_changed = true;
        self
    }

    /// Reset process-global state, apply this fixture's config, and start the
    /// record server. Acquires the one-server-per-process lock, held until
    /// the returned [`VcrServer`] is dropped (which also flushes the tape).
    pub fn start(self) -> Result<VcrServer, VcrError> {
        let n = native().map_err(VcrError::new)?;
        let guard = server_lock().lock().unwrap_or_else(|e| e.into_inner());

        let handle = unsafe {
            (n.open_record)(
                cstr(&self.common.label)?.as_ptr(),
                cstr(&self.common.tape_path)?.as_ptr(),
                cstr(&self.upstream_base)?.as_ptr(),
                cstr(&self.common.host)?.as_ptr(),
                self.common.port as c_int,
            )
        };
        if handle.is_null() {
            return Err(VcrError::new(format!(
                "vcr record failed to start for tape '{}' (upstream '{}')",
                self.common.tape_path, self.upstream_base
            )));
        }

        self.common.apply_shared(n, handle)?;
        if self.indent_code_blocks {
            unsafe { (n.indent_code_blocks)(handle) };
        }
        if self.emphasize_http_verbs {
            unsafe { (n.emphasize_http_verbs)(handle) };
        }
        for (field, pattern, replacement) in &self.redactions {
            check(
                n,
                unsafe {
                    (n.redact)(handle, *field as c_int, cstr(pattern)?.as_ptr(), cstr(replacement)?.as_ptr())
                },
                "redact",
            )?;
        }
        for (pattern, name) in &self.normalize_whole_tape {
            check(
                n,
                unsafe {
                    (n.normalize_whole_tape)(handle, cstr(pattern)?.as_ptr(), cstr(name)?.as_ptr())
                },
                "normalize_whole_tape",
            )?;
        }
        for (pattern, replacement) in &self.redact_whole_tape {
            check(
                n,
                unsafe {
                    (n.redact_whole_tape)(handle, cstr(pattern)?.as_ptr(), cstr(replacement)?.as_ptr())
                },
                "redact_whole_tape",
            )?;
        }
        // Stage the note now (open_record cleared the tape) so it attaches
        // to the first interaction the SUT triggers, before serving begins.
        if let Some((title, body)) = &self.note {
            check(n, unsafe { (n.note)(handle, cstr(title)?.as_ptr(), cstr(body)?.as_ptr()) }, "note")?;
        }

        if unsafe { (n.start)(handle) } < 0 {
            let err = drain_start_error(n, handle);
            unsafe { (n.stop)(handle) };
            return Err(VcrError::new(format!(
                "vcr record failed to begin serving for tape '{}': {}",
                self.common.tape_path, err
            )));
        }

        Ok(VcrServer::new(
            n,
            guard,
            handle,
            self.common.host,
            self.common.tape_path,
            Mode::Record { fail_if_changed: self.fail_if_changed },
        ))
    }
}

fn drain_start_error(n: &Native, h: Handle) -> String {
    let err = take_string(n, unsafe { (n.last_error)(h) });
    if err.is_empty() {
        "(no detail; check tape path and port availability)".to_string()
    } else {
        err
    }
}

#[derive(Clone, Copy)]
enum Mode {
    Playback,
    Record { fail_if_changed: bool },
}

/// A running VCR server. Drop it to stop (in record mode, drop also flushes
/// the captured tape to disk). To observe a record-mode flush error — most
/// importantly the [`fail_if_changed`](RecordBuilder::fail_if_changed) drift
/// check — call [`finish`](VcrServer::finish) explicitly instead of relying
/// on `Drop` (which can only panic on error).
pub struct VcrServer {
    n: &'static Native,
    // Holds the one-server-per-process lock for this server's lifetime.
    _guard: MutexGuard<'static, ()>,
    handle: Handle,
    host: String,
    tape_path: String,
    mode: Mode,
    finished: bool,
}

impl VcrServer {
    fn new(
        n: &'static Native,
        guard: MutexGuard<'static, ()>,
        handle: Handle,
        host: String,
        tape_path: String,
        mode: Mode,
    ) -> VcrServer {
        VcrServer {
            n,
            _guard: guard,
            handle,
            host,
            tape_path,
            mode,
            finished: false,
        }
    }

    /// Base URL the SUT should target, e.g. `http://127.0.0.1:54213`.
    pub fn base_url(&self) -> String {
        let host = cstr(&self.host).expect("host has no NUL");
        take_string(self.n, unsafe { (self.n.base_url)(self.handle, host.as_ptr()) })
    }

    /// The OS-resolved port the server is listening on.
    pub fn port(&self) -> u16 {
        (unsafe { (self.n.port)(self.handle) }) as u16
    }

    /// Tape entry count (playback), or interactions captured so far (record).
    pub fn tape_length(&self) -> i32 {
        unsafe { (self.n.tape_length)(self.handle) }
    }

    /// Most-recent dispatch diagnostic; empty when none flagged.
    pub fn last_error(&self) -> String {
        take_string(self.n, unsafe { (self.n.last_error)(self.handle) })
    }

    /// Outcome of the most-recent dispatch.
    pub fn last_kind(&self) -> Outcome {
        Outcome::from_raw(unsafe { (self.n.last_kind)(self.handle) })
    }

    /// Tape index of the most-recent matched interaction, or -1.
    pub fn last_index(&self) -> i32 {
        unsafe { (self.n.last_index)(self.handle) }
    }

    /// Stage a note (record mode) for the *next* interaction to be captured.
    /// Call between requests to annotate specific interactions.
    pub fn note(&self, title: &str, body: &str) -> Result<(), VcrError> {
        check(self.n, unsafe { (self.n.note)(self.handle, cstr(title)?.as_ptr(), cstr(body)?.as_ptr()) }, "note")
    }

    /// Rewind the replay cursor to interaction 0 and clear last-* slots.
    pub fn reset_cursor(&self) {
        unsafe { (self.n.reset_cursor)(self.handle) };
    }

    /// Clear the last-error slot between sub-cases.
    pub fn clear_last_error(&self) {
        unsafe { (self.n.clear_last_error)(self.handle) };
    }

    /// Stop the server and, in record mode, flush the tape — returning any
    /// flush error (e.g. a `fail_if_changed` drift). After `finish`, drop is
    /// a no-op. This is the idiomatic way to observe a record-mode result;
    /// `Drop` is a best-effort fallback that panics on a flush error.
    pub fn finish(mut self) -> Result<(), VcrError> {
        self.stop_inner()
    }

    /// Stop + flush. Idempotent via `finished`.
    fn stop_inner(&mut self) -> Result<(), VcrError> {
        if self.finished {
            return Ok(());
        }
        self.finished = true;
        let h = self.handle;
        match self.mode {
            Mode::Playback => {
                unsafe { (self.n.stop)(h) };
                Ok(())
            }
            Mode::Record { fail_if_changed } => {
                let path = cstr(&self.tape_path)?;
                let ptr = unsafe {
                    if fail_if_changed {
                        (self.n.stop_and_flush_fail_if_changed)(h, path.as_ptr())
                    } else {
                        (self.n.stop_and_flush)(h, path.as_ptr())
                    }
                };
                let err = take_string(self.n, ptr);
                if err.is_empty() {
                    Ok(())
                } else {
                    Err(VcrError::new(err))
                }
            }
        }
    }
}

impl Drop for VcrServer {
    fn drop(&mut self) {
        match self.stop_inner() {
            Ok(()) => {}
            Err(e) => {
                // A Drop can't return a Result. Don't double-panic during
                // unwinding; otherwise surface the drift loudly.
                if std::thread::panicking() {
                    eprintln!("servirtium: VCR flush error during unwind: {e}");
                } else {
                    panic!("servirtium: VCR flush failed on drop: {e}. \
                            Call VcrServer::finish() to handle this as a Result.");
                }
            }
        }
    }
}
