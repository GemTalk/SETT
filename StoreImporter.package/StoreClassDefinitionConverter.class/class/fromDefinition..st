instance creation
fromDefinition: aStoreClassDefinition
	| definitionArray parser definition |
	parser := SettClassDefinitionParser new.
	"definition := parser parse: aStoreClassDefinition.
	self halt."
	parser := StoreClassDefinitionGrammar new.
	definitionArray := (parser parse: aStoreClassDefinition) second.
	^ self new
		definition: definitionArray;
		yourself