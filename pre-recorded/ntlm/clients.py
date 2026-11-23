"""The HTTP clients the tests drive, each doing NTLM its own way.

* ``requests`` + ``requests-ntlm`` (pyspnego inside): sends the request
  without credentials, then Type 1 and Type 3 on the same pooled connection.
  Prefers NTLM when a server offers both NTLM and Negotiate.
* :func:`type1_first_call`: pyspnego's NTLM client on one kept-alive
  ``http.client`` connection, told the scheme, so it sends Type 1 with the
  first request (no anonymous leg) and holds a POST's body back until the
  Type 3.
* ``httpx`` with :class:`SpnegoAuth` below (pyspnego's Negotiate client;
  with no Kerberos it is SPNEGO carrying NTLM).
* :class:`WireClient`: one ``http.client`` connection per object and a
  pyspnego NTLM client, leg by leg, so a test decides which connection
  carries which message.
"""

from __future__ import annotations

import base64
import http.client
import json
from dataclasses import dataclass, field

import httpx
import requests
import spnego
from requests_ntlm import HttpNtlmAuth

USER = "NAEDOMAIN\\naeuser"
PASSWORD = "Not-A-Real-Passw0rd"
WRONG_PASSWORD = "Not-The-Passw0rd"


@dataclass
class Result:
    status: int
    body: str
    statuses: list[int] = field(default_factory=list)  # every response, in order
    schemes: list[str] = field(default_factory=list)  # the Authorization scheme of each request ("" for none)
    connections: int = 0  # TCP connections the client opened (type1_first_call only)

    def json(self):
        return json.loads(self.body)


def _scheme(value: str | None) -> str:
    return (value or "").split(" ", 1)[0]


# ---- requests + requests-ntlm


def requests_call(base: str, path: str = "/whoami", password: str = PASSWORD, method: str = "GET",
                  json_body=None, session: requests.Session | None = None) -> Result:
    own = session is None
    s = session or requests.Session()
    try:
        r = s.request(method, base + path, json=json_body, auth=HttpNtlmAuth(USER, password), timeout=30)
        chain = list(r.history) + [r]
        return Result(r.status_code, r.text, [x.status_code for x in chain],
                      [_scheme(x.request.headers.get("Authorization")) for x in chain])
    finally:
        if own:
            s.close()


# ---- Type 1 first, on one kept-alive connection


class _CountingConnection(http.client.HTTPConnection):
    """An ``http.client`` connection that counts the TCP connections it opens
    (it reopens on its own if the server closes one)."""

    def __init__(self, host: str, port: int):
        super().__init__(host, port, timeout=30)
        self.opened = 0

    def connect(self):
        self.opened += 1
        super().connect()


def _host_port(base: str) -> tuple[str, int]:
    host, port = base.split("://", 1)[1].rsplit(":", 1)
    return host, int(port)


def type1_first_call(base: str, path: str = "/whoami", *, password: str = PASSWORD, method: str = "GET",
                     body: bytes | None = None, chunked: bool = False) -> Result:
    """NTLM with pyspnego, told the scheme: the first request carries the
    Type 1 (no anonymous request), the Type 3 goes on the same connection.
    A POST's body waits for the Type 3: the Type 1 leg says
    ``Content-Length: 0`` or, chunked, sends only the last (empty) chunk."""
    conn = _CountingConnection(*_host_port(base))
    ctx = WireClient.context(password)
    token, statuses, text, type3 = ctx.step(), [], "", False
    try:
        while True:
            headers = {"Authorization": f"NTLM {base64.b64encode(token).decode()}"}
            payload = None
            if body is not None:
                headers["Content-Type"] = "application/json"
                payload = body if type3 else b""
                if chunked:
                    headers["Transfer-Encoding"] = "chunked"
                    payload = iter([payload] if payload else [])
            conn.request(method, path, body=payload, headers=headers, encode_chunked=chunked)
            r = conn.getresponse()
            text = r.read().decode()
            statuses.append(r.status)
            challenge = next((v for v in r.headers.get_all("WWW-Authenticate") or [] if v.startswith("NTLM ")), None)
            if type3 or r.status != 401 or challenge is None:
                break
            token, type3 = ctx.step(base64.b64decode(challenge.split(" ", 1)[1])), True
        return Result(statuses[-1], text, statuses, ["NTLM"] * len(statuses), conn.opened)
    finally:
        conn.close()


# ---- httpx with a pyspnego auth flow


class SpnegoAuth(httpx.Auth):
    """HTTP Negotiate or NTLM for httpx, over pyspnego. Picks ``Negotiate``
    when the server offers it (as browsers do), else ``NTLM``. The legs run
    on httpx's pooled connection; the last token a server sends with its
    200 (SPNEGO's mechListMIC) is given to the client context too."""

    requires_response_body = True

    def __init__(self, user: str, password: str, prefer: str = "Negotiate"):
        self.user, self.password, self.prefer = user, password, prefer
        self.schemes: list[str] = []

    def auth_flow(self, request):
        response = yield request
        self.schemes.append("")
        offers = [v.split(" ", 1)[0] for v in response.headers.get_list("www-authenticate")]
        if response.status_code != 401 or not offers:
            return
        scheme = self.prefer if self.prefer in offers else offers[0]
        ctx = spnego.client(self.user, self.password, hostname=request.url.host, service="http",
                            protocol="negotiate" if scheme == "Negotiate" else "ntlm")
        token = ctx.step()
        while True:
            request.headers["Authorization"] = f"{scheme} {base64.b64encode(token).decode()}"
            self.schemes.append(scheme)
            response = yield request
            reply = next((v for v in response.headers.get_list("www-authenticate")
                          if v.startswith(scheme + " ")), None)
            if response.status_code != 401:
                if reply and not ctx.complete:
                    ctx.step(base64.b64decode(reply.split(" ", 1)[1]))
                return
            if reply is None:
                return
            token = ctx.step(base64.b64decode(reply.split(" ", 1)[1]))


def httpx_call(base: str, path: str = "/whoami", password: str = PASSWORD, prefer: str = "Negotiate") -> Result:
    auth = SpnegoAuth(USER, password, prefer)
    with httpx.Client(timeout=30) as client:
        r = client.get(base + path, auth=auth)
        chain = list(r.history) + [r]
        return Result(r.status_code, r.text, [x.status_code for x in chain], auth.schemes)


# ---- leg by leg, on connections the test chooses


class WireClient:
    """One TCP connection (``http.client``). ``ntlm`` is the pyspnego NTLM
    client context; pass the same one to two WireClients to split a
    handshake across connections."""

    def __init__(self, base: str):
        host_port = base.split("://", 1)[1]
        host, port = host_port.rsplit(":", 1)
        self.conn = http.client.HTTPConnection(host, int(port), timeout=30)

    @staticmethod
    def context(password: str = PASSWORD):
        return spnego.client(USER, password, hostname="127.0.0.1", service="http", protocol="ntlm")

    def get(self, path: str = "/whoami", token: bytes | None = None, scheme: str = "NTLM",
            close: bool = False) -> tuple[int, str | None, str]:
        headers = {}
        if token is not None:
            headers["Authorization"] = f"{scheme} {base64.b64encode(token).decode()}"
        if close:
            headers["Connection"] = "close"
        self.conn.request("GET", path, headers=headers)
        r = self.conn.getresponse()
        body = r.read().decode()
        challenge = next((v for v in r.headers.get_all("WWW-Authenticate") or [] if v.startswith(scheme + " ")), None)
        return r.status, challenge, body

    @staticmethod
    def token_of(challenge: str) -> bytes:
        return base64.b64decode(challenge.split(" ", 1)[1])

    def close(self):
        self.conn.close()
