private-writing
writeExtensionMetadata: anExtensionDef toStream: aStream
	| nl |
	nl := self newLine.
	aStream << (self typeOf: anExtensionDef) << ' '
		<< (self typeExtensionDefinitionOf: anExtensionDef) << nl