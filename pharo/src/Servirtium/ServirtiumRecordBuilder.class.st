"
Configures and starts a record VCR server: forwards to a live upstream,
returns the real response to the SUT, captures the exchange, and writes a
Servirtium markdown tape when the server stops. Build via
`Servirtium record: 'tapes/my_api.md' upstream: 'http://host:port'`.
"
Class {
	#name : 'ServirtiumRecordBuilder',
	#superclass : 'ServirtiumBuilder',
	#instVars : [
        'secretRedactor',
		'upstreamBase',
		'redactions',
		'normalizations',
		'wholeTapeRedactions',
		'note',
		'indentCodeBlocks',
		'emphasizeHttpVerbs',
		'prettyXml',
		'prettyJson',
		'upstreamCafile',
		'licenseNotice',
		'sortJsonKeys',
		'sortJsonArrays',
		'sortResponseHeaders',
		'sortHeaderValues',
		'failIfChanged'
	],
	#category : 'Servirtium',
	#package : 'Servirtium'
}

{ #category : 'instance creation' }
ServirtiumRecordBuilder class >> tape: aTapePath upstream: anUpstreamBase [

	^ (self tape: aTapePath) setUpstream: anUpstreamBase
]

{ #category : 'initialization' }
ServirtiumRecordBuilder >> initializeTape: aTapePath [

	super initializeTape: aTapePath.
	redactions := OrderedCollection new.
	normalizations := OrderedCollection new.
	wholeTapeRedactions := OrderedCollection new.
	note := nil.
	indentCodeBlocks := false.
	emphasizeHttpVerbs := false.
	prettyXml := 0.
	prettyJson := 0.
	upstreamCafile := nil.
	licenseNotice := nil.
	sortJsonKeys := false.
	sortJsonArrays := OrderedCollection new.
	sortResponseHeaders := false.
	sortHeaderValues := OrderedCollection new.
	failIfChanged := false
]

{ #category : 'initialization' }
ServirtiumRecordBuilder >> setUpstream: anUpstreamBase [

	upstreamBase := anUpstreamBase.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> redactField: aField pattern: aPattern replacement: aReplacement [
	"Scrub a value out of the given field before it lands on the tape."

	redactions add: { #redact:field:pattern:replacement:. aField. aPattern. aReplacement }.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> normalizeWholeTape: aPattern name: aName [
	"Rewrite every distinct match of aPattern (a regex) across the whole tape
	 to a stable placeholder derived from aName, preserving correlation."

	normalizations add: { aPattern. aName }.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> redactWholeTape: aPattern replacement: aReplacement [
	"Collapse every match of aPattern (a regex) across the whole tape to the
	 constant aReplacement before it lands on the tape."

	wholeTapeRedactions add: { aPattern. aReplacement }.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> noteTitle: aTitle body: aBody [
	"Attach a note to the next recorded interaction (Servirtium step 9). For
	 notes on later interactions, call `noteTitle:body:` on the running server."

	note := aTitle -> aBody.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> indentCodeBlocks [
	"Emit code blocks as 4-space-indented text instead of fences."

	indentCodeBlocks := true.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> emphasizeHttpVerbs [
	"Emit the HTTP method emphasized (e.g. *GET*) in headings."

	emphasizeHttpVerbs := true.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> prettyXml [
	"Pretty-print recorded XML response bodies (indent 1..16; 0 = off); request bodies are never changed. Falls back to byte-exact if the body isn't well-formed XML."

	prettyXml := 2.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> prettyXml: anIndent [
	"Pretty-print recorded XML response bodies (indent 1..16; 0 = off); request bodies are never changed. Falls back to byte-exact if the body isn't well-formed XML."

	prettyXml := anIndent.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> prettyJson [
	"Pretty-print recorded JSON response bodies (indent 1..16; 0 = off), keeping key order and number spellings; request bodies are never changed."

	prettyJson := 2.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> prettyJson: anIndent [
	"Pretty-print recorded JSON response bodies (indent 1..16; 0 = off), keeping key order and number spellings; request bodies are never changed."

	prettyJson := anIndent.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> upstreamCafile: aPath [
	"Verify an https upstream against this PEM CA file."

	upstreamCafile := aPath.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> addLicenseNotice: aText [
	"Put aText under '## LICENSE NOTICE' at the top of each tape; playback
	 ignores it."

	licenseNotice := aText.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> sortJsonKeys [
	"Stable ordering (opt-in): sort JSON object keys at every depth in recorded
	 JSON response bodies. Sorted JSON is only written pretty-printed: without
	 prettyJson the tape is refused when it is written (stop raises a
	 ServirtiumError saying 'sort_json_keys needs pretty_json')."

	sortJsonKeys := true.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> sortJsonArray: aPath by: aMember [
	"Sort the JSON response arrays aPath selects (a JSON pointer, '*' for one
	 segment, '' the root array, or a bare member name) by member aMember
	 ('' = each element's canonical JSON). Needs prettyJson like sortJsonKeys.
	 Repeatable; start raises a ServirtiumError if the core refuses the rule."

	sortJsonArrays add: { nil. aPath. aMember }.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> sortJsonArrayAt: aRequestRegex path: aPath by: aMember [
	"As sortJsonArray:by:, only for requests whose path (query included)
	 matches aRequestRegex."

	sortJsonArrays add: { aRequestRegex. aPath. aMember }.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> sortResponseHeaders [
	"Sort response header lines by name (case-insensitive)."

	sortResponseHeaders := true.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> sortHeaderValue: aName [
	"Sort one response header's comma-separated items ('Allow'). Repeatable."

	sortHeaderValues add: aName.
	^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> failIfChanged [
	"On stop, still write the freshly recorded tape but raise if it differs
	 from the on-disk one — the Servirtium step-4 drift contract, so a normal
	 `git diff` shows the change and CI fails loudly."

	failIfChanged := true.
	^ self
]

{ #category : 'private' }
ServirtiumRecordBuilder >> applyConfig: handle [

	super applyConfig: handle.
	indentCodeBlocks ifTrue: [ self library indentCodeBlocks: handle ].
	emphasizeHttpVerbs ifTrue: [ self library emphasizeHttpVerbs: handle ].
	prettyXml > 0 ifTrue: [ self library setPrettyXml: handle indent: prettyXml ].
	prettyJson > 0 ifTrue: [ self library setPrettyJson: handle indent: prettyJson ].
	sortJsonKeys ifTrue: [ self library setSortJsonKeys: handle on: 1 ].
	sortJsonArrays do: [ :tuple |
		(tuple at: 1)
			ifNil: [
				self
					check: (self library sortJsonArray: handle path: (tuple at: 2) by: (tuple at: 3))
					op: 'sortJsonArray' ]
			ifNotNil: [ :request |
				self
					check: (self library sortJsonArrayAt: handle request: request path: (tuple at: 2) by: (tuple at: 3))
					op: 'sortJsonArrayAt' ] ].
	sortResponseHeaders ifTrue: [ self library setSortResponseHeaders: handle on: 1 ].
	sortHeaderValues do: [ :name |
		self
			check: (self library sortHeaderValue: handle name: name)
			op: 'sortHeaderValue' ].
	upstreamCafile ifNotNil: [
		self
			check: (self library setUpstreamCafile: handle path: upstreamCafile)
			op: 'upstreamCafile' ].
	licenseNotice ifNotNil: [
		self
			check: (self library addLicenseNotice: handle text: licenseNotice)
			op: 'addLicenseNotice' ].
	redactions do: [ :tuple |
		self
			check: (self library perform: (tuple at: 1) withArguments: { handle. (tuple at: 2). (tuple at: 3). (tuple at: 4) })
			op: 'redact' ].
	normalizations do: [ :tuple |
		self
			check: (self library normalizeWholeTape: handle pattern: (tuple at: 1) name: (tuple at: 2))
			op: 'normalizeWholeTape' ].
	wholeTapeRedactions do: [ :tuple |
		self
			check: (self library redactWholeTape: handle pattern: (tuple at: 1) replacement: (tuple at: 2))
			op: 'redactWholeTape' ]
]

{ #category : 'starting' }
ServirtiumRecordBuilder >> start [
	"Open the record server, apply config to its handle, stage the pending note,
	 then begin serving. Answers a running ServirtiumServer that flushes the
	 tape on stop."

	| handle |
	handle := self library
		openRecordLabel: label
		tape: tapePath
		upstream: upstreamBase
		host: host
		port: port.
	handle isNull ifTrue: [
		ServirtiumError signal:
			'vcr record failed to start for tape ''' , tapePath , ''' (upstream ''' , upstreamBase , ''')' ].
	self applyConfig: handle.
	note ifNotNil: [
		self check: (self library note: handle title: note key body: note value) op: 'note' ].
	(self library start: handle) < 0 ifTrue: [
		| detail |
		detail := self drainStartError: handle.
		self library stop: handle.
		ServirtiumError signal:
			'vcr record failed to begin serving for tape ''' , tapePath , ''': ' , detail ].
	^ (ServirtiumServer handle: handle host: host tape: tapePath recordMode: true failIfChanged: failIfChanged) secretRedactor: secretRedactor
]

{ #category : 'starting' }
ServirtiumRecordBuilder >> startThenDo: aBlock [
	"Start, evaluate aBlock with the running server, and always stop it after
	 (which flushes the tape)."

	| server |
	server := self start.
	^ [ aBlock value: server ] ensure: [ server stop ]
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> redactHeader: aName [
    ^ self redactHeader: aName replacement: '[REDACTED]' field: 3
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> redactHeader: aName replacement: aReplacement field: aField [
    redactions add: { #redactHeader:field:pattern:replacement:. aField. aName. aReplacement }.
    ^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> redactQueryParam: aName [
    ^ self redactQueryParam: aName replacement: '[REDACTED]' field: 1
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> redactQueryParam: aName replacement: aReplacement field: aField [
    redactions add: { #redactQueryParam:field:pattern:replacement:. aField. aName. aReplacement }.
    ^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> redactJsonField: aName [
    ^ self redactJsonField: aName replacement: '[REDACTED]' field: 4
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> redactJsonField: aName replacement: aReplacement field: aField [
    redactions add: { #redactJsonField:field:pattern:replacement:. aField. aName. aReplacement }.
    ^ self
]

{ #category : 'configuring' }
ServirtiumRecordBuilder >> secretRedactor: callback [
    secretRedactor := callback.
    ^ self
]
