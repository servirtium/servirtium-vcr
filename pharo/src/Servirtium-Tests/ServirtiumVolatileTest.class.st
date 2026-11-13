"
Volatile values (docs/volatile-values.md): conformance against the shared
tapes in core_tests/volatile, driven by the language-neutral volatile_fixture
subprocess (target/test-tools/volatile_fixture).
"
Class {
	#name : 'ServirtiumVolatileTest',
	#superclass : 'ServirtiumTestCase',
	#category : 'Servirtium-Tests',
	#package : 'Servirtium-Tests'
}

{ #category : 'support' }
ServirtiumVolatileTest >> repoRoot [

	^ self tapesDir asFileReference parent parent parent parent
]

{ #category : 'support' }
ServirtiumVolatileTest >> volatileTape: aName [

	^ (self repoRoot / 'core_tests' / 'volatile' / aName) fullName
]

{ #category : 'support' }
ServirtiumVolatileTest >> drive: aMode against: aBaseUrl [
	"Run volatile_fixture <mode> <baseUrl>; fail the test unless it exits 0."

	| tool out status |
	tool := (self repoRoot / 'target' / 'test-tools' / 'volatile_fixture') fullName.
	out := self tempTapePath , '.out'.
	status := LibC system: '''' , tool , ''' ' , aMode , ' ''' , aBaseUrl , ''' >''' , out , ''' 2>&1'.
	self
		assert: status = 0
		description: 'volatile_fixture ' , aMode , ' failed: ' , (out asFileReference exists
			ifTrue: [ out asFileReference contents ]
			ifFalse: [ '(no output)' ]).
	out asFileReference ensureDelete
]

{ #category : 'support' }
ServirtiumVolatileTest >> startErrorOf: aBuilder [
	"The message ServirtiumError carries when aBuilder fails to start."

	^ [ aBuilder start stop. self fail: 'start should have failed'. '' ]
		on: ServirtiumError
		do: [ :e | e messageText ]
]

{ #category : 'tests' }
ServirtiumVolatileTest >> testTapeDeclaredRulesNeedNoneInCode [

	| server |
	server := (Servirtium playback: (self volatileTape: 'wcf.md')) prettyXml: 2; start.
	[ self drive: 'wcf' against: server baseUrl.
	  self assert: (server volatileReport includesSubstring: 'binding: {{messageId-1}} = ') ]
		ensure: [ server stop ]
]

{ #category : 'tests' }
ServirtiumVolatileTest >> testProfileFile [

	| server |
	server := (Servirtium playback: (self volatileTape: 'wcf_plain.md'))
		prettyXml: 2;
		volatileProfile: (self volatileTape: 'profile.md');
		start.
	[ self drive: 'wcf' against: server baseUrl ] ensure: [ server stop ]
]

{ #category : 'tests' }
ServirtiumVolatileTest >> testRulesInCode [

	| server |
	server := (Servirtium playback: (self volatileTape: 'wcf_plain.md'))
		prettyXml: 2;
		volatileRule: 'request body' pattern: '<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>';
		volatileRule: 'request body' pattern: '<a:To s:mustUnderstand="1">{{endpoint}}/Services/';
		volatileRule: 'request body' pattern: '&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;';
		volatileRule: 'response body' pattern: '<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>';
		start.
	[ self drive: 'wcf' against: server baseUrl ] ensure: [ server stop ]
]

{ #category : 'tests' }
ServirtiumVolatileTest >> testMarkers [

	| server message |
	server := (Servirtium playback: (self volatileTape: 'wcf_dollar.md'))
		prettyXml: 2;
		volatileMarkers: #dollarCurly;
		start.
	[ self drive: 'wcf' against: server baseUrl ] ensure: [ server stop ].
	message := self startErrorOf: ((Servirtium playback: (self volatileTape: 'wcf_dollar.md')) prettyXml: 2).
	self assert: (message includesSubstring: 'DollarCurly')
]

{ #category : 'tests' }
ServirtiumVolatileTest >> testCasesCorrelationThenMismatchDiagnostics [

	| server |
	server := (Servirtium playback: (self volatileTape: 'cases.md')) start.
	[ self drive: 'cases' against: server baseUrl.
	  server resetCursor.
	  self drive: 'cases-mismatch' against: server baseUrl.
	  self assert: ((server lastErrorConsume: false) includesSubstring: '{{caseId-1}} = 42').
	  server lastError "consuming read: nothing left unretrieved at close" ]
		ensure: [ server stop ]
]

{ #category : 'tests' }
ServirtiumVolatileTest >> testBind [

	| server message |
	message := self startErrorOf: (Servirtium playback: (self volatileTape: 'cases_recorded.md')).
	self assert: (message includesSubstring: 'caseId').
	server := (Servirtium playback: (self volatileTape: 'cases_recorded.md'))
		bind: 'caseId' value: '42';
		start.
	[ self drive: 'cases' against: server baseUrl ] ensure: [ server stop ]
]

{ #category : 'tests' }
ServirtiumVolatileTest >> testBadRulesFailStartWithTheCoresMessage [

	| message |
	message := self startErrorOf: ((Servirtium playback: (self volatileTape: 'cases.md'))
		volatileRule: 'request body' pattern: 'no placeholder').
	self assert: (message includesSubstring: 'needs at least one placeholder').
	message := self startErrorOf: ((Servirtium playback: (self volatileTape: 'cases.md'))
		volatileRule: 'response body' pattern: '"caseId":"{{id}}"').
	self assert: (message includesSubstring: 'conflicts with').
	self assert: (message includesSubstring: '(tape)').
	message := self startErrorOf: ((Servirtium playback: (self volatileTape: 'cases.md'))
		volatileRule: 'x' pattern: 'a {{b}}' kind: 'regex').
	self deny: message isEmpty
]
