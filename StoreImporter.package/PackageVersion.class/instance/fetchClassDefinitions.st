fetching
fetchClassDefinitions

	| rows |
	classDefinitions := Dictionary new.
	rows := dbFacade classDefinitionsInPackageWithId: primaryKey.
	rows do: [ :row | 
		| definition |
		definition := SettClassDefinition fromRow: row dbFacade: dbFacade.
		logger debug: 'Fetched Class Definition ' , definition signature.
		self addClassDefinition: definition ].
	allClassNames addAll: classDefinitions keys