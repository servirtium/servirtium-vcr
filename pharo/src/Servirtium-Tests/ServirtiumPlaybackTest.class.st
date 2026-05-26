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
