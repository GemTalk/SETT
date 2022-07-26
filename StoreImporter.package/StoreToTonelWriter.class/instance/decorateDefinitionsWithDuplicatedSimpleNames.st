action
decorateDefinitionsWithDuplicatedSimpleNames
	"We can have multiple classes with the same simple name in one packageModel
	 *and* we can have superclass references with the same simple name as another class
	 *and* we can have extension methods to classes with the same simple name.
	
	 Annotate their properties with a 'sett transient' value with the full name,
	 so we can properly write them out without conflict.
	
	 NOTE: this method correctly gets critiqued as a long method. In my opinion,
	 splitting it would would lose coherence and hide what it's doing."

	| classDefsByName classDefsBySuperclassName |
	classDefsByName := Dictionary new.
	classDefsBySuperclassName := Dictionary new.
	packageVersion classDefinitions do: [ :each |
		(classDefsByName at: each classSimpleName ifAbsentPut: [ Set new ]) add: each classFullName ].
	packageVersion classDefinitions do: [ :each |
		(classDefsByName at: each superclassSimpleName ifAbsentPut: [ Set new ]) add: each superclassFullName.
		(classDefsBySuperclassName at: each superclassSimpleName ifAbsentPut: [ Set new ]) add: each superclassFullName ].
	packageVersion classExtensions do: [ :each |
		(classDefsByName at: each classSimpleName ifAbsentPut: [ Set new ]) add: each classFullName ].

	packageVersion classDefinitions do: [ :each |
		(classDefsByName at: each classSimpleName) size > 1
			ifTrue: [ each propertyAt: 'sett_transient_className' put: each classFullName definitionString] ].
	packageVersion classDefinitions do: [ :each |
		(classDefsByName at: each superclassSimpleName) size > 1
			ifTrue: [ each propertyAt: 'sett_transient_superclassName' put: each superclassFullName definitionString] ].
	packageVersion classExtensions do: [ :each |
		(classDefsByName at: each classSimpleName) size > 1
			ifTrue: [ each propertyAt: 'sett_transient_className' put: each classFullName definitionString] ].
