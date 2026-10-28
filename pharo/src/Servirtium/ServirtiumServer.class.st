"
A running VCR server. The system-under-test talks plain HTTP to `baseUrl`.
Call `stop` when done; in record mode `stop` also flushes the captured tape
to disk (and raises a ServirtiumError if failIfChanged was set and the new
tape drifts from the on-disk one).

Per-listener: every diagnostic / config call is scoped to this server's
handle, so N servers can run at once.
"
Class {
	#name : 'ServirtiumServer',
	#superclass : 'Object',
	#instVars : [
        'secretRedactor',
		'handle',
		'host',
		'tapePath',
		'recordMode',
		'failIfChanged',
		'baseUrl'
	],
	#category : 'Servirtium',
	#package : 'Servirtium'
}

{ #category : 'instance creation' }
ServirtiumServer class >> handle: aHandle host: aHost tape: aTapePath recordMode: isRecord failIfChanged: failIfChangedBool [

	^ self new
		setHandle: aHandle host: aHost tape: aTapePath recordMode: isRecord failIfChanged: failIfChangedBool;
		yourself
]

{ #category : 'initialization' }
ServirtiumServer >> setHandle: aHandle host: aHost tape: aTapePath recordMode: isRecord failIfChanged: failIfChangedBool [

	handle := aHandle.
	host := aHost.
	tapePath := aTapePath.
	recordMode := isRecord.
	failIfChanged := failIfChangedBool.
	baseUrl := nil
]

{ #category : 'accessing' }
ServirtiumServer >> library [

	^ ServirtiumLibrary uniqueInstance
]

{ #category : 'private' }
ServirtiumServer >> handle [
	"The live native handle, or raise if already stopped."

	(handle isNil or: [ handle isNull ]) ifTrue: [
		ServirtiumError signal: 'ServirtiumServer already stopped' ].
	^ handle
]

{ #category : 'accessing' }
ServirtiumServer >> port [
	"The OS-resolved port the server is listening on."

	^ self library port: self handle
]

{ #category : 'accessing' }
ServirtiumServer >> baseUrl [
	"Base URL the SUT should target, e.g. http://127.0.0.1:54213. Cached."

	^ baseUrl ifNil: [
		baseUrl := self library takeString: (self library baseUrl: self handle host: host) ]
]

{ #category : 'accessing' }
ServirtiumServer >> tapeLength [
	"Tape entry count (playback), or interactions captured so far (record)."

	^ self library tapeLength: self handle
]

{ #category : 'diagnostics' }
ServirtiumServer >> lastError [
	"Latest retained replay diagnostic; this read acknowledges without erasing."

	^ self library takeString: (self library lastError: self handle)
]

{ #category : 'diagnostics' }
ServirtiumServer >> lastKind [
	"Symbolic outcome of the most-recent dispatch (e.g. #ok, #bodyDiff)."

	^ ServirtiumOutcome symbolForCode: (self library lastKind: self handle)
]

{ #category : 'diagnostics' }
ServirtiumServer >> lastKindCode [
	"Raw integer outcome of the most-recent dispatch."

	^ self library lastKind: self handle
]

{ #category : 'diagnostics' }
ServirtiumServer >> lastIndex [
	"Tape index of the most-recent matched interaction, or -1."

	^ self library lastIndex: self handle
]

{ #category : 'recording' }
ServirtiumServer >> noteTitle: aTitle body: aBody [
	"Stage a note (record mode) for the *next* interaction to be captured.
	 Call between requests to annotate specific interactions."

	| err |
	err := self library takeString: (self library note: self handle title: aTitle body: aBody).
	err isEmpty ifFalse: [ ServirtiumError signal: err ]
]

{ #category : 'diagnostics' }
ServirtiumServer >> resetCursor [
	"Rewind the replay cursor to interaction 0 and clear last-* slots."

	self library resetCursor: self handle
]

{ #category : 'diagnostics' }
ServirtiumServer >> clearLastError [
	"Clear the last-error slot between sub-cases."

	self library clearLastError: self handle
]

{ #category : 'lifecycle' }
ServirtiumServer >> stop [
	"Stop the server. In record mode also flush the tape to disk (raising a
	 ServirtiumError on a non-empty flush error, e.g. failIfChanged drift).
	 Idempotent: a second call is a no-op."

	| h err |
	(handle isNil or: [ handle isNull ]) ifTrue: [ ^ self ].
	h := handle.
	handle := nil.

	recordMode ifFalse: [
		self library stop: h.
		^ self ].

	secretRedactor ifNotNil: [ self library stageSecrets: h callback: secretRedactor resolving: false ].
	err := self library takeString: (failIfChanged
		ifTrue: [ self library stopAndFlushFailIfChanged: h tape: tapePath ]
		ifFalse: [ self library stopAndFlush: h tape: tapePath ]).
	err isEmpty ifFalse: [ ServirtiumError signal: err ]
]

{ #category : 'diagnostics' }
ServirtiumServer >> lastErrorConsume: consume [
    ^ self library takeString: (self library lastError: self handle consume: (consume ifTrue: [ 1 ] ifFalse: [ 0 ]))
]
{ #category : 'diagnostics' }
ServirtiumServer >> diagnosticsJsonConsume: consume [
    ^ self library takeString: (self library diagnosticsJson: self handle consume: (consume ifTrue: [ 1 ] ifFalse: [ 0 ]))
]
{ #category : 'diagnostics' }
ServirtiumServer >> assertNoMismatches [
    | diagnostic |
    diagnostic := self library takeString: (self library assertNoMismatches: self handle).
    diagnostic ifNotEmpty: [ ServirtiumError signal: diagnostic ]
]
{ #category : 'diagnostics' }
ServirtiumServer >> testContext: name file: file line: line [
    self library testContext: self handle name: name file: file line: line
]

{ #category : 'configuring' }
ServirtiumServer >> secretRedactor: callback [
    secretRedactor := callback.
    ^ self
]

{ #category : 'diagnostics' }
ServirtiumServer >> lastTlsProtocol [
    "TLS protocol of the last connection (e.g. 'TLSv1.3'), '' if none."
    ^ self library takeString: (self library lastTlsProtocol: self handle)
]

{ #category : 'configuring' }
ServirtiumServer >> clearSubstitutions [
    self library clearSubstitutions: self handle
]

{ #category : 'diagnostics' }
ServirtiumServer >> assertAllConsumed [
    "Raise if any recorded interaction was not replayed."
    | err |
    err := self library takeString: (self library assertAllConsumed: self handle).
    err ifNotEmpty: [ ServirtiumError signal: err ]
]

{ #category : 'diagnostics' }
ServirtiumServer >> assertAllRedactionsUsed [
    "Raise if any redaction rule never matched."
    | err |
    err := self library takeString: (self library assertAllRedactionsUsed: self handle).
    err ifNotEmpty: [ ServirtiumError signal: err ]
]
