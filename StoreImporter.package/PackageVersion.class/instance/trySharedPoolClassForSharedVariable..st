updating
trySharedPoolClassForSharedVariable: aSharedVariableDefinition
	"Answer whether the shared variable definition can be resolved
	 via a new SharedPool subclass. This requires there be a namespace
	 defined in one of the packages for the current Store commit.
	 If we didn't define a namespace for it, we cannot create a
	 SharedPool subclass for it."

	| className namespace resolution definition |
	className := aSharedVariableDefinition classFullName.
	((allClassNames includes: className)
		or: [(allNamespaceNames includes: className definitionString) not])
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