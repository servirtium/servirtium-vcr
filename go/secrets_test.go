package servirtium_test

import (
	servirtium "github.com/servirtium/servirtium-go"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
)

func TestNamedSecretsRoundTrip(t *testing.T) {
	dir := t.TempDir()
	tape := filepath.Join(dir, "tape.md")
	run := func(args ...string) string {
		out, err := exec.Command("../target/test-tools/secret_fixture", args...).CombinedOutput()
		if err != nil {
			t.Fatalf("fixture: %v: %s", err, out)
		}
		return strings.TrimSpace(string(out))
	}
	upstream := run("start", dir)
	count := 0
	rec, err := servirtium.Record(tape, upstream).SecretRedactor(func(key string, request servirtium.SecretRequest) (string, bool) {
		if key != "password" {
			return "", false
		}
		count++
		if request.FieldPath == "" {
			t.Fatal("missing field path")
		}
		return strings.ToUpper(strings.Split(request.Path, "/")[1]) + "_PASSWORD", true
	}).Start()
	if err != nil {
		t.Fatal(err)
	}
	run("drive", rec.BaseURL())
	if count != 0 {
		t.Fatal("callback ran before flush")
	}
	if err = rec.Close(); err != nil {
		t.Fatal(err)
	}
	if count != 20 {
		t.Fatalf("got %d candidates", count)
	}
	run("check", tape)
	if bad, err := servirtium.Playback(tape).Start(); err == nil {
		bad.Close()
		t.Fatal("missing resolver accepted")
	}
	replay, err := servirtium.Playback(tape).SecretResolver(func(token string) (string, bool) {
		return "pw-" + strings.ToLower(strings.TrimSuffix(token, "_PASSWORD")) + "&secret", true
	}).Start()
	if err != nil {
		t.Fatal(err)
	}
	defer replay.Close()
	run("drive", replay.BaseURL())
	if err = replay.AssertNoMismatches(); err != nil {
		t.Fatal(err)
	}
	run("check", tape)
}
