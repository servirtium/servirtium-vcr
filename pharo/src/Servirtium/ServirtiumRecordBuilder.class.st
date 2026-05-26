"
Configures and starts a record VCR server: forwards to a live upstream,
returns the real response to the SUT, captures the exchange, and writes a
Servirtium markdown tape when the server stops. Build via
`Servirtium record: 'tapes/my_api.md' upstream: 'http://host:port'`.
"
Class {
	#name : 'ServirtiumRecordBuilder',
	#superclass : 'ServirtiumBuilder',
	#instVars : [
		'upstreamBase',
		'redactions',
		'note',
		'indentCodeBlocks',
		'emphasizeHttpVerbs',
		'failIfChanged'
	],
	#category : 'Servirtium',
	#package : 'Servirtium'
}

{ #category : 'instance creation' }
ServirtiumRecordBuilder class >> tape: aTapePath upstream: anUpstreamBase [

	^ (self tape: aTapePath) setUpstream: anUpstreamBase
]

{ #category : 'initialization' }
ServirtiumRecordBuilder >> initializeTape: aTapePath [

	super initializeTape: aTapePath.
	redactions := OrderedCollection new.
	note := nil.
	indentCodeBlocks := false.
	emphasizeHttpVerbs := false.
	failIfChanged := false
]

{ #category : 'initialization' }
ServirtiumRecordBuilder >> setUpstream: anUpstreamBase [

	upstreamBase := anUpstreamBase.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> redactField: aField pattern: aPattern replacement: aReplacement [
	"Scrub a value out of the given field before it lands on the tape."

	redactions add: { aField. aPattern. aReplacement }.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> noteTitle: aTitle body: aBody [
	"Attach a note to the next recorded interaction (Servirtium step 9). For
	 notes on later interactions, call `noteTitle:body:` on the running server."

	note := aTitle -> aBody.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> indentCodeBlocks [
	"Emit code blocks as 4-space-indented text instead of fences."

	indentCodeBlocks := true.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> emphasizeHttpVerbs [
	"Emit the HTTP method emphasized (e.g. *GET*) in headings."

	emphasizeHttpVerbs := true.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> failIfChanged [
	"On stop, still write the freshly recorded tape but raise if it differs
	 from the on-disk one — the Servirtium step-4 drift contract, so a normal
	 `git diff` shows the change and CI fails loudly."

	failIfChanged := true.
	^ self
]

{ #category : 'private' }
ServirtiumRecordBuilder >> applyConfig [

	super applyConfig.
	indentCodeBlocks ifTrue: [ self library indentCodeBlocks ].
	emphasizeHttpVerbs ifTrue: [ self library emphasizeHttpVerbs ].
	redactions do: [ :tuple |
		self
			check: (self library redactField: (tuple at: 1) pattern: (tuple at: 2) replacement: (tuple at: 3))
			op: 'redact' ]
	"NOTE: the staged note is applied *after* start_record — load_record
	 clears the tape (and the pending note) as it binds, so staging it
	 pre-start would be wiped. See `start`."
]

{ #category : 'starting' }
ServirtiumRecordBuilder >> start [
	"Reset process-global state, apply config, start the record server, then
	 stage the pending note (after the tape has been (re)bound). Answers a
	 running ServirtiumServer that flushes the tape on stop."

	| handle |
	self resetGlobalState.
	self applyConfig.
	handle := self library
		startRecordLabel: label
		tape: tapePath
		upstream: upstreamBase
		host: host
		port: port.
	handle isNull ifTrue: [
		ServirtiumError signal:
			'vcr record failed to start for tape ''' , tapePath , ''' (upstream ''' , upstreamBase , ''')' ].
	note ifNotNil: [
		self check: (self library noteTitle: note key body: note value) op: 'note' ].
	^ ServirtiumServer handle: handle host: host tape: tapePath recordMode: true failIfChanged: failIfChanged
]

{ #category : 'starting' }
ServirtiumRecordBuilder >> startThenDo: aBlock [
	"Start, evaluate aBlock with the running server, and always stop it after
	 (which flushes the tape)."

	| server |
	server := self start.
	^ [ aBlock value: server ] ensure: [ server stop ]
]
