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
		'staticContents',
		'untapedPaths',
		'strictHeaders'
	],
	#category : 'Servirtium',
	#package : 'Servirtium'
}

{ #category : 'initialization' }
ServirtiumPlaybackBuilder >> initializeTape: aTapePath [

	super initializeTape: aTapePath.
	unredactions := OrderedCollection new.
	staticContents := OrderedCollection new.
	untapedPaths := OrderedCollection new.
	strictHeaders := false
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
ServirtiumPlaybackBuilder >> unredactField: aField pattern: aPattern replacement: aReplacement [
	"Replace a redacted placeholder in the recorded expectation with the real
	 value the live SUT sends, so a committed (scrubbed) tape still matches."

	unredactions add: { aField. aPattern. aReplacement }.
	^ self
]

{ #category : 'configuring' }
ServirtiumPlaybackBuilder >> staticContentMount: aMountPath dir: anFsDir [
	"Serve a path prefix from an on-disk directory instead of the tape
	 (Servirtium step 11)."

	staticContents add: aMountPath -> anFsDir.
	^ self
]

{ #category : 'configuring' }
ServirtiumPlaybackBuilder >> untaped: aPath [
	"Mark an incidental request path (e.g. '/favicon.ico') the VCR answers 404
	 for without consuming the tape cursor — a normal interaction recorded
	 after it still matches."

	untapedPaths add: aPath.
	^ self
]

{ #category : 'private' }
ServirtiumPlaybackBuilder >> applyConfig [

	super applyConfig.
	strictHeaders ifTrue: [ self library setStrictHeaders: 1 ].
	unredactions do: [ :tuple |
		self
			check: (self library unredactField: (tuple at: 1) pattern: (tuple at: 2) replacement: (tuple at: 3))
			op: 'unredact' ].
	staticContents do: [ :assoc |
		self
			check: (self library staticContentMount: assoc key dir: assoc value)
			op: 'staticContent' ].
	untapedPaths do: [ :path |
		self
			check: (self library untapedPath: path)
			op: 'untaped' ]
]

{ #category : 'starting' }
ServirtiumPlaybackBuilder >> start [
	"Reset process-global state, apply this fixture's config, then start the
	 playback server. Answers a running ServirtiumServer."

	| handle |
	self resetGlobalState.
	self applyConfig.
	handle := self library
		startPlaybackLabel: label
		tape: tapePath
		host: host
		port: port.
	handle isNull ifTrue: [
		ServirtiumError signal:
			'vcr playback failed to start for tape ''' , tapePath , ''': ' , self drainStartError ].
	^ ServirtiumServer handle: handle host: host tape: tapePath recordMode: false failIfChanged: false
]

{ #category : 'starting' }
ServirtiumPlaybackBuilder >> startThenDo: aBlock [
	"Start, evaluate aBlock with the running server, and always stop it after."

	| server |
	server := self start.
	^ [ aBlock value: server ] ensure: [ server stop ]
]
