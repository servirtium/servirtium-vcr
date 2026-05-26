"
Shared bind options + process-global state reset for both the playback and
record builders.

v1 contract (from the Aether side): ONE active VCR server per process. The
mutation / diagnostic state is process-global, so `start` resets it to a
clean slate before applying this fixture's config — a redaction / note /
strict setting from a previous test never leaks forward. Run tests serially
(one server per process / image at a time).
"
Class {
	#name : 'ServirtiumBuilder',
	#superclass : 'Object',
	#instVars : [
		'tapePath',
		'host',
		'port',
		'label',
		'headerRemovals'
	],
	#category : 'Servirtium',
	#package : 'Servirtium'
}

{ #category : 'instance creation' }
ServirtiumBuilder class >> tape: aTapePath [

	^ self new initializeTape: aTapePath
]

{ #category : 'initialization' }
ServirtiumBuilder >> initializeTape: aTapePath [

	tapePath := aTapePath.
	host := '127.0.0.1'.
	port := 0.            "0 => OS-assigned (dynamic)"
	label := ''.
	headerRemovals := OrderedCollection new
]

{ #category : 'accessing' }
ServirtiumBuilder >> library [

	^ ServirtiumLibrary uniqueInstance
]

{ #category : 'configuring' }
ServirtiumBuilder >> host: aHost [
	"Bind host. Defaults to 127.0.0.1."

	host := aHost.
	^ self
]

{ #category : 'configuring' }
ServirtiumBuilder >> port: aPort [
	"Bind port. 0 (the default) asks the OS for a free port."

	port := aPort.
	^ self
]

{ #category : 'configuring' }
ServirtiumBuilder >> label: aLabel [
	"Human-facing label for logs / diagnostics (not a state key)."

	label := aLabel.
	^ self
]

{ #category : 'configuring' }
ServirtiumBuilder >> removeHeaderField: aField name: aName [
	"Remove a header by name from the given block (case-insensitive)."

	headerRemovals add: aField -> aName.
	^ self
]

{ #category : 'private' }
ServirtiumBuilder >> resetGlobalState [
	"Wipe all process-global mutation / format / strict state so a previous
	 fixture's settings can't leak into this one (v1 one-server-per-process
	 has no per-handle state). Called first by `start`."

	| lib |
	lib := self library.
	lib clearRedactions.
	lib clearUnredactions.
	lib clearHeaderRemovals.
	lib clearStaticContent.
	lib clearFormatOptions.
	lib setStrictHeaders: 0.
	lib clearLastError
	"A staged-but-unconsumed note is reset core-side when start_*
	 (re)loads the tape, so there's nothing to clear here."
]

{ #category : 'private' }
ServirtiumBuilder >> applyConfig [
	"Apply config common to both builders after the reset and before the
	 server starts. Subclasses extend this with `super applyConfig`."

	headerRemovals do: [ :assoc |
		self check: (self library removeHeaderField: assoc key name: assoc value) op: 'removeHeader' ]
]

{ #category : 'private' }
ServirtiumBuilder >> check: aResultPointer op: anOperation [
	"Raise if a mutation call returned a non-empty error string ('' = ok)."

	| err |
	err := self library takeString: aResultPointer.
	err isEmpty ifFalse: [
		ServirtiumError signal: 'vcr ' , anOperation , ' failed: ' , err ]
]

{ #category : 'private' }
ServirtiumBuilder >> drainStartError [

	| err |
	err := self library takeString: self library lastError.
	^ err isEmpty
		ifTrue: [ '(no detail; check tape path and port availability)' ]
		ifFalse: [ err ]
]
