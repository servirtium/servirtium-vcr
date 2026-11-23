"""Just enough of the NTLM message layout (MS-NLMP 2.2.1) to say what a
token on a tape is and what it carries, and to build a fixed CHALLENGE.

Written here, not taken from pyspnego's private modules, so the tests read
the bytes the way the specification lays them out.
"""

from __future__ import annotations

import base64
import struct

SIGNATURE = b"NTLMSSP\x00"

NEGOTIATE_UNICODE = 0x00000001
REQUEST_TARGET = 0x00000004
NEGOTIATE_SIGN = 0x00000010
NEGOTIATE_SEAL = 0x00000020
NEGOTIATE_NTLM = 0x00000200
NEGOTIATE_ALWAYS_SIGN = 0x00008000
TARGET_TYPE_SERVER = 0x00020000
NEGOTIATE_EXTENDED_SESSIONSECURITY = 0x00080000
NEGOTIATE_TARGET_INFO = 0x00800000
NEGOTIATE_VERSION = 0x02000000
NEGOTIATE_128 = 0x20000000
NEGOTIATE_KEY_EXCH = 0x40000000
NEGOTIATE_56 = 0x80000000

AV_EOL, AV_NB_COMPUTER, AV_NB_DOMAIN, AV_DNS_COMPUTER, AV_TIMESTAMP = 0, 1, 2, 3, 7


def ntlm_message(token: bytes) -> bytes:
    """The raw NTLM message in ``token``: the token itself, or the one a
    SPNEGO wrapper carries (Negotiate), found by its signature."""
    at = token.find(SIGNATURE)
    return token[at:] if at >= 0 else b""


def message_type(token: bytes) -> int:
    """1 (NEGOTIATE), 2 (CHALLENGE), 3 (AUTHENTICATE), or 0 for no NTLM message."""
    msg = ntlm_message(token)
    return struct.unpack_from("<I", msg, 8)[0] if len(msg) >= 12 else 0


def is_spnego(token: bytes) -> bool:
    """A SPNEGO NegTokenInit (0x60) or NegTokenResp (0xa1) wrapper."""
    return token[:1] in (b"\x60", b"\xa1")


def _field(msg: bytes, at: int) -> bytes:
    length, _max, offset = struct.unpack_from("<HHI", msg, at)
    return msg[offset:offset + length]


def parse_authenticate(token: bytes) -> dict:
    """The names a Type 3 carries in clear, and the size of its NT response
    (an NTLMv2 response is more than 24 bytes)."""
    msg = ntlm_message(token)
    flags = struct.unpack_from("<I", msg, 60)[0]
    enc = "utf-16-le" if flags & NEGOTIATE_UNICODE else "latin-1"
    return {
        "domain": _field(msg, 28).decode(enc),
        "user": _field(msg, 36).decode(enc),
        "workstation": _field(msg, 44).decode(enc),
        "nt_response_length": len(_field(msg, 20)),
        "nt_proof": _field(msg, 20)[:16],
    }


def parse_challenge(token: bytes) -> dict:
    msg = ntlm_message(token)
    flags = struct.unpack_from("<I", msg, 20)[0]
    info = _field(msg, 40)
    pairs = {}
    i = 0
    while i + 4 <= len(info):
        av_id, av_len = struct.unpack_from("<HH", info, i)
        if av_id == AV_EOL:
            break
        pairs[av_id] = info[i + 4:i + 4 + av_len]
        i += 4 + av_len
    return {
        "flags": flags,
        "server_challenge": msg[24:32],
        "target_name": _field(msg, 12).decode("utf-16-le"),
        "nb_computer": pairs.get(AV_NB_COMPUTER, b"").decode("utf-16-le"),
        "dns_computer": pairs.get(AV_DNS_COMPUTER, b"").decode("utf-16-le"),
        "timestamp": pairs.get(AV_TIMESTAMP, b""),
    }


def build_challenge(
    server_challenge: bytes = bytes.fromhex("0123456789abcdef"),
    computer: str = "NAE-NTLM-SERVER",
    domain: str = "WORKSTATION",
    filetime: int = 0x01D0000000000000,
) -> bytes:
    """A fixed, well-formed Type 2 (CHALLENGE): the same bytes every time.
    The flags are those pyspnego's acceptor answers a pyspnego client with;
    the names are synthetic. A client can compute a Type 3 against it; no
    server can check that Type 3, since none issued this challenge."""
    flags = (
        NEGOTIATE_UNICODE | REQUEST_TARGET | NEGOTIATE_SIGN | NEGOTIATE_SEAL | NEGOTIATE_NTLM
        | NEGOTIATE_ALWAYS_SIGN | TARGET_TYPE_SERVER | NEGOTIATE_EXTENDED_SESSIONSECURITY
        | NEGOTIATE_TARGET_INFO | NEGOTIATE_128 | NEGOTIATE_KEY_EXCH | NEGOTIATE_56
    )
    target = computer.encode("utf-16-le")

    def av(av_id: int, value: bytes) -> bytes:
        return struct.pack("<HH", av_id, len(value)) + value

    info = (
        av(AV_NB_COMPUTER, target)
        + av(AV_NB_DOMAIN, domain.encode("utf-16-le"))
        + av(AV_DNS_COMPUTER, computer.lower().encode("utf-16-le"))
        + av(AV_TIMESTAMP, struct.pack("<Q", filetime))
        + av(AV_EOL, b"")
    )
    header_len = 48
    return (
        SIGNATURE
        + struct.pack("<I", 2)
        + struct.pack("<HHI", len(target), len(target), header_len)
        + struct.pack("<I", flags)
        + server_challenge
        + b"\x00" * 8
        + struct.pack("<HHI", len(info), len(info), header_len + len(target))
        + target
        + info
    )


def b64(token: bytes) -> str:
    return base64.b64encode(token).decode()


def unb64(text: str) -> bytes:
    return base64.b64decode(text)
