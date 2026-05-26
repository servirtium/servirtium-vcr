"""Playback-side breadth: strict request-header matching (pass via
unredaction, fail on mismatch) and static-content bypass.

Note: http.client/urllib send default headers (Host, Accept-Encoding, etc.).
Under strict matching these would trip a mismatch against a sparse tape, so
the secure_get tape pairs with remove_header on those defaults — see below.
"""

import os
import tempfile

import servirtium
from conftest import http_get, tape

# Default headers http.client adds that aren't on the recorded tape; strip
# them from the request block before strict comparison.
_DEFAULT_HEADERS = ["Host", "Accept-Encoding", "Connection", "User-Agent"]


def _strip_defaults(builder):
    for name in _DEFAULT_HEADERS:
        builder = builder.remove_header(servirtium.Field.REQUEST_HEADERS, name)
    return builder


def test_unredaction_lets_a_scrubbed_tape_match_the_real_request():
    builder = (
        servirtium.playback(tape("secure_get.md"))
        .strict_headers()
        .unredact(servirtium.Field.REQUEST_HEADERS, "Bearer REDACTED", "Bearer real-token")
        .port(0)
    )
    builder = _strip_defaults(builder)
    with builder.start() as vcr:
        status, body = http_get(
            vcr.base_url, "/secure", headers={"Authorization": "Bearer real-token"}
        )
        assert status == 200
        assert body == "secret-ok"
        assert vcr.last_kind is servirtium.Outcome.OK


def test_strict_matching_flags_a_missing_request_header():
    builder = (
        servirtium.playback(tape("secure_get.md"))
        .strict_headers()
        .unredact(servirtium.Field.REQUEST_HEADERS, "Bearer REDACTED", "Bearer real-token")
        .port(0)
    )
    builder = _strip_defaults(builder)
    with builder.start() as vcr:
        # No Authorization header at all -> mismatch.
        http_get(vcr.base_url, "/secure")
        assert vcr.last_kind is not servirtium.Outcome.OK
        assert vcr.last_error != ""


def test_static_content_is_served_from_disk_not_the_tape():
    with tempfile.TemporaryDirectory() as d:
        with open(os.path.join(d, "asset.txt"), "w") as f:
            f.write("static-asset")

        with servirtium.playback(tape("single_get.md")).static_content("/files", d).port(0).start() as vcr:
            # From disk:
            status, body = http_get(vcr.base_url, "/files/asset.txt")
            assert body == "static-asset"
            # From the tape (unaffected):
            status, body = http_get(vcr.base_url, "/ok")
            assert body == "ok-body"
