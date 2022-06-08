instance creation
fromDefinition: aStoreClassDefinition

	| definitionArray parser |
	parser := StoreClassDefinitionGrammar new.
	definitionArray := (parser parse: aStoreClassDefinition) second.
	^ self new
		  definition: definitionArray;
		  yourself