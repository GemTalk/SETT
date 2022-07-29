private-conversion
rowanClassDefinitionFor: classDefinition
	| rwClassDefinition |
	self checkForInvalidStoreVarDefitinionsFor: classDefinition.
	rwClassDefinition := RwClassDefinition
		newForClassNamed: classDefinition classSimpleName
		super: classDefinition superclassSimpleName
		instvars: classDefinition instVarNames
		classinstvars: classDefinition classInstVars
		classvars: classDefinition classVars
		category: classDefinition category
		comment: classDefinition classComment
		pools: classDefinition pools
		type: classDefinition indexedType.
		
	rwClassDefinition gs_constraints: classDefinition gs_constraints.
	rwClassDefinition gs_options: classDefinition gs_options.
	rwClassDefinition propertyAt: 'originalCategory' put: classDefinition originalCategory.
	rwClassDefinition propertyAt: 'vw_namespace' put: (classDefinition vw_namespace definitionString).

	^ rwClassDefinition