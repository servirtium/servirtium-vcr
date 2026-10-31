"""Idiomatic Python record/replay fixtures over the in-repo VCR core
(``core/vcr.ae``).

The system-under-test talks plain HTTP to :attr:`VcrServer.base_url`; tape
paths, mode, mutations, and diagnostics live in test setup/teardown.

    import servirtium

    with servirtium.playback("tapes/my_api.md").port(0).start() as vcr:
        # point the SUT at vcr.base_url, drive it ...
        assert vcr.last_kind is servirtium.Outcome.OK

One-server-per-port contract (from libservirtium_vcr side): N independent VCR servers
can run concurrently, one per port, each keyed by its own handle. A fixture's
config / diagnostics / tape are scoped to its handle, so two
``servirtium.playback(...).start()`` servers can be alive at once without
their cursors or mutations bleeding into each other.
"""

from __future__ import annotations

import enum

from . import _native as N


class Field(enum.IntEnum):
    """Field selector for redactions / unredactions / header removals.

    Values mirror the FIELD_* constants in core/vcr.ae.
    """

    PATH = 1
    RESPONSE_BODY = 2
    REQUEST_HEADERS = 3
    REQUEST_BODY = 4
    RESPONSE_HEADERS = 5
    RESPONSE = 6  # substitution-only: body AND headers in one rule


class Outcome(enum.IntEnum):
    """Per-dispatch outcome. Drain after a request to assert what the
    dispatcher decided."""

    OK = 0
    PATH_OR_METHOD_DIFF = 1
    HEADER_MISSING = 2
    HEADER_VALUE_DIFF = 3
    HEADER_UNEXPECTED = 4
    TAPE_EXHAUSTED = 5
    BODY_DIFF = 6
    RECORD_ERROR = 7


class VcrError(Exception):
    """Raised when the VCR fails to start, a mutation is rejected, or a
    record-mode flush detects drift."""


def _check(result_ptr, op: str) -> None:
    """Raise if a mutation call returned a non-empty error string ('' = ok)."""
    err = N.take_string(result_ptr)
    if err:
        raise VcrError(f"vcr {op} failed: {err}")


class _BuilderBase:
    """Shared bind options for both builders."""

    def __init__(self, tape_path: str) -> None:
        self._tape_path = tape_path
        self._host = "127.0.0.1"
        self._port = 0  # 0 => OS-assigned (dynamic)
        self._label = ""
        self._native_lib: str | None = None
        self._header_removals: list[tuple[Field, str]] = []
        self._ignore_volatile_headers = False
        self._static_content: list[tuple[str, str]] = []
        self._untaped: list[str] = []
        self._tls: tuple[str, str] | None = None
        self._tls_pem: tuple[str, str] | None = None

    def native_lib(self, path: str):
        """Pin an explicit path to libservirtium_vcr library for this run.

        The first-class way to say *where the ``.so`` is* at launch, instead of
        relying on discovery. Passing it here (or via the ``native_lib=`` kwarg
        on :func:`playback`/:func:`record`) wins over the bundled-``native/``
        default and the ``SERVIRTIUM_VCR_LIB`` env override. Must be set before
        :meth:`start`; effective process-wide on first load."""
        self._native_lib = path
        return self

    def host(self, host: str):
        """Bind host. Defaults to 127.0.0.1."""
        self._host = host
        return self

    def port(self, port: int):
        """Bind port. 0 (the default) asks the OS for a free port."""
        self._port = port
        return self

    def label(self, label: str):
        """Human-facing label for logs/diagnostics (not a state key)."""
        self._label = label
        return self

    def remove_header(self, field: Field, name: str):
        """Remove a header by name from the given block (case-insensitive)."""
        self._header_removals.append((field, name))
        return self

    def ignore_volatile_headers(self, on: bool = True):
        """Drop the per-request *volatile* headers modern clients inject on every
        call — distributed-tracing and correlation ids (``traceparent``,
        ``tracestate``, ``Request-Id``, ``X-Request-Id``, ``X-Correlation-Id``,
        ``baggage``) — from BOTH the recorded expectation and the live request
        before matching. The companion to removing the stock client identity
        headers. Works in both playback and record mode."""
        self._ignore_volatile_headers = on
        return self

    def static_content(self, mount_path: str, fs_dir: str):
        """Serve a path prefix from an on-disk directory instead of the tape.

        Works in both playback and record mode (recording a browser suite is
        cleaner served same-origin from the VCR — no CORS preflights)."""
        self._static_content.append((mount_path, fs_dir))
        return self

    def untaped(self, path: str):
        """Mark an incidental path (e.g. /favicon.ico) the VCR answers 404 for
        without touching the tape — no cursor consumed on playback, nothing
        forwarded or recorded on record."""
        self._untaped.append(path)
        return self

    def tls(self, cert_path: str, key_path: str):
        """Serve ``https://`` using this PEM cert and key (PEM cert + key: ECDSA P-256/P-384/P-521, Ed25519, or RSA 2048-16384)."""
        self._tls = (cert_path, key_path)
        return self

    def tls_from_pem(self, cert_pem: str, key_pem: str):
        """Like ``tls``, but the PEM certificate and key are passed in memory (not file paths), so no private key is written to disk."""
        self._tls_pem = (cert_pem, key_pem)
        return self

    def _apply_config(self, handle) -> None:
        """Apply accumulated config to the opened handle, before start.

        Subclasses extend this.
        """
        for field, name in self._header_removals:
            _check(N.remove_header(handle, int(field), N.encode(name)), "remove_header")
        if self._ignore_volatile_headers:
            _check(N.ignore_volatile_headers(handle), "ignore_volatile_headers")
        for mount, fs_dir in self._static_content:
            _check(N.static_content(handle, N.encode(mount), N.encode(fs_dir)), "static_content")
        for path in self._untaped:
            _check(N.untaped(handle, N.encode(path)), "untaped")
        if self._tls is not None:
            _check(N.set_tls(handle, N.encode(self._tls[0]), N.encode(self._tls[1])), "set_tls")
        if self._tls_pem is not None:
            _check(N.set_tls_pem(handle, N.encode(self._tls_pem[0]), N.encode(self._tls_pem[1])), "set_tls_pem")


from dataclasses import dataclass


@dataclass(frozen=True)
class SecretRequest:
    method: str
    path: str
    location: str
    format: str
    field_path: str
    interaction: int


def _secret_stage(handle, callback, resolving: bool):
    try:
        _check(N.secret_begin(handle, int(resolving)), "secret_begin")
        while True:
            status = N.secret_next(handle)
            if status == 0:
                break
            if status < 0:
                raise VcrError("secret iteration failed")
            def get(part):
                return N.take_string(N.secret_get(handle, part))
            if resolving:
                replacement = callback(get(2))
            else:
                context = SecretRequest(get(3), get(4), get(5), get(6), get(7), N.secret_interaction(handle))
                replacement = callback(get(1), context)
            if replacement is not None:
                if not isinstance(replacement, str):
                    raise TypeError("secret callbacks must return a string or None")
                _check(N.secret_apply(handle, N.encode(replacement)), "secret_apply")
        _check(N.secret_finish(handle), "secret_finish")
    except BaseException:
        N.secret_abort(handle)
        N.stop(handle)
        raise


class PlaybackBuilder(_BuilderBase):
    """Configures and starts a playback VCR server."""

    def __init__(self, tape_path: str) -> None:
        super().__init__(tape_path)
        self._unredactions: list[tuple[Field, str, str]] = []
        self._substitutions: list[tuple[Field, str, str, bool]] = []
        self._secret_resolver = None
        self._strict_headers = False
        self._match_json_body = False
        self._match_xml_body = False
        self._match_multiple = False
        self._match_headers: list[str] = []

    def secret_resolver(self, callback):
        """Resolve designated token names before playback starts; None means unresolved."""
        self._secret_resolver = callback
        return self

    def strict_headers(self, on: bool = True):
        """Compare the SUT's request headers against the recorded block on
        every interaction, surfacing mismatches via :attr:`VcrServer.last_error`."""
        self._strict_headers = on
        return self

    def match_json_body(self, on: bool = True):
        """Opt in to matching request bodies by *semantic* JSON equality (key
        order and insignificant whitespace ignored) instead of byte-for-byte.
        Non-JSON bodies fall back to the byte-exact comparison, so enabling this
        never loosens matching for non-JSON payloads."""
        self._match_json_body = on
        return self

    def match_xml_body(self, on: bool = True):
        """Opt in to matching request bodies by *semantic* XML equality
        (attribute order and insignificant whitespace ignored; element order
        significant) instead of byte-for-byte — the SOAP/XML twin of
        :meth:`match_json_body`. Non-XML bodies fall back to the byte-exact
        comparison, so enabling this never loosens matching for non-XML payloads."""
        self._match_xml_body = on
        return self

    def match_multiple(self, on: bool = True):
        """Opt in to reusable, order-independent playback: matches any recorded
        interaction (not just the next in sequence) and doesn't consume it — for
        polling/retries or non-deterministic request order."""
        self._match_multiple = on
        return self

    def match_header(self, name: str):
        """Match playback on this specific request header's value (ignoring the
        rest of the recorded header block); repeatable."""
        self._match_headers.append(name)
        return self

    def unredact(self, field: Field, pattern: str, replacement: str):
        """Replace a redacted placeholder in the recorded expectation with the
        real value the live SUT sends, so a scrubbed tape still matches."""
        self._unredactions.append((field, pattern, replacement))
        return self

    def substitute(self, field: Field, pattern: str, replacement: str, required: bool = True):
        """Rewrite the replayed response: regex ``pattern`` -> ``replacement`` in
        the response body or headers (``{{baseUrl}}`` is already expanded by core).
        ``required=False`` exempts an unused rule from assert_all_redactions_used."""
        self._substitutions.append((field, pattern, replacement, required))
        return self

    def substitute_optional(self, field: Field, pattern: str, replacement: str):
        """Like :meth:`substitute`, but an unused rule is not reported."""
        return self.substitute(field, pattern, replacement, required=False)

    def _apply_config(self, handle) -> None:
        super()._apply_config(handle)
        if self._strict_headers:
            N.set_strict_headers(handle, 1)
        if self._match_json_body:
            N.set_match_json_body(handle, 1)
        if self._match_xml_body:
            N.set_match_xml_body(handle, 1)
        if self._match_multiple:
            N.set_match_multiple(handle, 1)
        for name in self._match_headers:
            N.match_header(handle, N.encode(name))
        for field, pattern, replacement in self._unredactions:
            _check(
                N.unredact(handle, int(field), N.encode(pattern), N.encode(replacement)),
                "unredact",
            )
        for field, pattern, replacement, required in self._substitutions:
            _check(
                N.substitute(handle, int(field), N.encode(pattern), N.encode(replacement), 1 if required else 0),
                "substitute",
            )

    def start(self) -> "VcrServer":
        N.configure(self._native_lib)
        handle = N.open_playback(
            N.encode(self._label),
            N.encode(self._tape_path),
            N.encode(self._host),
            self._port,
        )
        if not handle:
            raise VcrError(
                f"vcr playback failed to start for tape '{self._tape_path}': "
                f"{_drain_start_error(None)}"
            )
        self._apply_config(handle)
        if self._secret_resolver is not None:
            _secret_stage(handle, self._secret_resolver, True)
        if N.start(handle) < 0:
            raise VcrError(
                f"vcr playback failed to begin serving for tape "
                f"'{self._tape_path}': {_drain_start_error(handle)}"
            )
        return VcrServer(handle, self._host, self._tape_path, record_mode=False, fail_if_changed=False)


class RecordBuilder(_BuilderBase):
    """Configures and starts a record VCR server."""

    def __init__(self, tape_path: str, upstream_base: str) -> None:
        super().__init__(tape_path)
        self._upstream_base = upstream_base
        self._redactions: list[tuple[str, Field, str, str]] = []
        self._secret_redactor = None
        self._normalize_whole_tape: list[tuple[str, str]] = []
        self._redact_whole_tape: list[tuple[str, str]] = []
        self._note: tuple[str, str] | None = None
        self._indent_code_blocks = False
        self._emphasize_http_verbs = False
        self._fail_if_changed = False

    def secret_redactor(self, callback):
        """Choose token names from (key, request) during emission; None leaves a field unchanged."""
        self._secret_redactor = callback
        return self

    def redact(self, field: Field, pattern: str, replacement: str):
        """Scrub a value out of the given field before it lands on the tape."""
        self._redactions.append(("redact", field, pattern, replacement))
        return self

    def redact_header(self, name: str, replacement: str = "[REDACTED]", *, field: Field = Field.REQUEST_HEADERS):
        """Redact the named header when writing the tape; upstream is unchanged."""
        self._redactions.append(("redact_header", field, name, replacement))
        return self

    def redact_query_param(self, name: str, replacement: str = "[REDACTED]", *, field: Field = Field.PATH):
        """Redact the named query param when writing the tape; upstream is unchanged."""
        self._redactions.append(("redact_query_param", field, name, replacement))
        return self

    def redact_json_field(self, name: str, replacement: str = "[REDACTED]", *, field: Field = Field.REQUEST_BODY):
        """Redact the named json field when writing the tape; upstream is unchanged."""
        self._redactions.append(("redact_json_field", field, name, replacement))
        return self

    def normalize_whole_tape(self, pattern: str, name: str):
        """Rewrite every distinct regex match across the WHOLE tape (all fields,
        all interactions, in first-appearance order) to a stable ``{{name-N}}``
        token. Use for correlated server-minted values like entity ids that
        recur in later request paths."""
        self._normalize_whole_tape.append((pattern, name))
        return self

    def redact_whole_tape(self, pattern: str, replacement: str):
        """Collapse every regex match across the WHOLE tape to the one constant
        ``replacement``. Use for uncorrelated volatile values like Date headers."""
        self._redact_whole_tape.append((pattern, replacement))
        return self

    def note(self, title: str, body: str):
        """Attach a note to the next recorded interaction. For notes on later
        interactions, call :meth:`VcrServer.note` on the running server."""
        self._note = (title, body)
        return self

    def indent_code_blocks(self, on: bool = True):
        """Emit code blocks as 4-space-indented text instead of fences."""
        self._indent_code_blocks = on
        return self

    def emphasize_http_verbs(self, on: bool = True):
        """Emit the HTTP method emphasized (e.g. ``*GET*``) in headings."""
        self._emphasize_http_verbs = on
        return self

    def fail_if_changed(self, on: bool = True):
        """On close, still write the freshly recorded tape but raise if it
        differs from the on-disk one (the drift contract)."""
        self._fail_if_changed = on
        return self

    def _apply_config(self, handle) -> None:
        super()._apply_config(handle)
        if self._indent_code_blocks:
            N.indent_code_blocks(handle)
        if self._emphasize_http_verbs:
            N.emphasize_http_verbs(handle)
        for operation, field, pattern, replacement in self._redactions:
            _check(
                getattr(N, operation)(handle, int(field), N.encode(pattern), N.encode(replacement)),
                "redact",
            )
        for pattern, name in self._normalize_whole_tape:
            _check(
                N.normalize_whole_tape(handle, N.encode(pattern), N.encode(name)),
                "normalize_whole_tape",
            )
        for pattern, replacement in self._redact_whole_tape:
            _check(
                N.redact_whole_tape(handle, N.encode(pattern), N.encode(replacement)),
                "redact_whole_tape",
            )

    def start(self) -> "VcrServer":
        N.configure(self._native_lib)
        handle = N.open_record(
            N.encode(self._label),
            N.encode(self._tape_path),
            N.encode(self._upstream_base),
            N.encode(self._host),
            self._port,
        )
        if not handle:
            raise VcrError(
                f"vcr record failed to start for tape '{self._tape_path}' "
                f"(upstream '{self._upstream_base}'): {_drain_start_error(None)}"
            )
        self._apply_config(handle)
        # Stage the note now (open_record cleared the tape) so it attaches
        # to the first interaction the SUT triggers.
        if self._note is not None:
            title, body = self._note
            _check(N.note(handle, N.encode(title), N.encode(body)), "note")
        if N.start(handle) < 0:
            raise VcrError(
                f"vcr record failed to begin serving for tape "
                f"'{self._tape_path}': {_drain_start_error(handle)}"
            )
        return VcrServer(
            handle,
            self._host,
            self._tape_path,
            record_mode=True,
            fail_if_changed=self._fail_if_changed,
            secret_redactor=self._secret_redactor,
        )


def _drain_start_error(handle) -> str:
    # When open failed there's no handle; the failure reason is still
    # retrievable by re-opening — but we can't. Fall back to a generic hint.
    if handle is None:
        return "(no detail; check tape path and port availability)"
    err = N.take_string(N.last_error(handle))
    return err or "(no detail; check tape path and port availability)"


class VcrServer:
    """A running VCR server.

    Use it as a context manager (``with ... as vcr:``) or call :meth:`close`
    explicitly. In record mode, exit/close also flushes the captured tape to
    disk (and raises on drift if ``fail_if_changed`` was set).
    """

    def __init__(self, handle, host, tape_path, *, record_mode, fail_if_changed, secret_redactor=None) -> None:
        self._handle = handle
        self._host = host
        self._tape_path = tape_path
        self._record_mode = record_mode
        self._secret_redactor = secret_redactor
        self._fail_if_changed = fail_if_changed
        self._base_url: str | None = None

    def _require_handle(self):
        if not self._handle:
            raise VcrError("VcrServer is closed")
        return self._handle

    # ---- introspection ----------------------------------------------------
    @property
    def port(self) -> int:
        """The OS-resolved port the server is listening on."""
        return N.port(self._require_handle())

    @property
    def base_url(self) -> str:
        """Base URL the SUT should target, e.g. ``http://127.0.0.1:54213``."""
        if self._base_url is None:
            self._base_url = N.take_string(
                N.base_url(self._require_handle(), N.encode(self._host))
            )
        return self._base_url

    @property
    def tape_length(self) -> int:
        """Tape entry count (playback), or interactions captured (record)."""
        return N.tape_length(self._require_handle())

    @property
    def last_error(self) -> str:
        """Latest retained replay diagnostic; consuming reads acknowledge without erasing."""
        return N.take_string(N.last_error(self._require_handle()))

    def read_last_error(self, consume: bool = True) -> str:
        """Read the retained latest mismatch; consume acknowledges without deleting."""
        return N.take_string(N.last_error_ex(self._require_handle(), int(consume)))

    def diagnostics_json(self, consume: bool = False) -> str:
        """Read structured events; observer reads do not acknowledge failures."""
        return N.take_string(N.diagnostics_json(self._require_handle(), int(consume)))

    def assert_no_mismatches(self) -> None:
        _check(N.assert_no_mismatches(self._require_handle()), "assert_no_mismatches")

    @property
    def last_tls_protocol(self) -> str:
        """TLS protocol negotiated by the listener (``TLSv1.3``), or '' when TLS is off."""
        return N.take_string(N.last_tls_protocol(self._require_handle()))

    def assert_all_consumed(self) -> None:
        """Playback: raise unless every recorded interaction was replayed."""
        _check(N.assert_all_consumed(self._require_handle()), "assert_all_consumed")

    def assert_all_redactions_used(self) -> None:
        """Raise unless every redaction/unredaction/substitution rule matched at least once."""
        _check(N.assert_all_redactions_used(self._require_handle()), "assert_all_redactions_used")

    def assert_no_unfilled_placeholders(self) -> None:
        """Raise if any unfilled placeholder remains in a replayed response."""
        _check(N.assert_no_unfilled_placeholders(self._require_handle()), "assert_no_unfilled_placeholders")

    def clear_substitutions(self) -> None:
        """Drop all registered substitutions on the running server."""
        N.clear_substitutions(self._require_handle())

    def test_context(self, name: str, source_file: str = "", source_line: int = 0) -> None:
        """Start a test boundary, reporting unretrieved failures from the previous test."""
        N.test_context(self._require_handle(), N.encode(name), N.encode(source_file), source_line)

    @property
    def last_kind(self) -> Outcome:
        """Outcome of the most-recent dispatch."""
        return Outcome(N.last_kind(self._require_handle()))

    @property
    def last_index(self) -> int:
        """Tape index of the most-recent matched interaction, or -1."""
        return N.last_index(self._require_handle())

    # ---- operations -------------------------------------------------------
    def note(self, title: str, body: str) -> None:
        """Stage a note (record mode) for the *next* interaction to be captured."""
        _check(N.note(self._require_handle(), N.encode(title), N.encode(body)), "note")

    def reset_cursor(self) -> None:
        """Rewind the replay cursor to interaction 0 and clear last-* slots."""
        N.reset_cursor(self._require_handle())

    def clear_last_error(self) -> None:
        """Clear the last-error slot between sub-cases."""
        N.clear_last_error(self._require_handle())

    # ---- lifecycle --------------------------------------------------------
    def discard(self) -> None:
        """Record mode: stop the server and DROP the captured recording WITHOUT
        writing a tape. Call this on a test's failure path so a failed run never
        mints a tape that later replays as the truth. Safe to call before
        :meth:`close`/context exit — once discarded, close writes nothing.
        No-op outside record mode."""
        if not self._handle:
            return
        handle = self._handle
        self._handle = None
        if not self._record_mode:
            N.stop(handle)
            return
        N.take_string(N.discard(handle, N.encode(self._tape_path)))

    def close(self) -> None:
        """Stop the server; flush the tape if recording."""
        if not self._handle:
            return
        handle = self._handle
        self._handle = None

        if not self._record_mode:
            N.stop(handle)
            return

        if self._secret_redactor is not None:
            _secret_stage(handle, self._secret_redactor, False)

        if self._fail_if_changed:
            result = N.stop_and_flush_fail_if_changed(handle, N.encode(self._tape_path))
        else:
            result = N.stop_and_flush(handle, N.encode(self._tape_path))
        err = N.take_string(result)
        if err:
            raise VcrError(err)

    def __enter__(self) -> "VcrServer":
        return self

    def __exit__(self, exc_type, exc, tb) -> bool:
        self.close()
        return False


def playback(tape_path: str, *, native_lib: str | None = None) -> PlaybackBuilder:
    """Replay a Servirtium markdown tape from disk.

    ``native_lib`` optionally pins libservirtium_vcr ``.so`` path explicitly (see
    :meth:`PlaybackBuilder.native_lib`); by default the bundled library is
    discovered."""
    b = PlaybackBuilder(tape_path)
    if native_lib is not None:
        b.native_lib(native_lib)
    return b


def record(tape_path: str, upstream_base: str, *, native_lib: str | None = None) -> RecordBuilder:
    """Record live interactions: forward to ``upstream_base``, return the real
    response to the SUT, and capture the exchange. The tape is written to
    ``tape_path`` when the server is closed.

    ``native_lib`` optionally pins libservirtium_vcr ``.so`` path explicitly."""
    b = RecordBuilder(tape_path, upstream_base)
    if native_lib is not None:
        b.native_lib(native_lib)
    return b
