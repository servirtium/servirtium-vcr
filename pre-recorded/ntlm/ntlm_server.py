"""An NTLM-protected HTTP/1.1 server for recording NTLM handshakes through
Servirtium.

The acceptor is pyspnego's pure-Python NTLM (``spnego.server``), which
checks a client's NTLMv2 response against the NT hash of a user in the flat
credential file named by ``NTLM_USER_FILE`` (``DOMAIN:USER:PASSWORD``
lines; see ``users.txt`` beside this file). Nothing here talks to a domain
controller, Kerberos or Windows: it is pyspnego's NTLM, on loopback, with a
synthetic user.

What it does, like IIS with Windows Authentication on:

* A protected request with no ``Authorization`` on a connection that is not
  authenticated gets ``401`` with two challenges, ``WWW-Authenticate:
  Negotiate`` then ``WWW-Authenticate: NTLM`` (IIS's order).
* ``Authorization: NTLM <Type 1>`` (or ``Negotiate <token>``) starts a
  handshake on THIS connection: the acceptor's Type 2 (CHALLENGE) goes back
  in a ``401``. The acceptor is held by the connection, so the Type 3
  (AUTHENTICATE) must arrive on the same connection.
* A Type 3 on a connection that never sent a Type 1 is given to a fresh
  pyspnego acceptor, which refuses it (it holds no server challenge to check
  the response against): ``401`` and a ``REFUSED`` log line naming both.
* A wrong password: pyspnego refuses the Type 3 (``Invalid NTLM response
  from initiator``): ``401`` and a ``REFUSED`` log line.
* After a good Type 3 the connection is authenticated: that request is
  served, and so is every later request on the same connection even without
  an ``Authorization`` header, as IIS does by default (NTLM authenticates a
  connection, not a request).

Endpoints: ``GET /whoami`` (protected, JSON naming the user), ``POST /echo``
(protected, echoes a JSON body back with the user), ``GET /anonymous`` (no
authentication).

Run it with ``python ntlm_server.py [--port N] [--users FILE]`` (loopback
only). It prints ``listening on http://127.0.0.1:PORT`` as its first line
on stdout and logs every handshake step to stderr; the tests start it as a
subprocess and read both.
"""

from __future__ import annotations

import argparse
import base64
import json
import socket
import sys
import threading
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path

import spnego
import spnego._ntlm
import spnego.exceptions

from ntlm_wire import is_spnego, message_type

HERE = Path(__file__).resolve().parent
USER_FILE = HERE / "users.txt"

# pyspnego's acceptor names the server in its Type 2 after
# socket.gethostname() (NetBIOS and DNS computer name, and the target name).
# Those names go onto the tapes, so this server process presents a synthetic
# one instead of the machine that records. Only pyspnego's NTLM module sees
# it, and only in this process (the tests run the server as a subprocess).
SERVER_COMPUTER_NAME = "NAE-NTLM-SERVER"


class _SyntheticHostname:
    def __init__(self, real, name):
        self._real, self._name = real, name

    def __getattr__(self, attr):
        return getattr(self._real, attr)

    def gethostname(self):
        return self._name


_MESSAGE_NAMES = {1: "Type 1 (NEGOTIATE)", 2: "Type 2 (CHALLENGE)", 3: "Type 3 (AUTHENTICATE)"}


def describe_token(token: bytes) -> str:
    kind = message_type(token)
    name = _MESSAGE_NAMES.get(kind, f"NTLM message type {kind}") if kind else ""
    if is_spnego(token):
        wrapper = "SPNEGO NegTokenInit" if token[:1] == b"\x60" else "SPNEGO NegTokenResp"
        return f"{wrapper} carrying {name}" if name else wrapper
    return name or f"unknown token ({len(token)} bytes)"


class NtlmServer(ThreadingHTTPServer):
    """One server and its own state (a connection counter); every step is
    logged to stderr, one line each."""

    daemon_threads = True
    allow_reuse_address = True

    def __init__(self, address, user_file: Path = USER_FILE):
        super().__init__(address, NtlmHandler)
        self.user_file = Path(user_file)
        self._lock = threading.Lock()
        self._next_conn = 0

    def new_connection_id(self, peer) -> str:
        with self._lock:
            self._next_conn += 1
            return f"conn#{self._next_conn} peer={peer[0]}:{peer[1]}"

    def log_event(self, line: str) -> None:
        with self._lock:
            print(f"ntlm_server: {line}", file=sys.stderr, flush=True)

    def acceptor(self, protocol: str):
        # pyspnego reads the credential file named by NTLM_USER_FILE when the
        # acceptor is created; main() sets it for this process.
        return spnego.server(protocol=protocol)


class NtlmHandler(BaseHTTPRequestHandler):
    protocol_version = "HTTP/1.1"  # keep-alive: NTLM needs the connection to stay
    server_version = "pyspnego-ntlm-test-server/1"

    def version_string(self) -> str:
        return self.server_version

    # ---- per-connection state (BaseHTTPRequestHandler is one per connection)
    def setup(self) -> None:
        super().setup()
        self.conn_id = self.server.new_connection_id(self.client_address)
        self.requests_on_conn = 0
        self.ctx = None  # the pending acceptor, between Type 1 and Type 3
        self.ctx_scheme = ""
        self.user = ""  # set once the connection is authenticated
        self.user_scheme = ""
        self.server.log_event(f"{self.conn_id} opened")

    def finish(self) -> None:
        try:
            super().finish()
        finally:
            self.server.log_event(f"{self.conn_id} closed after {self.requests_on_conn} request(s)")

    def log_message(self, fmt, *args):  # route http.server's access log through ours
        self.server.log_event(f"{self.conn_id} {fmt % args}")

    # ---- helpers
    def _read_body(self) -> bytes:
        if "chunked" in self.headers.get("Transfer-Encoding", "").lower():
            chunks = []
            while True:
                size_line = self.rfile.readline().strip()
                size = int(size_line.split(b";")[0], 16)
                if size == 0:
                    while self.rfile.readline() not in (b"\r\n", b"\n", b""):
                        pass
                    break
                chunks.append(self.rfile.read(size))
                self.rfile.readline()
            return b"".join(chunks)
        length = int(self.headers.get("Content-Length", "0") or "0")
        return self.rfile.read(length) if length > 0 else b""

    def _send(self, status: int, body: bytes, content_type: str, challenges=()) -> None:
        self.send_response(status)
        for challenge in challenges:
            self.send_header("WWW-Authenticate", challenge)
        self.send_header("Content-Type", content_type)
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        if self.command != "HEAD":
            self.wfile.write(body)

    def _unauthorized(self, challenges, why: str) -> None:
        self._send(401, f"401 Unauthorized: {why}\n".encode(), "text/plain; charset=utf-8", challenges)

    def _json(self, status: int, payload) -> None:
        self._send(status, (json.dumps(payload, sort_keys=True) + "\n").encode(), "application/json")

    # ---- authentication
    def _authenticate(self, body: bytes) -> bool:
        """True when the request may be served; otherwise a 401 was sent."""
        auth = self.headers.get("Authorization", "")
        scheme, _, b64 = auth.partition(" ")
        scheme_l = scheme.lower()
        if scheme_l not in ("ntlm", "negotiate"):
            if self.user:
                self.server.log_event(f"{self.conn_id} served as {self.user}: connection already authenticated, no Authorization header")
                return True
            self.server.log_event(f"{self.conn_id} {self.command} {self.path}: no NTLM/Negotiate credentials, challenging")
            self._unauthorized(["Negotiate", "NTLM"], "send NTLM or Negotiate credentials")
            return False

        canon_scheme = "NTLM" if scheme_l == "ntlm" else "Negotiate"
        try:
            token = base64.b64decode(b64.strip(), validate=True)
        except ValueError:
            self.server.log_event(f"{self.conn_id} REFUSED: {canon_scheme} token is not base64")
            self._unauthorized(["Negotiate", "NTLM"], "malformed token")
            return False
        kind = message_type(token)
        what = describe_token(token)
        self.server.log_event(f"{self.conn_id} {self.command} {self.path}: Authorization {canon_scheme} {what}")

        starts = kind == 1 or token[:1] == b"\x60"
        if starts:
            # A new handshake on this connection; whatever was pending is dropped.
            self.ctx = self.server.acceptor("ntlm" if canon_scheme == "NTLM" else "negotiate")
            self.ctx_scheme = canon_scheme
            self.user = ""
            ctx = self.ctx
        elif self.ctx is not None:
            ctx = self.ctx
        else:
            # Type 3 with no Type 1 on this connection. Do not assume what
            # pyspnego does with it: hand it to a fresh acceptor and log its answer.
            fresh = self.server.acceptor("ntlm" if canon_scheme == "NTLM" else "negotiate")
            try:
                fresh.step(token)
                verdict = "accepted it (unexpected)" if fresh.complete else "did not complete"
            except Exception as exc:  # noqa: BLE001 - the message is the evidence
                verdict = f"refused it: {type(exc).__name__}: {exc}"
            if fresh.complete:
                self.user, self.user_scheme = str(fresh.client_principal), canon_scheme
                self.server.log_event(f"{self.conn_id} WARNING: a fresh acceptor {verdict}")
                return True
            self.server.log_event(
                f"{self.conn_id} REFUSED: {what} on a connection that sent no Type 1, "
                f"so there is no server challenge here to check it against; a fresh pyspnego acceptor {verdict}"
            )
            self._unauthorized(["Negotiate", "NTLM"], "authentication message on a connection with no handshake in progress")
            return False

        try:
            out = ctx.step(token)
        except spnego.exceptions.SpnegoError as exc:
            self.ctx = None
            self.server.log_event(f"{self.conn_id} REFUSED: {what} rejected by pyspnego: {exc} (wrong password, or a response computed for another challenge)")
            self._unauthorized(["Negotiate", "NTLM"], "logon denied")
            return False
        except Exception as exc:  # noqa: BLE001
            self.ctx = None
            self.server.log_event(f"{self.conn_id} REFUSED: {what} not understood by pyspnego: {type(exc).__name__}: {exc}")
            self._unauthorized(["Negotiate", "NTLM"], "bad token")
            return False

        if not ctx.complete:
            challenge = f"{canon_scheme} {base64.b64encode(out).decode()}"
            self.server.log_event(f"{self.conn_id} challenge: 401 with {canon_scheme} {describe_token(out)}")
            self._unauthorized([challenge], "continue the handshake on this connection")
            return False

        self.ctx = None
        self.user = str(ctx.client_principal)
        self.user_scheme = canon_scheme
        self.final_token = out
        self.server.log_event(f"{self.conn_id} AUTHENTICATED {self.user} via {canon_scheme} (pyspnego negotiated {ctx.negotiated_protocol})")
        return True

    # ---- request dispatch
    def _handle(self) -> None:
        self.requests_on_conn += 1
        self.final_token = b""
        self.server.log_event(f"{self.conn_id} {self.command} {self.path} header order: {', '.join(self.headers.keys())}")
        body = self._read_body()  # always drained, so the connection stays usable
        path = self.path.split("?", 1)[0]
        if path == "/anonymous" and self.command == "GET":
            self._json(200, {"anonymous": True})
            return
        if path not in ("/whoami", "/echo"):
            self._json(404, {"error": "not found", "path": path})
            return
        if not self._authenticate(body):
            return
        challenges = []
        if self.final_token:
            # SPNEGO's last leg (mechListMIC) travels on the 200.
            challenges.append(f"{self.user_scheme} {base64.b64encode(self.final_token).decode()}")
        if path == "/whoami" and self.command == "GET":
            payload = {"user": self.user, "scheme": self.user_scheme}
        elif path == "/echo" and self.command == "POST":
            try:
                received = json.loads(body.decode() or "null")
            except ValueError:
                received = body.decode(errors="replace")
            payload = {"user": self.user, "scheme": self.user_scheme, "received": received}
        else:
            self._json(405, {"error": "method not allowed"})
            return
        data = (json.dumps(payload, sort_keys=True) + "\n").encode()
        self.send_response(200)
        for c in challenges:
            self.send_header("WWW-Authenticate", c)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(data)))
        self.end_headers()
        self.wfile.write(data)

    do_GET = _handle
    do_POST = _handle


def main(argv=None) -> None:
    parser = argparse.ArgumentParser(description="NTLM-protected HTTP/1.1 server on 127.0.0.1 (pyspnego acceptor)")
    parser.add_argument("--port", type=int, default=0, help="0 asks the OS for a free port")
    parser.add_argument("--users", default=str(USER_FILE), help="NTLM_USER_FILE (DOMAIN:USER:PASSWORD lines)")
    args = parser.parse_args(argv)
    import os

    os.environ["NTLM_USER_FILE"] = str(Path(args.users).resolve())
    spnego._ntlm.socket = _SyntheticHostname(socket, SERVER_COMPUTER_NAME)
    server = NtlmServer(("127.0.0.1", args.port), user_file=Path(args.users))
    # The first line on stdout is the contract with the tests: the URL.
    print(f"listening on http://127.0.0.1:{server.server_address[1]}", flush=True)
    server.log_event(f"pyspnego acceptor, users from {args.users}, computer name {SERVER_COMPUTER_NAME}")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass


if __name__ == "__main__":
    main()
