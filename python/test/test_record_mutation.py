"""Record-mode breadth: redaction, header removal, notes, drift detection,
and (critically) that each handle's mutation state does not leak from one
fixture to the next.
"""

import os
import tempfile

import pytest

import servirtium
from conftest import http_request


def _tape_path():
    fd, path = tempfile.mkstemp(suffix=".md")
    os.close(fd)
    os.remove(path)
    return path


def _read(path):
    with open(path) as f:
        return f.read()


def test_redacts_response_body_before_it_lands_on_the_tape(upstream):
    upstream.response_body = "value=secret-token"
    path = _tape_path()
    try:
        with servirtium.record(path, upstream.base_url).redact(
            servirtium.Field.RESPONSE_BODY, "secret-token", "REDACTED"
        ).port(0).start() as rec:
            http_request(rec.base_url, "GET", "/x")

        tape = _read(path)
        assert "REDACTED" in tape
        assert "secret-token" not in tape
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_attaches_a_note_to_the_recorded_interaction(upstream):
    path = _tape_path()
    try:
        with servirtium.record(path, upstream.base_url).note(
            "Why this exists", "documents the call"
        ).port(0).start() as rec:
            http_request(rec.base_url, "GET", "/x")

        assert "## [Note] Why this exists:" in _read(path)
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_removes_a_named_response_header_from_the_tape(upstream):
    upstream.extra_response_headers["X-Trace-Id"] = "abc123"
    path1 = _tape_path()
    path2 = _tape_path()
    try:
        # Phase 1: without removal, the header is captured.
        with servirtium.record(path1, upstream.base_url).port(0).start() as rec:
            http_request(rec.base_url, "GET", "/x")
        assert "X-Trace-Id" in _read(path1)

        # Phase 2: with removal, it's gone.
        with servirtium.record(path2, upstream.base_url).remove_header(
            servirtium.Field.RESPONSE_HEADERS, "X-Trace-Id"
        ).port(0).start() as rec:
            http_request(rec.base_url, "GET", "/x")
        assert "X-Trace-Id" not in _read(path2)
    finally:
        for p in (path1, path2):
            if os.path.exists(p):
                os.remove(p)


def test_mutation_state_does_not_leak_between_fixtures(upstream):
    path1 = _tape_path()
    path2 = _tape_path()
    try:
        # Fixture A registers a redaction for "leak".
        upstream.response_body = "leak"
        with servirtium.record(path1, upstream.base_url).redact(
            servirtium.Field.RESPONSE_BODY, "leak", "SCRUBBED"
        ).port(0).start() as a:
            http_request(a.base_url, "GET", "/x")
        assert "SCRUBBED" in _read(path1)

        # Fixture B registers NO redaction; A's must not leak in.
        with servirtium.record(path2, upstream.base_url).port(0).start() as b:
            http_request(b.base_url, "GET", "/x")
        assert "leak" in _read(path2)
        assert "SCRUBBED" not in _read(path2)
    finally:
        for p in (path1, path2):
            if os.path.exists(p):
                os.remove(p)


def test_fail_if_changed_raises_when_a_re_record_drifts(upstream):
    path = _tape_path()
    try:
        # First record creates the tape — no drift, no raise.
        upstream.response_body = "v1"
        with servirtium.record(path, upstream.base_url).fail_if_changed().port(0).start() as first:
            http_request(first.base_url, "GET", "/x")
        assert os.path.exists(path)

        # Re-record with a changed upstream — close must raise, while still
        # writing the new tape for `git diff`.
        upstream.response_body = "v2-changed"
        second = servirtium.record(path, upstream.base_url).fail_if_changed().port(0).start()
        http_request(second.base_url, "GET", "/x")
        with pytest.raises(servirtium.VcrError):
            second.close()
        assert "v2-changed" in _read(path)
    finally:
        if os.path.exists(path):
            os.remove(path)
