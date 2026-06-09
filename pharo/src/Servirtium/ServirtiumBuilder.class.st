"
Shared bind options + per-handle config application for both the playback and
record builders.

The native ABI is handle-based: `start` opens a fresh server handle and
applies this fixture's config to that handle, so the mutation / diagnostic
state is scoped to the handle — a redaction / note / strict setting from
another fixture never leaks in. N independent VCR servers can run
concurrently, one server per port, each keyed by its own handle.
"
Class {
	#name : 'ServirtiumBuilder',
	#superclass : 'Object',
	#instVars : [
		'tapePath',
		'host',
		'port',
		'label',
		'headerRemovals',
		'staticContents',
		'untapedPaths'
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
	headerRemovals := OrderedCollection new.
	staticContents := OrderedCollection new.
	untapedPaths := OrderedCollection new
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

{ #category : 'configuring' }
ServirtiumBuilder >> staticContentMount: aMountPath dir: anFsDir [
	"Serve a path prefix from an on-disk directory instead of the tape /
	 upstream (Servirtium step 11). The engine honors static mounts in record
	 mode too, so a browser suite can be recorded served same-origin from the
	 VCR (no CORS/preflight noise), matching how it's replayed."

	staticContents add: aMountPath -> anFsDir.
	^ self
]

{ #category : 'configuring' }
ServirtiumBuilder >> untaped: aPath [
	"Mark an incidental request path (e.g. '/favicon.ico') the VCR answers 404
	 for without consuming the tape cursor (playback) / forwarding upstream
	 (record) — a normal interaction recorded after it still matches."

	untapedPaths add: aPath.
	^ self
]

{ #category : 'private' }
ServirtiumBuilder >> applyConfig: handle [
	"Apply config common to both builders to the opened handle, before serving
	 starts. Subclasses extend this with `super applyConfig: handle`."

	headerRemovals do: [ :assoc |
		self check: (self library removeHeader: handle field: assoc key name: assoc value) op: 'removeHeader' ].
	staticContents do: [ :assoc |
		self
			check: (self library staticContent: handle mount: assoc key dir: assoc value)
			op: 'staticContent' ].
	untapedPaths do: [ :path |
		self
			check: (self library untaped: handle path: path)
			op: 'untaped' ]
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
ServirtiumBuilder >> drainStartError: handle [

	| err |
	err := self library takeString: (self library lastError: handle).
	^ err isEmpty
		ifTrue: [ '(no detail; check tape path and port availability)' ]
		ifFalse: [ err ]
]
