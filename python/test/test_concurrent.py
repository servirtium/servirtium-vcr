"""One-server-per-port proof through the Python binding: TWO playback VCR
servers alive at once, each replaying its OWN tape on its OWN port, with
independent diagnostics (no cross-bleed)."""

import servirtium
from conftest import http_get, tape


def test_two_playback_servers_at_once():
    with servirtium.playback(tape("single_get.md")).port(0).start() as a, \
         servirtium.playback(tape("second_get.md")).port(0).start() as b:
        assert a.port > 0
        assert b.port > 0
        assert a.port != b.port

        # Each replays its own tape.
        sa, ba = http_get(a.base_url, "/ok")
        sb, bb = http_get(b.base_url, "/other")
        assert (sa, ba) == (200, "ok-body")
        assert (sb, bb) == (200, "second-body")
        assert a.last_kind is servirtium.Outcome.OK
        assert b.last_kind is servirtium.Outcome.OK

        # A path that belongs to b's tape is a mismatch on a, and the
        # mismatch does NOT touch b's diagnostics.
        http_get(a.base_url, "/other")
        assert a.last_kind is not servirtium.Outcome.OK
        assert b.last_kind is servirtium.Outcome.OK
        assert b.last_error == ""
