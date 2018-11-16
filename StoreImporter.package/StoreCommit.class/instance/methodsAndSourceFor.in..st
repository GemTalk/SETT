private
methodsAndSourceFor: aStoreClass in: package
	| className |
	className := aStoreClass fullClassName.
	aStoreClass methods: (databaseFacade methodsAndSourceFor: className in: package)