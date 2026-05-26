"
Metacello baseline for the Servirtium Pharo binding.

Load from a working tree:

	Metacello new
		baseline: 'Servirtium';
		repository: 'tonel://', '/abs/path/to/servirtium-pharo/src';
		load.

Then point ServirtiumLibrary at the native engine (or set the
SERVIRTIUM_VCR_LIB env var before launching the image):

	ServirtiumLibrary libPath: '/abs/path/to/servirtium-pharo/native/libservirtium_vcr.so'.

The `tests` group additionally loads the SUnit suite (Servirtium-Tests).
"
Class {
	#name : 'BaselineOfServirtium',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfServirtium',
	#package : 'BaselineOfServirtium'
}

{ #category : 'baselines' }
BaselineOfServirtium >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec
			package: 'Servirtium';
			package: 'Servirtium-Tests' with: [ spec requires: #( 'Servirtium' ) ].

		spec
			group: 'core' with: #( 'Servirtium' );
			group: 'tests' with: #( 'Servirtium' 'Servirtium-Tests' );
			group: 'default' with: #( 'core' ) ]
]
