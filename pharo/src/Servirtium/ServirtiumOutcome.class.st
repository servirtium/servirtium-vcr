"
Per-dispatch outcome codes. Mirror the VCR_KIND_* constants in the in-repo
core/vcr.ae engine:

  Ok=0 PathOrMethodDiff=1 HeaderMissing=2 HeaderValueDiff=3
  HeaderUnexpected=4 TapeExhausted=5 BodyDiff=6 RecordError=7

`ServirtiumServer>>lastKind` returns the symbolic name (e.g. #ok) via
`ServirtiumOutcome symbolForCode:`; the raw int is available too.
"
Class {
	#name : 'ServirtiumOutcome',
	#superclass : 'Object',
	#category : 'Servirtium',
	#package : 'Servirtium'
}

{ #category : 'constants' }
ServirtiumOutcome class >> ok [ ^ 0 ]

{ #category : 'constants' }
ServirtiumOutcome class >> pathOrMethodDiff [ ^ 1 ]

{ #category : 'constants' }
ServirtiumOutcome class >> headerMissing [ ^ 2 ]

{ #category : 'constants' }
ServirtiumOutcome class >> headerValueDiff [ ^ 3 ]

{ #category : 'constants' }
ServirtiumOutcome class >> headerUnexpected [ ^ 4 ]

{ #category : 'constants' }
ServirtiumOutcome class >> tapeExhausted [ ^ 5 ]

{ #category : 'constants' }
ServirtiumOutcome class >> bodyDiff [ ^ 6 ]

{ #category : 'constants' }
ServirtiumOutcome class >> recordError [ ^ 7 ]

{ #category : 'converting' }
ServirtiumOutcome class >> symbolForCode: anInteger [
	"Map a raw outcome int onto its symbol, or #unknown."

	^ #( ok pathOrMethodDiff headerMissing headerValueDiff headerUnexpected tapeExhausted bodyDiff recordError )
		at: anInteger + 1
		ifAbsent: [ #unknown ]
]
