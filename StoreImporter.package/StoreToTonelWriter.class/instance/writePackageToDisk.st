action
writePackageToDisk
	| writer |
	self createRowanPackageDefs.
	packageDefs
		do: [ :entry | 
			writer := RwTonelWriter on: rowanDirectories rowanSourcesDirectory.
			writer writePackage: entry ]