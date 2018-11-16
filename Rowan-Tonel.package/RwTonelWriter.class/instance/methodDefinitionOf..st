private-writing
methodDefinitionOf: aMethodDefinition
	| methodProperties outputDictionary |
	methodProperties := aMethodDefinition properties.
	outputDictionary := OrderedDictionary new.
	outputDictionary at: #category put: aMethodDefinition category.
	methodProperties
		at: 'originalCategory'
		ifPresent: [ :originalCategory | outputDictionary at: #originalCategory put: originalCategory ].
	^ self toSTON: outputDictionary