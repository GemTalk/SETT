fetching
fetchClassDefinitions
	| rows |
	classDefinitions := Dictionary new.
	rows := dbFacade classDefinitionsInPackageWithId: primaryKey.
	rows
		do: [ :row | 
			| definition |
			definition := SettClassDefinition fromRow: row dbFacade: dbFacade.
			classDefinitions at: definition classFullName put: definition ]