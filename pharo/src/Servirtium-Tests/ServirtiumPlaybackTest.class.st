"
End-to-end proof of the uFFI chain: Pharo fixture -> native VCR
(aether_vcr_embed_*) -> embedded Aether HTTP server. Replays a Servirtium
markdown tape and asserts the SUT-visible response and diagnostics, driving
the server over plain HTTP with ZnClient (Zinc, in-image).
"
Class {
	#name : 'ServirtiumPlaybackTest',
	#superclass : 'ServirtiumTestCase',
	#category : 'Servirtium-Tests',
	#package : 'Servirtium-Tests'
}

{ #category : 'tests' }
ServirtiumPlaybackTest >> testReplaysARecordedGetOnADynamicPort [

	| server body |
	server := (Servirtium playback: (self tapePath: 'single_get.md'))
		label: 'replays a recorded GET';
		port: 0;
		start.
	[
		self assert: server port > 0 description: 'expected an OS-assigned port'.
		self assert: server tapeLength equals: 1.

		body := ZnClient new get: server baseUrl , '/ok'.

		self assert: body equals: 'ok-body'.
		self assert: server lastKind equals: #ok.
		self assert: server lastError isEmpty ]
	ensure: [ server stop ]
]

{ #category : 'tests' }
ServirtiumPlaybackTest >> testFlagsAPathMismatchViaDiagnostics [

	(Servirtium playback: (self tapePath: 'single_get.md'))
		port: 0;
		startThenDo: [ :server |
			[ ZnClient new get: server baseUrl , '/nope' ] on: Error do: [ :e | ].

			self deny: server lastKind equals: #ok.
			self deny: server lastError isEmpty description: 'expected a mismatch diagnostic' ]
]

{ #category : 'tests' }
ServirtiumPlaybackTest >> testStartThenDoStopsTheServer [
	"startThenDo: must always stop the server even when the block raises."

	| captured |
	captured := nil.
	[ (Servirtium playback: (self tapePath: 'single_get.md'))
		port: 0;
		startThenDo: [ :server |
			captured := server.
			self assert: server port > 0.
			Error signal: 'boom' ] ]
		on: Error
		do: [ :e | self assert: e messageText equals: 'boom' ].
	"A second stop is a no-op and must not raise."
	captured stop
]


{ #category : 'tests' }
ServirtiumPlaybackTest >> testRetainedReplayDiagnostics [
    | root server client events |
    root := self tapesDir asFileReference parent parent parent parent.
    server := (Servirtium playback: (root / 'core_tests' / 'diagnostics' / 'playback.md') fullName) start.
    [ server testContext: 'Pharo scenario' file: 'scenario.test' line: 123.
      #('admin' 'owner' 'reader') do: [ :role |
        client := ZnClient new.
        client url: server baseUrl , '/items'; entity: (ZnEntity json: '{"role":"' , role , '"}'); post ].
      self assert: ((server lastErrorConsume: false) includesSubstring: 'owner').
      self assert: ((server lastErrorConsume: false) includesSubstring: 'scenario.test:123').
      events := server diagnosticsJsonConsume: false.
      self deny: (events includesSubstring: '"retrieved":1').
      self assert: (server lastError includesSubstring: 'owner').
      self assert: ((server diagnosticsJsonConsume: false) includesSubstring: '"retrieved":0').
      self should: [ server assertNoMismatches ] raise: ServirtiumError.
      server testContext: 'next test' file: '' line: 0.
      server assertNoMismatches.
      self assert: (server diagnosticsJsonConsume: false) equals: '[]'
    ] ensure: [ server stop ]
]

{ #category : 'tests' }
ServirtiumPlaybackTest >> testSubstituteRewritesCustomPlaceholderAndAssertAllConsumed [

	| server body |
	server := (Servirtium playback: (self tapePath: 'substitute.md'))
		substituteField: ServirtiumField responseBody pattern: '@@HOST@@' replacement: 'http://sub.example';
		port: 0;
		start.
	[
		self should: [ server assertAllConsumed ] raise: ServirtiumError.
		body := ZnClient new get: server baseUrl , '/sub'.
		self assert: body equals: 'at http://sub.example/x'.
		self assert: server lastKind equals: #ok.
		server assertAllConsumed ] ensure: [ server stop ]
]
