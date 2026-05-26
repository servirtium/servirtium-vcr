"Shared Parasol/Chrome driver for the TodoBackend Mocha suite — Pharo binding.

Loaded (filed-in) ahead of playback.st / record.st by run.sh. Defines a single
global, RunTodoSuite, a block that drives runner.html?<apiRoot> in real headless
Chrome via Parasol (Pharo's Selenium WebDriver client) until Mocha finishes,
then answers an Association of (passes -> failures) and prints any fail
messages. Mirrors the Python browser.py run_suite, but drives Chrome with
Pharo's own WebDriver client.

Same-origin: the suite is served from the VCR's own static_content('/suite')
mount, so the browser's API calls to the VCR root are same-origin — no CORS, no
preflight OPTIONS cluttering the tape. /favicon.ico is marked untaped.

Parasol speaks the WebDriver protocol over /wd/hub to a Selenium Server, NOT to
chromedriver directly (chromedriver serves /session, not /wd/hub). run.sh starts
a selenium-server standalone (backed by the cached chromedriver) and exports
SELENIUM_PORT; we point Parasol at it here."

Smalltalk at: #RunTodoSuite put: [ :vcrBaseUrl |
	| sePort caps driver url passes failures msgs deadline done |
	sePort := (Smalltalk os environment at: 'SELENIUM_PORT' ifAbsent: [ '4444' ]) asInteger.
	BPRemoteWebDriver serverHost: '127.0.0.1'.
	BPRemoteWebDriver serverPort: sePort.
	caps := BPChromeOptions new.
	caps addArguments: #('--headless=new' '--no-sandbox' '--disable-dev-shm-usage' '--disable-gpu').
	url := vcrBaseUrl , '/suite/runner.html?' , vcrBaseUrl.
	driver := BPRemoteWebDriver withCapabilities: caps.
	[
		driver get: url.
		"Poll window.__mochaDone === true (up to 120s), like the Python WebDriverWait."
		done := false.
		deadline := DateAndTime now + 120 seconds.
		[ done or: [ DateAndTime now > deadline ] ] whileFalse: [
			done := (driver executeScript: 'return window.__mochaDone === true' with: #()) = true.
			done ifFalse: [ (Delay forMilliseconds: 200) wait ] ].
		done ifFalse: [ Error signal: 'mocha did not finish within 120s' ].
		passes := (driver executeScript: 'return window.__mochaPasses' with: #()) asInteger.
		failures := (driver executeScript: 'return window.__mochaFailures' with: #()) asInteger.
		msgs := (driver executeScript: 'return window.__mochaFailMsgs' with: #()) ifNil: [ #() ].
		msgs do: [ :m | Stdio stdout nextPutAll: '  FAIL: '; nextPutAll: m printString; lf ].
		passes -> failures
	] ensure: [ driver quit ] ].
