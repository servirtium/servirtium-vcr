"
Entry point for record/replay fixtures backed by the Aether VCR core (the
`aether_vcr_embed_*` C-ABI from `std/http/server/vcr/embed.ae`). The
system-under-test talks plain HTTP to `ServirtiumServer>>baseUrl`; tape
paths, mode, mutations, and diagnostics live in test setup / teardown.

	| server |
	server := (Servirtium playback: 'tapes/my_api.md') port: 0; start.
	"" ... drive the SUT against server baseUrl ... ""
	self assert: server lastKind equals: #ok.
	server stop.

Or auto-closing:

	(Servirtium playback: 'tapes/my_api.md') startThenDo: [ :server |
		"" ... drive the SUT against server baseUrl ... "" ].

v1 contract (from the Aether side): ONE active VCR server per process /
image. The mutation / diagnostic state is process-global, so `start` resets
it before applying this fixture's config. Run tests serially.
"
Class {
	#name : 'Servirtium',
	#superclass : 'Object',
	#category : 'Servirtium',
	#package : 'Servirtium'
}

{ #category : 'fixtures' }
Servirtium class >> playback: aTapePath [
	"Replay a Servirtium markdown tape from disk. Answers a builder."

	^ ServirtiumPlaybackBuilder tape: aTapePath
]

{ #category : 'fixtures' }
Servirtium class >> record: aTapePath upstream: anUpstreamBase [
	"Record live interactions: forward to anUpstreamBase, return the real
	 response to the SUT, and capture the exchange. The tape is written to
	 aTapePath when the server is stopped. Answers a builder."

	^ ServirtiumRecordBuilder tape: aTapePath upstream: anUpstreamBase
]
