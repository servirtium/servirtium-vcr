"""NTLM (and Negotiate carrying NTLM) through Servirtium: what the wire does
without Servirtium, what record mode does to it, what the tapes hold, and
what playback needs. Each test's name is the fact it establishes; a fact
that shows Servirtium getting NTLM wrong is a strict xfail whose reason says
what happens instead.

Run from this directory: ``python -m pytest`` (see README.md). Re-record the
committed tapes with ``NTLM_RERECORD=1 python -m pytest``.
"""

from __future__ import annotations

import base64
import re
import socket

import pytest
import servirtium

import clients as K
from conftest import (FIXED_TYPE2, TAPES, NtlmServerProcess, TYPE2_ON_TAPE, committed_or_tmp, header, parse_tape, player,
                      recorder)
from ntlm_wire import build_challenge, message_type, parse_authenticate, parse_challenge

CURL_NTLM = pytest.mark.skipif(not K.curl_has("NTLM"), reason="this curl was built without NTLM")
Outcome = servirtium.Outcome


def tokens_on(path, scheme_header: str):
    """(scheme, raw token bytes) for every header value of that name on the
    tape that carries a base64 token."""
    out = []
    for i in parse_tape(path):
        block = i["request_headers"] if scheme_header == "Authorization" else i["response_headers"]
        for v in header(block, scheme_header):
            scheme, _, b64 = v.partition(" ")
            if b64 and re.fullmatch(r"[A-Za-z0-9+/]+=*", b64):
                out.append((scheme, base64.b64decode(b64)))
    return out


# ============================================================================
# The server on its own (no Servirtium): the behaviour everything else is
# measured against.
# ============================================================================


def test_direct_requests_ntlm_picks_ntlm_over_the_negotiate_offered_first_and_authenticates(ntlm_server):
    """requests-ntlm answers a 401 offering ``Negotiate`` then ``NTLM`` with
    NTLM: anonymous request, Type 1, Type 3, all on one connection."""
    r = K.requests_call(ntlm_server.url)
    assert r.status == 200 and r.json() == {"user": "NAEDOMAIN\\naeuser", "scheme": "NTLM"}
    assert r.statuses == [401, 401, 200]
    assert r.schemes == ["", "NTLM", "NTLM"]
    assert ntlm_server.connections_opened() == 1


@CURL_NTLM
def test_direct_curl_ntlm_sends_type1_without_waiting_for_a_401_and_authenticates(ntlm_server):
    """curl --ntlm knows the scheme, so it skips the anonymous request: Type 1
    first, then Type 3 on the same (re-used) connection."""
    r = K.curl_call(ntlm_server.url)
    assert r.status == 200 and r.json()["user"] == "NAEDOMAIN\\naeuser"
    assert r.statuses == [401, 200] and r.schemes == ["NTLM", "NTLM"]
    assert "Re-using existing" in r.trace or "left intact" in r.trace
    assert ntlm_server.connections_opened() == 1


def test_direct_httpx_negotiate_without_kerberos_is_spnego_carrying_ntlm(ntlm_server):
    """pyspnego's Negotiate client, with no Kerberos to use, wraps NTLM in
    SPNEGO: three legs under ``Negotiate``, the server's last SPNEGO token
    (mechListMIC) on the 200."""
    r = K.httpx_call(ntlm_server.url)
    assert r.status == 200 and r.json() == {"user": "NAEDOMAIN\\naeuser", "scheme": "Negotiate"}
    assert r.schemes == ["", "Negotiate", "Negotiate"]
    assert ntlm_server.lines("SPNEGO NegTokenInit carrying Type 1")
    assert ntlm_server.lines("SPNEGO NegTokenResp carrying Type 3")


@pytest.mark.skipif(not K.curl_has("SPNEGO"), reason="this curl was built without SPNEGO")
def test_direct_curl_negotiate_falls_back_to_ntlm_without_kerberos(ntlm_server):
    """Whether curl --negotiate, with no Kerberos ticket, gets through by
    NTLM inside SPNEGO depends on the GSS-API library under curl."""
    r = K.curl_call(ntlm_server.url, auth="negotiate")
    if r.status != 200:
        gss = [ln.strip("* ") for ln in r.trace.splitlines() if "gss" in ln.lower()]
        pytest.xfail(f"{K.curl_version()}: no NTLM fallback, the 401 stands (statuses {r.statuses}); "
                     f"curl said: {gss[:1] or 'nothing about GSS-API'}")
    assert r.json()["scheme"] == "Negotiate"


def test_direct_a_wrong_password_is_refused_and_logged(ntlm_server):
    r = K.requests_call(ntlm_server.url, password=K.WRONG_PASSWORD)
    assert r.status == 401 and r.statuses == [401, 401, 401]
    refused = ntlm_server.lines("REFUSED: Type 3 (AUTHENTICATE) rejected by pyspnego")
    assert refused and "Invalid NTLM response from initiator" in refused[0]


def test_direct_a_type3_on_a_different_connection_from_its_type1_is_refused_and_logged(ntlm_server):
    """NTLM is connection-bound: the server's challenge lives with the
    connection that sent the Type 1. A fresh pyspnego acceptor cannot take a
    Type 3 (it issued no challenge), and says so."""
    ctx = K.WireClient.context()
    first, second = K.WireClient(ntlm_server.url), K.WireClient(ntlm_server.url)
    status, challenge, _ = first.get(token=ctx.step())
    assert status == 401 and challenge
    status, _, body = second.get(token=ctx.step(K.WireClient.token_of(challenge)))
    assert status == 401 and "no handshake in progress" in body
    refused = ntlm_server.lines("REFUSED: Type 3 (AUTHENTICATE) on a connection that sent no Type 1")
    assert refused and "Input message was not a NTLM Negotiate message" in refused[0]
    first.close(), second.close()


def test_direct_connection_close_after_type1_makes_ntlm_impossible(ntlm_server):
    """A client that asks to close after the Type 1 must send its Type 3 on a
    new connection, and the server refuses it."""
    ctx = K.WireClient.context()
    first = K.WireClient(ntlm_server.url)
    status, challenge, _ = first.get(token=ctx.step(), close=True)
    first.close()
    second = K.WireClient(ntlm_server.url)
    status, _, _ = second.get(token=ctx.step(K.WireClient.token_of(challenge)))
    assert status == 401
    second.close()


def test_direct_an_authenticated_connection_serves_later_requests_without_credentials(ntlm_server):
    """As IIS does by default: after the handshake, the same connection is
    served with no Authorization header; a new connection is not."""
    ctx = K.WireClient.context()
    conn = K.WireClient(ntlm_server.url)
    _, challenge, _ = conn.get(token=ctx.step())
    assert conn.get(token=ctx.step(K.WireClient.token_of(challenge)))[0] == 200
    assert conn.get()[0] == 200
    other = K.WireClient(ntlm_server.url)
    assert other.get()[0] == 401
    conn.close(), other.close()


def test_direct_the_anonymous_endpoint_needs_no_credentials(ntlm_server):
    assert K.WireClient(ntlm_server.url).get("/anonymous")[0] == 200


# ============================================================================
# (a) Record mode: is one client connection paired with one upstream
# connection for the whole handshake?
# ============================================================================


def test_record_one_clients_handshake_succeeds_because_the_recorder_reuses_its_one_upstream_connection(ntlm_server, tmp_path):
    """Record mode forwards each request with Aether's std.http.client, whose
    process-wide idle pool hands back the connection the previous request
    used. One client at a time, that keeps the handshake on one upstream
    connection, so NTLM works: by the pool's accident, not by pairing."""
    with recorder(tmp_path / "t.md", ntlm_server.url).start() as vcr:
        r = K.requests_call(vcr.base_url)
        assert vcr.last_kind is Outcome.OK
    assert r.status == 200 and r.statuses == [401, 401, 200]
    assert ntlm_server.connections_opened() == 1


@pytest.mark.xfail(strict=True, reason=(
    "Record mode does not pair client connections with upstream connections: two clients' "
    "interleaved handshakes go upstream over the one pooled connection, the second Type 1 "
    "replaces the first's challenge, and the first Type 3 is refused as if the password were "
    "wrong (then the second as having no handshake). See README, finding (a)."))
def test_record_keeps_two_interleaved_handshakes_on_their_own_upstream_connections(ntlm_server, tmp_path):
    with recorder(tmp_path / "t.md", ntlm_server.url).start() as vcr:
        a, b = K.WireClient(vcr.base_url), K.WireClient(vcr.base_url)
        ca, cb = K.WireClient.context(), K.WireClient.context()
        _, cha, _ = a.get(token=ca.step())
        _, chb, _ = b.get(token=cb.step())
        sa = a.get(token=ca.step(K.WireClient.token_of(cha)))[0]
        sb = b.get(token=cb.step(K.WireClient.token_of(chb)))[0]
        a.close(), b.close()
    log = "\n".join(ntlm_server.log())
    assert (sa, sb) == (200, 200), log


@pytest.mark.xfail(strict=True, reason=(
    "Record mode hands an upstream connection that one client authenticated to the next "
    "request from ANOTHER client connection (the pool is keyed by origin only), so an "
    "anonymous client is served as the authenticated user, and the tape records a 200 for a "
    "request with no credentials. See README, finding (a)."))
def test_record_does_not_hand_one_clients_authenticated_upstream_connection_to_another_client(ntlm_server, tmp_path):
    with recorder(tmp_path / "t.md", ntlm_server.url).start() as vcr:
        assert K.requests_call(vcr.base_url).status == 200
        anonymous = K.WireClient(vcr.base_url)
        status, _, body = anonymous.get()
        anonymous.close()
    assert status == 401, f"an anonymous client got {status}: {body.strip()}"


@pytest.mark.xfail(strict=True, reason=(
    "The idle pool is process-wide, so the leak crosses VCRs too: a second recording VCR in "
    "the same process, with a different tape, reuses the upstream connection the first VCR's "
    "client authenticated. See README, finding (a)."))
def test_record_a_second_vcr_in_the_process_does_not_inherit_an_authenticated_upstream_connection(ntlm_server, tmp_path):
    with recorder(tmp_path / "one.md", ntlm_server.url).start() as vcr:
        assert K.requests_call(vcr.base_url).status == 200
    with recorder(tmp_path / "two.md", ntlm_server.url).start() as vcr:
        status, _, body = K.WireClient(vcr.base_url).get()
    assert status == 401, f"an anonymous client of the second VCR got {status}: {body.strip()}"


@pytest.mark.xfail(strict=True, reason=(
    "Record mode hides NTLM's connection binding: a client whose Type 3 arrives on a new "
    "connection (it asked to close after the Type 1) is refused by the server directly, but "
    "authenticates through the recorder, which does not forward Connection: close and sends "
    "the Type 3 over the pooled upstream connection. See README, finding (a)."))
def test_record_refuses_a_type3_on_a_new_client_connection_as_the_server_does(ntlm_server, tmp_path):
    with recorder(tmp_path / "t.md", ntlm_server.url).start() as vcr:
        ctx = K.WireClient.context()
        first = K.WireClient(vcr.base_url)
        _, challenge, _ = first.get(token=ctx.step(), close=True)
        first.close()
        status = K.WireClient(vcr.base_url).get(token=ctx.step(K.WireClient.token_of(challenge)))[0]
    assert status == 401


@CURL_NTLM
def test_record_the_recorder_keeps_the_client_connection_alive_across_legs(ntlm_server, tmp_path):
    """The client's side is fine: the recorder's own listener is keep-alive,
    so curl sends its Type 3 on the connection that carried the Type 1."""
    with recorder(tmp_path / "t.md", ntlm_server.url).start() as vcr:
        r = K.curl_call(vcr.base_url)
    assert r.status == 200 and "Re-using existing" in r.trace


# ============================================================================
# The tapes. Each record test writes one committed tape when re-recording
# (NTLM_RERECORD=1), else a temporary one, and checks what it holds.
# ============================================================================


def test_record_handshake_requests_ntlm_unredacted(ntlm_server, tmp_path):
    """(b) With no credential rules the tape holds all three legs as sent:
    the 401 with both challenges (Negotiate first, as sent), Type 1 and its
    401 with the Type 2, Type 3 and the 200."""
    tape = committed_or_tmp(tmp_path, "handshake_requests_ntlm_unredacted.md")
    with recorder(tape, ntlm_server.url, credentials=False, fixed_type2=False).start() as vcr:
        assert K.requests_call(vcr.base_url).status == 200
    legs = parse_tape(tape)
    assert [(i["method"], i["path"], i["status"]) for i in legs] == [("GET", "/whoami", 401)] * 2 + [("GET", "/whoami", 200)]
    assert header(legs[0]["response_headers"], "WWW-Authenticate") == ["Negotiate", "NTLM"]
    assert header(legs[0]["request_headers"], "Authorization") == []
    (s1, t1), (s3, t3) = tokens_on(tape, "Authorization")
    assert (s1, message_type(t1), s3, message_type(t3)) == ("NTLM", 1, "NTLM", 3)
    (s2, t2), = tokens_on(tape, "WWW-Authenticate")
    assert (s2, message_type(t2)) == ("NTLM", 2)


def test_tape_request_headers_are_sorted_by_name_and_response_headers_keep_the_servers_order(ntlm_server, tmp_path):
    """(b) Header order and casing on the tape: request headers are written
    sorted by name (not in the client's order), response headers in the
    order the server sent them; names keep their casing on both sides."""
    tape = tmp_path / "t.md"
    with recorder(tape, ntlm_server.url, credentials=False, fixed_type2=False).start() as vcr:
        K.requests_call(vcr.base_url)
    leg = parse_tape(tape)[1]
    names = [n for n, _ in leg["request_headers"]]
    sent = ntlm_server.lines("header order:")[1].split("header order: ")[1].split(", ")
    assert names != sent, "the tape keeps the client's order"
    assert names == sorted(names, key=lambda n: n.lower() + ":")  # by name and colon, ignoring case
    assert "Authorization" in names
    assert [n for n, _ in leg["response_headers"]] == ["Server", "WWW-Authenticate", "Content-Type", "Content-Length"]
    assert "User-Agent" in sent and "User-Agent" not in names  # left out by this directory's rules


def test_record_handshake_requests_ntlm(ntlm_server, tmp_path):
    """(d) The tape the README recommends: Authorization as
    ``NTLM AUTHORIZATION_1`` / ``_2`` (the credential preset), the Type 2
    replaced by a fixed one, Date left out, the host written
    {{request.host}}."""
    tape = committed_or_tmp(tmp_path, "handshake_requests_ntlm.md")
    with recorder(tape, ntlm_server.url).start() as vcr:
        assert K.requests_call(vcr.base_url).status == 200
    legs = parse_tape(tape)
    assert [header(i["request_headers"], "Authorization") for i in legs] == [[], ["NTLM AUTHORIZATION_1"], ["NTLM AUTHORIZATION_2"]]
    assert header(legs[1]["response_headers"], "WWW-Authenticate") == [FIXED_TYPE2]


@CURL_NTLM
def test_record_handshake_curl_ntlm(ntlm_server, tmp_path):
    tape = committed_or_tmp(tmp_path, "handshake_curl_ntlm.md")
    with recorder(tape, ntlm_server.url).start() as vcr:
        assert K.curl_call(vcr.base_url).status == 200
    legs = parse_tape(tape)
    assert [i["status"] for i in legs] == [401, 200]
    assert [header(i["request_headers"], "Authorization") for i in legs] == [["NTLM AUTHORIZATION_1"], ["NTLM AUTHORIZATION_2"]]


def test_record_handshake_httpx_negotiate(ntlm_server, tmp_path):
    """(b) Negotiate: SPNEGO tokens under the Negotiate scheme, the Type 2
    inside the server's NegTokenResp (not replaced: the fixed Type 2 is a raw
    NTLM one), and the server's last token, its mechListMIC, on the 200."""
    tape = committed_or_tmp(tmp_path, "handshake_httpx_negotiate.md")
    with recorder(tape, ntlm_server.url).start() as vcr:
        assert K.httpx_call(vcr.base_url).status == 200
    legs = parse_tape(tape)
    assert [header(i["request_headers"], "Authorization") for i in legs] == [[], ["Negotiate AUTHORIZATION_1"], ["Negotiate AUTHORIZATION_2"]]
    (_, t2), (_, mic) = tokens_on(tape, "WWW-Authenticate")
    assert message_type(t2) == 2 and mic[:1] == b"\xa1" and message_type(mic) == 0
    assert legs[2]["status"] == 200


@CURL_NTLM
def test_record_refuses_a_wrong_password_curl_ntlm(ntlm_server, tmp_path):
    tape = committed_or_tmp(tmp_path, "refuses_a_wrong_password_curl_ntlm.md")
    with recorder(tape, ntlm_server.url).start() as vcr:
        r = K.curl_call(vcr.base_url, password=K.WRONG_PASSWORD)
    assert r.status == 401
    assert [i["status"] for i in parse_tape(tape)] == [401, 401]
    assert ntlm_server.lines("REFUSED: Type 3 (AUTHENTICATE) rejected by pyspnego")


def test_record_calls_on_an_authenticated_connection_requests_ntlm(ntlm_server, tmp_path):
    """(e) After the handshake, the calls that follow on the same connection
    carry no credentials at all: NTLM authenticated the connection. So they
    cannot be recorded on a tape of their own (a new recording is a new
    connection, which is not authenticated); this tape starts with the
    handshake and a test replays only the calls with playback_range(3)."""
    tape = committed_or_tmp(tmp_path, "calls_on_an_authenticated_connection_requests_ntlm.md")
    with recorder(tape, ntlm_server.url).start() as vcr, K.requests.Session() as s:
        assert K.requests_call(vcr.base_url, session=s).status == 200
        assert K.requests_call(vcr.base_url, "/echo", method="POST", json_body={"order": 7}, session=s).status == 200
        assert K.requests_call(vcr.base_url, session=s).status == 200
        assert s.get(vcr.base_url + "/anonymous").status_code == 200
    legs = parse_tape(tape)
    assert [(i["method"], i["path"], i["status"]) for i in legs] == [
        ("GET", "/whoami", 401), ("GET", "/whoami", 401), ("GET", "/whoami", 200),
        ("POST", "/echo", 200), ("GET", "/whoami", 200), ("GET", "/anonymous", 200)]
    assert [header(i["request_headers"], "Authorization") for i in legs[3:]] == [[], [], []]


def test_record_post_with_body_requests_ntlm(ntlm_server, tmp_path):
    """(e) requests-ntlm re-sends a POST's body on every leg: the anonymous
    request, the Type 1 and the Type 3 each carry it."""
    tape = committed_or_tmp(tmp_path, "post_with_body_requests_ntlm.md")
    with recorder(tape, ntlm_server.url).start() as vcr:
        r = K.requests_call(vcr.base_url, "/echo", method="POST", json_body={"order": 7})
    assert r.status == 200 and r.json()["received"] == {"order": 7}
    assert [i["request_body"].strip() for i in parse_tape(tape)] == ['{"order": 7}'] * 3


@CURL_NTLM
def test_record_post_with_body_curl_ntlm(ntlm_server, tmp_path):
    """(e) curl holds a POST's body back until the Type 3: its Type 1 leg
    says ``Content-Length: 0``, or, chunked, sends only the last chunk; the
    recorder writes the chunked body whole and forwards it with a
    Content-Length."""
    tape = committed_or_tmp(tmp_path, "post_with_body_curl_ntlm.md")
    with recorder(tape, ntlm_server.url).start() as vcr:
        assert K.curl_call(vcr.base_url, "/echo", method="POST", data='{"order": 7}').status == 200
        assert K.curl_call(vcr.base_url, "/echo", method="POST", data='{"order": 8}', chunked=True).status == 200
    legs = parse_tape(tape)
    assert [i["request_body"].strip() for i in legs] == ["", '{"order": 7}', "", '{"order": 8}']
    assert header(legs[0]["request_headers"], "Content-Length") == ["0"]
    assert header(legs[3]["request_headers"], "Transfer-Encoding") == ["chunked"]
    type3_upstream = ntlm_server.lines("POST /echo header order:")[3]
    assert "Content-Length" in type3_upstream and "Transfer-Encoding" not in type3_upstream


# ============================================================================
# (c) Playback: the Type 3 changes every run.
# ============================================================================


def test_type1_is_the_same_every_run_and_type3_is_not():
    """A client's Type 1 is fixed bytes; its Type 3 carries its own client
    nonce and timestamp, so two runs against the SAME challenge differ."""
    challenge = build_challenge()
    a, b = K.WireClient.context(), K.WireClient.context()
    assert a.step() == b.step()
    t3a, t3b = a.step(challenge), b.step(challenge)
    assert t3a != t3b
    assert parse_authenticate(t3a)["nt_proof"] != parse_authenticate(t3b)["nt_proof"]


def test_playback_with_no_credential_rule_fails_on_the_type3_leg():
    """Strict request matching passes the anonymous request and the Type 1
    (fixed bytes) and stops at the Type 3: a HeaderValueDiff on
    Authorization, and the client gets Servirtium's 599."""
    with player(TAPES / "handshake_requests_ntlm_unredacted.md", credentials=False).start() as vcr:
        r = K.requests_call(vcr.base_url)
        assert r.statuses == [401, 401, 599]
        assert vcr.last_kind is Outcome.HEADER_VALUE_DIFF and vcr.last_index == 2
        assert "Authorization" in vcr.last_error


def test_playback_with_the_credential_preset_replays_requests_ntlm():
    with player(TAPES / "handshake_requests_ntlm.md").start() as vcr:
        r = K.requests_call(vcr.base_url)
        assert vcr.last_kind is Outcome.OK, vcr.last_error
        vcr.assert_all_consumed()
    assert r.status == 200 and r.json() == {"user": "NAEDOMAIN\\naeuser", "scheme": "NTLM"}


@CURL_NTLM
def test_playback_with_the_credential_preset_replays_curl_ntlm():
    with player(TAPES / "handshake_curl_ntlm.md").start() as vcr:
        r = K.curl_call(vcr.base_url)
        assert vcr.last_kind is Outcome.OK, vcr.last_error
        vcr.assert_all_consumed()
    assert r.status == 200 and r.json()["user"] == "NAEDOMAIN\\naeuser"


@CURL_NTLM
def test_playback_needs_a_client_that_takes_the_same_legs_so_curl_cannot_replay_the_requests_ntlm_tape():
    """The requests-ntlm tape starts with the anonymous request curl --ntlm
    never sends (it opens with its Type 1): ordered playback refuses the
    first request."""
    with player(TAPES / "handshake_requests_ntlm.md").start() as vcr:
        r = K.curl_call(vcr.base_url)
        kind, index = vcr.last_kind, vcr.last_index
    assert r.statuses[:1] == [599] and kind is not Outcome.OK, (kind, index)


def test_playback_accepts_a_wrong_password_because_credentials_match_on_presence():
    """Playback cannot check an NTLM response (it would need the password's
    hash and the challenge it issued): any Type 3 passes."""
    with player(TAPES / "handshake_requests_ntlm.md").start() as vcr:
        r = K.requests_call(vcr.base_url, password=K.WRONG_PASSWORD)
        assert vcr.last_kind is Outcome.OK
    assert r.status == 200


@CURL_NTLM
def test_playback_replays_the_servers_refusal_of_a_wrong_password():
    with player(TAPES / "refuses_a_wrong_password_curl_ntlm.md").start() as vcr:
        r = K.curl_call(vcr.base_url, password=K.WRONG_PASSWORD)
        assert vcr.last_kind is Outcome.OK, vcr.last_error
    assert r.status == 401 and r.statuses == [401, 401]


@pytest.mark.xfail(strict=True, raises=Exception, reason=(
    "A Negotiate (SPNEGO) tape replays its 200 with the mechListMIC the server computed in the "
    "record run, keyed by that run's NTLM session key; a client that checks it (pyspnego) "
    "raises BadMICError. See README, finding (e)."))
def test_playback_replays_a_negotiate_handshake_to_a_client_that_checks_the_mechlistmic():
    with player(TAPES / "handshake_httpx_negotiate.md").start() as vcr:
        assert K.httpx_call(vcr.base_url).status == 200


def test_playback_replays_a_negotiate_handshake_once_a_substitution_drops_the_recorded_mechlistmic():
    """The existing playback API can express the cure: a response-header
    substitution (a literal one: substitute() replaces text, it is not a
    regex) that removes the recorded final SPNEGO token, so the client gets
    a 200 with nothing to check."""
    tape = TAPES / "handshake_httpx_negotiate.md"
    mic_line = re.search(r"^WWW-Authenticate: Negotiate oR[A-Za-z0-9+/]+=*$", tape.read_text(), flags=re.M).group(0)
    with player(tape).substitute(servirtium.Field.RESPONSE_HEADERS, mic_line, "").start() as vcr:
        r = K.httpx_call(vcr.base_url)
        assert vcr.last_kind is Outcome.OK, vcr.last_error
    assert r.status == 200 and r.json()["scheme"] == "Negotiate"


def test_playback_replays_the_calls_after_the_handshake_as_a_slice():
    """(e) The calls tape with playback_range(3): a client that never
    authenticates replays the calls (they carry no credentials)."""
    with player(TAPES / "calls_on_an_authenticated_connection_requests_ntlm.md").playback_range(3).start() as vcr:
        with K.requests.Session() as s:
            echo = s.post(vcr.base_url + "/echo", json={"order": 7})
            who = s.get(vcr.base_url + "/whoami")
            anon = s.get(vcr.base_url + "/anonymous")
        assert vcr.last_kind is Outcome.OK, vcr.last_error
        vcr.assert_all_consumed()
    assert (echo.status_code, who.status_code, anon.status_code) == (200, 200, 200)
    assert echo.json()["received"] == {"order": 7}


def test_playback_replays_a_post_whose_body_went_on_every_leg():
    with player(TAPES / "post_with_body_requests_ntlm.md").start() as vcr:
        r = K.requests_call(vcr.base_url, "/echo", method="POST", json_body={"order": 7})
        assert vcr.last_kind is Outcome.OK, vcr.last_error
    assert r.status == 200


# ============================================================================
# (d) Redaction: what the client's tokens and the server's challenge give
# away, and what can be rewritten and still play back.
# ============================================================================


def test_unredacted_type3_names_the_user_domain_and_workstation():
    (_, t1), (_, t3) = tokens_on(TAPES / "handshake_requests_ntlm_unredacted.md", "Authorization")
    fields = parse_authenticate(t3)
    assert (fields["domain"], fields["user"], fields["workstation"]) == ("NAEDOMAIN", "naeuser", "NAE-CLIENT")
    assert fields["nt_response_length"] > 24  # NTLMv2: the password-derived proof plus the client's blob


def test_the_credential_preset_leaves_no_client_token_on_the_tape():
    for name in ("handshake_requests_ntlm.md", "handshake_curl_ntlm.md", "handshake_httpx_negotiate.md",
                 "refuses_a_wrong_password_curl_ntlm.md", "calls_on_an_authenticated_connection_requests_ntlm.md",
                 "post_with_body_requests_ntlm.md", "post_with_body_curl_ntlm.md"):
        text = (TAPES / name).read_text()
        assert "TlRMTVNTUAAB" not in text and "TlRMTVNTUAAD" not in text, name
        for value in re.findall(r"^Authorization: (.*)$", text, flags=re.M):
            assert re.fullmatch(r"(NTLM|Negotiate) AUTHORIZATION_\d+", value), (name, value)


def test_the_type2_is_replaced_by_the_fixed_challenge_and_the_tape_still_plays_back():
    """A rule the existing API can express (redact_whole_tape with a regex)
    writes the Type 2 as fixed bytes: the server's random challenge, its
    names and timestamp are gone, and the playback tests above pass on it,
    since no one can check a Type 3 in playback anyway."""
    (_, t2), = tokens_on(TAPES / "handshake_requests_ntlm.md", "WWW-Authenticate")
    assert t2 == build_challenge()
    assert parse_challenge(t2)["server_challenge"] == bytes.fromhex("0123456789abcdef")


def test_a_type2_redacted_to_a_placeholder_cannot_be_played_back(ntlm_server, tmp_path):
    """The challenge is not a secret to blank out: the client must parse it
    to compute its Type 3, and a placeholder fails the client in playback."""
    tape = tmp_path / "t.md"
    with (recorder(tape, ntlm_server.url, fixed_type2=False)
          .redact_whole_tape(TYPE2_ON_TAPE, "NTLM CHALLENGE_REDACTED").start()) as vcr:
        assert K.requests_call(vcr.base_url).status == 200
    with player(tape).start() as vcr:
        with pytest.raises(Exception):
            K.requests_call(vcr.base_url)


def test_rerecording_with_these_rules_writes_the_same_tape_byte_for_byte(ntlm_server, tmp_path):
    """With this directory's rules (the credential preset, the fixed Type 2,
    the host as {{request.host}}, User-Agent, Accept-Encoding and Date left
    out) an NTLM tape re-records byte for byte, so check mode works."""
    one, two = tmp_path / "one.md", tmp_path / "two.md"
    with recorder(one, ntlm_server.url).start() as vcr:
        assert K.requests_call(vcr.base_url).status == 200
    # A second server: on the first one, the recorder's pooled upstream
    # connection is still authenticated (finding a) and the anonymous
    # request would get a 200.
    second = NtlmServerProcess(tmp_path / "second.log")
    try:
        with recorder(two, second.url).start() as vcr:
            assert K.requests_call(vcr.base_url).status == 200
    finally:
        second.stop()
    assert one.read_bytes() == two.read_bytes() == (TAPES / "handshake_requests_ntlm.md").read_bytes()


def test_no_tape_names_the_machine_that_recorded_it():
    """pyspnego names client and server after socket.gethostname() unless
    told otherwise; the server presents a synthetic name and the tests set
    NETBIOS_COMPUTER_NAME, so no tape (or token inside one) carries this
    machine's name."""
    me = socket.gethostname().split(".")[0].lower()
    for tape in sorted(TAPES.glob("*.md")):
        text = tape.read_text()
        assert me not in text.lower(), tape.name
        for token in re.findall(r"(?:NTLM|Negotiate) ([A-Za-z0-9+/]{16,}=*)", text):
            raw = base64.b64decode(token)
            assert me.encode() not in raw.lower() and me.encode("utf-16-le") not in raw.lower(), tape.name
