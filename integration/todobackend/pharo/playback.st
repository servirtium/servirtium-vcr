"TodoBackend browser integration test — PLAYBACK phase (the CI artifact), Pharo.

Replays the committed CRUD tape through a Pharo-hosted Servirtium VCR and runs
the real TodoBackend Mocha spec against it in real headless Chrome (Parasol /
Pharo's WebDriver client). No SUT, no network — the whole CRUD conversation
comes off the tape. This is the offline test wired into aeb
(integration/todobackend/.pharo_playback.ae); record.st regenerates the tape.

Env (exported by run.sh): SERVIRTIUM_VCR_LIB, SELENIUM_PORT, TODOBACKEND_SUITE,
TODOBACKEND_TAPE. Fixed VCR port 51080 — recorded responses embed absolute todo
URLs that the spec follows, replayed verbatim, so playback must bind the port
the tape was recorded against."

| env suite tape result passes failures |
env := Smalltalk os environment.
suite := env at: 'TODOBACKEND_SUITE'.
tape := env at: 'TODOBACKEND_TAPE'.

result := (Servirtium playback: tape)
	staticContentMount: '/suite' dir: suite;
	untaped: '/favicon.ico';
	port: 51080;
	startThenDo: [ :vcr |
		| pf |
		pf := RunTodoSuite value: vcr baseUrl.
		passes := pf key. failures := pf value.
		Stdio stdout
			nextPutAll: 'mocha (playback): '; print: passes;
			nextPutAll: ' passed, '; print: failures; nextPutAll: ' failed'; lf.
		(failures = 0 and: [ passes > 0 ]) ].

result
	ifTrue: [ Stdio stdout nextPutAll: 'TODOBACKEND_PLAYBACK_OK'; lf. Smalltalk exitSuccess ]
	ifFalse: [ Stdio stdout nextPutAll: 'TODOBACKEND_PLAYBACK_FAIL'; lf. Smalltalk exitFailure ].
