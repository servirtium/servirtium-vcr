"""Proves record mode end-to-end: the VCR forwards to a live upstream,
returns the real response to the SUT, captures the exchange, flushes a
Servirtium markdown tape on close, and the same tape then replays.
"""

import os
import tempfile

import servirtium
from conftest import http_request


def _tape_path():
    fd, path = tempfile.mkstemp(suffix=".md")
    os.close(fd)
    os.remove(path)  # we want the path, not a pre-existing empty file
    return path


def test_records_then_replays_the_same_interaction(upstream):
    upstream.response_body = "hello-from-upstream"
    path = _tape_path()
    try:
        # ---- record ----
        with servirtium.record(path, upstream.base_url).port(0).start() as rec:
            status, body = http_request(rec.base_url, "GET", "/greeting")
            assert body == "hello-from-upstream"
        # close flushed the tape

        assert os.path.exists(path), "record-mode close should write the tape"

        # ---- replay (offline) ----
        with servirtium.playback(path).port(0).start() as play:
            status, body = http_request(play.base_url, "GET", "/greeting")
            assert body == "hello-from-upstream"
            assert play.last_kind is servirtium.Outcome.OK
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_records_and_replays_a_post_with_a_body(upstream):
    upstream.response_body = "created"
    upstream.status = 201
    path = _tape_path()
    try:
        with servirtium.record(path, upstream.base_url).port(0).start() as rec:
            status, body = http_request(
                rec.base_url, "POST", "/submit", body="ping",
                headers={"Content-Type": "text/plain"},
            )
            assert body == "created"
            assert upstream.last_method == "POST"
            assert upstream.last_body == "ping"

        # Replay the same POST offline.
        with servirtium.playback(path).port(0).start() as play:
            status, body = http_request(
                play.base_url, "POST", "/submit", body="ping",
                headers={"Content-Type": "text/plain"},
            )
            assert body == "created"
            assert play.last_kind is servirtium.Outcome.OK
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_structured_redaction_helpers(tmp_path):
    import pathlib
    import subprocess
    import sys

    fixture = pathlib.Path(__file__).resolve().parents[2] / "core_tests/redaction_fixture.py"
    def run(*args):
        return subprocess.check_output([sys.executable, str(fixture), *map(str, args)], text=True).strip()

    upstream = run("start", tmp_path)
    with (servirtium.record(str(tmp_path / "tape.md"), upstream)
          .redact_header("Authorization")
          .redact_query_param("password")
          .redact_json_field("secretKey").start()) as rec:
        run("drive", tmp_path, rec.base_url)
        assert rec.last_kind is servirtium.Outcome.OK
    run("check", tmp_path)


def test_structured_redactions_are_isolated_between_live_handles(tmp_path):
    import pathlib
    import subprocess
    import sys

    fixture = pathlib.Path(__file__).resolve().parents[2] / "core_tests/redaction_fixture.py"
    def run(*args):
        return subprocess.check_output([sys.executable, str(fixture), *map(str, args)], text=True).strip()

    left, right = tmp_path / "left", tmp_path / "right"
    first_upstream, second_upstream = run("start", left), run("start", right)
    with (servirtium.record(str(left / "tape.md"), first_upstream)
          .redact_header("Authorization").start()) as first:
        with servirtium.record(str(right / "tape.md"), second_upstream).start() as second:
            run("drive", left, first.base_url)
            run("drive", right, second.base_url)
    assert "header-secret" not in (left / "tape.md").read_text()
    assert "Authorization: [REDACTED]" in (left / "tape.md").read_text()
    assert "header-secret" in (right / "tape.md").read_text()
