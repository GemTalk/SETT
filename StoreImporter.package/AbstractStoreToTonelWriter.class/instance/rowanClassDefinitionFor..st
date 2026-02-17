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
	rwClassDefinition propertyAt: 'vw_namespace' put: (classDefinition vw_namespace).

	"Replace the simple names which have namespace conflicts."
	classDefinition
		propertyAt: 'sett_transient_className'
		ifPresent: [ :altClassName | 
			| sanitizedName |
			sanitizedName := self sanitizeClassName: altClassName
										using: destinationConfiguration classNameDotReplacement.
			rwClassDefinition name: sanitizedName ].
	classDefinition
		propertyAt: 'sett_transient_superclassName'
		ifPresent: [ :altSuperclassName | 
			| sanitizedName |
			sanitizedName := self sanitizeClassName: altSuperclassName
										using: destinationConfiguration classNameDotReplacement.
			rwClassDefinition superclassName: sanitizedName].

	^ rwClassDefinition
