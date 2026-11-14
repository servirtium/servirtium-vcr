"""The closest-candidate scenario (docs/replay-diagnostics.md): the shared
tape core_tests/closest/case.md, driven by target/test-tools/closest_fixture.
The report and its JSON come from the core; this only reads them."""

import json
import pathlib
import subprocess

import pytest

import servirtium

ROOT = pathlib.Path(__file__).resolve().parents[2]


def test_reports_against_the_closest_candidate_leading_with_the_first_real_difference():
    builder = servirtium.playback(str(ROOT / "core_tests/closest/case.md")).match_multiple()
    with builder.start() as server:
        subprocess.run([str(ROOT / "target/test-tools/closest_fixture"), "case", server.base_url], check=True)
        report = server.read_last_error(False)
        assert "interaction: 3\n" in report
        assert "closest: interaction 3 POST /Services/CaseService.svc (same method and path, not yet used)\n" in report
        assert (
            "first difference: /Envelope/Body/CreateCase/caseData/CaseData/SubjectValue, normalised byte 777\n"
            "- <SubjectValue>Rule 1;Openness;</SubjectValue>\n"
            "+ <SubjectValue></SubjectValue>\n"
        ) in report
        assert "other candidates: none unused (3 already used)\n" in report
        assert "ILookupService" not in report
        events = json.loads(server.diagnostics_json(consume=False))
        assert len(events) == 1
        assert events[0]["closestCandidate"] == {
            "index": 3, "method": "POST", "path": "/Services/CaseService.svc",
            "tier": 1, "score": 983, "reason": "same method and path, not yet used",
        }
        assert events[0]["candidates"] == []
        difference = events[0]["firstDifference"]
        assert difference["section"] == "body"
        assert difference["offset"] == 777
        assert difference["element"] == "/Envelope/Body/CreateCase/caseData/CaseData/SubjectValue"
        assert difference["expected"] == "<SubjectValue>Rule 1;Openness;</SubjectValue>"
        assert difference["actual"] == "<SubjectValue></SubjectValue>"
        with pytest.raises(servirtium.VcrError, match="SubjectValue"):
            server.assert_no_mismatches()
