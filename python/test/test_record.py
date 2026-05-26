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
