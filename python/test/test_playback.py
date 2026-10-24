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


def test_retained_diagnostics_and_explicit_consumption():
    import json
    import pathlib
    import subprocess
    import sys
    import pytest
    root = pathlib.Path(__file__).resolve().parents[2]
    with servirtium.playback(str(root / "core_tests/diagnostics/playback.md")).start() as server:
        server.test_context("Python scenario", "scenario.test", 123)
        subprocess.run([sys.executable, str(root / "core_tests/diagnostic_fixture.py"), server.base_url], check=True)
        assert server.last_kind == servirtium.Outcome.OK
        assert "owner" in server.read_last_error(False)
        assert "scenario.test:123" in server.read_last_error(False)
        assert [event["retrieved"] for event in json.loads(server.diagnostics_json())] == [0, 0]
        assert "owner" in server.last_error
        assert [event["retrieved"] for event in json.loads(server.diagnostics_json())] == [0, 1]
        with pytest.raises(servirtium.VcrError, match="admin") as failure:
            server.assert_no_mismatches()
        assert "owner" in str(failure.value)
        server.test_context("next test", "next.test", 5)
        server.assert_no_mismatches()
        assert server.diagnostics_json() == "[]"
