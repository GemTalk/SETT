accessing
typeExtensionDefinitionOf: aClassDefinition

	| definition |
	definition := OrderedDictionary new
		at: #name put: aClassDefinition key;
		yourself.
	aClassDefinition classVarNames ifNotEmpty: [ 
		definition
			at: #classVars
			put: aClassDefinition classVarNames asArray ].

	^ self toSTON: definition