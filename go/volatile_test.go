package servirtium_test

import (
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	servirtium "github.com/servirtium/servirtium-vcr/go/v2"
)

func volatileRoot() string {
	_, source, _, _ := runtime.Caller(0)
	return filepath.Join(filepath.Dir(source), "..")
}

func volatileTape(name string) string {
	return filepath.Join(volatileRoot(), "core_tests/volatile", name)
}

func volatileDriver(t *testing.T, mode, base string) {
	t.Helper()
	out, err := exec.Command(filepath.Join(volatileRoot(), "target/test-tools/volatile_fixture"), mode, base).CombinedOutput()
	if err != nil {
		t.Fatalf("volatile_fixture %s: %v: %s", mode, err, out)
	}
}

func TestVolatileTapeBlockDrivesWcfPlayback(t *testing.T) {
	s, err := servirtium.Playback(volatileTape("wcf.md")).PrettyXML(2).Start()
	if err != nil {
		t.Fatal(err)
	}
	defer s.Close()
	volatileDriver(t, "wcf", s.BaseURL())
	if r := s.VolatileReport(); !strings.Contains(r, "binding: {{messageId-1}} = ") {
		t.Fatal(r)
	}
}

func TestVolatileProfileFileDrivesWcfPlayback(t *testing.T) {
	s, err := servirtium.Playback(volatileTape("wcf_plain.md")).PrettyXML(2).
		VolatileProfile(volatileTape("profile.md")).Start()
	if err != nil {
		t.Fatal(err)
	}
	defer s.Close()
	volatileDriver(t, "wcf", s.BaseURL())
}

func TestVolatileRulesInCodeDriveWcfPlayback(t *testing.T) {
	s, err := servirtium.Playback(volatileTape("wcf_plain.md")).PrettyXML(2).
		VolatileRule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>").
		VolatileRule("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/").
		VolatileRule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;").
		VolatileRule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>").
		Start()
	if err != nil {
		t.Fatal(err)
	}
	defer s.Close()
	volatileDriver(t, "wcf", s.BaseURL())
}

func TestVolatileMarkersDollarCurly(t *testing.T) {
	s, err := servirtium.Playback(volatileTape("wcf_dollar.md")).PrettyXML(2).
		VolatileMarkers(servirtium.MarkersDollarCurly).Start()
	if err != nil {
		t.Fatal(err)
	}
	defer s.Close()
	volatileDriver(t, "wcf", s.BaseURL())
	_, err = servirtium.Playback(volatileTape("wcf_dollar.md")).PrettyXML(2).Start()
	if err == nil || !strings.Contains(err.Error(), "DollarCurly") {
		t.Fatal(err)
	}
}

func TestVolatileCasesBindThenMismatchReportsToken(t *testing.T) {
	s, err := servirtium.Playback(volatileTape("cases.md")).Start()
	if err != nil {
		t.Fatal(err)
	}
	defer s.Close()
	volatileDriver(t, "cases", s.BaseURL())
	s.ResetCursor()
	volatileDriver(t, "cases-mismatch", s.BaseURL())
	if msg := s.LastError(false); !strings.Contains(msg, "{{caseId-1}} = 42") {
		t.Fatal(msg)
	}
	s.LastError() // consuming read: nothing unretrieved at close
}

func TestVolatileBindSuppliesARecordedValue(t *testing.T) {
	_, err := servirtium.Playback(volatileTape("cases_recorded.md")).Start()
	if err == nil || !strings.Contains(err.Error(), "caseId") {
		t.Fatal(err)
	}
	s, err := servirtium.Playback(volatileTape("cases_recorded.md")).Bind("caseId", "42").Start()
	if err != nil {
		t.Fatal(err)
	}
	defer s.Close()
	volatileDriver(t, "cases", s.BaseURL())
}

func TestVolatileConfigErrorsFailStart(t *testing.T) {
	_, err := servirtium.Playback(volatileTape("cases.md")).VolatileRule("request body", "no placeholder").Start()
	if err == nil || !strings.Contains(err.Error(), "needs at least one placeholder") {
		t.Fatal(err)
	}
	_, err = servirtium.Playback(volatileTape("cases.md")).VolatileRule("response body", "\"caseId\":\"{{id}}\"").Start()
	if err == nil || !strings.Contains(err.Error(), "conflicts with") || !strings.Contains(err.Error(), "(tape)") {
		t.Fatal(err)
	}
	if _, err = servirtium.Playback(volatileTape("cases.md")).VolatileRule("x", "a {{b}}", "regex").Start(); err == nil {
		t.Fatal("expected an error")
	}
}
