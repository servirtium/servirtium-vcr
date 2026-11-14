package servirtium_test

import (
	"encoding/json"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"

	servirtium "github.com/servirtium/servirtium-vcr/go/v2"
)

// The closest-candidate scenario (docs/replay-diagnostics.md): the shared
// tape core_tests/closest/case.md, driven by target/test-tools/closest_fixture.
// The report and its JSON come from the core; this only reads them.
func TestClosestCandidateLeadsWithTheFirstRealDifference(t *testing.T) {
	s, err := servirtium.Playback(filepath.Join(volatileRoot(), "core_tests/closest/case.md")).MatchMultiple().Start()
	if err != nil {
		t.Fatal(err)
	}
	defer s.Close()
	out, err := exec.Command(filepath.Join(volatileRoot(), "target/test-tools/closest_fixture"), "case", s.BaseURL()).CombinedOutput()
	if err != nil {
		t.Fatalf("closest_fixture: %v: %s", err, out)
	}
	report := s.LastError(false)
	for _, want := range []string{
		"interaction: 3\n",
		"closest candidate: interaction 3, POST /Services/CaseService.svc (same method and path; score 0.983)\n",
		"first difference: request body at /Envelope/Body/CreateCase/caseData/CaseData/SubjectValue\n" +
			"- <SubjectValue>Rule 1;Openness;</SubjectValue>\n" +
			"+ <SubjectValue></SubjectValue>\n",
		"other candidates: none unused (3 already used)\n",
	} {
		if !strings.Contains(report, want) {
			t.Fatalf("no %q in\n%s", want, report)
		}
	}
	if strings.Contains(report, "ILookupService") {
		t.Fatalf("the lookup action in\n%s", report)
	}
	var events []struct {
		ClosestCandidate struct {
			Index  int    `json:"index"`
			Method string `json:"method"`
			Path   string `json:"path"`
			Tier   int    `json:"tier"`
			Score  int    `json:"score"`
			Reason string `json:"reason"`
		} `json:"closestCandidate"`
		Candidates      []any `json:"candidates"`
		FirstDifference struct {
			Section  string `json:"section"`
			Offset   int    `json:"offset"`
			Element  string `json:"element"`
			Expected string `json:"expected"`
			Actual   string `json:"actual"`
		} `json:"firstDifference"`
	}
	if err := json.Unmarshal([]byte(s.DiagnosticsJSON(false)), &events); err != nil || len(events) != 1 {
		t.Fatalf("diagnostics JSON: %v %d", err, len(events))
	}
	c, d := events[0].ClosestCandidate, events[0].FirstDifference
	if c.Index != 3 || c.Method != "POST" || c.Path != "/Services/CaseService.svc" || c.Tier != 1 || c.Score != 983 || c.Reason != "same method and path" {
		t.Fatalf("closestCandidate %+v", c)
	}
	if len(events[0].Candidates) != 0 {
		t.Fatalf("candidates %v", events[0].Candidates)
	}
	if d.Section != "body" || d.Offset <= 0 || d.Element != "/Envelope/Body/CreateCase/caseData/CaseData/SubjectValue" ||
		d.Expected != "<SubjectValue>Rule 1;Openness;</SubjectValue>" || d.Actual != "<SubjectValue></SubjectValue>" {
		t.Fatalf("firstDifference %+v", d)
	}
	if s.AssertNoMismatches() == nil {
		t.Fatal("the mismatch is retained")
	}
}
