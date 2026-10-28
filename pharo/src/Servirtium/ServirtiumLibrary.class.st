"
I am the raw UnifiedFFI (uFFI) surface over libservirtium_vcr
(libservirtium_vcr.so / .dylib), which exports the `aether_vcr_embed_*`
C-ABI built from the in-repo `core/embed.ae` (the embedding layer over
`core/vcr.ae`, built on Aether stdlib primitives).

I am a singleton FFILibrary: call `ServirtiumLibrary uniqueInstance` (uFFI
caches one instance per library). Every method here is 1:1 with a C symbol.

== Loading the .so ==
`unixLibraryName` / `macLibraryName` return the ABSOLUTE path to this
repository's `native/` library. uFFI dlopen's that path directly. The path
is resolved at runtime from (in order):
  1. the `SERVIRTIUM_VCR_LIB` OS environment variable (an absolute file
     path) — set by run-tests.sh / bootstrap.sh so the binding finds the
     freshly built libservirtium_vcr regardless of where the repo lives;
  2. the `LibPathOverride` class variable, settable via
     `ServirtiumLibrary libPath: aString` from a consumer's baseline;
  3. the committed default below.

== String ownership ==
ABI functions that return `char*` hand back a CALLER-OWNED, NUL-terminated
buffer. The contract is: copy it into a Pharo String, THEN free the native
buffer via `aether_vcr_embed_free_string`. `takeString:` does both and is
NULL-safe (returns an empty String for a NULL pointer). NEVER `readString`
a returned char* without then freeing it.

== Handles ==
A server handle is an opaque `void*` surfaced as an ExternalAddress; NULL
(isNull) means failure. Per-listener: every config / diagnostic / lifecycle
call takes the handle, so N servers can run at once. Lifecycle is
open -> configure(handle) -> start.
"
Class {
	#name : 'ServirtiumLibrary',
	#superclass : 'FFILibrary',
	#classVars : [
		'LibPathOverride'
	],
	#category : 'Servirtium',
	#package : 'Servirtium'
}

{ #category : 'configuration' }
ServirtiumLibrary class >> defaultLibPath [
	"Last-resort fallback when neither SERVIRTIUM_VCR_LIB nor #libPath:
	 provides one: a bundled native/ copy next to the image's working
	 directory, else the bare library name (the OS loader then resolves it
	 via LD_LIBRARY_PATH / rpath). A consumer normally pins libservirtium_vcr
	 explicitly with `ServirtiumLibrary libPath: anAbsolutePath`."

	^ 'libservirtium_vcr.so'
]

{ #category : 'configuration' }
ServirtiumLibrary class >> libPath [
	"Resolve the absolute path to libservirtium_vcr. Env var wins so a
	 built libservirtium_vcr in the working tree is always preferred; then an explicit
	 override; then the committed default."

	| env |
	env := Smalltalk os environment at: 'SERVIRTIUM_VCR_LIB' ifAbsent: [ nil ].
	(env notNil and: [ env notEmpty ]) ifTrue: [ ^ env ].
	LibPathOverride ifNotNil: [ ^ LibPathOverride ].
	^ self defaultLibPath
]

{ #category : 'configuration' }
ServirtiumLibrary class >> libPath: anAbsolutePathString [
	"Pin libservirtium_vcr path explicitly (e.g. from a consumer baseline)."

	LibPathOverride := anAbsolutePathString
]

{ #category : 'accessing - platform' }
ServirtiumLibrary >> macLibraryName [

	^ self class libPath
]

{ #category : 'accessing - platform' }
ServirtiumLibrary >> unixLibraryName [

	^ self class libPath
]

{ #category : 'accessing - platform' }
ServirtiumLibrary >> win32LibraryName [

	^ self class libPath
]

{ #category : 'strings' }
ServirtiumLibrary >> takeString: aRawPointer [
	"Copy a caller-owned native char* into a Pharo String, then free the
	 native buffer per the ABI's ownership rule. NULL-safe."

	| str |
	(aRawPointer isNil or: [ aRawPointer isNull ]) ifTrue: [ ^ '' ].
	"readString can hand back a ByteArray for a void* char* under uFFI; force
	 a Pharo String so callers (ZnClient URLs, comparisons) behave."
	str := aRawPointer readString asString.
	self freeString: aRawPointer.
	^ str
]

{ #category : 'ffi - lifecycle' }
ServirtiumLibrary >> openPlaybackLabel: label tape: tapePath host: host port: port [

	^ self ffiCall: #( void* aether_vcr_embed_open_playback ( String label, String tapePath, String host, int port ) )
]

{ #category : 'ffi - lifecycle' }
ServirtiumLibrary >> openRecordLabel: label tape: tapePath upstream: upstreamBase host: host port: port [

	^ self ffiCall: #( void* aether_vcr_embed_open_record ( String label, String tapePath, String upstreamBase, String host, int port ) )
]

{ #category : 'ffi - lifecycle' }
ServirtiumLibrary >> start: server [

	^ self ffiCall: #( int aether_vcr_embed_start ( void* server ) )
]

{ #category : 'ffi - lifecycle' }
ServirtiumLibrary >> stop: server [

	^ self ffiCall: #( void aether_vcr_embed_stop ( void* server ) )
]

{ #category : 'ffi - lifecycle' }
ServirtiumLibrary >> stopAndFlush: server tape: tapePath [

	^ self ffiCall: #( void* aether_vcr_embed_stop_and_flush ( void* server, String tapePath ) )
]

{ #category : 'ffi - lifecycle' }
ServirtiumLibrary >> stopAndFlushFailIfChanged: server tape: tapePath [

	^ self ffiCall: #( void* aether_vcr_embed_stop_and_flush_fail_if_changed ( void* server, String tapePath ) )
]

{ #category : 'ffi - introspection' }
ServirtiumLibrary >> port: server [

	^ self ffiCall: #( int aether_vcr_embed_port ( void* server ) )
]

{ #category : 'ffi - introspection' }
ServirtiumLibrary >> baseUrl: server host: host [

	^ self ffiCall: #( void* aether_vcr_embed_base_url ( void* server, String host ) )
]

{ #category : 'ffi - introspection' }
ServirtiumLibrary >> tapeLength: server [

	^ self ffiCall: #( int aether_vcr_embed_tape_length ( void* server ) )
]

{ #category : 'ffi - introspection' }
ServirtiumLibrary >> resetCursor: server [

	^ self ffiCall: #( void aether_vcr_embed_reset_cursor ( void* server ) )
]

{ #category : 'ffi - diagnostics' }
ServirtiumLibrary >> lastError: server [

	^ self ffiCall: #( void* aether_vcr_embed_last_error ( void* server ) )
]

{ #category : 'ffi - diagnostics' }
ServirtiumLibrary >> lastKind: server [

	^ self ffiCall: #( int aether_vcr_embed_last_kind ( void* server ) )
]

{ #category : 'ffi - diagnostics' }
ServirtiumLibrary >> lastIndex: server [

	^ self ffiCall: #( int aether_vcr_embed_last_index ( void* server ) )
]

{ #category : 'ffi - diagnostics' }
ServirtiumLibrary >> clearLastError: server [

	^ self ffiCall: #( void aether_vcr_embed_clear_last_error ( void* server ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> redact: server field: field pattern: pattern replacement: replacement [

	^ self ffiCall: #( void* aether_vcr_embed_redact ( void* server, int field, String pattern, String replacement ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> normalizeWholeTape: server pattern: pattern name: name [

	^ self ffiCall: #( void* aether_vcr_embed_normalize_whole_tape ( void* server, String pattern, String name ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> redactWholeTape: server pattern: pattern replacement: replacement [

	^ self ffiCall: #( void* aether_vcr_embed_redact_whole_tape ( void* server, String pattern, String replacement ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> unredact: server field: field pattern: pattern replacement: replacement [

	^ self ffiCall: #( void* aether_vcr_embed_unredact ( void* server, int field, String pattern, String replacement ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> removeHeader: server field: field name: name [

	^ self ffiCall: #( void* aether_vcr_embed_remove_header ( void* server, int field, String name ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> note: server title: title body: body [

	^ self ffiCall: #( void* aether_vcr_embed_note ( void* server, String title, String body ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> staticContent: server mount: mountPath dir: fsDir [

	^ self ffiCall: #( void* aether_vcr_embed_static_content ( void* server, String mountPath, String fsDir ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> untaped: server path: path [

	^ self ffiCall: #( void* aether_vcr_embed_untaped ( void* server, String path ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> setStrictHeaders: server on: on [

	^ self ffiCall: #( void aether_vcr_embed_set_strict_headers ( void* server, int on ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> setMatchJsonBody: server on: on [

	^ self ffiCall: #( void aether_vcr_embed_set_match_json_body ( void* server, int on ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> setTls: server cert: certPath key: keyPath [

	^ self ffiCall: #( void* aether_vcr_embed_set_tls ( void* server, String certPath, String keyPath ) )
]

{ #category : 'ffi - diagnostics' }
ServirtiumLibrary >> lastTlsProtocol: server [

	^ self ffiCall: #( void* aether_vcr_embed_last_tls_protocol ( void* server ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> substitute: server field: field pattern: pattern replacement: replacement [

	^ self ffiCall: #( void* aether_vcr_embed_substitute ( void* server, int field, String pattern, String replacement ) )
]

{ #category : 'ffi - clearing' }
ServirtiumLibrary >> clearSubstitutions: server [

	^ self ffiCall: #( void aether_vcr_embed_clear_substitutions ( void* server ) )
]

{ #category : 'ffi - diagnostics' }
ServirtiumLibrary >> assertAllConsumed: server [

	^ self ffiCall: #( void* aether_vcr_embed_assert_all_consumed ( void* server ) )
]

{ #category : 'ffi - diagnostics' }
ServirtiumLibrary >> assertAllRedactionsUsed: server [

	^ self ffiCall: #( void* aether_vcr_embed_assert_all_redactions_used ( void* server ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> setMatchMultiple: server on: on [

	^ self ffiCall: #( void aether_vcr_embed_set_match_multiple ( void* server, int on ) )
]

{ #category : 'ffi - mutations' }
ServirtiumLibrary >> matchHeader: server name: name [

	^ self ffiCall: #( void aether_vcr_embed_match_header ( void* server, String name ) )
]

{ #category : 'ffi - format' }
ServirtiumLibrary >> indentCodeBlocks: server [

	^ self ffiCall: #( void aether_vcr_embed_indent_code_blocks ( void* server ) )
]

{ #category : 'ffi - format' }
ServirtiumLibrary >> emphasizeHttpVerbs: server [

	^ self ffiCall: #( void aether_vcr_embed_emphasize_http_verbs ( void* server ) )
]

{ #category : 'ffi - clearing' }
ServirtiumLibrary >> clearRedactions: server [

	^ self ffiCall: #( void aether_vcr_embed_clear_redactions ( void* server ) )
]

{ #category : 'ffi - clearing' }
ServirtiumLibrary >> clearUnredactions: server [

	^ self ffiCall: #( void aether_vcr_embed_clear_unredactions ( void* server ) )
]

{ #category : 'ffi - clearing' }
ServirtiumLibrary >> clearHeaderRemovals: server [

	^ self ffiCall: #( void aether_vcr_embed_clear_header_removals ( void* server ) )
]

{ #category : 'ffi - clearing' }
ServirtiumLibrary >> clearStaticContent: server [

	^ self ffiCall: #( void aether_vcr_embed_clear_static_content ( void* server ) )
]

{ #category : 'ffi - clearing' }
ServirtiumLibrary >> clearUntaped: server [

	^ self ffiCall: #( void aether_vcr_embed_clear_untaped ( void* server ) )
]

{ #category : 'ffi - clearing' }
ServirtiumLibrary >> clearFormatOptions: server [

	^ self ffiCall: #( void aether_vcr_embed_clear_format_options ( void* server ) )
]

{ #category : 'strings' }
ServirtiumLibrary >> freeString: aRawPointer [

	^ self ffiCall: #( void aether_vcr_embed_free_string ( void* aRawPointer ) )
]

{ #category : 'mutations' }
ServirtiumLibrary >> redactHeader: server field: field pattern: name replacement: replacement [
    ^ self ffiCall: #( void* aether_vcr_embed_redact_header ( void* server, int field, String name, String replacement ) )
]

{ #category : 'mutations' }
ServirtiumLibrary >> redactQueryParam: server field: field pattern: name replacement: replacement [
    ^ self ffiCall: #( void* aether_vcr_embed_redact_query_param ( void* server, int field, String name, String replacement ) )
]

{ #category : 'mutations' }
ServirtiumLibrary >> redactJsonField: server field: field pattern: name replacement: replacement [
    ^ self ffiCall: #( void* aether_vcr_embed_redact_json_field ( void* server, int field, String name, String replacement ) )
]

{ #category : 'ffi - diagnostics' }
ServirtiumLibrary >> lastError: server consume: consume [
    ^ self ffiCall: #( void* aether_vcr_embed_last_error_ex ( void* server, int consume ) )
]
{ #category : 'ffi - diagnostics' }
ServirtiumLibrary >> diagnosticsJson: server consume: consume [
    ^ self ffiCall: #( void* aether_vcr_embed_diagnostics_json ( void* server, int consume ) )
]
{ #category : 'ffi - diagnostics' }
ServirtiumLibrary >> assertNoMismatches: server [
    ^ self ffiCall: #( void* aether_vcr_embed_assert_no_mismatches ( void* server ) )
]
{ #category : 'ffi - diagnostics' }
ServirtiumLibrary >> testContext: server name: name file: file line: line [
    ^ self ffiCall: #( void aether_vcr_embed_test_context ( void* server, String name, String file, int line ) )
]

{ #category : 'ffi - secrets' }
ServirtiumLibrary >> secretBegin: server resolving: resolving [
    ^ self ffiCall: #( void* aether_vcr_embed_secret_begin ( void* server, int resolving ) )
]

{ #category : 'ffi - secrets' }
ServirtiumLibrary >> secretNext: server [
    ^ self ffiCall: #( int aether_vcr_embed_secret_next ( void* server ) )
]

{ #category : 'ffi - secrets' }
ServirtiumLibrary >> secretGet: server part: part [
    ^ self ffiCall: #( void* aether_vcr_embed_secret_get ( void* server, int part ) )
]

{ #category : 'ffi - secrets' }
ServirtiumLibrary >> secretInteraction: server [
    ^ self ffiCall: #( int aether_vcr_embed_secret_interaction ( void* server ) )
]

{ #category : 'ffi - secrets' }
ServirtiumLibrary >> secretApply: server value: value [
    ^ self ffiCall: #( void* aether_vcr_embed_secret_apply ( void* server, String value ) )
]

{ #category : 'ffi - secrets' }
ServirtiumLibrary >> secretFinish: server [
    ^ self ffiCall: #( void* aether_vcr_embed_secret_finish ( void* server ) )
]

{ #category : 'ffi - secrets' }
ServirtiumLibrary >> secretAbort: server [
    ^ self ffiCall: #( void aether_vcr_embed_secret_abort ( void* server ) )
]

{ #category : 'secrets' }
ServirtiumLibrary >> stageSecrets: handle callback: callback resolving: resolving [
    | check get next value request |
    check := [ :pointer | | message |
        message := self takeString: pointer.
        message isEmpty ifFalse: [ ServirtiumError signal: message ] ].
    get := [ :part | self takeString: (self secretGet: handle part: part) ].
    [
        check value: (self secretBegin: handle resolving: (resolving ifTrue: [ 1 ] ifFalse: [ 0 ])).
        [ next := self secretNext: handle. next > 0 ] whileTrue: [
            value := resolving ifTrue: [ callback value: (get value: 2) ] ifFalse: [
                request := ServirtiumSecretRequest new
                    initializeMethod: (get value: 3) path: (get value: 4) location: (get value: 5)
                    format: (get value: 6) fieldPath: (get value: 7) interaction: (self secretInteraction: handle).
                callback value: (get value: 1) value: request ].
            value ifNotNil: [
                value isString ifFalse: [ ServirtiumError signal: 'Secret callbacks must return a String or nil' ].
                check value: (self secretApply: handle value: value) ] ].
        next < 0 ifTrue: [ ServirtiumError signal: 'Secret staging aborted' ].
        check value: (self secretFinish: handle)
    ] on: Error do: [ :error |
        self secretAbort: handle.
        self stop: handle.
        error pass ]
]
