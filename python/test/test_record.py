"""Proves record mode end-to-end: the VCR forwards to a live upstream,
returns the real response to the SUT, captures the exchange, flushes a
Servirtium markdown tape on close, and the same tape then replays.
"""

import os
import tempfile

import servirtium
from conftest import http_request


def _tape_path():
    fd, path = tempfile.mkstemp(suffix=".md")
    os.close(fd)
    os.remove(path)  # we want the path, not a pre-existing empty file
    return path


def test_record_accepts_license_notice_pretty_json_and_presets(upstream):
    path = _tape_path()
    try:
        with (
            servirtium.record(path, upstream.base_url)
            .add_license_notice("test notice")
            .pretty_json(2)
            .remove_transport_headers()
            .remove_cloud_headers("aws")
            .redact_credentials()
            .redact_credential_header("X-Vault-Token")
            .port(0)
            .start()
        ):
            pass
        with open(path, encoding="utf-8") as tape:
            assert "## LICENSE NOTICE" in tape.read()
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_records_then_replays_the_same_interaction(upstream):
    upstream.response_body = "hello-from-upstream"
    path = _tape_path()
    try:
        # ---- record ----
        with servirtium.record(path, upstream.base_url).port(0).start() as rec:
            status, body = http_request(rec.base_url, "GET", "/greeting")
            assert body == "hello-from-upstream"
        # close flushed the tape

        assert os.path.exists(path), "record-mode close should write the tape"

        # ---- replay (offline) ----
        with servirtium.playback(path).port(0).start() as play:
            status, body = http_request(play.base_url, "GET", "/greeting")
            assert body == "hello-from-upstream"
            assert play.last_kind is servirtium.Outcome.OK
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_records_and_replays_a_post_with_a_body(upstream):
    upstream.response_body = "created"
    upstream.status = 201
    path = _tape_path()
    try:
        with servirtium.record(path, upstream.base_url).port(0).start() as rec:
            status, body = http_request(
                rec.base_url, "POST", "/submit", body="ping",
                headers={"Content-Type": "text/plain"},
            )
            assert body == "created"
            assert upstream.last_method == "POST"
            assert upstream.last_body == "ping"

        # Replay the same POST offline.
        with servirtium.playback(path).port(0).start() as play:
            status, body = http_request(
                play.base_url, "POST", "/submit", body="ping",
                headers={"Content-Type": "text/plain"},
            )
            assert body == "created"
            assert play.last_kind is servirtium.Outcome.OK
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_pretty_xml_records_indented_and_replays(upstream):
    compact = '<Env><Body><R id="1"><N>Ann</N></R></Body></Env>'
    request = "<Q><A> Line one\nLine two \n</A><Captcha>token</Captcha></Q>"
    pretty = '<Env>\n  <Body>\n    <R id="1">\n      <N>Ann</N>\n    </R>\n  </Body>\n</Env>'
    upstream.response_body = compact
    upstream.response_content_type = "text/xml; charset=utf-8"
    path = _tape_path()
    try:
        with (servirtium.record(path, upstream.base_url).port(0)
              .pretty_xml(2).start()) as rec:
            status, body = http_request(
                rec.base_url, "POST", "/soap", body=request,
                headers={"Content-Type": "application/xml"})
            assert status == 200
            assert body == compact  # the SUT gets the upstream bytes
            assert upstream.last_body == request

        with open(path) as recorded:
            tape = recorded.read()
        assert pretty in tape
        assert "<Q>\n  <A> Line one\nLine two \n</A>\n  <Captcha>token</Captcha>\n</Q>" in tape
        assert compact not in tape

        for edited, expected in (
            (tape, pretty),
            (tape.replace("\n  <", "\n       <"), pretty.replace("\n  <", "\n       <")),
            (tape.replace("\n", "\r\n"), pretty),
        ):
            with open(path, "w", newline="") as output:
                output.write(edited)
            with servirtium.playback(path).port(0).pretty_xml(2).start() as play:
                status, body = http_request(
                    play.base_url, "POST", "/soap", body=request,
                    headers={"Content-Type": "application/xml"})
                assert status == 200
                assert body == expected
                assert play.last_kind is servirtium.Outcome.OK
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_pretty_json_records_query_and_replays_hand_edited_tapes(upstream):
    request = '{"z":1.0,"text":" Line one\\nLine two \\n","big":123456789012345678901234567890,"items":[2,1]}'
    response = '{"z":1.0,"a":{"text":" Line one\\nLine two \\n","big":123456789012345678901234567890}}'
    pretty_request = '{\n  "z": 1.0,\n  "text": " Line one\\nLine two \\n",\n  "big": 123456789012345678901234567890,\n  "items": [\n    2,\n    1\n  ]\n}'
    pretty_response = '{\n  "z": 1.0,\n  "a": {\n    "text": " Line one\\nLine two \\n",\n    "big": 123456789012345678901234567890\n  }\n}'
    upstream.response_body = response
    upstream.response_content_type = "application/json"
    path = _tape_path()
    try:
        with servirtium.record(path, upstream.base_url).pretty_json(2).port(0).start() as rec:
            status, body = http_request(rec.base_url, "QUERY", "/search", body=request,
                                        headers={"Content-Type": "application/json"})
            assert status == 200
            assert body == response
            assert upstream.last_method == "QUERY"
            assert upstream.last_body == request
        with open(path) as recorded:
            tape = recorded.read()
        assert "## Interaction 0: QUERY /search" in tape
        assert pretty_request in tape
        assert pretty_response in tape
        for edited, expected in (
            (tape, pretty_response),
            (tape.replace('\n  "', '\n       "'), pretty_response.replace('\n  "', '\n       "')),
            (tape.replace("\n", "\r\n"), pretty_response),
        ):
            with open(path, "w", newline="") as output:
                output.write(edited)
            with servirtium.playback(path).pretty_json(2).port(0).start() as play:
                status, body = http_request(play.base_url, "QUERY", "/search", body=request,
                                            headers={"Content-Type": "application/json"})
                assert status == 200
                assert body == expected
                assert play.last_kind is servirtium.Outcome.OK
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_pretty_xml_off_by_default(upstream):
    compact = "<Env><Body/></Env>"
    upstream.response_body = compact
    upstream.response_content_type = "application/xml"
    path = _tape_path()
    try:
        with servirtium.record(path, upstream.base_url).port(0).start() as rec:
            http_request(rec.base_url, "GET", "/x")
        assert compact in open(path).read()
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_structured_redaction_helpers(tmp_path):
    import pathlib
    import subprocess

    fixture = pathlib.Path(__file__).resolve().parents[2] / "target/test-tools/redaction_fixture"
    def run(*args):
        return subprocess.check_output([str(fixture), *map(str, args)], text=True).strip()

    upstream = run("start", tmp_path)
    with (servirtium.record(str(tmp_path / "tape.md"), upstream)
          .redact_header("Authorization")
          .redact_query_param("password")
          .redact_json_field("secretKey").start()) as rec:
        run("drive", tmp_path, rec.base_url)
        assert rec.last_kind is servirtium.Outcome.OK
    run("check", tmp_path)


def test_structured_redactions_are_isolated_between_live_handles(tmp_path):
    import pathlib
    import subprocess

    fixture = pathlib.Path(__file__).resolve().parents[2] / "target/test-tools/redaction_fixture"
    def run(*args):
        return subprocess.check_output([str(fixture), *map(str, args)], text=True).strip()

    left, right = tmp_path / "left", tmp_path / "right"
    first_upstream, second_upstream = run("start", left), run("start", right)
    with (servirtium.record(str(left / "tape.md"), first_upstream)
          .redact_header("Authorization").start()) as first:
        with servirtium.record(str(right / "tape.md"), second_upstream).start() as second:
            run("drive", left, first.base_url)
            run("drive", right, second.base_url)
    assert "header-secret" not in (left / "tape.md").read_text()
    assert "Authorization: [REDACTED]" in (left / "tape.md").read_text()
    assert "header-secret" in (right / "tape.md").read_text()


def test_sort_json_keys_with_pretty_json_writes_sorted_pretty_json(upstream):
    upstream.response_body = '{"b":1,"a":{"d":2,"c":3}}'
    upstream.response_content_type = "application/json"
    path = _tape_path()
    try:
        with servirtium.record(path, upstream.base_url).pretty_json(2).sort_json_keys().port(0).start() as rec:
            http_request(rec.base_url, "GET", "/doc")
        with open(path, encoding="utf-8") as tape:
            text = tape.read()
        assert '{\n  "a": {\n    "c": 3,\n    "d": 2\n  },\n  "b": 1\n}' in text
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_sort_json_keys_without_pretty_json_is_refused(upstream):
    import pytest
    upstream.response_body = '{"b":1,"a":2}'
    upstream.response_content_type = "application/json"
    path = _tape_path()
    try:
        rec = servirtium.record(path, upstream.base_url).sort_json_keys().port(0).start()
        http_request(rec.base_url, "GET", "/doc")
        with pytest.raises(servirtium.VcrError, match="sort_json_keys needs pretty_json"):
            rec.close()
        assert not os.path.exists(path)
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_sort_json_array_and_header_rules_are_accepted_and_applied(upstream):
    upstream.response_body = '[{"n":"z"},{"n":"a"}]'
    upstream.response_content_type = "application/json"
    upstream.extra_response_headers = {"Allow": "POST, GET"}
    path = _tape_path()
    try:
        with (
            servirtium.record(path, upstream.base_url)
            .pretty_json(2)
            .sort_json_array("", "n")
            .sort_json_array_at("/doc", "", "n")
            .sort_response_headers()
            .sort_header_value("Allow")
            .port(0)
            .start()
        ) as rec:
            http_request(rec.base_url, "GET", "/doc")
        with open(path, encoding="utf-8") as tape:
            text = tape.read()
        assert text.index('"n": "a"') < text.index('"n": "z"')
        assert "Allow: GET, POST" in text
    finally:
        if os.path.exists(path):
            os.remove(path)


def test_refused_sort_rule_raises_at_start(upstream):
    import pytest
    path = _tape_path()
    with pytest.raises(servirtium.VcrError, match="sort_header_value"):
        servirtium.record(path, upstream.base_url).sort_header_value("").port(0).start()
