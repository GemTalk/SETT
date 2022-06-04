instance creation
fromRow: row dbFacade: dbFacade
	"See DatabaseFacade >> classDefinitionsInPackageWithId: for column order."

	| definitionBlob instance comment className superclassName |
	definitionBlob := SettStoreBlob
		ofType: (row at: 7)
		bytes: (row at: 8)
		dbFacade: dbFacade.
	instance := SettClassDefinitionParser parse: definitionBlob decoded.
	className := (SettClassDefinitionParser
		parse: (row at: 3)
		startingAt: #fullyQualifiedClassName)
		addLast: (row at: 1);
		yourself.
	instance className: className.
	superclassName := SettClassDefinitionParser
		parse: (row at: 4)
		startingAt: #fullyQualifiedClassName.
	instance propertyAt: 'superclass' put: superclassName.
	comment := (row at: 5)
		ifNil: [ '' ]
		ifNotNil:
			[ :blobType | (SettStoreBlob ofType: blobType bytes: (row at: 6) dbFacade: dbFacade) decoded ].
	instance
		initializeNamespace;
		classComment: comment;
		timestamp: (TimestampConverter dateAndTimeForSeconds: (row at: 2)).
	^ instance