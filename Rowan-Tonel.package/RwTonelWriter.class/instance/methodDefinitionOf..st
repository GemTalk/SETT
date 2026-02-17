private-writing
methodDefinitionOf: aMethodDefinition
	| methodProperties outputDictionary |
	methodProperties := aMethodDefinition properties.
	outputDictionary := OrderedDictionary new.
	outputDictionary at: #category put: aMethodDefinition category.
	^ self toSTON: outputDictionary
