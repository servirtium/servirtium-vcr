"
Playback-side breadth: strict request-header matching (pass via
unredaction, fail on a missing header) and static-content bypass.

ZnClient attaches its own default request headers (Accept, User-Agent) that
the tape never recorded; strict matching correctly rejects those as
unexpected. We drop them from the comparison with request-header removals
(the documented `IGNORE-A-HEADER-WHEN-MATCHING` lever).
"
Class {
	#name : 'ServirtiumPlaybackMatchTest',
	#superclass : 'ServirtiumTestCase',
	#category : 'Servirtium-Tests',
	#package : 'Servirtium-Tests'
}

{ #category : 'helpers' }
ServirtiumPlaybackMatchTest >> secureBuilder [
	"A strict playback of secure_get.md, with the Zinc volatile headers
	 ignored and the redacted token rewritten to the real one."

	^ (Servirtium playback: (self tapePath: 'secure_get.md'))
		strictHeaders;
		unredactField: ServirtiumField requestHeaders pattern: 'Bearer REDACTED' replacement: 'Bearer real-token';
		removeHeaderField: ServirtiumField requestHeaders name: 'Accept';
		removeHeaderField: ServirtiumField requestHeaders name: 'User-Agent';
		port: 0;
		yourself
]

{ #category : 'tests' }
ServirtiumPlaybackMatchTest >> testUnredactionLetsAScrubbedTapeMatchTheRealRequest [

	self secureBuilder startThenDo: [ :server |
		| body |
		body := ZnClient new
			headerAt: 'Authorization' put: 'Bearer real-token';
			get: server baseUrl , '/secure'.

		self assert: body equals: 'secret-ok'.
		self assert: server lastKind equals: #ok ]
]

{ #category : 'tests' }
ServirtiumPlaybackMatchTest >> testStrictMatchingFlagsAMissingRequestHeader [

	self secureBuilder startThenDo: [ :server |
		"No Authorization header at all -> mismatch."
		[ ZnClient new get: server baseUrl , '/secure' ] on: Error do: [ :e | ].

		self deny: server lastKind equals: #ok.
		self deny: server lastError isEmpty ]
]

{ #category : 'tests' }
ServirtiumPlaybackMatchTest >> testStaticContentIsServedFromDiskNotTheTape [

	| dir |
	dir := FileLocator temp / ('vcr_static_' , UUIDGenerator next asString36).
	dir ensureCreateDirectory.
	(dir / 'asset.txt') writeStreamDo: [ :stream | stream nextPutAll: 'static-asset' ].
	[
		(Servirtium playback: (self tapePath: 'single_get.md'))
			staticContentMount: '/files' dir: dir fullName;
			port: 0;
			startThenDo: [ :server |
				"From disk:"
				self assert: (ZnClient new get: server baseUrl , '/files/asset.txt') equals: 'static-asset'.
				"From the tape (unaffected):"
				self assert: (ZnClient new get: server baseUrl , '/ok') equals: 'ok-body' ] ]
	ensure: [ dir deleteAll ]
]
