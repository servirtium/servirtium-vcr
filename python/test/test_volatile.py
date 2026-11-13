"""Volatile values conformance (docs/volatile-values.md): the shared tapes in
core_tests/volatile/ driven by target/test-tools/volatile_fixture."""

import pathlib
import subprocess

import pytest

import servirtium

ROOT = pathlib.Path(__file__).resolve().parents[2]
VOLATILE = ROOT / "core_tests/volatile"
FIXTURE = str(ROOT / "target/test-tools/volatile_fixture")


def tape(name):
    return str(VOLATILE / name)


def fixture(scenario, server):
    subprocess.run([FIXTURE, scenario, server.base_url], check=True)


def wcf_rules(builder):
    return (
        builder.volatile_rule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")
        .volatile_rule("request body", '<a:To s:mustUnderstand="1">{{endpoint}}/Services/')
        .volatile_rule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;")
        .volatile_rule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")
    )


def test_tape_block_carries_wcf_and_the_report_shows_a_binding():
    with servirtium.playback(tape("wcf.md")).pretty_xml(2).start() as server:
        fixture("wcf", server)
        assert "binding: {{messageId-1}} = " in server.volatile_report()


def test_profile_file():
    b = servirtium.playback(tape("wcf_plain.md")).pretty_xml(2).volatile_profile(tape("profile.md"))
    with b.start() as server:
        fixture("wcf", server)


def test_rules_in_code():
    with wcf_rules(servirtium.playback(tape("wcf_plain.md")).pretty_xml(2)).start() as server:
        fixture("wcf", server)


def test_markers_dollar_curly_and_the_default_fails():
    b = servirtium.playback(tape("wcf_dollar.md")).pretty_xml(2).volatile_markers(servirtium.VolatileMarkers.DOLLAR_CURLY)
    with b.start() as server:
        fixture("wcf", server)
    with pytest.raises(servirtium.VcrError, match="DollarCurly"):
        servirtium.playback(tape("wcf_dollar.md")).pretty_xml(2).start()


def test_cases_and_mismatch_names_the_binding():
    with servirtium.playback(tape("cases.md")).start() as server:
        fixture("cases", server)
        server.reset_cursor()
        fixture("cases-mismatch", server)
        assert "{{caseId-1}} = 42" in server.read_last_error(False)
        server.read_last_error(True)


def test_bind():
    with pytest.raises(servirtium.VcrError, match="caseId"):
        servirtium.playback(tape("cases_recorded.md")).start()
    with servirtium.playback(tape("cases_recorded.md")).bind("caseId", "42").start() as server:
        fixture("cases", server)


def test_rule_without_a_placeholder_fails_start():
    with pytest.raises(servirtium.VcrError, match="needs at least one placeholder"):
        servirtium.playback(tape("cases.md")).volatile_rule("request body", "no placeholder").start()


def test_rule_conflicting_with_the_tape_fails_start():
    b = servirtium.playback(tape("cases.md")).volatile_rule("response body", '"caseId":"{{id}}"')
    with pytest.raises(servirtium.VcrError) as failure:
        b.start()
    assert "conflicts with" in str(failure.value)
    assert "(tape)" in str(failure.value)


def test_bad_kind_fails_start():
    with pytest.raises(servirtium.VcrError):
        servirtium.playback(tape("cases.md")).volatile_rule("x", "a {{b}}", "regex").start()
