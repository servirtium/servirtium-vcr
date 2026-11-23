"""Fixtures: the NTLM server as a subprocess, and Servirtium recorders and
players set up the way this directory's tapes are made.

Environment:
  SERVIRTIUM_VCR_LIB  libservirtium_vcr built from this checkout (default:
                      ../../core/native/libservirtium_vcr.so, which
                      ``aeb core/.build.ae`` writes).
  NTLM_RERECORD=1     the record tests write the committed tapes in tapes/
                      (otherwise they record into a temporary directory and
                      the playback tests read the committed tapes).
"""

from __future__ import annotations

import os
import re
import socket
import subprocess
import sys
import time
from pathlib import Path

import pytest

HERE = Path(__file__).resolve().parent
REPO = HERE.parent.parent
TAPES = HERE / "tapes"

# The in-tree Python binding, over the library built from this checkout.
sys.path.insert(0, str(REPO / "python"))
os.environ.setdefault("SERVIRTIUM_VCR_LIB", str(REPO / "core" / "native" / "libservirtium_vcr.so"))
# pyspnego's NTLM client puts the workstation name in its Type 3; without
# this it is socket.gethostname(), the recording machine's name.
os.environ["NETBIOS_COMPUTER_NAME"] = "NAE-CLIENT"

import servirtium  # noqa: E402

from ntlm_wire import b64, build_challenge  # noqa: E402

RERECORD = os.environ.get("NTLM_RERECORD") == "1"

# A raw NTLM Type 2 on a tape ("NTLMSSP\0" + type 2 is base64 TlRMTVNTUAACAAAA).
TYPE2_ON_TAPE = r"NTLM TlRMTVNTUAACAAAA[A-Za-z0-9+/]+=*"
FIXED_TYPE2 = "NTLM " + b64(build_challenge())


def pytest_configure(config):
    lib = Path(os.environ["SERVIRTIUM_VCR_LIB"])
    if not lib.is_file():
        pytest.exit(f"libservirtium_vcr not found at {lib}: build it with `aeb core/.build.ae` "
                    "from the repository root, or set SERVIRTIUM_VCR_LIB", returncode=2)


class NtlmServerProcess:
    """ntlm_server.py in its own process; its stderr log is the evidence."""

    def __init__(self, log_path: Path):
        self.log_path = log_path
        self._log = open(log_path, "w")
        self.proc = subprocess.Popen([sys.executable, str(HERE / "ntlm_server.py"), "--port", "0"],
                                     stdout=subprocess.PIPE, stderr=self._log, text=True, cwd=HERE)
        line = self.proc.stdout.readline().strip()
        if not line.startswith("listening on "):
            self.stop()
            raise RuntimeError(f"ntlm_server did not start: {line!r}\n{log_path.read_text()}")
        self.url = line.split("listening on ", 1)[1]

    def log(self) -> list[str]:
        time.sleep(0.05)  # the server flushes per line; let the last one land
        return [ln.removeprefix("ntlm_server: ") for ln in self.log_path.read_text().splitlines()]

    def lines(self, needle: str) -> list[str]:
        return [ln for ln in self.log() if needle in ln]

    def connections_opened(self) -> int:
        return len([ln for ln in self.log() if ln.endswith(" opened")])

    def stop(self):
        if self.proc.poll() is None:
            self.proc.terminate()
            try:
                self.proc.wait(timeout=5)
            except subprocess.TimeoutExpired:
                self.proc.kill()
        self._log.close()


@pytest.fixture
def ntlm_server(tmp_path, request):
    server = NtlmServerProcess(tmp_path / "ntlm_server.log")
    yield server
    server.stop()
    if request.node.rep_call.failed if hasattr(request.node, "rep_call") else False:
        print("---- ntlm_server log ----\n" + server.log_path.read_text())


@pytest.hookimpl(wrapper=True)
def pytest_runtest_makereport(item, call):
    rep = yield
    setattr(item, "rep_" + rep.when, rep)
    return rep


def free_port() -> int:
    with socket.socket() as s:
        s.bind(("127.0.0.1", 0))
        return s.getsockname()[1]


def recorder(tape: Path, upstream: str, *, credentials: bool = True, fixed_type2: bool = True):
    """A record builder with this directory's rules. Always: the client's
    User-Agent and Accept-Encoding left out (so a tape replays, and
    re-records, the same for any version of the client and any Python:
    urllib3 offers zstd where the Python has it),
    the Date response header left out, and the recorder's own host:port written
    {{request.host}}. With ``credentials``: Servirtium's credential preset
    (Authorization becomes ``NTLM AUTHORIZATION_N``). With ``fixed_type2``:
    a raw NTLM Type 2 becomes the fixed one of ntlm_wire.build_challenge()."""
    port = free_port()
    b = (servirtium.record(str(tape), upstream).port(port)
         .remove_header(servirtium.Field.REQUEST_HEADERS, "User-Agent")
         .remove_header(servirtium.Field.REQUEST_HEADERS, "Accept-Encoding")
         .remove_header(servirtium.Field.RESPONSE_HEADERS, "Date")
         .redact_whole_tape(re.escape(f"127.0.0.1:{port}"), "{{request.host}}"))
    if credentials:
        b = b.redact_credentials()
    if fixed_type2:
        b = b.redact_whole_tape(TYPE2_ON_TAPE, FIXED_TYPE2)
    return b


def player(tape: Path, *, credentials: bool = True):
    """A playback builder with the same rules as :func:`recorder`."""
    b = (servirtium.playback(str(tape))
         .remove_header(servirtium.Field.REQUEST_HEADERS, "User-Agent")
         .remove_header(servirtium.Field.REQUEST_HEADERS, "Accept-Encoding"))
    if credentials:
        b = b.redact_credentials()
    return b


def committed_or_tmp(tmp_path: Path, name: str) -> Path:
    """Where a record test writes: tapes/ when re-recording, else tmp."""
    if RERECORD:
        TAPES.mkdir(exist_ok=True)
        return TAPES / name
    return tmp_path / name


def parse_tape(path: Path) -> list[dict]:
    """The interactions of a markdown tape: method, path, request headers
    (list of (name, value) in tape order), request body, response headers,
    status, response body."""
    text = path.read_text()
    out = []
    for chunk in re.split(r"^## Interaction \d+: ", text, flags=re.M)[1:]:
        head, _, rest = chunk.partition("\n")
        method, _, req_path = head.partition(" ")
        blocks = re.findall(r"^### (.*?)\n\n```\n(.*?)```", rest, flags=re.M | re.S)
        d = {"method": method, "path": req_path}
        for title, content in blocks:
            if title.startswith("Request headers"):
                d["request_headers"] = _headers(content)
            elif title.startswith("Request body"):
                d["request_body"] = content
            elif title.startswith("Response headers"):
                d["response_headers"] = _headers(content)
            elif title.startswith("Response body"):
                d["status"] = int(re.search(r"\((\d{3})", title).group(1))
                d["response_body"] = content
        out.append(d)
    return out


def _headers(block: str) -> list[tuple[str, str]]:
    return [tuple(x.strip() for x in ln.split(":", 1)) for ln in block.splitlines() if ":" in ln]


def header(headers: list[tuple[str, str]], name: str) -> list[str]:
    return [v for n, v in headers if n.lower() == name.lower()]
