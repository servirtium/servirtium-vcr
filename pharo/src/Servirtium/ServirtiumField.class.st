"
Field selector ints for redactions / unredactions / header removals.
Mirror the FIELD_* constants in the in-repo core/vcr.ae engine:

  Path=1  ResponseBody=2  RequestHeaders=3  RequestBody=4  ResponseHeaders=5

Use as e.g. `ServirtiumField requestHeaders`.
"
Class {
	#name : 'ServirtiumField',
	#superclass : 'Object',
	#category : 'Servirtium',
	#package : 'Servirtium'
}

{ #category : 'constants' }
ServirtiumField class >> path [ ^ 1 ]

{ #category : 'constants' }
ServirtiumField class >> responseBody [ ^ 2 ]

{ #category : 'constants' }
ServirtiumField class >> requestHeaders [ ^ 3 ]

{ #category : 'constants' }
ServirtiumField class >> requestBody [ ^ 4 ]

{ #category : 'constants' }
ServirtiumField class >> responseHeaders [ ^ 5 ]
