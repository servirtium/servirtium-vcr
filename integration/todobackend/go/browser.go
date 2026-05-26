// Package todobackend drives the vendored TodoBackend Mocha spec in real
// headless Chrome against a Servirtium VCR, and reports the result. Mirrors the
// Python browser.py, but drives Chrome with Go's own WebDriver client
// (github.com/tebeka/selenium, a W3C WebDriver client that launches the
// chromedriver service binary directly).
//
// Shared by both phases:
//   - record_test.go   — VCR in record mode, forwarding to the live Kotlin SUT
//   - playback_test.go — VCR replaying the committed tape, no SUT
//
// The suite is served *same-origin* from the VCR's own static-content mount
// (`/suite`), so the browser's API calls to the VCR root are same-origin — no
// CORS, no preflight OPTIONS cluttering the tape. /favicon.ico is marked
// untaped.
//
// Fixed port: the recorded responses embed absolute todo URLs
// (`http://127.0.0.1:<PORT>/<uuid>`) that the spec follows, and the VCR replays
// response bodies verbatim — so playback MUST bind the same port the tape was
// recorded against. Hence a fixed vcrPort for both phases rather than port 0.
package todobackend

import (
	"fmt"
	"net"
	"os"
	"path/filepath"
	"time"

	"github.com/tebeka/selenium"
	"github.com/tebeka/selenium/chrome"
)

// Both phases bind here (see the package doc on why it can't be dynamic).
const vcrPort = 51080

// fixtures is the shared integration dir (integration/todobackend), holding
// suite/ and tapes/. Tests run with the working dir at integration/todobackend/go
// (go test runs from the package source dir), so fixtures live one level up; an
// absolute override is honoured via TODOBACKEND_FIXTURES.
func fixtures() string {
	if override := os.Getenv("TODOBACKEND_FIXTURES"); override != "" {
		abs, _ := filepath.Abs(override)
		return abs
	}
	abs, _ := filepath.Abs("..")
	return abs
}

func suiteDir() string { return filepath.Join(fixtures(), "suite") }
func tapePath() string { return filepath.Join(fixtures(), "tapes", "todobackend_crud.md") }

// chromedriverPath resolves the chromedriver binary: CHROMEDRIVER if set, else
// the Selenium-cache copy matching the installed Chrome.
func chromedriverPath() (string, error) {
	if p := os.Getenv("CHROMEDRIVER"); p != "" {
		return p, nil
	}
	// Discover the newest cached chromedriver under ~/.cache/selenium.
	home, err := os.UserHomeDir()
	if err != nil {
		return "", err
	}
	var found string
	root := filepath.Join(home, ".cache", "selenium", "chromedriver")
	_ = filepath.Walk(root, func(path string, info os.FileInfo, err error) error {
		if err == nil && info != nil && !info.IsDir() && filepath.Base(path) == "chromedriver" {
			found = path
		}
		return nil
	})
	if found == "" {
		return "", fmt.Errorf("chromedriver not found (set CHROMEDRIVER or install via Selenium Manager); looked under %s", root)
	}
	return found, nil
}

// freePort asks the OS for a free TCP port for the chromedriver service.
func freePort() (int, error) {
	l, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		return 0, err
	}
	defer l.Close()
	return l.Addr().(*net.TCPAddr).Port, nil
}

// suiteResult is the outcome of one Mocha run.
type suiteResult struct {
	passes   int
	failures int
	failMsgs []string
}

// runSuite drives runner.html?<apiRoot> in headless Chrome until Mocha
// finishes, then reads the result. apiRoot defaults to the VCR root (same
// origin as the served suite). It launches the cached chromedriver service on
// an ephemeral port and tears it down afterward.
func runSuite(vcrBaseURL string) (suiteResult, error) {
	driverPath, err := chromedriverPath()
	if err != nil {
		return suiteResult{}, err
	}
	port, err := freePort()
	if err != nil {
		return suiteResult{}, err
	}

	svc, err := selenium.NewChromeDriverService(driverPath, port)
	if err != nil {
		return suiteResult{}, fmt.Errorf("start chromedriver service: %w", err)
	}
	defer svc.Stop()

	caps := selenium.Capabilities{}
	caps.AddChrome(chrome.Capabilities{Args: []string{
		"--headless=new", "--no-sandbox", "--disable-dev-shm-usage", "--disable-gpu",
	}})
	wd, err := selenium.NewRemote(caps, fmt.Sprintf("http://127.0.0.1:%d/wd/hub", port))
	if err != nil {
		return suiteResult{}, fmt.Errorf("connect WebDriver: %w", err)
	}
	defer wd.Quit()

	url := fmt.Sprintf("%s/suite/runner.html?%s", vcrBaseURL, vcrBaseURL)
	if err := wd.Get(url); err != nil {
		return suiteResult{}, fmt.Errorf("navigate %s: %w", url, err)
	}

	// Poll window.__mochaDone === true (up to 120s).
	deadline := time.Now().Add(120 * time.Second)
	for {
		done, err := wd.ExecuteScript("return window.__mochaDone === true", nil)
		if err != nil {
			return suiteResult{}, fmt.Errorf("poll __mochaDone: %w", err)
		}
		if b, ok := done.(bool); ok && b {
			break
		}
		if time.Now().After(deadline) {
			return suiteResult{}, fmt.Errorf("timed out waiting for Mocha to finish")
		}
		time.Sleep(200 * time.Millisecond)
	}

	res := suiteResult{}
	if v, err := wd.ExecuteScript("return window.__mochaPasses", nil); err == nil {
		res.passes = toInt(v)
	}
	if v, err := wd.ExecuteScript("return window.__mochaFailures", nil); err == nil {
		res.failures = toInt(v)
	}
	if v, err := wd.ExecuteScript("return window.__mochaFailMsgs", nil); err == nil {
		if arr, ok := v.([]interface{}); ok {
			for _, m := range arr {
				if s, ok := m.(string); ok {
					res.failMsgs = append(res.failMsgs, s)
				}
			}
		}
	}
	return res, nil
}

// toInt coerces a JSON-decoded WebDriver script result (float64) to int.
func toInt(v interface{}) int {
	switch n := v.(type) {
	case float64:
		return int(n)
	case int:
		return n
	case int64:
		return int(n)
	default:
		return -1
	}
}
