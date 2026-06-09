"
Base for the Servirtium SUnit suite. Resolves tape resources and the native
engine path. The handle-based ABI means each test opens and stops its own
server (one per port), so they need no shared global server state.

Tape resources live under `src/Servirtium-Tests/tapes/`. Since Tonel-loaded
code has no source-file location at runtime, the directory is resolved from
the `SERVIRTIUM_TAPES_DIR` env var (set by run-tests.sh) with a committed
fallback.
"
Class {
	#name : 'ServirtiumTestCase',
	#superclass : 'TestCase',
	#category : 'Servirtium-Tests',
	#package : 'Servirtium-Tests'
}

{ #category : 'resources' }
ServirtiumTestCase >> tapesDir [
	"Absolute directory holding the committed test tapes."

	| env |
	env := Smalltalk os environment at: 'SERVIRTIUM_TAPES_DIR' ifAbsent: [ nil ].
	(env notNil and: [ env notEmpty ]) ifTrue: [ ^ env ].
	^ '/home/paul/scm/AetherThings/servirtium-pharo/src/Servirtium-Tests/tapes'
]

{ #category : 'resources' }
ServirtiumTestCase >> tapePath: aName [
	"Absolute path to a committed tape resource by file name."

	^ self tapesDir , '/' , aName
]

{ #category : 'resources' }
ServirtiumTestCase >> tempTapePath [
	"A throwaway, unique tape path in the OS temp dir for record tests."

	^ (FileLocator temp / ('vcr_' , UUIDGenerator next asString36 , '.md')) fullName
]
