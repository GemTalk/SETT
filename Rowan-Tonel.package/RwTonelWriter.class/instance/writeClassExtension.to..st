private-writing
writeClassExtension: aClassDef to: aPackageDir
	| stream |
	stream := self getStreamFor: aPackageDir named: aClassDef key , '.extension.st'.
	self writeExtensionMetadata: aClassDef toStream: stream.
	self writeClassSideMethodsOf: aClassDef toStream: stream.
	self writeInstanceSideMethodsOf: aClassDef toStream: stream.
	stream
		flush;
		close