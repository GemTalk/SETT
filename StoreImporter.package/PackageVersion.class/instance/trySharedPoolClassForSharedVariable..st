updating
trySharedPoolClassForSharedVariable: aSharedVariableDefinition
	"Answer whether the shared variable definition can be resolved
	 via a new SharedPool subclass."

	| className namespace resolution definition |
	className := aSharedVariableDefinition classFullName.
	((allClassNames includes: className)
		or: [(self restrictedSharedPoolNamespaces includes: className definitionString)])
			ifTrue: [ ^ false ].

	resolution := 'Adding to existing Shared Pool class definition.'.
	namespace := SettNamespace fromClassString: className definitionString.
	definition := classDefinitions
		at: className
		ifAbsentPut: [ 
			resolution := 'Adding to new Shared Pool class definition.'.
			(VwSettClassDefinition name: className properties: (Array with: 'instanceVariableNames' -> #() with: 'classInstanceVariableNames' -> #() with: 'comment' -> 'SharedPool created in emulation of VisualWorks namespace containing shared variables'))
				vw_namespace: namespace;
				superclassName: (SettFullyQualifiedClassName with: 'SharedPool');
				yourself ].
	definition addClassVariable: aSharedVariableDefinition.
	logger log: 'Warning!: Class not found for Shared Variable '
		, aSharedVariableDefinition signature , '. ' , resolution.
	^ true