updating
tryClassExtensionForSharedVariable: aSharedVariableDefinition
	"Answer whether the shared variable definition can be resolved
	 via a class extension to a class defined in another package.
	 If this package already has such a class extension, use it.
	 Otherwise, create a new class extenstion."

	| className resolution extension |
	className := aSharedVariableDefinition classFullName.
	(allClassNames includes: className) ifFalse: [ ^ false ].

	resolution := 'Adding to existing class extension.'.
	extension := classExtensions
		at: className
		ifAbsentPut: [ 
			| namespace |
			resolution := 'Adding to new class extension.'.
			namespace := SettNamespace fromClassString: className definitionString.
			(SettClassDefinition name: className properties: Dictionary new)
				vw_namespace: namespace;
				yourself ].
	extension addClassVariable: aSharedVariableDefinition.
	logger log: 'Warning!: Class not found for Shared Variable '
		, aSharedVariableDefinition signature , '. ' , resolution.
	^ true