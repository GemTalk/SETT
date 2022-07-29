action
writePackageToDisk

	| writer |
	self createRowanPackageDefs.
	packageDefs do: [ :eachPackageDef | 
		writer := RwTonelWriter on: rowanDirectories rowanSourcesDirectory.
		writer writePackage: eachPackageDef ].
	logger debug: 'Wrote contents of ' , packageVersion printString