accessing
typeExtensionDefinitionOf: aClassDefinition
	| definition |
	definition := OrderedDictionary new
		at: #name put: aClassDefinition printString;
		yourself.
	^ self toSTON: definition