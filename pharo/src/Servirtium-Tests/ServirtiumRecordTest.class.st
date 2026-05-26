"
Proves record mode end-to-end: the VCR forwards to a live local upstream
(an in-image ZnServer), returns the real response to the SUT, captures the
exchange, flushes a Servirtium markdown tape on stop, and the same tape
then replays offline. Also covers redaction landing on the written tape.

The upstream returns a fixed body with an explicit Content-Length (Zinc's
default for a String entity), so no chunked framing is involved here.
"
Class {
	#name : 'ServirtiumRecordTest',
	#superclass : 'ServirtiumTestCase',
	#instVars : [
		'upstream',
		'tape',
		'tape2'
	],
	#category : 'Servirtium-Tests',
	#package : 'Servirtium-Tests'
}

{ #category : 'running' }
ServirtiumRecordTest >> setUp [

	super setUp.
	tape := self tempTapePath.
	tape2 := self tempTapePath.
	upstream := ZnServer on: 0.
	upstream
		onRequestRespond: [ :request |
			ZnResponse ok: (ZnEntity text: 'hello-from-upstream') ];
		start.
	"Wait for the listener to bind its dynamic port."
	[ upstream isListening and: [ upstream port > 0 ] ]
		whileFalse: [ (Delay forMilliseconds: 20) wait ]
]

{ #category : 'running' }
ServirtiumRecordTest >> tearDown [

	upstream ifNotNil: [ upstream stop. upstream := nil ].
	{ tape. tape2 } do: [ :each |
		each ifNotNil: [
			| ref |
			ref := each asFileReference.
			ref exists ifTrue: [ ref delete ] ] ].
	super tearDown
]

{ #category : 'helpers' }
ServirtiumRecordTest >> upstreamBase [

	^ 'http://127.0.0.1:' , upstream port asString
]

{ #category : 'tests' }
ServirtiumRecordTest >> testRecordsThenReplaysTheSameInteraction [

	"---- record ----"
	(Servirtium record: tape upstream: self upstreamBase)
		port: 0;
		startThenDo: [ :rec |
			self assert: (ZnClient new get: rec baseUrl , '/greeting') equals: 'hello-from-upstream' ].
	"stop flushed the tape"
	self assert: tape asFileReference exists description: 'record-mode stop should write the tape'.

	"---- replay (offline) ----"
	(Servirtium playback: tape)
		port: 0;
		startThenDo: [ :play |
			self assert: (ZnClient new get: play baseUrl , '/greeting') equals: 'hello-from-upstream'.
			self assert: play lastKind equals: #ok ]
]

{ #category : 'tests' }
ServirtiumRecordTest >> testRedactsResponseBodyBeforeItLandsOnTheTape [

	upstream onRequestRespond: [ :request |
		ZnResponse ok: (ZnEntity text: 'value=secret-token') ].

	(Servirtium record: tape upstream: self upstreamBase)
		redactField: ServirtiumField responseBody pattern: 'secret-token' replacement: 'REDACTED';
		port: 0;
		startThenDo: [ :rec | ZnClient new get: rec baseUrl , '/x' ].

	self assert: (tape asFileReference contents includesSubstring: 'REDACTED').
	self deny: (tape asFileReference contents includesSubstring: 'secret-token')
]

{ #category : 'tests' }
ServirtiumRecordTest >> testAttachesANoteToTheRecordedInteraction [

	(Servirtium record: tape upstream: self upstreamBase)
		noteTitle: 'Why this exists' body: 'documents the call';
		port: 0;
		startThenDo: [ :rec | ZnClient new get: rec baseUrl , '/x' ].

	self assert: (tape asFileReference contents includesSubstring: '## [Note] Why this exists:')
]

{ #category : 'tests' }
ServirtiumRecordTest >> testMutationStateDoesNotLeakBetweenFixtures [

	"Fixture A registers a redaction for 'leak'."
	upstream onRequestRespond: [ :request | ZnResponse ok: (ZnEntity text: 'leak') ].
	(Servirtium record: tape upstream: self upstreamBase)
		redactField: ServirtiumField responseBody pattern: 'leak' replacement: 'SCRUBBED';
		port: 0;
		startThenDo: [ :a | ZnClient new get: a baseUrl , '/x' ].
	self assert: (tape asFileReference contents includesSubstring: 'SCRUBBED').

	"Fixture B registers NO redaction; A's must not leak in."
	(Servirtium record: tape2 upstream: self upstreamBase)
		port: 0;
		startThenDo: [ :b | ZnClient new get: b baseUrl , '/x' ].
	self assert: (tape2 asFileReference contents includesSubstring: 'leak').
	self deny: (tape2 asFileReference contents includesSubstring: 'SCRUBBED')
]

{ #category : 'tests' }
ServirtiumRecordTest >> testFailIfChangedThrowsWhenAReRecordDrifts [

	"First record creates the tape — no drift, no raise."
	upstream onRequestRespond: [ :request | ZnResponse ok: (ZnEntity text: 'v1') ].
	(Servirtium record: tape upstream: self upstreamBase)
		failIfChanged;
		port: 0;
		startThenDo: [ :first | ZnClient new get: first baseUrl , '/x' ].
	self assert: tape asFileReference exists.

	"Re-record with a changed upstream — stop must raise, while still
	 writing the new tape for git diff."
	upstream onRequestRespond: [ :request | ZnResponse ok: (ZnEntity text: 'v2-changed') ].
	[
		| second |
		second := (Servirtium record: tape upstream: self upstreamBase) failIfChanged; port: 0; start.
		ZnClient new get: second baseUrl , '/x'.
		self should: [ second stop ] raise: ServirtiumError ]
		value.
	self assert: (tape asFileReference contents includesSubstring: 'v2-changed')
]
