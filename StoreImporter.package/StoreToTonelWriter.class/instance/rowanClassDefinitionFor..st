private-conversion
rowanClassDefinitionFor: classDefinition
	| results |
	self checkForInvalidStoreVarDefitinionsFor: classDefinition.
	results := RwClassDefinition
		newForClassNamed: classDefinition classSimpleName
		super: classDefinition superclassSimpleName
		instvars: classDefinition instVarNames
		classinstvars: classDefinition classInstVars
		classvars: classDefinition classVars
		category: classDefinition category
		comment: classDefinition classComment
		pools: classDefinition pools
		type: classDefinition indexedType.
		
	results gs_constraints: classDefinition gs_constraints.
	results gs_options: classDefinition gs_options.
	results propertyAt: 'originalCategory' put: classDefinition originalCategory.

	^ results