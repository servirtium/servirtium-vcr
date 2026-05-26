"""End-to-end proof of the ctypes chain: Python fixture -> native VCR
(aether_vcr_embed_*) -> embedded Aether HTTP server. Replays a Servirtium
markdown tape and asserts the SUT-visible response and diagnostics.
"""

import servirtium
from conftest import http_get, tape


def test_replays_a_recorded_get_on_a_dynamic_port():
    with servirtium.playback(tape("single_get.md")).label("replays a GET").port(0).start() as vcr:
        assert vcr.port > 0
        assert vcr.tape_length == 1

        status, body = http_get(vcr.base_url, "/ok")

        assert status == 200
        assert body == "ok-body"
        assert vcr.last_kind is servirtium.Outcome.OK
        assert vcr.last_error == ""


def test_flags_a_path_mismatch_via_diagnostics():
    with servirtium.playback(tape("single_get.md")).port(0).start() as vcr:
        http_get(vcr.base_url, "/nope")

        assert vcr.last_kind is not servirtium.Outcome.OK
        assert vcr.last_error != ""
