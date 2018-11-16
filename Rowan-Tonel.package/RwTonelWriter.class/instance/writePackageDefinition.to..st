private-writing
writePackageDefinition: aDefinition to: aPackageDir
	| stream definitionString |
	stream := self getStreamFor: aPackageDir named: 'package.st'.
	definitionString := 'Package { #name : ''' , aDefinition key , ''' }'.
	stream
		nextPutAll: definitionString;
		nextPutAll: self newLine;
		flush;
		close