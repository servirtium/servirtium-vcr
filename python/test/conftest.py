"""Shared pytest fixtures and helpers.

The VCR core is one-server-per-port: N independent servers can run
concurrently, one per port, each keyed by its own handle (see
test_concurrent.py).
"""

import http.client
import os
import socket
import threading
from http.server import BaseHTTPRequestHandler, HTTPServer

import pytest

TAPES_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "tapes")


def tape(name: str) -> str:
    return os.path.join(TAPES_DIR, name)


class FakeUpstream:
    """A throwaway HTTP upstream for record-mode tests.

    Returns a configurable body WITH Content-Length (so no chunking — the
    urllib/http.client default), plus any extra response headers, and captures
    the last request it saw so tests can assert what the VCR forwarded.
    """

    def __init__(self):
        self.response_body = "upstream-body"
        self.response_content_type = "text/plain"
        self.status = 200
        self.extra_response_headers: dict[str, str] = {}
        self.last_method: str | None = None
        self.last_body: str | None = None

        upstream = self

        class Handler(BaseHTTPRequestHandler):
            def log_message(self, *args):  # silence
                pass

            def _serve(self):
                upstream.last_method = self.command
                length = int(self.headers.get("Content-Length", 0) or 0)
                upstream.last_body = self.rfile.read(length).decode("utf-8") if length else ""
                payload = upstream.response_body.encode("utf-8")
                self.send_response(upstream.status)
                self.send_header("Content-Type", upstream.response_content_type)
                self.send_header("Content-Length", str(len(payload)))
                for k, v in upstream.extra_response_headers.items():
                    self.send_header(k, v)
                self.end_headers()
                self.wfile.write(payload)

            do_GET = _serve
            do_POST = _serve
            do_PUT = _serve
            do_DELETE = _serve

        self._server = HTTPServer(("127.0.0.1", 0), Handler)
        self.port = self._server.server_address[1]
        self.base_url = f"http://127.0.0.1:{self.port}"
        self._thread = threading.Thread(target=self._server.serve_forever, daemon=True)
        self._thread.start()

    def close(self):
        self._server.shutdown()
        self._server.server_close()
        self._thread.join(timeout=5)


@pytest.fixture
def upstream():
    up = FakeUpstream()
    try:
        yield up
    finally:
        up.close()


def http_get(base_url: str, path: str, headers: dict[str, str] | None = None):
    """Minimal stdlib GET returning (status, body) using http.client."""
    return _request(base_url, "GET", path, None, headers)


def http_request(base_url, method, path, body=None, headers=None):
    return _request(base_url, method, path, body, headers)


def _request(base_url, method, path, body, headers):
    host_port = base_url.split("://", 1)[1]
    host, port = host_port.split(":")
    conn = http.client.HTTPConnection(host, int(port), timeout=10)
    try:
        conn.request(method, path, body=body, headers=headers or {})
        resp = conn.getresponse()
        data = resp.read().decode("utf-8")
        return resp.status, data
    finally:
        conn.close()
