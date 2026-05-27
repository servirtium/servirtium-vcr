"
I am the raw UnifiedFFI (uFFI) surface over the native VCR engine
(libservirtium_vcr.so / .dylib), which exports the `aether_vcr_embed_*`
C-ABI built from Aether's `std/http/server/vcr/embed.ae`.

I am a singleton FFILibrary: call `ServirtiumLibrary uniqueInstance` (uFFI
caches one instance per library). Every method here is 1:1 with a C symbol.

== Loading the .so ==
`unixLibraryName` / `macLibraryName` return the ABSOLUTE path to this
repository's `native/` library. uFFI dlopen's that path directly. The path
is resolved at runtime from (in order):
  1. the `SERVIRTIUM_VCR_LIB` OS environment variable (an absolute file
     path) — set by run-tests.sh / bootstrap.sh so the binding finds the
     freshly built engine regardless of where the repo lives;
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
	"The committed fallback absolute path to the native engine, used when
	 neither SERVIRTIUM_VCR_LIB nor #libPath: provides one."

	^ '/home/paul/scm/AetherThings/servirtium-pharo/native/libservirtium_vcr.so'
]

{ #category : 'configuration' }
ServirtiumLibrary class >> libPath [
	"Resolve the absolute path to the native VCR engine. Env var wins so a
	 built engine in the working tree is always preferred; then an explicit
	 override; then the committed default."

	| env |
	env := Smalltalk os environment at: 'SERVIRTIUM_VCR_LIB' ifAbsent: [ nil ].
	(env notNil and: [ env notEmpty ]) ifTrue: [ ^ env ].
	LibPathOverride ifNotNil: [ ^ LibPathOverride ].
	^ self defaultLibPath
]

{ #category : 'configuration' }
ServirtiumLibrary class >> libPath: anAbsolutePathString [
	"Pin the native engine path explicitly (e.g. from a consumer baseline)."

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
	str := aRawPointer readString.
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
