"TodoBackend browser integration test — RECORD phase (manual, on-demand), Pharo.

VCR in record mode, forwarding to the live Kotlin/http4k SUT
(TODOBACKEND_UPSTREAM). The Mocha spec runs in real headless Chrome (Parasol /
Pharo's WebDriver client) against the VCR; every CRUD call is forwarded upstream
and recorded, then flushed to the tape on stop. The suite must pass for the
recording to be considered good.

Driven by .pharo_record.ae, which brings the SUT up in a container and tears it
down afterward, and by run.sh, which loads Servirtium + Parasol and starts the
selenium-server. Not an aeb node — recording is on-demand.

Env (exported by run.sh / the leaf): SERVIRTIUM_VCR_LIB, SELENIUM_PORT,
TODOBACKEND_SUITE, TODOBACKEND_TAPE, TODOBACKEND_UPSTREAM."

| env suite tape upstream result passes failures |
env := Smalltalk os environment.
suite := env at: 'TODOBACKEND_SUITE'.
tape := env at: 'TODOBACKEND_TAPE'.
upstream := env at: 'TODOBACKEND_UPSTREAM' ifAbsent: [ '' ].
upstream isEmpty ifTrue: [
	Stdio stdout nextPutAll: 'record.st: set TODOBACKEND_UPSTREAM'; lf.
	Smalltalk exitFailure ].

result := (Servirtium record: tape upstream: upstream)
	staticContentMount: '/suite' dir: suite;
	untaped: '/favicon.ico';
	normalizeWholeTape: '[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}' name: 'id';
	redactWholeTape: 'Date: .+ GMT' replacement: 'Date: <DATE>';
	port: 51080;
	startThenDo: [ :vcr |
		| pf |
		pf := RunTodoSuite value: vcr baseUrl.
		passes := pf key. failures := pf value.
		Stdio stdout
			nextPutAll: 'mocha (record): '; print: passes;
			nextPutAll: ' passed, '; print: failures; nextPutAll: ' failed'; lf.
		(failures = 0 and: [ passes > 0 ]) ].

result
	ifTrue: [ Stdio stdout nextPutAll: 'record: wrote '; nextPutAll: tape; lf. Smalltalk exitSuccess ]
	ifFalse: [
		Stdio stdout nextPutAll: 'record: suite did not pass against the live SUT; tape NOT trustworthy'; lf.
		Smalltalk exitFailure ].
