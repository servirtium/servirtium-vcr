"
Configures and starts a playback VCR server: replays a Servirtium markdown
tape from disk. Build via `Servirtium playback: 'tapes/my_api.md'`, chain
setters, then `start` (or `startThenDo:` for auto-close).
"
Class {
	#name : 'ServirtiumPlaybackBuilder',
	#superclass : 'ServirtiumBuilder',
	#instVars : [
		'unredactions',
		'strictHeaders',
		'matchJsonBody'
	],
	#category : 'Servirtium',
	#package : 'Servirtium'
}

{ #category : 'initialization' }
ServirtiumPlaybackBuilder >> initializeTape: aTapePath [

	super initializeTape: aTapePath.
	unredactions := OrderedCollection new.
	strictHeaders := false.
	matchJsonBody := false
]

{ #category : 'configuring' }
ServirtiumPlaybackBuilder >> strictHeaders [
	"Compare the SUT's request headers against the recorded block on every
	 interaction (Servirtium step 10), surfacing mismatches via lastError."

	^ self strictHeaders: true
]

{ #category : 'configuring' }
ServirtiumPlaybackBuilder >> strictHeaders: aBoolean [

	strictHeaders := aBoolean.
	^ self
]

{ #category : 'configuring' }
ServirtiumPlaybackBuilder >> matchJsonBody [
	"Opt in to matching request bodies by semantic JSON equality (key order /
	 whitespace ignored) instead of byte-for-byte. Non-JSON bodies fall back
	 to byte-exact."

	^ self matchJsonBody: true
]

{ #category : 'configuring' }
ServirtiumPlaybackBuilder >> matchJsonBody: aBoolean [

	matchJsonBody := aBoolean.
	^ self
]

{ #category : 'configuring' }
ServirtiumPlaybackBuilder >> unredactField: aField pattern: aPattern replacement: aReplacement [
	"Replace a redacted placeholder in the recorded expectation with the real
	 value the live SUT sends, so a committed (scrubbed) tape still matches."

	unredactions add: { aField. aPattern. aReplacement }.
	^ self
]

{ #category : 'private' }
ServirtiumPlaybackBuilder >> applyConfig: handle [

	super applyConfig: handle.
	strictHeaders ifTrue: [ self library setStrictHeaders: handle on: 1 ].
	matchJsonBody ifTrue: [ self library setMatchJsonBody: handle on: 1 ].
	unredactions do: [ :tuple |
		self
			check: (self library unredact: handle field: (tuple at: 1) pattern: (tuple at: 2) replacement: (tuple at: 3))
			op: 'unredact' ]
]

{ #category : 'starting' }
ServirtiumPlaybackBuilder >> start [
	"Open the playback server, apply this fixture's config to its handle, then
	 begin serving. Answers a running ServirtiumServer."

	| handle |
	handle := self library
		openPlaybackLabel: label
		tape: tapePath
		host: host
		port: port.
	handle isNull ifTrue: [
		ServirtiumError signal:
			'vcr playback failed to start for tape ''' , tapePath , '''' ].
	self applyConfig: handle.
	(self library start: handle) < 0 ifTrue: [
		| detail |
		detail := self drainStartError: handle.
		self library stop: handle.
		ServirtiumError signal:
			'vcr playback failed to begin serving for tape ''' , tapePath , ''': ' , detail ].
	^ ServirtiumServer handle: handle host: host tape: tapePath recordMode: false failIfChanged: false
]

{ #category : 'starting' }
ServirtiumPlaybackBuilder >> startThenDo: aBlock [
	"Start, evaluate aBlock with the running server, and always stop it after."

	| server |
	server := self start.
	^ [ aBlock value: server ] ensure: [ server stop ]
]
