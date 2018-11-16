accessing
addMethod: aMethodDefinition
	| collection |
	collection := aMethodDefinition isMeta
		ifTrue: [ classMethods ]
		ifFalse: [ instanceMethods ].
	collection
		at: aMethodDefinition selector
		ifPresent: [ self error: 'Duplicate selector' ]
		ifAbsentPut: [ aMethodDefinition ]