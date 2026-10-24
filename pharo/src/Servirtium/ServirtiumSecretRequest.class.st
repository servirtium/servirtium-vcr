Class {
    #name : 'ServirtiumSecretRequest',
    #superclass : 'Object',
    #instVars : [ 'method', 'path', 'location', 'format', 'fieldPath', 'interaction' ],
    #category : 'Servirtium',
    #package : 'Servirtium'
}

{ #category : 'initialization' }
ServirtiumSecretRequest >> initializeMethod: aMethod path: aPath location: aLocation format: aFormat fieldPath: aFieldPath interaction: anInteraction [
    method := aMethod. path := aPath. location := aLocation.
    format := aFormat. fieldPath := aFieldPath. interaction := anInteraction
]

{ #category : 'accessing' }
ServirtiumSecretRequest >> method [ ^ method ]

{ #category : 'accessing' }
ServirtiumSecretRequest >> path [ ^ path ]

{ #category : 'accessing' }
ServirtiumSecretRequest >> location [ ^ location ]

{ #category : 'accessing' }
ServirtiumSecretRequest >> format [ ^ format ]

{ #category : 'accessing' }
ServirtiumSecretRequest >> fieldPath [ ^ fieldPath ]

{ #category : 'accessing' }
ServirtiumSecretRequest >> interaction [ ^ interaction ]
