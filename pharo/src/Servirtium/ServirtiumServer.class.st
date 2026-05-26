"
A running VCR server. The system-under-test talks plain HTTP to `baseUrl`.
Call `stop` when done; in record mode `stop` also flushes the captured tape
to disk (and raises a ServirtiumError if failIfChanged was set and the new
tape drifts from the on-disk one).

v1 state is process-global, so the diagnostics (lastError / lastKind /
lastIndex), tapeLength, resetCursor and clearLastError take no handle.
"
Class {
	#name : 'ServirtiumServer',
	#superclass : 'Object',
	#instVars : [
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

	^ self library tapeLength
]

{ #category : 'diagnostics' }
ServirtiumServer >> lastError [
	"Most-recent dispatch diagnostic; empty String when none flagged."

	^ self library takeString: self library lastError
]

{ #category : 'diagnostics' }
ServirtiumServer >> lastKind [
	"Symbolic outcome of the most-recent dispatch (e.g. #ok, #bodyDiff)."

	^ ServirtiumOutcome symbolForCode: self library lastKind
]

{ #category : 'diagnostics' }
ServirtiumServer >> lastKindCode [
	"Raw integer outcome of the most-recent dispatch."

	^ self library lastKind
]

{ #category : 'diagnostics' }
ServirtiumServer >> lastIndex [
	"Tape index of the most-recent matched interaction, or -1."

	^ self library lastIndex
]

{ #category : 'recording' }
ServirtiumServer >> noteTitle: aTitle body: aBody [
	"Stage a note (record mode) for the *next* interaction to be captured.
	 Call between requests to annotate specific interactions."

	| err |
	err := self library takeString: (self library noteTitle: aTitle body: aBody).
	err isEmpty ifFalse: [ ServirtiumError signal: err ]
]

{ #category : 'diagnostics' }
ServirtiumServer >> resetCursor [
	"Rewind the replay cursor to interaction 0 and clear last-* slots."

	self library resetCursor
]

{ #category : 'diagnostics' }
ServirtiumServer >> clearLastError [
	"Clear the last-error slot between sub-cases."

	self library clearLastError
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

	err := self library takeString: (failIfChanged
		ifTrue: [ self library stopAndFlushFailIfChanged: h tape: tapePath ]
		ifFalse: [ self library stopAndFlush: h tape: tapePath ]).
	err isEmpty ifFalse: [ ServirtiumError signal: err ]
]
