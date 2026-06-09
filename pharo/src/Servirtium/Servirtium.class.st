"
Entry point for record/replay fixtures backed by the in-repo VCR core (the
`aether_vcr_embed_*` C-ABI from `core/embed.ae`, the embedding layer over
`core/vcr.ae`). The system-under-test talks plain HTTP to
`ServirtiumServer>>baseUrl`; tape paths, mode, mutations, and diagnostics
live in test setup / teardown.

	| server |
	server := (Servirtium playback: 'tapes/my_api.md') port: 0; start.
	"" ... drive the SUT against server baseUrl ... ""
	self assert: server lastKind equals: #ok.
	server stop.

Or auto-closing:

	(Servirtium playback: 'tapes/my_api.md') startThenDo: [ :server |
		"" ... drive the SUT against server baseUrl ... "" ].

The native ABI is handle-based: each `start` opens its own server handle and
applies this fixture's config to that handle. N independent VCR servers can
run concurrently, one server per port, each keyed by its own handle.
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
