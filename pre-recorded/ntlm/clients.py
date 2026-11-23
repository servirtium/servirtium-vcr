"""The HTTP clients the tests drive, each doing NTLM its own way.

* ``requests`` + ``requests-ntlm`` (pyspnego inside): sends the request
  without credentials, then Type 1 and Type 3 on the same pooled connection.
  Prefers NTLM when a server offers both NTLM and Negotiate.
* ``curl --ntlm``: sends Type 1 straight away (it is told the scheme), then
  Type 3 on the same connection.
* ``curl --negotiate``: SPNEGO through the system GSS-API library.
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
import shutil
import subprocess
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
    trace: str = ""

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


# ---- curl


def curl_has(feature: str) -> bool:
    if not shutil.which("curl"):
        return False
    out = subprocess.run(["curl", "--version"], capture_output=True, text=True).stdout
    return any(feature in line.split() for line in out.splitlines() if line.startswith("Features:"))


def curl_version() -> str:
    return subprocess.run(["curl", "--version"], capture_output=True, text=True).stdout.splitlines()[0]


def curl_call(base: str, path: str = "/whoami", *, auth: str = "ntlm", password: str = PASSWORD,
              method: str = "GET", data: str | None = None, chunked: bool = False) -> Result:
    cmd = ["curl", "-sS", "-v", "--max-time", "30", "-X", method]
    if auth == "ntlm":
        cmd += ["--ntlm", "-u", f"{USER}:{password}"]
    elif auth == "negotiate":
        cmd += ["--negotiate", "-u", f"{USER}:{password}"]
    if data is not None:
        cmd += ["-H", "Content-Type: application/json", "--data-binary", "@-"]
        if chunked:
            cmd += ["-H", "Transfer-Encoding: chunked"]
    cmd += ["-w", "\n%{http_code}", base + path]
    p = subprocess.run(cmd, input=data or "", capture_output=True, text=True, timeout=60)
    body, _, code = p.stdout.rpartition("\n")
    statuses, schemes, pending = [], [], None
    for line in p.stderr.splitlines():
        if line.startswith("> GET ") or line.startswith("> POST "):
            if pending is not None:
                schemes.append(pending)
            pending = ""
        elif line.lower().startswith("> authorization:"):
            pending = line.split(":", 1)[1].strip().split(" ", 1)[0]
        elif line.startswith("< HTTP/"):
            statuses.append(int(line.split()[2]))
    if pending is not None:
        schemes.append(pending)
    return Result(int(code or 0), body, statuses, schemes, p.stderr)


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
