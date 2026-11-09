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
		'ignoreVolatileHeaders',
		'removeTransportHeaders',
		'cloudVendors',
		'redactCredentials',
		'credentialHeaders',
		'staticContents',
		'untapedPaths',
		'tlsCert',
		'tlsKey',
		'tlsCertPem',
		'tlsKeyPem'
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
	ignoreVolatileHeaders := false.
	removeTransportHeaders := false.
	cloudVendors := OrderedCollection new.
	redactCredentials := false.
	credentialHeaders := OrderedCollection new.
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
ServirtiumBuilder >> ignoreVolatileHeaders [
	"Drop the per-request volatile headers modern clients inject on every call —
	 distributed-tracing / correlation ids (traceparent, tracestate, Request-Id,
	 X-Request-Id, X-Correlation-Id, baggage) — from BOTH the recorded
	 expectation and the live request before matching. The companion to removing
	 the stock client identity headers. Works in playback and record mode."

	ignoreVolatileHeaders := true.
	^ self
]

{ #category : 'configuring' }
ServirtiumBuilder >> removeTransportHeaders [
	"Leave the connection-describing headers (Host, Connection, Content-Length
	 and the other hop-by-hop headers, Accept-Encoding) out of the recording.
	 Works in playback and record mode."

	removeTransportHeaders := true.
	^ self
]

{ #category : 'configuring' }
ServirtiumBuilder >> removeCloudHeaders: aVendor [
	"Drop a cloud vendor's per-request headers; aVendor is one of 'aws',
	 'azure', 'cloudflare', 'fastly', 'gcp'. Send again for more vendors."

	cloudVendors add: aVendor.
	^ self
]

{ #category : 'configuring' }
ServirtiumBuilder >> redactCredentials [
	"Redact the common credential headers (Authorization, Cookie, Set-Cookie,
	 X-Api-Key, X-Auth-Token, ...) as numbered tokens. Register on the playback
	 builder too, as with every rule."

	redactCredentials := true.
	^ self
]

{ #category : 'configuring' }
ServirtiumBuilder >> redactCredentialHeader: aName [
	"One more credential header with the same treatment as redactCredentials."

	credentialHeaders add: aName.
	^ self
]

{ #category : 'configuring' }
ServirtiumBuilder >> staticContentMount: aMountPath dir: anFsDir [
	"Serve a path prefix from an on-disk directory instead of the tape /
	 upstream (Servirtium step 11). libservirtium_vcr honors static mounts in record
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

{ #category : 'configuring' }
ServirtiumBuilder >> tlsCert: aCertPath key: aKeyPath [
	"Serve https:// using this PEM certificate and key (PEM cert + key: ECDSA P-256/P-384/P-521, Ed25519, or RSA 2048-16384)."

	tlsCert := aCertPath.
	tlsKey := aKeyPath.
	^ self
]

{ #category : 'configuring' }
ServirtiumBuilder >> tlsFromPemCert: aCertPem key: aKeyPem [
	"Like tls, but the PEM certificate and key are passed in memory (not file paths), so no private key is written to disk."

	tlsCertPem := aCertPem.
	tlsKeyPem := aKeyPem.
	^ self
]

{ #category : 'private' }
ServirtiumBuilder >> applyConfig: handle [
	"Apply config common to both builders to the opened handle, before serving
	 starts. Subclasses extend this with `super applyConfig: handle`."

	headerRemovals do: [ :assoc |
		self check: (self library removeHeader: handle field: assoc key name: assoc value) op: 'removeHeader' ].
	ignoreVolatileHeaders ifTrue: [
		self check: (self library ignoreVolatileHeaders: handle) op: 'ignoreVolatileHeaders' ].
	removeTransportHeaders ifTrue: [
		self check: (self library removeTransportHeaders: handle) op: 'removeTransportHeaders' ].
	cloudVendors do: [ :vendor |
		self check: (self library removeCloudHeaders: handle vendor: vendor) op: 'removeCloudHeaders' ].
	redactCredentials ifTrue: [
		self check: (self library redactCredentials: handle) op: 'redactCredentials' ].
	credentialHeaders do: [ :name |
		self check: (self library redactCredentialHeader: handle name: name) op: 'redactCredentialHeader' ].
	staticContents do: [ :assoc |
		self
			check: (self library staticContent: handle mount: assoc key dir: assoc value)
			op: 'staticContent' ].
	untapedPaths do: [ :path |
		self
			check: (self library untaped: handle path: path)
			op: 'untaped' ].
	tlsCert ifNotNil: [
		self
			check: (self library setTls: handle cert: tlsCert key: tlsKey)
			op: 'setTls' ].
	tlsCertPem ifNotNil: [
		self
			check: (self library setTlsPem: handle cert: tlsCertPem key: tlsKeyPem)
			op: 'setTlsPem' ]
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
ServirtiumBuilder >> checkOpened: handle describing: aString [
	"An open always answers a handle; a failed one is dead and carries its
	 reason. Destroy it and signal with that reason."

	| why |
	why := self library takeString: (self library openError: handle).
	why isEmpty ifTrue: [ ^ self ].
	self library destroy: handle.
	ServirtiumError signal: aString , ': ' , why
]

{ #category : 'private' }
ServirtiumBuilder >> destroyOnError: handle do: aBlock [
	"Run aBlock; if it raises after a successful open, stop and destroy the
	 handle (no leak) and re-raise."

	^ aBlock on: Error do: [ :error |
		self library stop: handle.
		self library destroy: handle.
		error pass ]
]

{ #category : 'private' }
ServirtiumBuilder >> drainStartError: handle [

	| err |
	err := self library takeString: (self library lastError: handle).
	^ err isEmpty
		ifTrue: [ '(no detail; check tape path and port availability)' ]
		ifFalse: [ err ]
]
