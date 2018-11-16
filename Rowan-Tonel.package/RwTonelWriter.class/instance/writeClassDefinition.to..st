private-writing
writeClassDefinition: aClassDef to: aPackageDir
	| stream |
	stream := self getStreamFor: aPackageDir named: aClassDef key , '.class.st'.
	self writeClassMetadata: aClassDef toStream: stream.
	self writeClassSideMethodsOf: aClassDef toStream: stream.
	self writeInstanceSideMethodsOf: aClassDef toStream: stream.
	stream
		flush;
		close