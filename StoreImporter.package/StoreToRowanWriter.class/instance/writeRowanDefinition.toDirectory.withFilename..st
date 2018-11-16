action
writeRowanDefinition: aRowanDefinition toDirectory: aDirectoryName withFilename: aFilename
	| outstream |
	self createRowanProjectDef.
	outstream := (aDirectoryName/ aFilename) writeStream.
	outstream
		nextPutAll: (STON toStringPretty: aRowanDefinition) withUnixLineEndings;
		flush;
		close.
